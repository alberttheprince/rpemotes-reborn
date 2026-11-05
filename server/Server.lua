SetConvarReplicated('rpemotes:onesync', GetConvar("onesync", "off") ~= "off" and "true" or "false")

---@type table<EmoteType, table<string, boolean>>
local emoteCache = {
    [EmoteType.EMOTES] = {},
    [EmoteType.SHARED] = {},
    [EmoteType.EXPRESSIONS] = {},
    [EmoteType.WALKS] = {},
}

---@type table<EmoteType, table<string, boolean>>
local propEmoteCache = {
    [EmoteType.EMOTES] = {},
    [EmoteType.SHARED] = {},
}

---@type table<string, string>
local sharedPartnerEmote = {}

---@type table<string, table<string, boolean>>
local ptfxCache = {}

---Runs a client animation list file and returns the table it builds.
---@param fileName string
---@param varName string the global (or local) table the file fills
---@return table?, string?
local function loadAnimationList(fileName, varName)
    local content = LoadResourceFile(GetCurrentResourceName(), fileName)
    if not content then return nil, "file not found" end

    local chunk, err = load(content .. " return " .. varName)
    if not chunk then return nil, err end

    local ok, result = pcall(chunk)
    if not ok then return nil, result end
    return result
end

-- Load and cache animation lists on startup
local function loadAndCacheEmotes()
    print("^3[rpemotes] Loading and caching emote data...^0")

    local RP, err = loadAnimationList("client/AnimationList.lua", "RP")
    if not RP then
        print("^1[rpemotes] Failed to load AnimationList.lua: " .. tostring(err) .. "^0")
        return false
    end

    local CustomDP = loadAnimationList("client/AnimationListCustom.lua", "CustomDP")
    if CustomDP then
        print("^2[rpemotes] Loaded custom emotes^0")
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
                for emoteName, emoteData in pairs(emoteList) do
                    emoteCache[aceCategory][emoteName] = true
                    counts[aceCategory] += 1

                    if type(emoteData) == "table" then
                        if aceCategory == EmoteType.SHARED then
                            sharedPartnerEmote[emoteName] = emoteData[4] or emoteName
                        end

                        local options = emoteData.AnimationOptions
                        if type(options) == "table" then
                            if options.Prop and propEmoteCache[aceCategory] then
                                propEmoteCache[aceCategory][emoteName] = true
                            end
                            if type(options.PtfxAsset) == "string" and type(options.PtfxName) == "string" then
                                ptfxCache[options.PtfxAsset] = ptfxCache[options.PtfxAsset] or {}
                                ptfxCache[options.PtfxAsset][options.PtfxName] = true
                            end
                        end
                    end
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

ServerHasEmotePermission = hasEmotePermission

function ServerEmoteExists(emoteName, emoteType)
    local aceCategory = AceCategoryFromEmoteType[emoteType]
    return type(emoteName) == "string" and aceCategory ~= nil and emoteCache[aceCategory] ~= nil
        and emoteCache[aceCategory][emoteName] == true
end

local SHARED_REQUEST_TIMEOUT_MS = 12000
local SHARED_EMOTE_MAX_DISTANCE = 3.0

-- pendingSharedRequests[targetSrc] = { requester = src, emote = name, expires = ms }
local pendingSharedRequests = {}

local function getPlayerPedIfValid(playerId)
    if type(playerId) ~= "number" or GetPlayerPing(playerId) == 0 then return nil end
    local ped = GetPlayerPed(playerId)
    if ped == 0 or not DoesEntityExist(ped) then return nil end
    return ped
end

local function arePlayersClose(a, b)
    local pedA, pedB = getPlayerPedIfValid(a), getPlayerPedIfValid(b)
    if not pedA or not pedB then return false end
    return #(GetEntityCoords(pedA) - GetEntityCoords(pedB)) <= SHARED_EMOTE_MAX_DISTANCE
end

RegisterNetEvent("rpemotes:server:requestEmote", function(target, emotename)
    local source = source
    if not Player(source).state.canEmote then return end
    if target == source then return end
    if not ServerEmoteExists(emotename, EmoteType.SHARED) then return end
    if not arePlayersClose(source, target) then return end

    -- Check ACE permission for shared emote (only requestor needs permission)
    if not hasEmotePermission(source, emotename, EmoteType.SHARED) then return end

    local pending = pendingSharedRequests[target]
    if pending and pending.expires > GetGameTimer() then return end

    pendingSharedRequests[target] = {
        requester = source,
        emote = emotename,
        expires = GetGameTimer() + SHARED_REQUEST_TIMEOUT_MS,
    }

    TriggerClientEvent("rpemotes:client:requestEmote", target, emotename, source)
end)

