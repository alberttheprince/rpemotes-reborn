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

if Config.RagdollEnabled then
    ESX.RegisterCommand('ragdoll', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:ragdoll')
    end, false)
end

if Config.BinocularsEnabled then
    ESX.RegisterCommand('binoculars', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:binoculars')
    end, false, {help = Translate('use_binoculars')})
end

if Config.CrawlEnabled then
    ESX.RegisterCommand('crawl', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:crawl')
    end, false, {help = Translate('crawl')})
end

if Config.CrouchEnabled then
    ESX.RegisterCommand('crouch', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:crouch')
    end, false, {help = Translate('crouch')})
end

if Config.NoIdleCam then
    ESX.RegisterCommand('idlecamoff', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:idlecam', true)
    end, false, {help = Translate('idlecamoff')})

    ESX.RegisterCommand('idlecamon', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:idlecam', false)
    end, false, {help = Translate('idlecamon')})
end

if Config.NewscamEnabled then
    ESX.RegisterCommand('newscam', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:newscam')
    end, false, {help = Translate('use_newcams')})
end

if Config.PointingEnabled then
    ESX.RegisterCommand('pointing', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:pointing')
    end, false, {help = Translate('pointing')})
end

if Config.ExpressionsEnabled then
    ESX.RegisterCommand('mood', 'user', function(xPlayer, args)
        local arg = {args.expression}
        xPlayer.triggerEvent('animations:client:setMood',arg)
    end, false, {help= Translate('setmood'), arguments={{name="expression", help="/moods for a list of valid moods", type='string'}}})

    ESX.RegisterCommand('moods', 'user', function (xPlayer)
        xPlayer.triggerEvent('animations:client:moods')
    end, false, {help = Translate('list_mood')})
end

if Config.SharedEmotesEnabled then
    ESX.RegisterCommand('nearby', 'user', function(xPlayer, args)
        local arg = {args.emote}
        xPlayer.triggerEvent('animations:client:nearby', arg)
    end, false, {arguments={{name="emote", type='string'}}})
end