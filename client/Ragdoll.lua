--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



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
            SetPedToRagdoll(ped, 1000, 1000, 0, false, false, false)
            Wait(0)
        end
    end

    function StopRagdoll()
        if Config.RagdollAsToggle then return end
        stop = true
    end
end
