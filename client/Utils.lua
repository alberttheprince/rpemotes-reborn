--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---

-- You can edit this function to add support for your favorite notification system
function SimpleNotify(message)
    if Config.NotificationsAsChatMessage then
        TriggerEvent("chat:addMessage", { color = { 255, 255, 255 }, args = { tostring(message) } })
    else
        BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName(message)
        EndTextCommandThefeedPostTicker(0, 1)
    end
end

function DebugPrint(args)
    if Config.DebugDisplay then
        print(args)
    end
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end


function IsPlayerAiming(player)
    return (IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()) and tonumber(GetSelectedPedWeapon(player)) ~= tonumber(GetHashKey("WEAPON_UNARMED"))
end

function CanPlayerCrouchCrawl(playerPed)
    if not IsPedOnFoot(playerPed) or IsPedJumping(playerPed) or IsPedFalling(playerPed) or IsPedInjured(playerPed) or IsPedInMeleeCombat(playerPed) or IsPedRagdoll(playerPed) then
        return false
    end

    return true
end

function PlayAnimOnce(playerPed, animDict, animName, blendInSpeed, blendOutSpeed, duration, startTime)
    LoadAnim(animDict)
    TaskPlayAnim(playerPed, animDict, animName, blendInSpeed or 2.0, blendOutSpeed or 2.0, duration or -1, 0, startTime or 0.0, false, false, false)
    RemoveAnimDict(animDict)
end

function ChangeHeadingSmooth(playerPed, amount, time)
    local times = math.abs(amount)
    local test = amount / times
    local wait = time / times

    for _i = 1, times do
        Wait(wait)
        SetEntityHeading(playerPed, GetEntityHeading(playerPed) + test)
    end
end

function EmoteChatMessage(msg, multiline)
    if msg then
        TriggerEvent("chat:addMessage",
            { multiline = multiline == true or false, color = { 255, 255, 255 }, args = { "^1Help^0", tostring(msg) } })
    end
end

function pairsByKeys(t, f)
    local a = {}
    for n in pairs(t) do
        table.insert(a, n)
    end
    table.sort(a, f)
    local i = 0             -- iterator variable
    local iter = function() -- iterator function
        i = i + 1
        if a[i] == nil then
            return nil
        else
            return a[i], t[a[i]]
        end
    end
    return iter
end

function LoadAnim(dict)
    if not DoesAnimDictExist(dict) then
        return false
    end

    local timeout = 2000
    while not HasAnimDictLoaded(dict) and timeout > 0 do
        RequestAnimDict(dict)
        Wait(5)
        timeout = timeout - 5
    end
    if timeout == 0 then
        DebugPrint("Loading anim dict " .. dict .. " timed out")
        return false
    else
        return true
    end
end

function LoadPropDict(model)
    -- load the model if it's not loaded and wait until it's loaded or timeout
    if not HasModelLoaded(joaat(model)) then
        RequestModel(joaat(model))
        local timeout = 2000
        while not HasModelLoaded(joaat(model)) and timeout > 0 do
            Wait(5)
            timeout = timeout - 5
        end
        if timeout == 0 then
            DebugPrint("Loading model " .. model .. " timed out")
            return
        end
    end
end

function tableHasKey(table, key)
    return table[key] ~= nil
end

function RequestWalking(set)
    local timeout = GetGameTimer() + 5000
    while not HasAnimSetLoaded(set) and GetGameTimer() < timeout do
        RequestAnimSet(set)
        Wait(5)
    end
end


function GetPedInFront()
    local player = PlayerId()
    local plyPed = GetPlayerPed(player)
    local plyPos = GetEntityCoords(plyPed, false)
    local plyOffset = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 1.3, 0.0)
    local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, 10.0, 12
        , plyPed, 7)
    local _, _, _, _, ped2 = GetShapeTestResult(rayHandle)
    return ped2
end

function NearbysOnCommand(source, args, raw)
    local NearbysCommand = ""
    for a in pairsByKeys(RP.Shared) do
        NearbysCommand = NearbysCommand .. "" .. a .. ", "
    end
    EmoteChatMessage(NearbysCommand)
    EmoteChatMessage(Config.Languages[lang]['emotemenucmd'])
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if (target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"],
                plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            if (closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

---Function that'll check if player is already proning, using news cam or else
---@param ignores? array|nil key string is the ignored value
function isInActionWithErrorMessage(ignores)
    DebugPrint(ignores)
    DebugPrint('IsProne', IsProne)
    DebugPrint('IsUsingNewscam', IsUsingNewscam)
    DebugPrint('IsUsingBinoculars', IsUsingBinoculars)
    if (ignores == nil) then ignores = {} end

    if not ignores['IsProne'] and IsProne then
        EmoteChatMessage(Config.Languages[lang]['no_anim_crawling'])
        return true
    end
    if not ignores['IsUsingNewscam'] and IsUsingNewscam then
        -- TODO: use specific error message
        EmoteChatMessage(Config.Languages[lang]['no_anim_right_now'])
        return true
    end
    if not ignores['IsUsingBinoculars'] and IsUsingBinoculars then
        -- TODO: use specific error message
        EmoteChatMessage(Config.Languages[lang]['no_anim_right_now'])
        return true
    end

    return false
end
