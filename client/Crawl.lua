if not Config.CrawlEnabled then return end

local forceEndProne = false
local proneType = 'onfront'
local isCrawling = false

if Config.CrawlKeybindEnabled then
    RegisterKeyMapping('crawl', Translate('register_crawl'), 'keyboard', Config.CrawlKeybind)
end

---@param playerPed number
---@return boolean
local function shouldPlayerDiveToCrawl(playerPed)
    if IsPedRunning(playerPed) or IsPedSprinting(playerPed) then
        return true
    end

    return false
end

---Stops the player from being prone
---@param force boolean If forced then no exit anim is played
local function stopPlayerProne(force)
    IsProne = false
    forceEndProne = force
end
exports('StopPlayerProne', stopPlayerProne)

---@param playerPed number
---@param heading number|nil
---@param blendInSpeed number|nil
local function PlayIdleCrawlAnim(playerPed, heading, blendInSpeed)
    local playerCoords = GetEntityCoords(playerPed)
    TaskPlayAnimAdvanced(playerPed, 'move_crawl', proneType..'_fwd', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, heading or GetEntityHeading(playerPed), blendInSpeed or 2.0, 2.0, -1, 2, 1.0, false, false)
end

---@param forceEnd boolean
local function PlayExitCrawlAnims(forceEnd)
    if not forceEnd then
        inAction = true
        local playerPed = PlayerPedId()
        local animDict, animName, waitTime

        if proneType == 'onfront' then
            animDict, animName, waitTime = 'get_up@directional@transition@prone_to_knees@crawl', 'front', 780
        else
            animDict, animName, waitTime = 'get_up@directional@transition@prone_to_seated@crawl', 'back', 950
        end

        PlayAnimOnce(playerPed, animDict, animName, nil, nil, waitTime)

        if not IsCrouched then
            Wait(waitTime)
            PlayAnimOnce(playerPed, 'get_up@directional@movement@from_'..(proneType == 'onfront' and 'knees' or 'seated')..'@standard', 'getup_l_0', nil, nil, 1300)
        end
    end
end

-- Crawls one "step" forward/backward
---@param playerPed number
---@param type string
---@param direction string
local function Crawl(playerPed, type, direction)
    isCrawling = true

    TaskPlayAnim(playerPed, 'move_crawl', type..'_'..direction, 8.0, -8.0, -1, 2, 0.0, false, false, false)

    local time = {
        ['onfront'] = {
            ['fwd'] = 820,
            ['bwd'] = 990
        },
        ['onback'] = {
            ['fwd'] = 1200,
            ['bwd'] = 1200
        }
    }

    SetTimeout(time[type][direction], function()
        isCrawling = false
    end)
end

-- Flips the player when crawling
---@param playerPed number
local function CrawlFlip(playerPed)
    InAction = true
    local heading = GetEntityHeading(playerPed)

    proneType = proneType == 'onfront' and 'onback' or 'onfront'

    if proneType == 'onback' then
        PlayAnimOnce(playerPed, 'get_up@directional_sweep@combat@pistol@front', 'front_to_prone', 2.0)
        ChangeHeadingSmooth(playerPed, -18.0, 3600)
    else
        PlayAnimOnce(playerPed, 'move_crawlprone2crawlfront', 'back', 2.0, nil, -1)
        ChangeHeadingSmooth(playerPed, 12.0, 1700)
    end

    PlayIdleCrawlAnim(playerPed, heading + 180.0)
    Wait(400)
    InAction = false
end

