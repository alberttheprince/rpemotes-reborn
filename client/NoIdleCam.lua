--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



RegisterCommand('idlecamoff', function() -- help2 31, 167, 9
  TriggerEvent('chat:addMessage', {
    color = {227,8,0},
    multiline = true,
    args = {'[RPEmotes]', 'Idle Cam Is Now Off'}
  })
  DisableIdleCamera(true)
  SetPedCanPlayAmbientAnims(playerPed, false)
  SetResourceKvp("idleCam", "off")
end)

RegisterCommand('idlecamon', function() -- help2 31, 167, 9
  TriggerEvent('chat:addMessage', {
    color = {31,167,9},
    multiline = true,
    args = {'[RPEmotes]', 'Idle Cam Is Now On'}
  })
  DisableIdleCamera(false)
  SetPedCanPlayAmbientAnims(playerPed, true)
  SetResourceKvp("idleCam", "on")
end)

Citizen.CreateThread(function()
  TriggerEvent("chat:addSuggestion", "/idlecamon", "Re-enables the idle cam")
  TriggerEvent("chat:addSuggestion", "/idlecamoff", "Disables the idle cam")

  local idleCamDisabled = GetResourceKvpString("idleCam") == "off"
  DisableIdleCamera(idleCamDisabled)
end)
