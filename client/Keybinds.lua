if Config.SqlKeybinding then
    local emob1 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[1])
    local emob2 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[2])
    local emob3 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[3])
    local emob4 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[4])
    local emob5 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[5])
    local emob6 = GetResourceKvpString("rpemotesKeyBind:"..Config.KeybindKeys[6])

    -----------------------------------------------------------------------------------------------------
    -- Commands / Events --------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    CreateThread(function()
        while true do
            if not IsPedSittingInAnyVehicle(PlayerPedId()) then

                for _, v in pairs(Config.KeybindKeys) do
                    if IsControlJustReleased(0, v) then
                        local selectedEmote = nil
                        if v == Config.KeybindKeys[1] then selectedEmote = emob1
                        elseif v == Config.KeybindKeys[2] then selectedEmote = emob2
                        elseif v == Config.KeybindKeys[3] then selectedEmote = emob3
                        elseif v == Config.KeybindKeys[4] then selectedEmote = emob4
                        elseif v == Config.KeybindKeys[5] then selectedEmote = emob5
                        elseif v == Config.KeybindKeys[6] then selectedEmote = emob6 end
                        if selectedEmote then
                            EmoteCommandStart(nil, { selectedEmote, 0})
                        end
                        Wait(1000)
                    end
                end
            else
                Wait(500)
            end
            Wait(0)
        end
    end)



    -----------------------------------------------------------------------------------------------------
    ------ Functions and stuff --------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    -- function EmoteBindsStart()
    --     EmoteChatMessage(Translate('currentlyboundemotes') .. "\n"
    --         .. firstToUpper(keyb1) .. " = '^2" .. emob1 .. "^7'\n"
    --         .. firstToUpper(keyb2) .. " = '^2" .. emob2 .. "^7'\n"
    --         .. firstToUpper(keyb3) .. " = '^2" .. emob3 .. "^7'\n"
    --         .. firstToUpper(keyb4) .. " = '^2" .. emob4 .. "^7'\n"
    --         .. firstToUpper(keyb5) .. " = '^2" .. emob5 .. "^7'\n"
    --         .. firstToUpper(keyb6) .. " = '^2" .. emob6 .. "^7'\n")
    -- end

    function EmoteBindStart(source, args, raw)
        if #args > 0 then
            local key = string.lower(args[1])
            local emote = string.lower(args[2])
            if (Config.KeybindKeys[key]) ~= nil then
                if RP.Emotes[emote] ~= nil
                    or RP.Dances[emote] ~= nil
                    or RP.PropEmotes[emote] ~= nil
                    or RP.AnimalEmotes[emote] ~= nil
                then
                    SetResourceKvp("rpemotesKeyBind:"..key, emote)
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
            local key = string.lower(args[1])
            if (Config.KeybindKeys[key]) ~= nil then
                TriggerServerEvent("rp:ServerKeybindDelete", key)
                Wait(1000)
                TriggerServerEvent("rp:ServerKeybindExist")

            else
                EmoteChatMessage("'"..key.."' "..Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end

end
