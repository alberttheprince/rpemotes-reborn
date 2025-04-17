if not Config.DisableIdleCam then return end

RegisterCommand('idlecamoff', function() -- help2 31, 167, 9
    TriggerEvent('chat:addMessage', {
        color = {227,8,0},
        multiline = true,
        args = {'[RPEmotes]', 'Idle Cam Is Now Off'}
    })
    DisableIdleCamera(true)
    SetPedCanPlayAmbientAnims(PlayerPedId(), false)
    SetResourceKvpInt("idleCamToggle", 1)
end, false)

RegisterCommand('idlecamon', function() -- help2 31, 167, 9
    TriggerEvent('chat:addMessage', {
        color = {31,167,9},
        multiline = true,
        args = {'[RPEmotes]', 'Idle Cam Is Now On'}
    })
    DisableIdleCamera(false)
    SetPedCanPlayAmbientAnims(PlayerPedId(), true)
    SetResourceKvpInt("idleCamToggle", 2)
end, false)

CreateThread(function()
    TriggerEvent("chat:addSuggestion", "/idlecamon", "Re-enables the idle cam")
    TriggerEvent("chat:addSuggestion", "/idlecamoff", "Disables the idle cam")

    local idleCamKvp = GetResourceKvpInt("idleCamToggle")
    if idleCamKvp == 0 then
        return
    end

    DisableIdleCamera(idleCamKvp == 1)
end)
