local isCrouched = false
local keyPressed = false
local lastKeyPress = 0

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

            -- Disables "INPUT_DUCK" and blocks stealth mode
            DisableControlAction(0, 36, true)
            if GetPedStealthMovement(playerPed) == 1 then
                SetPedStealthMovement(playerPed, false, "DEFAULT_ACTION")
            end

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
    if CanPlayerCrouch(playerPed) then
        StartCrouch()
    else
        EmoteChatMessage("You can't crouch right now.")
    end
end

local function CrouchKeyPressed()
    -- If crouched then stop crouching
    if isCrouched then
        isCrouched = false
        return
    end

    -- Get +crouch and INPUT_DUCK keys
    local crouchKey = GetControlInstructionalButton(0, 0xD2D0BEBA, false)
    local duckKey = GetControlInstructionalButton(0, 36, false)

    local playerPed = PlayerPedId()

    -- If crouch is the same as duck
    if crouchKey == duckKey then
        local timer = GetGameTimer()
        local timeSinceLastPress = timer - lastKeyPress
        -- If we are in stealth mode and we have already pressed the button in the last second
        if GetPedStealthMovement(playerPed) == 1 and timeSinceLastPress < 1000 then
            DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
            lastKeyPress = 0
            AttemptCrouch(playerPed)
            return
        end
        lastKeyPress = timer
    else
        AttemptCrouch(playerPed)
    end
end

if Config.CrouchKeybindEnabled then
    RegisterKeyMapping('+crouch', "Crouch", "keyboard", Config.CrouchKeybind)
end
RegisterCommand('+crouch', function(source, args, raw) keyPressed = true; CrouchKeyPressed() end, false)
RegisterCommand('-crouch', function(source, args, raw) keyPressed = false end, false)
RegisterCommand('crouch', function(source, args, raw)
    if not keyPressed then
        if isCrouched then
            isCrouched = false
            return
        end

        AttemptCrouch(PlayerPedId())
    end
end, false)
