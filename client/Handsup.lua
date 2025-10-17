local HANDSUP_DICT = "random@mugging3"
local HANDSUP_ANIM = "handsup_standing_base"

local function HandsUpLoop()
    CreateThread(function()
        while InHandsup do
            if Config.DisabledHandsupControls then
                for control, state in pairs(Config.DisabledHandsupControls) do
                    DisableControlAction(0, control, state)
                end
            end

            if IsPlayerAiming(PlayerId()) or not IsEntityPlayingAnim(PlayerPedId(), HANDSUP_DICT, HANDSUP_ANIM, 3) then
                ClearPedSecondaryTask(PlayerPedId())
                InHandsup = false
            end

            Wait(0)
        end
    end)
end

if Config.HandsupEnabled then
    local function ToggleHandsUp(commandType)
        RegisterCommand(commandType, function()
            if IsPedInAnyVehicle(PlayerPedId(), false) and not Config.HandsupInCar and not InHandsup then
                return
            end
            Handsup()
        end, false)
    end

    if Config.HoldToHandsUp then
        ToggleHandsUp('+handsup')
        ToggleHandsUp('-handsup')
    else
        ToggleHandsUp('handsup')
    end

    function Handsup()
        local playerPed = PlayerPedId()
        if not IsPedHuman(playerPed) then
            return
        end
        if IsInActionWithErrorMessage() then
            return
        end

        InHandsup = not InHandsup
        if InHandsup then
            LocalPlayer.state:set('currentEmote', 'handsup', true)
            DestroyAllProps()

            RequestAnimDict(HANDSUP_DICT)
            while not HasAnimDictLoaded(HANDSUP_DICT) do
                Wait(0)
            end

            TaskPlayAnim(PlayerPedId(), HANDSUP_DICT, HANDSUP_ANIM, 3.0, 3.0, -1, HANDSUP_FLAGS, 0, false,
                IsThisModelABike(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), false))) and 4127 or false, false)
            HandsUpLoop()
        else
            LocalPlayer.state:set('currentEmote', nil, true)
            ClearPedSecondaryTask(PlayerPedId())
            if Config.ReplayEmoteAfterHandsup and IsInAnimation then
                local emote = EmoteData[CurrentAnimationName]
                if not emote then
                    return
                end

                Wait(400)
                DestroyAllProps()
                OnEmotePlay(CurrentAnimationName, CurrentTextureVariation)
            end
        end
    end

    TriggerEvent('chat:addSuggestion', '/handsup', Translate('handsup'))

    if Config.HandsupKeybindEnabled then
        RegisterKeyMapping("handsup", Translate('register_handsup'), "keyboard", Config.HandsupKeybind)
    end

    CreateExport('IsPlayerInHandsUp', function()
        return InHandsup
    end)
end