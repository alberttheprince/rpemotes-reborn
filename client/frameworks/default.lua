if Config.Framework then return end

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/e', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    TriggerEvent('chat:addSuggestion', '/emote', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    if Config.SqlKeybinding then
        TriggerEvent('chat:addSuggestion', '/emotebind', Translate('link_emote_keybind'),
            { { name = "key",     help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" },
                { name = "emotename", help = Translate('help_command') } })
        TriggerEvent('chat:addSuggestion', '/emotebinds', Translate('show_emote_keybind'))
        TriggerEvent('chat:addSuggestion', '/emotedelete', Translate('remove_emote_keybind'),
            { { name = "key", help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" } })
    end
    TriggerEvent('chat:addSuggestion', '/emotemenu', Translate('open_menu_emote'))
    TriggerEvent('chat:addSuggestion', '/emotes', Translate('show_list_emote'))
    TriggerEvent('chat:addSuggestion', '/emotecancel', Translate('cancel_emote'))
end)