RegisterNetEvent("rpemotes:server:refuseEmote", function()
    pendingSharedRequests[source] = nil
end)

RegisterNetEvent("rpemotes:server:confirmEmote", function(target, requestedemote)
    local source = source

    local pending = pendingSharedRequests[source]
    pendingSharedRequests[source] = nil

    if not pending
        or pending.requester ~= target
        or pending.emote ~= requestedemote
        or pending.expires < GetGameTimer()
    then return end

    if not Player(source).state.canEmote or not Player(target).state.canEmote then return end
    if not arePlayersClose(source, target) then return end

    local otheremote = sharedPartnerEmote[requestedemote] or requestedemote

    TriggerClientEvent("rpemotes:client:syncEmote", source, otheremote, target)
    TriggerClientEvent("rpemotes:client:syncEmoteSource", target, requestedemote, source)
end)

AddEventHandler("playerDropped", function()
    local source = source
    pendingSharedRequests[source] = nil
    for target, pending in pairs(pendingSharedRequests) do
        if pending.requester == source then
            pendingSharedRequests[target] = nil
        end
    end
end)

RegisterNetEvent("rpemotes:server:cancelEmote", function(target)
    TriggerClientEvent("rpemotes:client:cancelEmote", target, source)
end)

local function isValidPtfxColor(color)
    return type(color) == "table"
        and type(color.R) == "number" and type(color.G) == "number"
        and type(color.B) == "number" and type(color.A) == "number"
end

local function isValidPtfxColorList(color)
    if color == nil then return true end
    if isValidPtfxColor(color) then return true end
    if type(color) ~= "table" or #color == 0 then return false end
    for _, entry in ipairs(color) do
        if not isValidPtfxColor(entry) then return false end
    end
    return true
end

local PTFX_MAX_SCALE = 5.0

RegisterNetEvent("rpemotes:ptfx:sync", function(asset, name, offset, rot, bone, scale, color)
    if type(asset) ~= "string" or type(name) ~= "string" then return end
    if not ptfxCache[asset] or not ptfxCache[asset][name] then return end
    if type(offset) ~= "vector3" or type(rot) ~= "vector3" then return end
    if bone ~= nil and type(bone) ~= "number" then return end
    if scale ~= nil and (type(scale) ~= "number" or scale <= 0 or scale > PTFX_MAX_SCALE) then return end
    if not isValidPtfxColorList(color) then return end

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

local function initPlayerState(playerId)
    local state = Player(playerId).state
    state:set("canEmote", true, true)
    state:set("canCancel", true, true)
end

for _, playerId in ipairs(GetPlayers()) do
    initPlayerState(playerId)
end

AddEventHandler("playerJoining", function()
    initPlayerState(source)
end)

local clientStateValidators = {
    currentEmote = function(value)
        return value == nil or type(value) == "string"
    end,
    ptfx = function(value)
        return value == nil or value == true
    end,
    ptfxPropId = function(value)
        return value == nil or value == 1 or value == 2
    end,
    ["rpemotes:props"] = function(value, source)
        if type(value) ~= "table" then return false end
        if value.TextureVariation ~= nil and type(value.TextureVariation) ~= "number" then return false end
        if value.emoteType ~= nil and type(value.emoteType) ~= "string" then return false end
        if value.Emote == nil then return true end
        if type(value.Emote) ~= "string" then return false end

        local category = value.emoteType == EmoteType.SHARED and EmoteType.SHARED or EmoteType.EMOTES
        return propEmoteCache[category][value.Emote] == true
            and hasEmotePermission(source, value.Emote, category)
    end,
}

RegisterNetEvent("rpemotes:server:setState", function(key, value)
    local validator = clientStateValidators[key]
    if not validator or not validator(value, source) then return end

    if key == "rpemotes:props" then
        value = { Emote = value.Emote, TextureVariation = value.TextureVariation, emoteType = value.emoteType }
    end

    Player(source).state:set(key, value, true)
end)

AddEventHandler("onResourceStop", function(resource)
    if resource ~= GetCurrentResourceName() then return end
    for _, playerId in ipairs(GetPlayers()) do
        local state = Player(playerId).state
        state:set("rpemotes:props", {}, true)
        state:set("ptfxPropId", nil, true)
    end
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

    local res = loadAnimationList("client/AnimationList.lua", "RP")
    if not res then return nil end

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
