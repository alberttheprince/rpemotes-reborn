if not Config.CrouchEnabled then return end

IsCrouched = false
local lastKeyPress = 0


-- Crouching --

local function ResetCrouch()
    local playerPed = PlayerPedId()

    ResetPedStrafeClipset(playerPed)
    ResetPedWeaponMovementClipset(playerPed)
    SetPedMaxMoveBlendRatio(playerPed, 1.0)
    SetPedCanPlayAmbientAnims(playerPed, true)

    local walkstyle = GetResourceKvpString("walkstyle")
    if walkstyle ~= nil then
        RequestWalking(walkstyle)
        SetPedMovementClipset(PlayerPedId(), walkstyle, 0.5)
        RemoveClipSet(walkstyle)
    else
        ResetPedMovementClipset(playerPed, 0.5)
    end

    RemoveAnimSet('move_ped_crouched')
end

local function CrouchLoop()
    local playerId = PlayerId()

    while IsCrouched do
        local playerPed = PlayerPedId()

        if not CanPlayerCrouchCrawl(playerPed) then
            IsCrouched = false
            break
        end

        if IsPlayerAiming(playerId) then
            SetPedMaxMoveBlendRatio(playerPed, 0.15)
        end

        SetPedCanPlayAmbientAnims(playerPed, false)

        DisableControlAction(0, 36, true)
        if IsPedUsingActionMode(playerPed) == 1 then
            SetPedUsingActionMode(playerPed, false, -1, 'DEFAULT_ACTION')
        end

        DisableFirstPersonCamThisFrame()

        if Config.FpsMode == true then
            DisableControlAction(2, 25, true) -- disables the aim control action entirely while crouched
        end

        Wait(0)
    end

    TriggerEvent('crouch_crawl:onCrouch', false)

    ResetCrouch()
end

local function StartCrouch()
    IsCrouched = true
    RequestWalking('move_ped_crouched')
    local playerPed = PlayerPedId()

    if GetPedStealthMovement(playerPed) ~= 0 then
        SetPedStealthMovement(playerPed, false, 'DEFAULT_ACTION')
        Wait(100)
    end

    if GetFollowPedCamViewMode() == 4 then
        SetFollowPedCamViewMode(0) -- THIRD_PERSON_NEAR
    end

    SetPedMovementClipset(playerPed, 'move_ped_crouched', 0.6)
    SetPedStrafeClipset(playerPed, 'move_ped_crouched_strafing')

    -- For other scripts to use
    TriggerEvent('crouch_crawl:onCrouch', true)

    CreateThread(CrouchLoop)
end

---Disables a control until it's key has been released
---@param padIndex integer
---@param control integer
local function DisableControlUntilReleased(padIndex, control)
    CreateThread(function()
        while IsDisabledControlPressed(padIndex, control) do
            DisableControlAction(padIndex, control, true)
            Wait(0)
        end
    end)
end

function CrouchKeyPressed()
    if not LocalPlayer.state.canEmote then return end

    if InAction then
        return
    end

    if IsPauseMenuActive() or IsNuiFocused() then
        return
    end

    if IsCrouched then
        IsCrouched = false
        local crouchKey = GetControlInstructionalButton(0, `crouch` | 0x80000000, false)
        local lookBehindKey = GetControlInstructionalButton(0, 26, false) -- INPUT_LOOK_BEHIND

        if crouchKey == lookBehindKey then
            DisableControlUntilReleased(0, 26) -- INPUT_LOOK_BEHIND
        end

        return
    end

    local playerPed = PlayerPedId()

    if not CanPlayerCrouchCrawl(playerPed) or not IsPedHuman(playerPed) then
        return
    end

    local crouchKey = GetControlInstructionalButton(0, `crouch` | 0x80000000, false)
    local lookBehindKey = GetControlInstructionalButton(0, 26, false) -- INPUT_LOOK_BEHIND
    local duckKey = GetControlInstructionalButton(0, 36, false) -- INPUT_DUCK

    if crouchKey == lookBehindKey then
        DisableControlUntilReleased(0, 26) -- INPUT_LOOK_BEHIND
    end

    if crouchKey == duckKey then
        if Config.CrouchOverrideStealthMode then
            DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
        elseif not IsProne then
            local timer = GetGameTimer()

            if GetPedStealthMovement(playerPed) ~= 0 and timer - lastKeyPress < 1000 then
                DisableControlAction(0, 36, true) -- Disable INPUT_DUCK this frame
                lastKeyPress = 0
            else
                lastKeyPress = timer
                return
            end
        end
    end

    StartCrouch()

    if IsProne then
        InAction = true
        IsProne = false
        PlayAnimOnce(playerPed, 'get_up@directional@transition@prone_to_knees@crawl', 'front', nil, nil, 780)
        Wait(780)
        InAction = false
    end
end


-- KeyMapping --
if Config.CrouchKeybindEnabled then
    RegisterKeyMapping('crouch', Translate('register_crouch'), 'keyboard', Config.CrouchKeybind)
end


---Returns if the player is crouched
---@return boolean
local function IsPlayerCrouched()
	return IsCrouched
end
exports('IsPlayerCrouched', IsPlayerCrouched)





