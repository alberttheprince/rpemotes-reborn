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

if Config.Keybinding then
    ESX.RegisterCommand('emotebind', 'user', function(xPlayer, args)
        local arg = {args.key, args.emotename}
        xPlayer.triggerEvent('animations:client:BindEmote', arg)
    end, false, {help = Translate('link_emote_keybind'), arguments= {{name = "key", help= "1, 2, 3, 4, 5, 6", type='number'}, {name="emotename", help="dance, camera, sit or any valid emote.", type='string'}}})

    ESX.RegisterCommand('emotebinds', 'user', function(xPlayer)
        xPlayer.triggerEvent('animations:client:EmoteBinds')
    end, false, {help = Translate('show_emote_keybind')})

    ESX.RegisterCommand('emotedelete', 'user', function(xPlayer, args)
        local arg = {args.key}
        xPlayer.triggerEvent('animations:client:EmoteDelete', arg)
    end, false, {help = Translate('remove_emote_keybind'), arguments={{name = "key", help= "1, 2, 3, 4, 5, 6", type='number'}}})
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