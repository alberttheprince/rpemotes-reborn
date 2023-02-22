-----------------------------------------------------------------------------------------------------
-- Shared Emotes Syncing  ---------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

RegisterNetEvent("ServerEmoteRequest", function(target, emotename, etype)
    local ped = GetPlayerPed(source)

    if target == -1 then
        return
    end
    local tped = GetPlayerPed(target)
    local pedcoord = GetEntityCoords(ped)
    local targetcoord = GetEntityCoords(tped)

    local distance = #(pedcoord - targetcoord)

    if distance > 3 then
        return
    end

    TriggerClientEvent("ClientEmoteRequestReceive", target, emotename, etype)
end)

RegisterNetEvent("ServerValidEmote", function(target, requestedemote, otheremote)
    local ped = GetPlayerPed(source)

    if target == -1 then
        return
    end
    local tped = GetPlayerPed(target)
    local pedcoord = GetEntityCoords(ped)
    local targetcoord = GetEntityCoords(tped)

    local distance = #(pedcoord - targetcoord)

    if distance > 3 then
        return
    end

    TriggerClientEvent("SyncPlayEmote", source, otheremote, target)
    TriggerClientEvent("SyncPlayEmoteSource", target, requestedemote, source)
end)

RegisterNetEvent("ServerEmoteCancel", function(target)
    TriggerClientEvent("SyncCancelEmote", target, source)
end)

--#region ptfx
RegisterNetEvent("rpemotes:ptfx:sync", function(asset, name, offset, rot, bone, scale, color)
    if type(asset) ~= "string" or type(name) ~= "string" or type(offset) ~= "vector3" or type(rot) ~= "vector3" then
        print("[rpemotes] ptfx:sync: invalid arguments for source:", source)
        return
    end
    local srcPlayerState = Player(source).state
    srcPlayerState:set('ptfxAsset', asset, true)
    srcPlayerState:set('ptfxName', name, true)
    srcPlayerState:set('ptfxOffset', offset, true)
    srcPlayerState:set('ptfxRot', rot, true)
    srcPlayerState:set('ptfxBone', bone, true)
    srcPlayerState:set('ptfxScale', scale, true)
    srcPlayerState:set('ptfxColor', color, true)
    srcPlayerState:set('ptfxPropNet', false, true)
    srcPlayerState:set('ptfx', false, true)
end)

RegisterNetEvent("rpemotes:ptfx:syncProp", function(propNet)
    local srcPlayerState = Player(source).state
    if propNet then
        -- Prevent infinite loop to get entity
        local waitForEntityToExistCount = 0
        while waitForEntityToExistCount <= 100 and not DoesEntityExist(NetworkGetEntityFromNetworkId(propNet)) do
            Wait(10)
            waitForEntityToExistCount = waitForEntityToExistCount + 1
        end

        -- If below 100 then we could find the loaded entity
        if waitForEntityToExistCount < 100 then
            srcPlayerState:set('ptfxPropNet', propNet, true)
            return
        end
    end
    -- If we reach this point then we couldn't find the entity
    srcPlayerState:set('ptfxPropNet', false, true)
end)
--#endregion ptfx

-----------------------------------------------------------------------------------------------------
-- Keybinding  --------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

