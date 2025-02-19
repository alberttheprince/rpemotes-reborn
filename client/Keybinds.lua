if Config.SqlKeybinding then
    local emob1 = ""
    local emob2 = ""
    local emob3 = ""
    local emob4 = ""
    local emob5 = ""
    local emob6 = ""
    local keyb1 = ""
    local keyb2 = ""
    local keyb3 = ""
    local keyb4 = ""
    local keyb5 = ""
    local keyb6 = ""
    local Initialized = false

    -----------------------------------------------------------------------------------------------------
    -- Commands / Events --------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    CreateThread(function()
        while true do
            if NetworkIsPlayerActive(PlayerId()) and not Initialized then
                if not Initialized then
                    TriggerServerEvent("rp:ServerKeybindExist")
                    Wait(5000)
                end
            end

            if not IsPedSittingInAnyVehicle(PlayerPedId()) then
                for k, v in pairs(Config.KeybindKeys) do
                    if IsControlJustReleased(0, v) then
                        if k == keyb1 then if emob1 ~= "" then EmoteCommandStart(nil, { emob1, 0 }) end end
                        if k == keyb2 then if emob2 ~= "" then EmoteCommandStart(nil, { emob2, 0 }) end end
                        if k == keyb3 then if emob3 ~= "" then EmoteCommandStart(nil, { emob3, 0 }) end end
                        if k == keyb4 then if emob4 ~= "" then EmoteCommandStart(nil, { emob4, 0 }) end end
                        if k == keyb5 then if emob5 ~= "" then EmoteCommandStart(nil, { emob5, 0 }) end end
                        if k == keyb6 then if emob6 ~= "" then EmoteCommandStart(nil, { emob6, 0 }) end end
                        Wait(1000)
                    end
                end
            else
                Wait(500)
            end
            Wait(0)
        end
    end)

    RegisterNetEvent("rp:ClientKeybindExist", function(does)
        if does then
            TriggerServerEvent("rp:ServerKeybindGrab")
        else
            TriggerServerEvent("rp:ServerKeybindCreate")
        end
    end)

    RegisterNetEvent("rp:ClientKeybindGet", function(k1, e1, k2, e2, k3, e3, k4, e4, k5, e5, k6, e6)
        keyb1 = k1
        emob1 = e1
        keyb2 = k2
        emob2 = e2
        keyb3 = k3
        emob3 = e3
        keyb4 = k4
        emob4 = e4
        keyb5 = k5
        emob5 = e5
        keyb6 = k6
        emob6 = e6
        Initialized = true
    end)

    RegisterNetEvent("rp:ClientKeybindGetOne", function(key, e)
        SimpleNotify(Translate('boundto', e, FirstToUpper(key)))
        if key == "num4" then
            emob1 = e
            keyb1 = "num4"
        elseif key == "num5" then
            emob2 = e
            keyb2 = "num5"
        elseif key == "num6" then
            emob3 = e
            keyb3 = "num6"
        elseif key == "num7" then
            emob4 = e
            keyb4 = "num7"
        elseif key == "num8" then
            emob5 = e
            keyb5 = "num8"
        elseif key == "num9" then
            emob6 = e
            keyb6 = "num9"
        end
    end)

    -----------------------------------------------------------------------------------------------------
    ------ Functions and stuff --------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------

    function EmoteBindsStart()
        EmoteChatMessage(Translate('currentlyboundemotes') .. "\n"
            .. FirstToUpper(keyb1) .. " = '^2" .. emob1 .. "^7'\n"
            .. FirstToUpper(keyb2) .. " = '^2" .. emob2 .. "^7'\n"
            .. FirstToUpper(keyb3) .. " = '^2" .. emob3 .. "^7'\n"
            .. FirstToUpper(keyb4) .. " = '^2" .. emob4 .. "^7'\n"
            .. FirstToUpper(keyb5) .. " = '^2" .. emob5 .. "^7'\n"
            .. FirstToUpper(keyb6) .. " = '^2" .. emob6 .. "^7'\n")
    end

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
                    TriggerServerEvent("rp:ServerKeybindUpdate", key, emote)
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
                EmoteChatMessage("'" .. key .. "' " .. Translate('notvalidkey'))
            end
        else
            print("invalid")
        end
    end
end
