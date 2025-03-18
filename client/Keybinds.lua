if Config.Keybinding then
    -----------------------------------------------------------------------------------------------------
    -- Commands / Events --------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

  for i = 1, #Config.KeybindKeys do
    local cmd = string.format('emoteSelect%s', i)
    RegisterCommand(cmd, function()
        local emote = GetResourceKvpString(string.format('%s_emob%s', Config.keybindKVP, i))
        if emote and emote ~= "" then
            EmoteCommandStart(nil, { emote, 0 })
        end
    end, false)
    RegisterKeyMapping(cmd, string.format('Emote bind %s', i), 'keyboard', Config.KeybindKeys[i])
  end
  
    -----------------------------------------------------------------------------------------------------
    ------ Functions and stuff --------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    function EmoteBindStart(_, args, _)
        if #args > 0 then
            local numkey = tonumber(args[1])
            local emote = string.lower(args[2])
            if type(numkey) == "number" then
                if RP.Emotes[emote] ~= nil
                    or RP.Dances[emote] ~= nil
                    or RP.PropEmotes[emote] ~= nil
                    or RP.AnimalEmotes[emote] ~= nil
                then
                    SetResourceKvp(string.format('%s_emob%s', Config.keybindKVP, numkey), emote)
                else
                    EmoteChatMessage("'" .. emote .. "' " .. Translate('notvalidemote') .. "")
                end
            else
                EmoteChatMessage("'" .. numkey .. "' " .. Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end

    function EmoteBindsStart(_, _,_)
        for i = 1, #Config.KeybindKeys do
            local emote = GetResourceKvpString(string.format('%s_emob%s', Config.keybindKVP, i))
            if emote then
                EmoteChatMessage(string.format('Emote %s : %s',i, emote))
            end
        end
    end

    function DeleteEmote(args)
        if #args > 0 then
            local numkey = tonumber(args[1])
            if type(numkey) == "number"  then
                DeleteResourceKvp(string.format('%s_emob%s', Config.keybindKVP, numkey))
            else
                EmoteChatMessage("'" .. numkey .. "' " .. Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end
end