local function addKeybindEventHandlers()
    RegisterNetEvent("rp:ServerKeybindExist", function()
        local src = source
        local srcid = GetPlayerIdentifier(src)
        MySQL.query('SELECT * FROM dpkeybinds WHERE `id`=@id;', { id = srcid }, function(dpkeybinds)
            if dpkeybinds[1] then
                TriggerClientEvent("rp:ClientKeybindExist", src, true)
            else
                TriggerClientEvent("rp:ClientKeybindExist", src, false)
            end
        end)
    end)

    --  This is my first time doing SQL stuff, and after i finished everything i realized i didnt have to store the keybinds in the database at all.
    --  But remaking it now is a little pointless since it does it job just fine!

    RegisterNetEvent("rp:ServerKeybindCreate", function()
        local src = source
        local srcid = GetPlayerIdentifier(src)
        MySQL.insert('INSERT INTO dpkeybinds (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES (@id, @keybind1, @emote1, @keybind2, @emote2, @keybind3, @emote3, @keybind4, @emote4, @keybind5, @emote5, @keybind6, @emote6);'
            ,
            { id = srcid, keybind1 = "num4", emote1 = "", keybind2 = "num5", emote2 = "", keybind3 = "num6", emote3 = "",
                keybind4 = "num7", emote4 = "", keybind5 = "num8", emote5 = "", keybind6 = "num9", emote6 = "" },
            function(created) print("[rp] ^2" .. GetPlayerName(src) .. "^7 got created!")
                TriggerClientEvent("rp:ClientKeybindGet"
                    , src, "num4", "", "num5", "", "num6", "", "num7", "", "num8", "", "num8", "")
            end)
    end)

    RegisterNetEvent("rp:ServerKeybindGrab", function()
        local src = source
        local srcid = GetPlayerIdentifier(src)
        MySQL.query('SELECT keybind1, emote1, keybind2, emote2, keybind3, emote3, keybind4, emote4, keybind5, emote5, keybind6, emote6 FROM `dpkeybinds` WHERE `id` = @id'
            ,
            { ['@id'] = srcid }, function(kb)
            if kb[1].keybind1 ~= nil then
                TriggerClientEvent("rp:ClientKeybindGet", src, kb[1].keybind1, kb[1].emote1, kb[1].keybind2, kb[1].emote2
                    , kb[1].keybind3, kb[1].emote3, kb[1].keybind4, kb[1].emote4, kb[1].keybind5, kb[1].emote5,
                    kb[1].keybind6, kb[1].emote6)
            else
                TriggerClientEvent("rp:ClientKeybindGet", src, "num4", "", "num5", "", "num6", "", "num7", "", "num8", ""
                    , "num8", "")
            end
        end)
    end)

    RegisterNetEvent("rp:ServerKeybindUpdate", function(key, emote)
        local src = source
        local myid = GetPlayerIdentifier(source)
        if key == "num4" then chosenk = "keybind1"
        elseif key == "num5" then chosenk = "keybind2"
        elseif key == "num6" then chosenk = "keybind3"
        elseif key == "num7" then chosenk = "keybind4"
        elseif key == "num8" then chosenk = "keybind5"
        elseif key == "num9" then chosenk = "keybind6"
        end
        if chosenk == "keybind1" then
            MySQL.update("UPDATE dpkeybinds SET emote1=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        elseif chosenk == "keybind2" then
            MySQL.update("UPDATE dpkeybinds SET emote2=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        elseif chosenk == "keybind3" then
            MySQL.update("UPDATE dpkeybinds SET emote3=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        elseif chosenk == "keybind4" then
            MySQL.update("UPDATE dpkeybinds SET emote4=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        elseif chosenk == "keybind5" then
            MySQL.update("UPDATE dpkeybinds SET emote5=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        elseif chosenk == "keybind6" then
            MySQL.update("UPDATE dpkeybinds SET emote6=@emote WHERE id=@id", { id = myid, emote = emote },
                function() TriggerClientEvent("rp:ClientKeybindGetOne", src, key, emote) end)
        end
    end)
end

if Config.SqlKeybinding and MySQL then
    MySQL.update(
        [[
		CREATE TABLE IF NOT EXISTS `dpkeybinds` (
		  `id` varchar(50) NULL DEFAULT NULL,
		  `keybind1` varchar(50) NULL DEFAULT "num4",
		  `emote1` varchar(255) NULL DEFAULT "",
		  `keybind2` varchar(50) NULL DEFAULT "num5",
		  `emote2` varchar(255) NULL DEFAULT "",
		  `keybind3` varchar(50) NULL DEFAULT "num6",
		  `emote3` varchar(255) NULL DEFAULT "",
		  `keybind4` varchar(50) NULL DEFAULT "num7",
		  `emote4` varchar(255) NULL DEFAULT "",
		  `keybind5` varchar(50) NULL DEFAULT "num8",
		  `emote5` varchar(255) NULL DEFAULT "",
		  `keybind6` varchar(50) NULL DEFAULT "num9",
		  `emote6` varchar(255) NULL DEFAULT ""
		) ENGINE=InnoDB COLLATE=latin1_swedish_ci;
		]]     , {}, function(success)
        if success then
            addKeybindEventHandlers()
        else
            print("[rp] ^3Error connecting to DB^7")
        end
    end)
else
    print("[rp] ^3Sql Keybinding^7 is turned ^1off^7, if you want to enable /emotebind, set ^3SqlKeybinding = ^2true^7 in config.lua and uncomment oxmysql lines in fxmanifest.lua.")
end

-- Emote props extractor
local function ExtractEmoteProps(format)
    local format = tonumber(format)
    local xt, c, total = '', '', 0
    if format == 1 then
        print("Selected format: ^2\'prop_name\',")
        xt = '\''; c = ','
      elseif format == 2 then
        print("Selected format: ^2\"prop_name\",")
        xt = '\"'; c = ','
      elseif format == 3 then
        print("Selected format: ^2prop_name,")
      else
        print("\n### RPEmotes - Props Extractor ###\n\n^3Select output format^0\nAvailable formats:\n^11^0 - ^2\'prop_name\',\n^12^0 - ^2\"prop_name\",\n^13^0 -  ^2prop_name\n\n^0Command usage example: ^5emoteextract 1^0\n")
    end

    local animationFile = LoadResourceFile(GetCurrentResourceName(), "client/AnimationList.lua")
    if not animationFile then return nil end

    local f, err = load(animationFile .. " return RP")
    if err then return nil end

    local success, res = pcall(f)
    if not success then return nil end

    local RP = res

    -- table to keep track of exported values
    local exportedValues = {}
    local path = GetResourcePath(GetCurrentResourceName())..'/.prop_list.lua'
    -- open file for writing
    local file = io.open(path, 'w')

    -- loop through each key-value pair in the table
    -- tables that has props:
    -- RP.PropEmotes
    -- RP.Shared (most likely all props mentioned in here is used in PropEmotes, so I don't check it)
    for _, value in pairs(RP.PropEmotes) do
        -- check if the current value is a table and has an AnimationOptions field
        if type(value) == 'table' and value.AnimationOptions then
            -- extract the Prop and SecondProp values and check if they're nil and not already exported
            local propValue = value.AnimationOptions.Prop
            local secondPropValue = value.AnimationOptions.SecondProp
            if propValue and not exportedValues[propValue] then
                file:write(xt .. propValue .. xt .. c ..'\n')
                exportedValues[propValue] = true
                total += 1
            end
            if secondPropValue and not exportedValues[secondPropValue] then
                file:write(xt .. secondPropValue .. c ..'\n')
                exportedValues[secondPropValue] = true
                total += 1
            end
        end
    end

    print('Exported props: '..total)

    -- close the file
    file:close()
end

RegisterCommand("emoteextract", function(source, args)
    if source > 0 then return end
    ExtractEmoteProps(args[1])
end, true)
