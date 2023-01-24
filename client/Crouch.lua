IsProne = false
local isCrouched = false
local isCrawling = false
local inAction = false
local proneType = "onfront"
local lastKeyPress = 0


-- Utils --
local function LoadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
		Citizen.Wait(0)
	end
end

local function LoadAnimSet(set)
    RequestAnimSet(set)
    while not HasAnimSetLoaded(set) do
		Citizen.Wait(0)
	end
end

local function IsPlayerAiming(player)
    return IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()
end

local function CanPlayerCrouchCrawl(playerPed)
    if not IsPedOnFoot(playerPed) or IsPedJumping(playerPed) or IsPedFalling(playerPed) or IsPedInjured(playerPed) or IsPedInMeleeCombat(playerPed) or IsPedRagdoll(playerPed) then
        return false
    end

    return true
end

local function PlayAnimOnce(playerPed, animDict, animName, duration, blendInSpeed, startTime)
    LoadAnimDict(animDict)
    TaskPlayAnim(playerPed, animDict, animName, blendInSpeed or 2.0, 2.0, duration, 0, startTime or 0.0, false, false, false)
    RemoveAnimDict(animDict)
end

local function ChangeHeadingSmooth(playerPed, amount, time)
    local times = math.abs(amount)
    local test = amount / times
    local wait = time / times

    for _i = 1, times do
        Wait(wait)
        SetEntityHeading(playerPed, GetEntityHeading(playerPed) + test)
    end
end


-- Crouching --
local function ResetCrouch()
    local playerPed = PlayerPedId()

    ResetPedStrafeClipset(playerPed)
    ResetPedWeaponMovementClipset(playerPed)
    SetPedMaxMoveBlendRatio(playerPed, 1.0)
    SetPedCanPlayAmbientAnims(playerPed, true)

    -- Applies the previous walk style (or resets to default if non had been set)
    local walkStyle = GetResourceKvpString("walkstyle")
    if walkStyle ~= nil then
        LoadAnimSet(walkStyle)
        SetPedMovementClipset(playerPed, walkStyle, 0.6)
        RemoveAnimSet(walkStyle)
    else
        ResetPedMovementClipset(playerPed, 0.5)
    end

    RemoveAnimSet("move_ped_crouched")
end

local function CrouchThread()
    CreateThread(function()
        local playerId = PlayerId()

        while isCrouched do
            local playerPed = PlayerPedId()

            -- Checks if the player is falling, in vehicle, dead etc.
            if not CanPlayerCrouchCrawl(playerPed) then
                isCrouched = false
                break
            end

            -- Limit the speed that the player can walk when aiming
            if IsPlayerAiming(playerId) then
                SetPedMaxMoveBlendRatio(playerPed, 0.15)
            end

            -- This blocks the ped from standing up and playing idle anims (this needs to be looped)
            SetPedCanPlayAmbientAnims(playerPed, false)

            -- Disables "INPUT_DUCK" and blocks action mode
            DisableControlAction(0, 36, true)
            if IsPedUsingActionMode(playerPed) == 1 then
                SetPedUsingActionMode(playerPed, false, -1, "DEFAULT_ACTION")
            end

            -- Disable first person
            DisableFirstPersonCamThisFrame()

            Wait(0)
        end

        -- Reset walk style and ped variables
        ResetCrouch()
    end)
end

local function StartCrouch()
    isCrouched = true
    LoadAnimSet("move_ped_crouched")
    local playerPed = PlayerPedId()

    -- Force leave stealth mode
    if GetPedStealthMovement(playerPed) == 1 then
        SetPedStealthMovement(playerPed, false, "DEFAULT_ACTION")
        Wait(100)
    end

    -- Force leave first person view
    if GetFollowPedCamViewMode() == 4 then
        SetFollowPedCamViewMode(0) -- THIRD_PERSON_NEAR
    end

    SetPedMovementClipset(playerPed, "move_ped_crouched", 0.6)
    SetPedStrafeClipset(playerPed, "move_ped_crouched_strafing")

    CrouchThread()
end

local function AttemptCrouch(playerPed)
    if CanPlayerCrouchCrawl(playerPed) then
        StartCrouch()
        return true
    else
        return false
    end
end

local function CrouchKeyPressed()
    -- If we already are doing something, then don't continue
    if inAction then
        return
    end

    -- If crouched then stop crouching
    if isCrouched then
        isCrouched = false
        return
    end

    -- Get the player ped
    local playerPed = PlayerPedId()

    if Config.CrouchOverride then
        DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
    else
        -- Get +crouch and INPUT_DUCK keys
        local crouchKey = GetControlInstructionalButton(0, 0xD2D0BEBA, false)
        local duckKey = GetControlInstructionalButton(0, 36, false)

        -- If they are the same and we aren't prone, then check if we are in stealth mode and how long ago the last button press was. 
        if crouchKey == duckKey and not IsProne then
            local timer = GetGameTimer()
    
            -- If we are in stealth mode and we have already pressed the button in the last second
            if GetPedStealthMovement(playerPed) == 1 and timer - lastKeyPress < 1000 then
                DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
                lastKeyPress = 0
                AttemptCrouch(playerPed)
                return
            end
            lastKeyPress = timer
            return
        end
    end

    -- Attempt to crouch, if we were successful, then also check if we are prone, if so then play an animaiton
    if AttemptCrouch(playerPed) and IsProne then
        inAction = true
        IsProne = false
        PlayAnimOnce(playerPed, "get_up@directional@transition@prone_to_knees@crawl", "front", 780)
        Wait(780)
        inAction = false
    end
