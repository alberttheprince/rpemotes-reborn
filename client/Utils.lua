LocalPlayer.state:set('canEmote', true, true) -- Allow emotes to be played by default

-- You can edit this function to add support for your favorite notification system
function SimpleNotify(message)
    if Config.NotificationsAsChatMessage then
        TriggerEvent("chat:addMessage", { color = { 255, 255, 255 }, args = { tostring(message) } })
    else
        BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName(message)
        EndTextCommandThefeedPostTicker(true, true)
    end
end

function DebugPrint(...)
    if Config.DebugDisplay then
        print(...)
    end
end

function FirstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function IsPlayerAiming(player)
    return (IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()) and
    tonumber(GetSelectedPedWeapon(player)) ~= tonumber(GetHashKey("WEAPON_UNARMED"))
end

function CanPlayerCrouchCrawl(playerPed)
    if not IsPedOnFoot(playerPed) or IsPedJumping(playerPed) or IsPedFalling(playerPed) or IsPedInjured(playerPed) or IsPedInMeleeCombat(playerPed) or IsPedRagdoll(playerPed) then
        return false
    end

    return true
end

function PlayAnimOnce(playerPed, animDict, animName, blendInSpeed, blendOutSpeed, duration, startTime)
    LoadAnim(animDict)
    TaskPlayAnim(playerPed, animDict, animName, blendInSpeed or 2.0, blendOutSpeed or 2.0, duration or -1, 0,
        startTime or 0.0, false, false, false)
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
        TriggerEvent("chat:addMessage", {
            multiline = multiline == true or false,
            color = { 255, 255, 255 },
            args = { "^1Help^0", tostring(msg) }
        })
    end
end

function PairsByKeys(t, f)
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

function TableHasKey(table, key)
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
    for a in PairsByKeys(RP.Shared) do
        NearbysCommand = NearbysCommand .. "" .. a .. ", "
    end
    EmoteChatMessage(NearbysCommand)
    EmoteChatMessage(Translate('emotemenucmd'))
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped, false)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if (target ~= ped) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), false)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"],
                pedCoords["x"], pedCoords["y"], pedCoords["z"], true)
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

-- Function that'll check if player is already proning, using news cam or else

---@param ignores? table | nil key string is the ignored value
function IsInActionWithErrorMessage(ignores)
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

function HideHUDThisFrame()
    HideHelpTextThisFrame()
    HideHudAndRadarThisFrame()
    HideHudComponentThisFrame(19) -- weapon wheel
    HideHudComponentThisFrame(1)  -- Wanted Stars
    HideHudComponentThisFrame(2)  -- Weapon icon
    HideHudComponentThisFrame(3)  -- Cash
    HideHudComponentThisFrame(4)  -- MP CASH
    HideHudComponentThisFrame(13) -- Cash Change
    HideHudComponentThisFrame(11) -- Floating Help Text
    HideHudComponentThisFrame(12) -- more floating help text
    HideHudComponentThisFrame(15) -- Subtitle Text
    HideHudComponentThisFrame(18) -- Game Stream
end

function SetupButtons(button)
    local scaleform = RequestScaleformMovie("instructional_buttons")
    while not HasScaleformMovieLoaded(scaleform) do
        Wait(10)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    for i, btn in pairs(button) do
        PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
        PushScaleformMovieFunctionParameterInt(i - 1)
        ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, btn.key, true))
        BeginTextCommandScaleformString("STRING")
        AddTextComponentScaleform(Translate(btn.text))
        EndTextCommandScaleformString()
        PopScaleformMovieFunctionVoid()
    end

    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()

    return scaleform
end

function HandleZoomAndCheckRotation(cam, fov)
    local zoomspeed = 10.0 -- camera zoom speed
    local lPed = PlayerPedId()

    local fov_max = 70.0
    local fov_min = 10.0 -- max zoom level (smaller fov is more zoom)
    local speed_lr = 8.0 -- speed by which the camera pans left-right
    local speed_ud = 8.0 -- speed by which the camera pans up-down

    local zoomvalue = (1.0 / (fov_max - fov_min)) * (fov - fov_min)
    local rightAxisX = GetDisabledControlNormal(0, 220)
    local rightAxisY = GetDisabledControlNormal(0, 221)
    local rotation = GetCamRot(cam, 2)

    if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
        local new_z = rotation.z + rightAxisX * -1.0 * (speed_ud) * (zoomvalue + 0.1)
        local new_x = math.max(math.min(20.0, rotation.x + rightAxisY * -1.0 * (speed_lr) * (zoomvalue + 0.1)), -29.5)
        SetCamRot(cam, new_x, 0.0, new_z, 2)
    end

    if not (IsPedSittingInAnyVehicle(lPed)) then
        if IsControlJustPressed(0, 241) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 242) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05)
    else
        if IsControlJustPressed(0, 17) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 16) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05) -- Smoothing of camera zoom
    end

    return fov
end

----------------------------------------------------------------------

ShowPed = false

function ShowPedMenu(zoom)
    if not Config.PreviewPed then return end

    if not ShowPed then
        CreateThread(function()
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed) - vector3(0.0, 0.0, 10.0)
            ClonedPed = CreatePed(26, GetEntityModel(playerPed), coords.x, coords.y, coords.z, 0, false, false)
            ClonePedToTarget(playerPed, ClonedPed)

            SetEntityInvincible(ClonedPed, true)
            SetEntityLocallyVisible(ClonedPed)
            NetworkSetEntityInvisibleToNetwork(ClonedPed, true)
            SetEntityCanBeDamaged(ClonedPed, false)
            SetBlockingOfNonTemporaryEvents(ClonedPed, true)
            SetEntityAlpha(ClonedPed, 254, false)
            SetEntityCollision(ClonedPed, false, false)

            ShowPed = true

            local positionBuffer = {}
            local bufferSize = 5

            while ShowPed do
                local screencoordsX = zoom and 0.6 or 0.65135417461395
                local screencoordsY = zoom and 1.9 or 0.77

                if Config.MenuPosition == "left" then
                    screencoordsX = 1.0 - screencoordsX
                end

                local world, normal = GetWorldCoordFromScreenCoord(screencoordsX, screencoordsY)
                local depth = zoom and 2.0 or 3.5
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

                SetEntityCoords(ClonedPed, averagedTarget.x, averagedTarget.y, averagedTarget.z, false, false, false, true)
                local heading_offset = Config.MenuPosition == "left" and 170.0 or 190.0
                SetEntityHeading(ClonedPed, camRot.z + heading_offset)
                SetEntityRotation(ClonedPed, camRot.x * (-1), 0.0, camRot.z + 170.0, 2, false)

                Wait(4)
            end

            DeleteEntity(ClonedPed)
            ClonedPed = nil
        end)
    end
end

function ClosePedMenu()
    if not Config.PreviewPed then return end

    if ClonedPed then
        ShowPed = false
        ClearPedTaskPreview()
        DeleteEntity(ClonedPed)
    end
end

function ClearPedTaskPreview()
    if not Config.PreviewPed then return end

    if ClonedPed then
        DestroyAllProps(true)
        ClearPedTasksImmediately(ClonedPed)
    end
end
