if Config.Framework ~= 'esx' then return end

local framework = 'es_extended'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

local ESX = exports[framework]:getSharedObject()

ESX.RegisterCommand({'e','emote'}, 'user', function(xPlayer, args)
    local arg = {args.emotename}
    xPlayer.triggerEvent('animations:client:PlayEmote', arg)
end, false, {help = Translate('play_emote'), arguments = {{name = "emotename", help = "dance, camera, sit or any valid emote.", type = 'string'}}})

ESX.RegisterCommand({'emotemenu','em'}, 'user',function(xPlayer)
    xPlayer.triggerEvent('animations:client:EmoteMenu')
end, false, {help=Translate('open_menu_emote')})

ESX.RegisterCommand('emotecancel', 'user',function(xPlayer)
    xPlayer.triggerEvent('animations:client:EmoteCancel')
end, false, {help=Translate('cancel_emote')})

ESX.RegisterCommand('emotes', 'user', function(xPlayer)
    xPlayer.triggerEvent('animations:client:ListEmotes')
end, false, {help=Translate('show_list_emote')})

ESX.RegisterCommand('nearby', 'Share emote with a nearby player.', function(source, args)
    TriggerClientEvent('animations:client:Nearby', source, args)
end, false, {{ name="emotename", help="hug, handshake, bro or any valid shared emote."}})

if Config.WalkingStylesEnabled then
    ESX.RegisterCommand('walk', 'user', function(xPlayer, args)
        local arg = {args.walkname}
        xPlayer.triggerEvent('animations:client:Walk',arg)
    end, false, {help=Translate('play_walk'), arguments={{name="walkname", help="any valid walk.", type='string'}}})

    ESX.RegisterCommand('walks', 'user', function(xPlayer)
        xPlayer.triggerEvent('animations:client:ListWalks')
    end, false, {help=Translate('show_list_walk')})
end

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

if Config.FavKeybindEnabled then
    ESX.RegisterCommand('emotefav', 'user', function(xPlayer)
        xPlayer.triggerEvent('animations:client:EmoteFav')
    end, false, {help = Translate("register_fav_anim")})
end

