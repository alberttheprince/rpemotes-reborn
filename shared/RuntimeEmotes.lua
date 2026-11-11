-- Shared by the client and server AddEmotes exports: input validation and per-name ownership.
RuntimeEmotes = {}

---@type table<EmoteType, table<string, {base?: table, entries: {resource: string, value: table}[]}>>
local layers = {}

local function isValidEntry(name, data)
    if type(name) ~= 'string' or type(data) ~= 'table' then return false end
    if data.AliasOf ~= nil then return type(data.AliasOf) == 'string' end
    return type(data[1]) == 'string'
end

---Returns only the usable entries of `emotes`, and how many there are. Everything else is skipped with a warning.
---@param emotes any
---@return table<EmoteType, table<string, table>> clean
---@return integer count
function RuntimeEmotes.sanitize(emotes)
    local clean, count = {}, 0
    if type(emotes) ~= 'table' then
        print('WARNING - AddEmotes expects a table, got ' .. type(emotes))
        return clean, count
    end

    for emoteType, content in pairs(emotes) do
        if not AceCategoryFromEmoteType[emoteType] or emoteType == EmoteType.EMOJI or type(content) ~= 'table' then
            print(string.format('WARNING - AddEmotes skipped invalid emote type: %s', tostring(emoteType)))
        elseif emoteType ~= EmoteType.ANIMAL_EMOTES or Config.AnimalEmotesEnabled then
            for name, data in pairs(content) do
                if isValidEntry(name, data) then
                    clean[emoteType] = clean[emoteType] or {}
                    clean[emoteType][name] = data
                    count += 1
                else
                    print(string.format('WARNING - AddEmotes skipped invalid %s entry: %s', emoteType, tostring(name)))
                end
            end
        end
    end

    return clean, count
end

---Records `resource` as an owner of `name`, on top of the other owners. `previous` is only kept by the first owner.
---@param category EmoteType
---@param name string
---@param resource string
---@param previous? table what `name` held before this call
---@param value table what `name` holds now
function RuntimeEmotes.push(category, name, resource, previous, value)
    layers[category] = layers[category] or {}
    local layer = layers[category][name]
    if not layer then
        layer = {base = previous, entries = {}}
        layers[category][name] = layer
    end

    for i, entry in ipairs(layer.entries) do
        if entry.resource == resource then
            table.remove(layer.entries, i)
            break
        end
    end
    layer.entries[#layer.entries + 1] = {resource = resource, value = value}
end

---Drops every entry of `resource` and calls `apply` with what each of its names should hold now, whatever the stop order.
---@param resource string
---@param apply fun(category: EmoteType, name: string, value?: table)
---@return boolean changed
function RuntimeEmotes.removeResource(resource, apply)
    local changed = false
    for category, byName in pairs(layers) do
        for name, layer in pairs(byName) do
            for i, entry in ipairs(layer.entries) do
                if entry.resource == resource then
                    table.remove(layer.entries, i)
                    local top = layer.entries[#layer.entries]
                    apply(category, name, top and top.value or layer.base)
                    if not top then byName[name] = nil end
                    changed = true
                    break
                end
            end
        end
    end
    return changed
end
