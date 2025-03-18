if Config.Framework ~= 'esx' then return end

local framework = 'esx'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterCommand('e', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:PlayEmote', source, args)
end)

ESX.RegisterCommand('emote', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:PlayEmote', source, args)
end)

if Config.SqlKeybinding then
    ESX.RegisterCommand('emotebind', 'Bind an emote', {{ name="key", help="num4, num5, num6, num7. num8, num9. Numpad 4-9!"}, { name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
        TriggerClientEvent('animations:client:BindEmote', source, args)
    end)

    ESX.RegisterCommand('emotebinds', 'Check your currently bound emotes.', {}, false, function(source)
        TriggerClientEvent('animations:client:EmoteBinds', source)
    end)
end

ESX.RegisterCommand('emotemenu', 'Open rpemotes menu (F3) by default.', {}, false, function(source)
    TriggerClientEvent('animations:client:EmoteMenu', source)
end)

ESX.RegisterCommand('em', 'Open rpemotes menu (F3) by default.', {}, false, function(source)
    TriggerClientEvent('animations:client:EmoteMenu', source)
end)

ESX.RegisterCommand('emotes', 'List available emotes.', {}, false, function(source)
    TriggerClientEvent('animations:client:ListEmotes', source)
end)

ESX.RegisterCommand('walk', 'Set your walkingstyle.', {{ name="style", help="/walks for a list of valid styles"}}, true, function(source, args)
    TriggerClientEvent('animations:client:Walk', source, args)
end)

ESX.RegisterCommand('walks', 'List available walking styles.', {}, false, function(source)
    TriggerClientEvent('animations:client:ListWalks', source)
end)

ESX.RegisterCommand('nearby', 'Share emote with a nearby player.', {{ name="emotename", help="hug, handshake, bro or any valid shared emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:Nearby', source, args)
end)