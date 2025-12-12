---@type table<EmoteType, table<string, boolean>>
local emoteCache = {
    [EmoteType.EMOTES] = {},
    [EmoteType.SHARED] = {},
    [EmoteType.EXPRESSIONS] = {},
    [EmoteType.WALKS] = {},
}

-- Load and cache animation lists on startup
local function loadAndCacheEmotes()
    print("^3[rpemotes] Loading and caching emote data...^0")

    -- Load AnimationList.lua
    local animationFile = LoadResourceFile(GetCurrentResourceName(), "client/AnimationList.lua")
    if not animationFile then
        print("^1[rpemotes] Failed to load AnimationList.lua^0")
        return false
    end

    local f, err = load(animationFile .. " return RP")
    if err then
        print("^1[rpemotes] Error loading AnimationList.lua: " .. tostring(err) .. "^0")
        return false
    end

    local success, RP = pcall(f)
    if not success then
        print("^1[rpemotes] Error parsing AnimationList.lua: " .. tostring(RP) .. "^0")
        return false
    end

    -- Load AnimationListCustom.lua
    local CustomDP
    local customFile = LoadResourceFile(GetCurrentResourceName(), "client/AnimationListCustom.lua")
    if customFile then
        local customFunc, customErr = load(customFile .. " return CustomDP")
        if not customErr then
            local customSuccess, result = pcall(customFunc)
            if customSuccess and result then
                CustomDP = result
                print("^2[rpemotes] Loaded custom emotes^0")
            end
        end
    end

    -- Cache emote names by ACE category
    local counts = {
        [EmoteType.EMOTES] = 0,
        [EmoteType.SHARED] = 0,
        [EmoteType.EXPRESSIONS] = 0,
        [EmoteType.WALKS] = 0,
    }

    local function cacheEmotesFromTable(emoteTable)
        for emoteType, emoteList in pairs(emoteTable) do
            local aceCategory = AceCategoryFromEmoteType[emoteType]
            if aceCategory and type(emoteList) == "table" then
                for emoteName in pairs(emoteList) do
                    emoteCache[aceCategory][emoteName] = true
                    counts[aceCategory] += 1
                end
            end
        end
    end

    -- Cache emotes from both AnimationList and AnimationListCustom
    cacheEmotesFromTable(RP)
    if CustomDP then
        cacheEmotesFromTable(CustomDP)
    end

    print(string.format("^2[rpemotes] Cached %d emotes, %d shared, %d expressions, %d walks^0",
        counts[EmoteType.EMOTES], counts[EmoteType.SHARED], counts[EmoteType.EXPRESSIONS], counts[EmoteType.WALKS]))

    return true
end

loadAndCacheEmotes()

-- Build permission lookup cache for O(1) access
-- Structure: aceCache[aceCategory][emoteName] = {acePermission1, acePermission2, ...}
---@type table<EmoteType, table<string, string[]>>
local aceCache = {}

-- Initialize cache from AceCategoryFromEmoteType
for _, aceCategory in pairs(AceCategoryFromEmoteType) do
    if not aceCache[aceCategory] then
        aceCache[aceCategory] = {}
    end
end

local function buildPermissionCache()
    for acePermission, restrictions in pairs(Config.Ace) do
        for emoteType, emoteList in pairs(restrictions) do
            local aceCategory = AceCategoryFromEmoteType[emoteType]
            if aceCategory then
                local categoryCache = aceCache[aceCategory]
                for _, emoteName in ipairs(emoteList) do
                    local aceList = categoryCache[emoteName]
                    if not aceList then
                        aceList = {}
                        categoryCache[emoteName] = aceList
                    end
                    aceList[#aceList + 1] = acePermission
                end
            end
        end
    end
end

buildPermissionCache()

local function hasEmotePermission(source, emoteName, emoteType)
    local aceCategory = AceCategoryFromEmoteType[emoteType]
    if not aceCategory then return true end

    local categoryCache = aceCache[aceCategory]
    if not categoryCache then return true end

    local requiredAces = categoryCache[emoteName]
    if not requiredAces then return true end

    for _, acePermission in ipairs(requiredAces) do
        if IsPlayerAceAllowed(source, acePermission) then return true end
    end

    return false
end


RegisterNetEvent("rpemotes:server:requestEmote", function(target, emotename)
    local source = source
    if not Player(source).state.canEmote then return end

    if target == -1 then return end

    local distance = #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(target)))

    if distance > 3 then return end

    -- Check ACE permission for shared emote (only requestor needs permission)
    if not hasEmotePermission(source, emotename, EmoteType.SHARED) then return end

    TriggerClientEvent("rpemotes:client:requestEmote", target, emotename, source)
end)

RegisterNetEvent("rpemotes:server:confirmEmote", function(target, requestedemote, otheremote)
    local source = source

    if target == -1 then return end

    local distance = #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(target)))

    if distance > 3 then return end

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

RegisterNetEvent("rpemotes:server:syncHeading", function(heading)
    local state = Player(source).state
    state:set("emoteHeading", heading, true)
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

-- Build adaptive permission manifest (sends smaller list: allow or deny)
local function buildPermissionManifest(source)
    local allowedCount = 0
    local deniedCount = 0
    local allowed = {
        [EmoteType.EMOTES] = {},
        [EmoteType.SHARED] = {},
        [EmoteType.EXPRESSIONS] = {},
        [EmoteType.WALKS] = {},
    }
    local denied = {
        [EmoteType.EMOTES] = {},
        [EmoteType.SHARED] = {},
        [EmoteType.EXPRESSIONS] = {},
        [EmoteType.WALKS] = {},
    }

    -- Check all cached emotes against permissions
    for emoteType, emoteNames in pairs(emoteCache) do
        for emoteName in pairs(emoteNames) do
            if hasEmotePermission(source, emoteName, emoteType) then
                allowed[emoteType][emoteName] = true
                allowedCount += 1
            else
                denied[emoteType][emoteName] = true
                deniedCount += 1
            end
        end
    end

    -- Send whichever list is smaller
    if deniedCount < allowedCount then
        return {mode = "deny", categories = denied}
    else
        return {mode = "allow", categories = allowed}
    end
end

--- permissions callback
RegisterNetEvent('rpemotes:server:requestPermissions', function()
    local source = source
    local permissions = buildPermissionManifest(source)
    TriggerClientEvent('rpemotes:client:receivePermissions', source, permissions)
end)
