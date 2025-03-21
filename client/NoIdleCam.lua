if not Config.NoIdleCam then return end

function Idlecam(bool)
    if bool then
        TriggerEvent('chat:addMessage', {
            color = {227,8,0},
            multiline = true,
            args = {'[RPEmotes]', 'Idle Cam Is Now Off'}
        })
        DisableIdleCamera(true)
        SetPedCanPlayAmbientAnims(PlayerPedId(), false)
        SetResourceKvpInt("idleCamToggle", 1)
    else
        TriggerEvent('chat:addMessage', {
            color = {31,167,9},
            multiline = true,
            args = {'[RPEmotes]', 'Idle Cam Is Now On'}
        })
        DisableIdleCamera(false)
        SetPedCanPlayAmbientAnims(PlayerPedId(), true)
        DeleteResourceKvp('idleCamToggle')
    end
end

CreateThread(function()
    local idleCamKvp = GetResourceKvpInt("idleCamToggle")
    if idleCamKvp and idleCamKvp ~= 1 then
        return
    end

    DisableIdleCamera(idleCamKvp == 1)
end)
