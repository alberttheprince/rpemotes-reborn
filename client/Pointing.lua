Pointing = false

local function IsPlayerAiming(player)
    return IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()
end

local function CanPlayerPoint()
    local playerPed = PlayerPedId()
    local playerId = PlayerId()
    return DoesEntityExist(playerPed)
        and IsPedHuman(playerPed)
        and not IsPedOnAnyBike(playerPed)
        and not IsPlayerAiming(playerId)
        and not IsPedFalling(playerPed)
        and not IsPedInjured(playerPed)
        and not IsPedInMeleeCombat(playerPed)
        and not IsPedRagdoll(playerPed)
end

local function PointingStopped()
    local playerPed = PlayerPedId()

    RequestTaskMoveNetworkStateTransition(playerPed, 'Stop')
    SetPedConfigFlag(playerPed, 36, false)
    if not IsPedInjured(playerPed) then
        ClearPedSecondaryTask(playerPed)
    end
    RemoveAnimDict("anim@mp_point")
    if Config.ReplayEmoteAfterPointing and IsInAnimation then
        local emote = EmoteData[CurrentAnimationName]
        if not emote then
            return
        end

        Wait(400)
        DestroyAllProps()
        OnEmotePlay(CurrentAnimationName, CurrentTextureVariation)
    end
end

local function PointingThread()
    CreateThread(function()
        local playerPed = PlayerPedId()

        while Pointing do
            Wait(0)

            if not CanPlayerPoint() then
                Pointing = false
                break
            end

            local camPitch = GetGameplayCamRelativePitch()
            if camPitch < -70.0 then
                camPitch = -70.0
            elseif camPitch > 42.0 then
                camPitch = 42.0
            end

            camPitch = (camPitch + 70.0) / 112.0

            local camHeading = GetGameplayCamRelativeHeading()
            local cosCamHeading = math.cos(camHeading)
            local sinCamHeading = math.sin(camHeading)

            if camHeading < -180.0 then
                camHeading = -180.0
            elseif camHeading > 180.0 then
                camHeading = 180.0
            end

            camHeading = (camHeading + 180.0) / 360.0
            local coords = GetOffsetFromEntityInWorldCoords(playerPed, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
            local _, blocked = GetShapeTestResult(StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, playerPed, 7))

            SetTaskMoveNetworkSignalFloat(playerPed, 'Pitch', camPitch)
            SetTaskMoveNetworkSignalFloat(playerPed, 'Heading', (camHeading * -1.0) + 1.0)
            SetTaskMoveNetworkSignalBool(playerPed, 'isBlocked', blocked)
            SetTaskMoveNetworkSignalBool(playerPed, 'isFirstPerson', GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
        end

        PointingStopped()
    end)
end

local function StartPointing()
    if IsInActionWithErrorMessage() then
        return
    end

    if not CanPlayerPoint() then
        return
    end

    Pointing = not Pointing

    if Pointing and LoadAnim("anim@mp_point") then
        SetPedConfigFlag(PlayerPedId(), 36, true)
        TaskMoveNetworkByName(PlayerPedId(), 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
        DestroyAllProps()
        PointingThread()
    end
end


-- Commands & KeyMapping --
if Config.PointingEnabled then
    RegisterCommand('pointing', function()
        if IsPedInAnyVehicle(PlayerPedId(), false) and not Config.PointingInCar then
            return
        end
        StartPointing()
    end, false)

    if Config.PointingKeybindEnabled then
        RegisterKeyMapping("pointing", Translate('register_pointing'), "keyboard", Config.PointingKeybind)
    end

    TriggerEvent('chat:addSuggestion', '/pointing', Translate('pointing'))
end


---@return boolean
local function IsPlayerPointing()
    return Pointing
end
CreateExport('IsPlayerPointing', IsPlayerPointing)