end


-- Crawling --
local function ShouldPlayerDiveToCrawl(playerPed)
    if IsPedRunning(playerPed) or IsPedSprinting(playerPed) then
        return true
    end

    return false
end

local function PlayIdleCrawlAnim(playerPed, heading)
    local playerCoords = GetEntityCoords(playerPed)
    TaskPlayAnimAdvanced(playerPed, "move_crawl", proneType.."_fwd", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, heading or GetEntityHeading(playerPed), 2.0, 2.0, -1, 2, 1.0, false, false)
end

local function PlayExitCrawlAnims(forceEnd)
    if not forceEnd then
        inAction = true
        local playerPed = PlayerPedId()

        if proneType == "onfront" then
            PlayAnimOnce(playerPed, "get_up@directional@transition@prone_to_knees@crawl", "front", 780)

            -- Only stand fully up if we are not crouching
            if not isCrouched then
                Wait(780)
                PlayAnimOnce(playerPed, "get_up@directional@movement@from_knees@standard", "getup_l_0", 1300)
            end
        else
            PlayAnimOnce(playerPed, "get_up@directional@transition@prone_to_seated@crawl", "back", 950, 16.0)

            -- Only stand fully up if we are not crouching
            if not isCrouched then
                Wait(950)
                PlayAnimOnce(playerPed, "get_up@directional@movement@from_seated@standard", "get_up_l_0", 1300)
            end
        end
    end
end

local function Crawl(playerPed, type, direction)
    isCrawling = true

    TaskPlayAnim(playerPed, "move_crawl", type.."_"..direction, 8.0, -8.0, -1, 2, 0.0, false, false, false)

    local time = {
        ["onfront"] = {
            ["fwd"] = 820,
            ["bwd"] = 990
        },
        ["onback"] = {
            ["fwd"] = 1200,
            ["bwd"] = 1200
        }
    }

    SetTimeout(time[type][direction], function()
        isCrawling = false
    end)
end

local function CrawlFlip(playerPed)
    inAction = true
    local heading = GetEntityHeading(playerPed)

    if proneType == "onfront" then
        proneType = "onback"

        PlayAnimOnce(playerPed, "get_up@directional_sweep@combat@pistol@front", "front_to_prone", -1, 2.0)
        ChangeHeadingSmooth(playerPed, -18.0, 3600)
    else
        proneType = "onfront"

        PlayAnimOnce(playerPed, "amb@world_human_bum_slumped@male@laying_on_left_side@flee", "back", 500, 2.0)
        Wait(500)
    end

    PlayIdleCrawlAnim(playerPed, heading + 180.0)
    Wait(400)
    inAction = false
end

local function CrawlThread()
    CreateThread(function()
        local forceEnd = false

        while IsProne do
            local playerPed = PlayerPedId()

            -- Checks if the player is falling, in vehicle, dead etc.
            if not CanPlayerCrouchCrawl(playerPed) or IsEntityInWater(playerPed) then
                ClearPedTasks(playerPed)
                IsProne = false
                forceEnd = true
                break
            end

            -- Handles forwad/backward movement
            local forward, backwards = IsControlPressed(0, 32), IsControlPressed(0, 33) -- INPUT_MOVE_UP_ONLY, INPUT_MOVE_DOWN_ONLY
            if not isCrawling then
                if forward then -- Forward
                    Crawl(playerPed, proneType, "fwd")
                elseif backwards then -- Back
                    Crawl(playerPed, proneType, "bwd")
                end
            end

            -- Moving left/right
            if IsControlPressed(0, 34) then -- INPUT_MOVE_LEFT_ONLY
                if isCrawling then
                    local headingDiff = forward and 1.0 or -1.0
                    SetEntityHeading(playerPed, GetEntityHeading(playerPed) + headingDiff)
                else
                    inAction = true
                    if proneType == "onfront" then
                        local playerCoords = GetEntityCoords(playerPed)
                        TaskPlayAnimAdvanced(playerPed, "move_crawlprone2crawlfront", "left", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(playerPed), 2.0, 2.0, -1, 2, 0.1, false, false)
                        ChangeHeadingSmooth(playerPed, -10.0, 300)
                        Wait(700)
                    else
                        PlayAnimOnce(playerPed, "get_up@directional_sweep@combat@pistol@left", "left_to_prone", -1)
                        ChangeHeadingSmooth(playerPed, 25.0, 400)
                        PlayIdleCrawlAnim(playerPed)
                        Wait(600)
                    end
                    inAction = false
                end
            elseif IsControlPressed(0, 35) then -- INPUT_MOVE_RIGHT_ONLY
                if isCrawling then
                    local headingDiff = backwards and 1.0 or -1.0
                    SetEntityHeading(playerPed, GetEntityHeading(playerPed) + headingDiff)
                else
                    inAction = true
                    if proneType == "onfront" then
                        local playerCoords = GetEntityCoords(playerPed)
                        TaskPlayAnimAdvanced(playerPed, "move_crawlprone2crawlfront", "right", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, GetEntityHeading(playerPed), 2.0, 2.0, -1, 2, 0.1, false, false)
                        ChangeHeadingSmooth(playerPed, 10.0, 300)
                        Wait(700)
                    else
                        PlayAnimOnce(playerPed, "get_up@directional_sweep@combat@pistol@right", "right_to_prone", -1)
                        ChangeHeadingSmooth(playerPed, -25.0, 400)
                        PlayIdleCrawlAnim(playerPed)
                        Wait(600)
                    end
                    inAction = false
                end
            end

            -- Flipping around
            if not isCrawling then
                if IsControlPressed(0, 22) then -- INPUT_JUMP
                    CrawlFlip(playerPed)
                end
            end

            Wait(0)
        end

        -- If the crawling wasn't forcefully ended, then play the get up animations
        PlayExitCrawlAnims(forceEnd)

        -- Reset variabels
        isCrawling = false
        inAction = false
        proneType = "onfront"
        SetPedConfigFlag(PlayerPedId(), 48, false) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

        -- Unload animation dictionaries
        RemoveAnimDict("move_crawl")
        RemoveAnimDict("move_crawlprone2crawlfront")
    end)
