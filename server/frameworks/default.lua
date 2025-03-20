RegisterCommand('e', function(source, args, raw) TriggerClientEvent('animations:client:PlayEmote', source, args) end, false)
RegisterCommand('emote', function(source, args, raw) TriggerClientEvent('animations:client:PlayEmote', source, args) end, false)

if Config.Keybinding then
    RegisterCommand('emotebind', function(source, args, raw) TriggerClientEvent('animations:client:BindEmote', source, args) end, false)
    RegisterCommand('emotebinds', function(source, args, raw) TriggerClientEvent('animations:client:EmoteBinds', source) end, false)
    RegisterCommand('emotedelete', function(source, args) DeleteEmote(args) end, false)
end