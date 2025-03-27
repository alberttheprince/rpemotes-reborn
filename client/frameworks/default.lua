if Config.Framework then return end

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
TriggerEvent('chat:addSuggestion', '/e', Translate('play_emote'),
{ { name = "emotename",      help = Translate('help_command') },
    { name = "texturevariation", help = Translate('help_variation') } })

RegisterCommand('emote', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
TriggerEvent('chat:addSuggestion', '/emote', Translate('play_emote'),
{ { name = "emotename",      help = Translate('help_command') },
    { name = "texturevariation", help = Translate('help_variation') } })

RegisterCommand('emotemenu', function() OpenEmoteMenu() end, false)
TriggerEvent('chat:addSuggestion', '/emotemenu', Translate('open_menu_emote'))

RegisterCommand('emotes', function() EmotesOnCommand() end, false)
TriggerEvent('chat:addSuggestion', '/emotes', Translate('show_list_emote'))

RegisterCommand('emotecancel', function() EmoteCancel() end, false)
TriggerEvent('chat:addSuggestion', '/emotecancel', Translate('cancel_emote'))

if Config.Keybinding then
    RegisterCommand('emotebind', function(source, args, raw) EmoteBindStart(source, args, raw) end, false)
    TriggerEvent('chat:addSuggestion', '/emotebind', Translate('link_emote_keybind'),
    { { name = "key",     help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" },
        { name = "emotename", help = Translate('help_command') } })

    RegisterCommand('emotebinds', function(source, args, raw) EmoteBindsStart() end, false)
    TriggerEvent('chat:addSuggestion', '/emotebinds', Translate('show_emote_keybind'))

    RegisterCommand('emotedelete', function(source, args) DeleteEmote(args) end, false)
    TriggerEvent('chat:addSuggestion', '/emotedelete', Translate('remove_emote_keybind'),
    { { name = "key", help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" } })
end

if Config.WalkingStylesEnabled then
    RegisterCommand('walks', function() WalksOnCommand() end, false)
    TriggerEvent('chat:addSuggestion', '/walk', 'Set your walkingstyle.', { { name = "style", help = "/walks for a list of valid styles" } })

    RegisterCommand('walk', function(_, args, _) WalkCommandStart(tostring(args[1])) end, false)
    TriggerEvent('chat:addSuggestion', '/walks', 'List available walking styles.')
end

if Config.FavKeybindEnabled then
    RegisterCommand('emotefav', function() FavKeybind() end, false)
end

if Config.RagdollEnabled then
    RegisterCommand('ragdoll', function() Ragdoll() end, false)
end

if Config.BinocularsEnabled then
    RegisterCommand("binoculars", function() UseBinocular() end, false)
    TriggerEvent('chat:addSuggestion', '/binoculars', Translate('use_binoculars'), {})
end

if Config.CrawlEnabled then
    RegisterCommand('crawl', function() CrawlKeyPressed() end, false)
    TriggerEvent('chat:addSuggestion', '/crawl', Translate('crawl'))
end

if Config.CrouchEnabled then
    RegisterCommand('crouch', function() CrouchKeyPressed() end, false)
    TriggerEvent('chat:addSuggestion', '/crouch', Translate('crouch'))
end

if Config.NoIdleCam then
    RegisterCommand('idlecamoff', function() Idlecam(true) end, false)
    TriggerEvent("chat:addSuggestion", "/idlecamoff", Translate('idlecamoff'))

    RegisterCommand('idlecamon', function() Idlecam(false) end, false)
    TriggerEvent("chat:addSuggestion", "/idlecamon", Translate('idlecamon'))
end

if Config.NewscamEnabled then
    RegisterCommand("newscam", function() UseNewscam() end, false)
    TriggerEvent('chat:addSuggestion', '/newscam', Translate('use_newcams'), {})
end

if Config.PointingEnabled then
    RegisterCommand('pointing', function() UsePointing() end, false)
    TriggerEvent('chat:addSuggestion', '/pointing', Translate('pointing'))
end

if Config.ExpressionsEnabled then
    RegisterCommand('mood', function(_source, args, _raw) SetMood(args) end, false)
    TriggerEvent('chat:addSuggestion', '/mood', Translate('setmood'),
        { { name = "expression", help = "/moods for a list of valid moods" } })

    RegisterCommand('moods', function() DisplayExpressions() end, false)
    TriggerEvent('chat:addSuggestion', '/moods', Translate('list_mood'))
end

if Config.SharedEmotesEnabled then
    RegisterCommand('nearby', function(source, args, raw) Nearby(args) end, false)
end