end

local function CrawlKeyPressed()
    -- If we already are doing something, then don't continue
    if inAction then
        return
    end

    -- If already prone, then stop
    if IsProne then
        IsProne = false
        return
    end

    -- If we are playing an animation, then cancel it first
    if IsInAnimation then
        EmoteCancel()
    end

    -- If we are crouching we should stop that first
    local wasCrouched = false
    if isCrouched then
        isCrouched = false
        wasCrouched = true
    end

    local playerPed = PlayerPedId()
    if not CanPlayerCrouchCrawl(playerPed) or IsEntityInWater(playerPed) then
        return
    end
    inAction = true
    
    -- If we are pointing then stop pointing
    if Pointing then
        Pointing = false
    end

    IsProne = true
    SetPedConfigFlag(playerPed, 48, true) -- CPED_CONFIG_FLAG_BlockWeaponSwitching

    -- Force leave stealth mode
    if GetPedStealthMovement(playerPed) == 1 then
        SetPedStealthMovement(playerPed, false, "DEFAULT_ACTION")
        Wait(100)
    end

    -- Load animations that the crawling is going to use
    LoadAnimDict("move_crawl")
    LoadAnimDict("move_crawlprone2crawlfront")

    if ShouldPlayerDiveToCrawl(playerPed) then
        PlayAnimOnce(playerPed, "move_jump", "dive_start_run", -1)
        Wait(1050)
    elseif wasCrouched then
        PlayAnimOnce(playerPed, "amb@world_human_sunbathe@male@front@enter", "enter", -1, 2.0, 0.3)
        Wait(1500)
    else
        PlayAnimOnce(playerPed, "amb@world_human_sunbathe@male@front@enter", "enter", -1)
        Wait(3000)
    end

    -- Set the player into the idle position (but only if we can still crawl)
    if CanPlayerCrouchCrawl(playerPed) and not IsEntityInWater(playerPed) then
        PlayIdleCrawlAnim(playerPed)
    end
    inAction = false

    CrawlThread()
end


-- Commands & KeyMapping --
if Config.CrouchEnabled then
    if Config.CrouchKeybindEnabled then
        RegisterKeyMapping('+crouch', "Crouch", "keyboard", Config.CrouchKeybind)
        RegisterCommand('+crouch', function() CrouchKeyPressed() end, false)
        RegisterCommand('-crouch', function() end, false) -- This needs to be here to prevent errors/warnings
    end
    RegisterCommand('crouch', function()
        if isCrouched then
            isCrouched = false
            return
        end

        AttemptCrouch(PlayerPedId())
    end, false)
    TriggerEvent('chat:addSuggestion', '/crouch', 'Crouch')
end

if Config.CrawlEnabled then
    if Config.CrawlKeybindEnabled then
        RegisterKeyMapping('crawl', "Crawl", "keyboard", Config.CrawlKeybind)
    end
    RegisterCommand('crawl', function() CrawlKeyPressed() end, false)
end


-- Exports --
-- Returns weather or not the player is crouched
local function IsPlayerCrouched()
	return isCrouched
end

-- Returns if the player is prone (both when laying still and when moving)
local function IsPlayerProne()
	return IsProne
end

-- Returns if the player is crawling (only when moving forward/backwards)
local function IsPlayerCrawling()
	return isCrawling
end

exports('IsPlayerCrouched', IsPlayerCrouched)
exports('IsPlayerProne', IsPlayerProne)
exports('IsPlayerCrawling', IsPlayerCrawling)
