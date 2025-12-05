CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/e', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    TriggerEvent('chat:addSuggestion', '/emote', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    TriggerEvent('chat:addSuggestion', '/emotemenu', Translate('open_menu_emote'))
    TriggerEvent('chat:addSuggestion', '/emotes', Translate('show_list_emote'))
    TriggerEvent('chat:addSuggestion', '/emotecancel', Translate('cancel_emote'))
end)

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(args) end, false)
RegisterCommand('emote', function(source, args, raw) EmoteCommandStart(args) end, false)
RegisterCommand('emotecancel', function() EmoteCancel() end, false)

if Config.MenuKeybindEnabled then
    RegisterCommand('emoteui', function() OpenEmoteMenu() end, false)
    RegisterKeyMapping("emoteui", Translate('register_open_menu'), "keyboard", Config.MenuKeybind)
end

RegisterCommand('emotemenu', function() OpenEmoteMenu() end, false)

if Config.EnableCancelKeybind then
    RegisterKeyMapping("emotecancel", Translate('register_cancel_emote'), "keyboard", Config.CancelEmoteKey)
end

-- BINDING EMOTES TO KEYS
if Config.Keybinding then
    for i = 1, #Config.KeybindKeys do
        local cmd = string.format('emoteSelect%s', i)
        RegisterCommand(cmd, function()
            local emote = GetResourceKvpString(string.format('%s_bind_%s', Config.keybindKVP, i))
            if emote and emote ~= "" then
                emote = json.decode(emote)
                RouteEmoteToFunction(emote.emoteName, emote.emoteType)
            end
        end, false)
        RegisterKeyMapping(cmd, Translate("keybind_slot", i), 'keyboard', Config.KeybindKeys[i])
    end

    function EmoteBindStart(args)
        if #args > 0 then
            local numkey = tonumber(args[1])
            local emote = tostring(args[2])
            local label = tostring(args[3])
            local emoteType = tostring(args[4])
            if not (numkey and emote and label and emoteType) then
                DebugPrint('Invalid arguments to EmoteBindStart')
                return
            end
            if type(numkey) == "number" then
                if true then
                    SetResourceKvp(string.format('%s_bind_%s', Config.keybindKVP, numkey), json.encode({label = label, emoteName = emote, emoteType = emoteType}))
                    SimpleNotify(Translate("registered_keybind", label, GetKeyForCommand("emoteSelect"..numkey)))
                else
                    EmoteChatMessage("'" .. emote .. "' " .. Translate('notvalidemote') .. "")
                end
            else
                EmoteChatMessage("'" .. numkey .. "' " .. Translate('notvalidkey'))
            end
        else
            DebugPrint('Invalid number of arguments to EmoteBindStart')
        end
    end

    function DeleteEmoteBind(args)
        if #args > 0 then
            local numkey = tonumber(args[1])
            if type(numkey) == "number"  then
                DeleteResourceKvp(string.format('%s_bind_%s', Config.keybindKVP, numkey))
                SimpleNotify(Translate("cleared_keybind", numkey))
            else
                EmoteChatMessage("'" .. numkey .. "' " .. Translate('notvalidkey'))
            end
        else
            DebugPrint("invalid")
        end
    end
end

-- shoutout to MadsL for sharing the button map on the forums.
local specialkeyCodes = {
    ['b_100'] = 'LMB', -- Left Mouse Button
    ['b_101'] = 'RMB', -- Right Mouse Button
    ['b_102'] = 'MMB', -- Middle Mouse Button
    ['b_103'] = 'Mouse.ExtraBtn1',
    ['b_104'] = 'Mouse.ExtraBtn2',
    ['b_105'] = 'Mouse.ExtraBtn3',
    ['b_106'] = 'Mouse.ExtraBtn4',
    ['b_107'] = 'Mouse.ExtraBtn5',
    ['b_108'] = 'Mouse.ExtraBtn6',
    ['b_109'] = 'Mouse.ExtraBtn7',
    ['b_110'] = 'Mouse.ExtraBtn8',
    ['b_115'] = 'MouseWheel.Up',
    ['b_116'] = 'MouseWheel.Down',
    ['b_130'] = 'NumSubstract',
    ['b_131'] = 'NumAdd',
    ['b_134'] = 'Num Multiplication',
    ['b_135'] = 'Num Enter',
    ['b_137'] = 'Numpad1',
    ['b_138'] = 'Numpad2',
    ['b_139'] = 'Numpad3',
    ['b_140'] = 'Numpad4',
    ['b_141'] = 'Numpad5',
    ['b_142'] = 'Numpad6',
    ['b_143'] = 'Numpad7',
    ['b_144'] = 'Numpad8',
    ['b_145'] = 'Numpad9',
    ['b_170'] = 'F1',
    ['b_171'] = 'F2',
    ['b_172'] = 'F3',
    ['b_173'] = 'F4',
    ['b_174'] = 'F5',
    ['b_175'] = 'F6',
    ['b_176'] = 'F7',
    ['b_177'] = 'F8',
    ['b_178'] = 'F9',
    ['b_179'] = 'F10',
    ['b_180'] = 'F11',
    ['b_181'] = 'F12',
    ['b_182'] = 'F13',
    ['b_183'] = 'F14',
    ['b_184'] = 'F15',
    ['b_185'] = 'F16',
    ['b_186'] = 'F17',
    ['b_187'] = 'F18',
    ['b_188'] = 'F19',
    ['b_189'] = 'F20',
    ['b_190'] = 'F21',
    ['b_191'] = 'F22',
    ['b_192'] = 'F23',
    ['b_193'] = 'F24',
    ['b_194'] = 'Arrow Up',
    ['b_195'] = 'Arrow Down',
    ['b_196'] = 'Arrow Left',
    ['b_197'] = 'Arrow Right',
    ['b_198'] = 'Delete',
    ['b_199'] = 'Escape',
    ['b_200'] = 'Insert',
    ['b_201'] = 'End',
    ['b_210'] = 'Delete',
    ['b_211'] = 'Insert',
    ['b_212'] = 'End',
    ['b_1000'] = 'Shift',
    ['b_1002'] = 'Tab',
    ['b_1003'] = 'Enter',
    ['b_1004'] = 'Backspace',
    ['b_1009'] = 'PageUp',
    ['b_1008'] = 'Home',
    ['b_1010'] = 'PageDown',
    ['b_1012'] = 'CapsLock',
    ['b_1013'] = 'Control',
    ['b_1014'] = 'Right Control',
    ['b_1015'] = 'Alt',
    ['b_1055'] = 'Home',
    ['b_1056'] = 'PageUp',
    ['b_2000'] = 'Space'
}

function GetKeyForCommand(command)
    return GetKeyLabel(GetHashKey(command) | 0x80000000):upper()
end

function GetKeyLabel(commandHash)
    local key = GetControlInstructionalButton(0, commandHash | 0x80000000, true)
    if string.find(key, "t_") then
        local label, _count = string.gsub(key, "t_", "")
        return label
    else
        return specialkeyCodes[key] or "unknown"
    end
end