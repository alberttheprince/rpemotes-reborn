if Config.Keybinding then
    -----------------------------------------------------------------------------------------------------
    -- Commands / Events --------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

  for i= 1, #Config.KeybindKeys do
    local cmd = string.format('emoteSelect%s', i)
    local emote = GetResourceKvpString(string.format('%s_emob%s', Config.keybindKVP, i))
    RegisterCommand(cmd, function()
        EmoteCommandStart(nil, { emote, 0 })
    end, false)
    RegisterKeyMapping(cmd, string.format('Emote bind %s', i), 'keyboard', Config.KeybindKeys[i])
  end

  RegisterCommand('emotebind', function(source, args, raw) EmoteBindStart(source, args, raw) end, false)
  RegisterCommand('emotedelete', function(source, args) DeleteEmote(source, args) end, false)
    -----------------------------------------------------------------------------------------------------
    ------ Functions and stuff --------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    function EmoteBindStart(source, args, raw)
        if #args > 0 then
            local numkey = string.lower(args[1])
            local emote = string.lower(args[2])
            if type(numkey) == "number" then
                if RP.Emotes[emote] ~= nil
                    or RP.Dances[emote] ~= nil
                    or RP.PropEmotes[emote] ~= nil
                    or RP.AnimalEmotes[emote] ~= nil
                then
                    SetResourceKvp(string.format('%s_emob%s', Config.keybindKVP, numkey),"")
                else
                    EmoteChatMessage("'" .. emote .. "' " .. Translate('notvalidemote') .. "")
                end
            else
                EmoteChatMessage("'" .. key .. "' " .. Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end

    function DeleteEmote(source, args)
        if #args > 0 then
            local numkey = args[1]
            if type(numkey) == "number"  then
                SetResourceKvp(string.format('%s_emob%s', Config.keybindKVP, numkey),"")
            else
                EmoteChatMessage("'" .. numkey .. "' " .. Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end
end
