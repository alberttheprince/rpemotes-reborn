if Config.RagdollEnabled then
	RegisterCommand('+ragdoll', function(source, args, raw) Ragdoll() end)
	
	RegisterCommand('-ragdoll', function(source, args, raw) StopRagdoll() end)
	
	RegisterKeyMapping("+ragdoll", "Ragdoll your character", "keyboard", Config.RagdollKeybind)
	
	local stop = false
	
	function Ragdoll()
		while not stop do
			local ped = PlayerPedId()
			if IsPedOnFoot(ped) then
				SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
			end
			Wait(10)
		end
		stop = false
	end
	
	function StopRagdoll()
		stop = true
	end
end