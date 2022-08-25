if Config.RagdollEnabled then
	if Config.RagdollAsToggle then 
		RegisterCommand('-ragdoll', function(source, args, raw) StopRagdoll() end)
	end

	RegisterCommand('+ragdoll', function(source, args, raw) Ragdoll() end)
	RegisterKeyMapping("+ragdoll", "Ragdoll your character", "keyboard", Config.RagdollKeybind)

	local stop = false
	
	function Ragdoll()
		if Config.RagdollAsToggle then
			while not stop do
				local ped = PlayerPedId()
				if IsPedOnFoot(ped) then
					SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
				end
				Wait(10)
			end
			stop = false
		else
			local ped = PlayerPedId()
			if IsPedOnFoot(ped) then
				SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
			end
		end
	end
	
	function StopRagdoll()
		stop = true
	end
end