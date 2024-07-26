if Config.RagdollEnabled then
    RegisterCommand('+ragdoll', function() Ragdoll() end, false)
    RegisterCommand('-ragdoll', function() StopRagdoll() end, false)
    RegisterKeyMapping("+ragdoll", "Ragdoll your character", "keyboard", Config.RagdollKeybind)

    local stop = true
    function Ragdoll()
        if IsInAnimation then return end

        local ped = PlayerPedId()
        if not IsPedOnFoot(ped) then return end

        if Config.RagdollAsToggle then
            stop = not stop
        else
            stop = false
        end

        while not stop do
            SetPedRagdollForceFall(PlayerPedId())
            ResetPedRagdollTimer(PlayerPedId())
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 3, 0, 0, 0)
            ResetPedRagdollTimer(PlayerPedId())
            Wait(0)
        end
    end

    function StopRagdoll()
        if Config.RagdollAsToggle then return end
        stop = true
    end
end
