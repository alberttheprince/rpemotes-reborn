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

function DebugPrint(...)
    if Config.DebugDisplay then
        print(...)
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
    EmoteChatMessage(Translate('emotemenucmd'))
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
        EmoteChatMessage(Translate('no_anim_crawling'))
        return true
    end
    if not ignores['IsUsingNewscam'] and IsUsingNewscam then
        -- TODO: use specific error message
        EmoteChatMessage(Translate('no_anim_right_now'))
        return true
    end
    if not ignores['IsUsingBinoculars'] and IsUsingBinoculars then
        -- TODO: use specific error message
        EmoteChatMessage(Translate('no_anim_right_now'))
        return true
    end

    return false
end



----------------------------------------------------------------------
ShowPed = false

function ShowPedMenu(zoom)
    if not Config.PreviewPed then return end

    if not ShowPed then
        CreateThread(function()
            clonedPed = CreatePed(26, GetEntityModel(PlayerPedId()), nil, nil, nil, 0, false, false)
            ClonePedToTarget(PlayerPedId(), clonedPed)

            SetEntityCollision(clonedPed, false, false)
            SetEntityInvincible(clonedPed, true)
            SetEntityLocallyVisible(clonedPed)

            NetworkSetEntityInvisibleToNetwork(clonedPed, true)
            SetEntityCanBeDamaged(clonedPed, false)
            SetBlockingOfNonTemporaryEvents(clonedPed, true)
            SetEntityAlpha(clonedPed, 254, false)

            ShowPed = true

            local positionBuffer = {}
            local bufferSize = 5

            if not zoom then
                while ShowPed do
                    local screencoordsX, screencoordsY = 0.65135417461395, 0.77
                    if Config.MenuPosition == "left" then
                        screencoordsX = 1.0 - screencoordsX
                    end
                    local world, normal =  GetWorldCoordFromScreenCoord(screencoordsX, screencoordsY) --  GetWorldCoordFromScreenCoord(0.67135417461395, 0.7787036895752)
                    local depth = 3.5
                    local target = world + normal * depth
                    local camRot = GetGameplayCamRot(2)

                    table.insert(positionBuffer, target)
                    if #positionBuffer > bufferSize then
                        table.remove(positionBuffer, 1)
                    end

                    local averagedTarget = vector3(0, 0, 0)
                    for _, position in ipairs(positionBuffer) do
                        averagedTarget = averagedTarget + position
                    end
                    averagedTarget = averagedTarget / #positionBuffer

                    SetEntityCoords(clonedPed, averagedTarget.x, averagedTarget.y, averagedTarget.z, false, false, false, true)
                    local heading_offset = Config.MenuPosition == "left" and 170.0 or 190.0
                    SetEntityHeading(clonedPed, camRot.z + heading_offset)
                    SetEntityRotation(clonedPed, camRot.x*(-1), 0, camRot.z + 170.0, 2, false)

                    Wait(4)
                end
            else
                while ShowPed do
                    local screencoordsX, screencoordsY = 0.6, 1.9
                    if Config.MenuPosition == "left" then
                        screencoordsX = 1.0 - screencoordsX
                    end
                    local world, normal = GetWorldCoordFromScreenCoord(0.6, 1.9)
                    local depth = 2.0
                    local target = world + normal * depth
                    local camRot = GetGameplayCamRot(2)

                    table.insert(positionBuffer, target)
                    if #positionBuffer > bufferSize then
                        table.remove(positionBuffer, 1)
                    end

                    local averagedTarget = vector3(0, 0, 0)
                    for _, position in ipairs(positionBuffer) do
                        averagedTarget = averagedTarget + position
                    end
                    averagedTarget = averagedTarget / #positionBuffer

                    SetEntityCoords(clonedPed, averagedTarget.x, averagedTarget.y, averagedTarget.z, false, false, false, true)
                    local heading_offset = Config.MenuPosition == "left" and 170.0 or 190.0
                    SetEntityHeading(clonedPed, camRot.z + heading_offset)
                    SetEntityRotation(clonedPed, camRot.x*(-1), 0, camRot.z + 170.0, 2, false)

                    Wait(4)
                end
            end
        end)
    end
end

function ClosePedMenu()
    if not Config.PreviewPed then return end

    if clonedPed then
        ShowPed = false
        ClearPedTaskPreview()
        DeleteEntity(clonedPed)
    end
end

function ClearPedTaskPreview()
    if not Config.PreviewPed then return end

    if clonedPed then
        DestroyAllProps(true)
        ClearPedTasksImmediately(clonedPed)
    end
end