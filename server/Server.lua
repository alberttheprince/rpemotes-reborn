RegisterNetEvent("rpemotes:server:requestEmote", function(target, emotename)
    local source = source
    if not Player(source).state.canEmote then return end

    if target == -1 then
        return
    end

    local distance = #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(target)))

    if distance > 3 then
        return
    end

    TriggerClientEvent("rpemotes:client:requestEmote", target, emotename, source)
end)

RegisterNetEvent("rpemotes:server:confirmEmote", function(target, requestedemote, otheremote)
    local source = source

    if target == -1 then
        return
    end

    local distance = #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(target)))

    if distance > 3 then
        return
    end

    TriggerClientEvent("rpemotes:client:syncEmote", source, otheremote, target)
    TriggerClientEvent("rpemotes:client:syncEmoteSource", target, requestedemote, source)
end)

RegisterNetEvent("rpemotes:server:cancelEmote", function(target)
    TriggerClientEvent("rpemotes:client:cancelEmote", target, source)
end)

RegisterNetEvent("rpemotes:ptfx:sync", function(asset, name, offset, rot, bone, scale, color)
    assert(type(asset) == "string", "[rpemotes] ptfx:sync: invalid asset for source: " .. tostring(source))
    assert(type(name) == "string", "[rpemotes] ptfx:sync: invalid name for source: " .. tostring(source))
    assert(type(offset) == "vector3", "[rpemotes] ptfx:sync: invalid offset for source: " .. tostring(source))
    assert(type(rot) == "vector3", "[rpemotes] ptfx:sync: invalid rot for source: " .. tostring(source))

    local state = Player(source).state

    state:set("ptfxAsset", asset, true)
    state:set("ptfxName", name, true)
    state:set("ptfxOffset", offset, true)
    state:set("ptfxRot", rot, true)
    state:set("ptfxBone", bone, true)
    state:set("ptfxScale", scale, true)
    state:set("ptfxColor", color, true)
    state:set("ptfx", nil, true)
end)

local function ExtractEmoteProps(format)
    format = tonumber(format)
    local xt, c, total = '', '', 0
    if format == 1 then
        print("Selected format: ^2'prop_name',")
        xt = "'"; c = ","
    elseif format == 2 then
        print("Selected format: ^2\"prop_name\",")
        xt = "\""; c = ","
    elseif format == 3 then
        print("Selected format: ^2prop_name,")
    elseif format == 4 then
        print("Selected to calculate ^2total amount of emotes^0.")
    else
        print(
        "\n### RPEmotes - Props Extractor ###\n\n^3Select output format^0\nAvailable formats:\n^11^0 - ^2'prop_name',\n^12^0 - ^2\"prop_name\",\n^13^0 -  ^2prop_name\n^14^0 -  ^2calculate total emotes\n\n^0Command usage example: ^5emoteextract 1^0\n")
        return
    end

    local animationFile = LoadResourceFile(GetCurrentResourceName(), "client/AnimationList.lua")
    if not animationFile then return nil end

    local f, err = load(animationFile .. " return RP")
    if err then return nil end

    local success, res = pcall(f)
    if not success then return nil end

    if format == 4 then
        local emoteTypes = { EmoteType.SHARED, EmoteType.DANCES, EmoteType.ANIMAL_EMOTES, EmoteType.EMOTES, EmoteType.PROP_EMOTES, EmoteType.EXPRESSIONS, EmoteType.WALKS }
        local expressionAndWalkCount = 0
        local otherEmotesCount = 0

        for _, emoteType in ipairs(emoteTypes) do
            local count = 0
            for _ in pairs(res[emoteType]) do
                count = count + 1
            end
            if emoteType == EmoteType.EXPRESSIONS or emoteType == EmoteType.WALKS then
                expressionAndWalkCount = expressionAndWalkCount + count
            else
                otherEmotesCount = otherEmotesCount + count
            end
        end

        local totalEmotes = expressionAndWalkCount + otherEmotesCount

        print("Total Expressions and Walks: ^3" .. expressionAndWalkCount .. "^0")
        print("Total Emotes without Expressions and Walks: ^3" .. otherEmotesCount .. "^0")
        print("Total Emotes: ^3" .. totalEmotes .. "^0")
    else
        local file = io.open(GetResourcePath(GetCurrentResourceName()) .. "/prop_list.lua", "w+")
        if not file then
            print("Failed to open file for writing.")
            return
        end

        local uniqueProps = {}

        for _, value in pairs(res.PropEmotes) do
            if type(value) == "table" and value.AnimationOptions then
            local prop = value.AnimationOptions.Prop
            local secondProp = value.AnimationOptions.SecondProp
            if prop then uniqueProps[prop] = true end
            if secondProp then uniqueProps[secondProp] = true end
            end
        end

        -- Write all unique props to file
        for propName in pairs(uniqueProps) do
            file:write(xt .. propName .. xt .. c .. "\n")
            total = total + 1
        end

        file:close()
        print("Exported " .. total .. " props to ^2prop_list.lua^0")
    end
end

RegisterCommand("emoteextract", function(source, args)
    if source > 0 then return end
    ExtractEmoteProps(args[1])
end, true)

AddEventHandler("playerLeftScope", function(data)
    TriggerClientEvent("onPlayerLeavingScope", tonumber(data["for"]), tonumber(data["player"]))
end)
