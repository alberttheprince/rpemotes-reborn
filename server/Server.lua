-----------------------------------------------------------------------------------------------------
-- Shared Emotes Syncing  ---------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

RegisterNetEvent("ServerEmoteRequest", function(target, emotename, etype)

    if not Player(source).state.canEmote then return end

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

    TriggerClientEvent("ClientEmoteRequestReceive", target, emotename, etype, source)
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
    local path = GetResourcePath(GetCurrentResourceName())..'/prop_list.lua'
    -- open file for writing
    local file = io.open(path, 'w')

    assert(file, 'Failed to open file for writing: '..path)
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
