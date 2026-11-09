if not Config.DisableIdleCam then return end

local function setIdleCam(enabled)
    TriggerEvent('chat:addMessage', {
        color = enabled and {31,167,9} or {227,8,0},
        multiline = true,
        args = {'[RPEmotes]', enabled and 'Idle Cam Is Now On' or 'Idle Cam Is Now Off'}
    })
    DisableIdleCamera(not enabled)
    SetPedCanPlayAmbientAnims(PlayerPedId(), enabled)
    SetResourceKvpInt("idleCamToggle", enabled and 2 or 1)
end

RegisterCommand('idlecamoff', function() setIdleCam(false) end, false)
RegisterCommand('idlecamon', function() setIdleCam(true) end, false)

CreateThread(function()
    TriggerEvent("chat:addSuggestion", "/idlecamon", "Re-enables the idle cam")
    TriggerEvent("chat:addSuggestion", "/idlecamoff", "Disables the idle cam")

    local idleCamKvp = GetResourceKvpInt("idleCamToggle")
    if idleCamKvp == 0 then
        return
    end

    DisableIdleCamera(idleCamKvp == 1)
end)
