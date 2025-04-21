if Config.RagdollEnabled then
    RegisterCommand('+ragdoll', function() Ragdoll() end, false)
    RegisterCommand('-ragdoll', function() StopRagdoll() end, false)
    RegisterKeyMapping('+ragdoll', Translate('register_ragdoll'), 'keyboard', Config.RagdollKeybind)

    local isRagdolling = true
    function Ragdoll()
        if IsInAnimation then return end

        local ped = PlayerPedId()
        if not IsPedOnFoot(ped) then return end

        if Config.RagdollAsToggle then
            isRagdolling = not isRagdolling
        else
            isRagdolling = true
        end

        while isRagdolling do
            ped = PlayerPedId()
            SetPedRagdollForceFall(ped)
            ResetPedRagdollTimer(ped)
            SetPedToRagdoll(ped, 1000, 1000, 3, false, false, false)
            ResetPedRagdollTimer(ped)
            Wait(0)
        end
    end

    function StopRagdoll()
        if Config.RagdollAsToggle then return end
        isRagdolling = false
    end
end
