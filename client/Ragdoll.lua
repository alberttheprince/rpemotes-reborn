if Config.RagdollEnabled then
    if not Config.RagdollAsToggle then
        RegisterCommand('-ragdoll', function(source, args, raw) StopRagdoll() end)
    else
        -- -ragdoll need to be set as the keymapping is +ragdoll, as there is a +, the -ragdoll command will always be called
        RegisterCommand('-ragdoll', function() end)
    end

    RegisterCommand('+ragdoll', function(source, args, raw) Ragdoll() end)
    RegisterKeyMapping("+ragdoll", "Ragdoll your character", "keyboard", Config.RagdollKeybind)

    local stop = true
    function Ragdoll()
        if Config.RagdollAsToggle then
            stop = not stop
        else
            stop = false
        end

        while not stop do
            local ped = PlayerPedId()
            if IsPedOnFoot(ped) then
                SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
            end
            Wait(10)
        end
    end

    function StopRagdoll()
        stop = true
    end
end
