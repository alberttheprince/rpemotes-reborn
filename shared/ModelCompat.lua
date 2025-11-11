---@enum CompatGroup
local CompatGroup = {
    PED = 'Ped',
    HUMAN = 'Human',
    ANIMAL = 'Animal',
    DOG = 'Dog',
    SMALL_DOG = 'SmallDog',
    BIG_DOG = 'BigDog',
}

--- nested table of parent child relationships
local relationships = {
    [CompatGroup.PED] = {
        [CompatGroup.HUMAN] = {},
        [CompatGroup.ANIMAL] = {
            [CompatGroup.DOG] = {
                [CompatGroup.BIG_DOG] = {},
                [CompatGroup.SMALL_DOG] = {}
            },
        },
    }
}

--- models not listed will be assumed to be compatible with all emotes
---@type table<integer, CompatGroup>
local models = {}

--- which emotes can the compat group use.
---@type table<CompatGroup, string[]>
local emoteCompatibility = {}

--- Build a map of each CompatGroup to all its ancestors (parent groups)
--- This allows for fast inheritance lookups
---@return table<CompatGroup, CompatGroup[]>
local function buildAncestorMap()
    local ancestorMap = {}

    --- Recursive function to traverse the relationship tree
    ---@param node table The current node in the tree
    ---@param ancestors CompatGroup[] The ancestors of the current node
    local function traverse(node, ancestors)
        for group, children in pairs(node) do
            -- Store all ancestors for this group
            local groupAncestors = {}
            for i = 1, #ancestors do
                groupAncestors[#groupAncestors + 1] = ancestors[i]
            end
            ancestorMap[group] = groupAncestors

            -- Create new ancestor list including current group
            local newAncestors = {}
            for i = 1, #ancestors do
                newAncestors[#newAncestors + 1] = ancestors[i]
            end
            newAncestors[#newAncestors + 1] = group

            -- Recursively traverse children
            traverse(children, newAncestors)
        end
    end

    traverse(relationships, {})
    return ancestorMap
end

-- Build the ancestor map once at initialization for O(1) lookups
local ancestorMap = buildAncestorMap()

--- Convert emoteCompatibility arrays to sets for O(1) lookup
---@type table<CompatGroup, table<string, boolean>>
local emoteCompatibilitySets = {}
for group, emotes in pairs(emoteCompatibility) do
    emoteCompatibilitySets[group] = {}
    for _, emoteName in ipairs(emotes) do
        emoteCompatibilitySets[group][emoteName] = true
    end
end

--- Build a set of all emotes assigned to any compat group
---@type table<string, boolean>
local emotesInCompatGroups = {}
for _, emotes in pairs(emoteCompatibilitySets) do
    for emoteName, _ in pairs(emotes) do
        emotesInCompatGroups[emoteName] = true
    end
end

---@param model integer The model hash
---@param emoteName string The name of the emote
---@return boolean compatible True if the model can use the emote
function IsModelCompatible(model, emoteName)
    -- Models not in the list are only compatible with emotes not in any compat group
    local compatGroup = models[model]
    if not compatGroup then
        return not emotesInCompatGroups[emoteName]
    end

    -- Check if the emote is allowed for this group or any ancestor
    if emoteCompatibilitySets[compatGroup] and emoteCompatibilitySets[compatGroup][emoteName] then
        return true
    end

    if ancestorMap[compatGroup] then
        for i = 1, #ancestorMap[compatGroup] do
            local ancestor = ancestorMap[compatGroup][i]
            if emoteCompatibilitySets[ancestor] and emoteCompatibilitySets[ancestor][emoteName] then
                return true
            end
        end
    end

    -- Emote not found in compatibility lists, not compatible
    return false
end
