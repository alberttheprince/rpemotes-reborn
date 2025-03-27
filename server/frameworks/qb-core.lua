if Config.Framework ~= 'qb-core' then return end

local framework = 'qb-core'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

local QBCore = exports['qb-core']:GetCoreObject()

-- https://github.com/qbcore-framework/dpemotes/blob/master/Server/Server.lua#L101-L141
QBCore.Commands.Add('e', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:PlayEmote', source, args)
end)

QBCore.Commands.Add('emote', 'Play an emote', {{ name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:PlayEmote', source, args)
end)

QBCore.Commands.Add('emotemenu', 'Open rpemotes menu (F3) by default.', {}, false, function(source)
    TriggerClientEvent('animations:client:EmoteMenu', source)
end)

QBCore.Commands.Add('em', 'Open rpemotes menu (F3) by default.', {}, false, function(source)
    TriggerClientEvent('animations:client:EmoteMenu', source)
end)

QBCore.Commands.Add('emotecancel', Translate('cancel_emote'), {}, false, function(source)
    TriggerClientEvent('animations:client:EmoteCancel', source)
end)

QBCore.Commands.Add('emotes', 'List available emotes.', {}, false, function(source)
    TriggerClientEvent('animations:client:ListEmotes', source)
end)

QBCore.Commands.Add('nearby', 'Share emote with a nearby player.', {{ name="emotename", help="hug, handshake, bro or any valid shared emote."}}, true, function(source, args)
    TriggerClientEvent('animations:client:Nearby', source, args)
end)

if Config.WalkingStylesEnabled then
    QBCore.Commands.Add('walk', 'Set your walkingstyle.', {{ name="style", help="/walks for a list of valid styles"}}, true, function(source, args)
        TriggerClientEvent('animations:client:Walk', source, args)
    end)

    QBCore.Commands.Add('walks', 'List available walking styles.', {}, false, function(source)
        TriggerClientEvent('animations:client:ListWalks', source)
    end)
end

if Config.Keybinding then
    QBCore.Commands.Add('emotebind', 'Bind an emote', {{ name="key", help="num4, num5, num6, num7. num8, num9. Numpad 4-9!"}, { name="emotename", help="dance, camera, sit or any valid emote."}}, true, function(source, args)
        TriggerClientEvent('animations:client:BindEmote', source, args)
    end)

    QBCore.Commands.Add('emotebinds', 'Check your currently bound emotes.', {}, false, function(source)
        TriggerClientEvent('animations:client:EmoteBinds', source)
    end)

    QBCore.Commands.Add('emotedelete', Translate('remove_emote_keybind'), {}, false, function(source, args)
        TriggerClientEvent('animations:client:EmoteDelete', source, args)
    end)
end

if Config.FavKeybindEnabled then
    QBCore.Commands.Add('emotefav', Translate("register_fav_anim"), {}, false, function(source)
        TriggerClientEvent('animations:client:EmoteFav', source)
    end)
end

if Config.RagdollEnabled then
    QBCore.Commands.Add('ragdoll', '', {}, false, function(source)
        TriggerClientEvent('animations:client:ragdoll', source)
    end)
end

if Config.BinocularsEnabled then
    QBCore.Commands.Add('binoculars', Translate('use_binoculars'), {}, false, function(source)
        TriggerClientEvent('animations:client:binoculars', source)
    end)
end

if Config.CrawlEnabled then
    QBCore.Commands.Add('crawl', Translate('crawl'), {}, false, function(source)
        TriggerClientEvent('animations:client:crawl', source)
    end)
end

if Config.CrouchEnabled then
    QBCore.Commands.Add('crouch', Translate('crouch'), {}, false, function(source)
        TriggerClientEvent('animations:client:crouch', source)
    end)
end

if Config.NoIdleCam then
    QBCore.Commands.Add('idlecamoff', Translate('idlecamoff'), {}, false, function(source)
        TriggerClientEvent('animations:client:idlecam', source, true)
    end)

    QBCore.Commands.Add('idlecamon', Translate('idlecamon'), {}, false, function(source)
        TriggerClientEvent('animations:client:idlecam', source, false)
    end)
end

if Config.NewscamEnabled then
    QBCore.Commands.Add('newscam', Translate('use_newcams'), {}, false, function(source)
        TriggerClientEvent('animations:client:newscam', source)
    end)
end

if Config.PointingEnabled then
    QBCore.Commands.Add('pointing', Translate('pointing'), {}, false, function(source)
        TriggerClientEvent('animations:client:pointing', source)
    end)
end

if Config.ExpressionsEnabled then
    QBCore.Commands.Add('mood', Translate('setmood'), {{ name="expression", help="/moods for a list of valid moods"}}, true, function(source, args)
        TriggerClientEvent('animations:client:setMood', source, args)
    end)

    QBCore.Commands.Add('moods', Translate('list_mood'), {}, false, function(source)
        TriggerClientEvent('animations:client:moods', source)
    end)
end

if Config.SharedEmotesEnabled then
    QBCore.Commands.Add('nearby', '', {{name="emote"}}, true, function(source, arg)
        TriggerClientEvent('animations:client:nearby', source, arg)
    end)
end