local function CrawlLoop()
    Wait(400)

    while IsProne do
        local playerPed = PlayerPedId()

        if not CanPlayerCrouchCrawl(playerPed) or IsEntityInWater(playerPed) then
            ClearPedTasks(playerPed)
            stopPlayerProne(true)
            break
        end

        local forward, backwards = IsControlPressed(0, 32), IsControlPressed(0, 33) -- INPUT_MOVE_UP_ONLY, INPUT_MOVE_DOWN_ONLY
        if not isCrawling then
            if forward then -- Forward
                Crawl(playerPed, proneType, 'fwd')
            elseif backwards then -- Back
                Crawl(playerPed, proneType, 'bwd')
            end
        end

        -- Moving left/right
        if IsControlPressed(0, 34) then -- INPUT_MOVE_LEFT_ONLY
            if isCrawling then
                local headingDiff = forward and 1.0 or -1.0
                SetEntityHeading(playerPed, GetEntityHeading(playerPed) + headingDiff)
            else
                InAction = true
                if proneType == 'onfront' then
                    local playerCoords = GetEntityCoords(playerPed)
                    TaskPlayAnimAdvanced(playerPed, 'move_crawlprone2crawlfront', 'left', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(playerPed), 2.0, 2.0, -1, 2, 0.1, false, false)
                    ChangeHeadingSmooth(playerPed, -10.0, 300)
                    Wait(700)
                else
                    PlayAnimOnce(playerPed, 'get_up@directional_sweep@combat@pistol@left', 'left_to_prone')
                    ChangeHeadingSmooth(playerPed, 25.0, 400)
                    PlayIdleCrawlAnim(playerPed)
                    Wait(600)
                end
                InAction = false
            end
        elseif IsControlPressed(0, 35) then -- INPUT_MOVE_RIGHT_ONLY
            if isCrawling then
                local headingDiff = backwards and 1.0 or -1.0
                SetEntityHeading(playerPed, GetEntityHeading(playerPed) + headingDiff)
            else
                InAction = true
                if proneType == 'onfront' then
                    local playerCoords = GetEntityCoords(playerPed)
                    TaskPlayAnimAdvanced(playerPed, 'move_crawlprone2crawlfront', 'right', playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(playerPed), 2.0, 2.0, -1, 2, 0.1, false, false)
                    ChangeHeadingSmooth(playerPed, 10.0, 300)
                    Wait(700)
                else
                    PlayAnimOnce(playerPed, 'get_up@directional_sweep@combat@pistol@right', 'right_to_prone')
                    ChangeHeadingSmooth(playerPed, -25.0, 400)
                    PlayIdleCrawlAnim(playerPed)
                    Wait(600)
                end
                InAction = false
            end
        end

        if not isCrawling then
            if IsControlPressed(0, 22) then -- INPUT_JUMP
                CrawlFlip(playerPed)
            end
        end

        Wait(0)
    end

    TriggerEvent('crouch_crawl:onCrawl', false)

    PlayExitCrawlAnims(forceEndProne)

    isCrawling = false
    InAction = false
    forceEndProne = false
    proneType = 'onfront'
    SetPedConfigFlag(PlayerPedId(), 48, false) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

    RemoveAnimDict('move_crawl')
    RemoveAnimDict('move_crawlprone2crawlfront')
end

function CrawlKeyPressed()
    if not LocalPlayer.state.canEmote then return end

    if InAction then
        return
    end

    if IsPauseMenuActive() or IsNuiFocused() then
        return
    end

    if IsProne then
        IsProne = false
        return
    end

    if IsInAnimation then
        EmoteCancel()
    end

    local wasCrouched = false
    if IsCrouched then
        IsCrouched = false
        wasCrouched = true
    end

    local playerPed = PlayerPedId()
    if not CanPlayerCrouchCrawl(playerPed) or IsEntityInWater(playerPed) or not IsPedHuman(playerPed) then
        return
    end
    InAction = true

    if Pointing then
        Pointing = false
    end

    if InHandsup then
        return
    end

    if IsInActionWithErrorMessage({['IsProne'] = true}) then
        return
    end

    IsProne = true
    SetPedConfigFlag(playerPed, 48, true) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

    if GetPedStealthMovement(playerPed) ~= 0 then
        SetPedStealthMovement(playerPed, false, 'DEFAULT_ACTION')
        Wait(100)
    end

    LoadAnim('move_crawl')
    LoadAnim('move_crawlprone2crawlfront')

    if shouldPlayerDiveToCrawl(playerPed) then
        PlayAnimOnce(playerPed, 'explosions', 'react_blown_forwards', nil, 3.0)
        Wait(1100)
    elseif wasCrouched then
        PlayAnimOnce(playerPed, 'amb@world_human_sunbathe@male@front@enter', 'enter', nil, nil, -1, 0.3)
        Wait(1500)
    else
        PlayAnimOnce(playerPed, 'amb@world_human_sunbathe@male@front@enter', 'enter')
        Wait(3000)
    end

    if CanPlayerCrouchCrawl(playerPed) and not IsEntityInWater(playerPed) then
        PlayIdleCrawlAnim(playerPed, nil, 3.0)
    end

    TriggerEvent('crouch_crawl:onCrawl', true)

    InAction = false
    CreateThread(CrawlLoop)
end

---Returns either "onfront" or "onback", this can be used to check if the player is on his back or on his stomach. NOTE: This will still return a string even if the player is not prone. Use IsPlayerProne() to check if the player is prone.
---@return string
local function GetPlayerProneType()
	return proneType
end
exports('GetPlayerProneType', GetPlayerProneType)

---Returns if the player is crawling (only when moving forward/backward)
---@return boolean
local function IsPlayerCrawling()
	return isCrawling
end
exports('IsPlayerCrawling', IsPlayerCrawling)