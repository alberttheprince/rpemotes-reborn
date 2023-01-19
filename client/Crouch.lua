local isCrouched = false

local function LoadAnimSet(set)
    RequestAnimSet(set)
    while not HasAnimSetLoaded(set) do
		Citizen.Wait(0)
	end
end

local function CanPlayerCrouch(playerPed)
	if not IsPedOnFoot(playerPed) or IsPedJumping(playerPed) or IsPedFalling(playerPed) or IsPedInjured(playerPed) or IsPedInMeleeCombat(playerPed) then
		return false
	end

    return true
end

local function IsPlayerAiming(player)
    return IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()
end

local function ResetCrouch()
    local playerPed = PlayerPedId()

    ResetPedStrafeClipset(playerPed)
    ResetPedWeaponMovementClipset(playerPed)
    SetPedMaxMoveBlendRatio(playerPed, 1.0)
    SetPedCanPlayAmbientAnims(playerPed, true)

    -- Applies the previous walk style (or resets to default if non had been set)
    local walkStyle = GetResourceKvpString("walkstyle")
    if walkStyle ~= nil then
        RequestWalking(walkStyle) -- Global function from Walk.lua
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
            if not CanPlayerCrouch(playerPed) then
                isCrouched = false
                break
            end

            -- Limit the speed that the player can walk when aiming
            if IsPlayerAiming(playerId) then
                SetPedMaxMoveBlendRatio(playerPed, 0.15)
            end

            -- This blocks the ped from standing up and playing idle anims (this needs to be looped)
            SetPedCanPlayAmbientAnims(playerPed, false)

            -- Disables "INPUT_DUCK" and action mode
            DisableControlAction(0, 36, true)
            SetPedUsingActionMode(playerPed, false, -1, "DEFAULT_ACTION")

            -- Disable first person
            DisableFirstPersonCamThisFrame()

            Wait(0)
        end

        -- Reset walk sytle and ped variables
        ResetCrouch()
    end)
end

local function StartCrouch()
    isCrouched = true
    local playerPed = PlayerPedId()
    LoadAnimSet("move_ped_crouched")

    -- Force leave action mode
    SetPedUsingActionMode(playerPed, false, -1, "DEFAULT_ACTION")
    Wait(100)

    -- Force leave first person view
    if GetFollowPedCamViewMode() == 4 then
        SetFollowPedCamViewMode(0) -- THIRD_PERSON_NEAR
    end

	SetPedMovementClipset(playerPed, "move_ped_crouched", 0.6)
    SetPedStrafeClipset(playerPed, "move_ped_crouched_strafing")

    CrouchThread()
end

local function ToggleCrouch()
    DisableControlAction(0, 36, true) -- Disables "INPUT_DUCK" this frame
    if not isCrouched then
        local playerPed = PlayerPedId()
        if CanPlayerCrouch(playerPed) then
            StartCrouch()
        else
            EmoteChatMessage("You can't crouch right now.")
        end
    else
        isCrouched = false
    end
end

RegisterCommand('crouch', function(source, args, raw) ToggleCrouch() end, false)
if Config.CrouchKeybindEnabled then
    RegisterKeyMapping('crouch', "Crouch", "keyboard", Config.CrouchKeybind)
end
