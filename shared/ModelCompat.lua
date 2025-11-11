---@enum CompatGroup
local CompatGroup = {
    PED = 'Ped',
    HUMAN = 'Human',
    DOG = 'Dog',
    SMALL_DOG = 'SmallDog',
    ROTTWEILER = 'Rottweiler',
    RETRIEVER = 'Retriever',
    HUSKY = 'Husky',
    CAT = 'Cat',
}

--- nested table of parent child relationships
local relationships = {
    [CompatGroup.DOG] = {
        [CompatGroup.ROTTWEILER] = {},
        [CompatGroup.RETRIEVER] = {
            [CompatGroup.HUSKY] = {},
        },
    },
    [CompatGroup.SMALL_DOG] = {},
    [CompatGroup.CAT] = {},
    -- [CompatGroup.PED] = {
    --     [CompatGroup.HUMAN] = {},
    --     [CompatGroup.ANIMAL] = {
    --         [CompatGroup.DOG] = {
    --             [CompatGroup.BIG_DOG] = {},
    --             [CompatGroup.SMALL_DOG] = {}
    --         },
    --     },
    -- }
}

--- models not listed will be assumed to be compatible with all emotes
---@type table<integer, CompatGroup>
local models = {
    [CompatGroup.ROTTWEILER] = {
        'a_c_chop',
        'a_c_rottweiler',

        -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
        'a_c_k9',
        'k9_male',
        'k9_female',
        'doberman',
        'chowchow',
        -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
        'ame',
        'BullTerrier',
        'Cattle_Dog',
        'dobermannprp',
        'Dogue',
        'EnglishBulldog',
        'filabrasileiroprp',
        'greatdaneprp',
        'k9_shepherd',
        'kangaldogprp',
        'pitbullxl',
        'stffordbtprp',
        'canecorsoprptwo',
        'popcornrpcanecorso',
        'chihuahuaprpnew',
        'rottweilerk9_new',
        'rhodesianridge',
        'newsamoyedprp',
        'Samoyed',
        'Sharpei_dog',
        'standardpoodle',
        'Weimaranerprp',
        'goredogfprp',
        'goredogmprp',
    },
    [CompatGroup.RETRIEVER] = {
        'a_c_retriever',
        'a_c_shepherd',

        -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
        'robot_dog',
        -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
        'akitaprp',
        'bandoggeprp',
        'bandoggeprpxl',
        'boxerhoundprp',
        'dogoargentinoprp',
        'hyenaprp',
        'inutosaprp',
        'irishsetterprp',
        'newfoundland',
        'poprprott',
        'retriever_k9',
        'standardpitbullprp',
    },
    [CompatGroup.HUSKY] = {
        'a_c_husky',
        'a_c_dalmatian',
        
        -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
        'huskyk9_new',
    },
    [CompatGroup.SMALL_DOG] = {
        'a_c_poodle',
        'a_c_pug',
        'a_c_westy',

        -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
        'a_c_airterrier',
        'babypygmyhippoprp',
        'alligatorprp',
        'Brittany',
        'capybaraprp',
        'daschundprp',
        'yorkie',
        'chowchowpuppyprp',
        'dobermanpupprp',
        'engbullpuppyprp',
        'greatdanepuppyprp',
        'huskypuppyprp',
        'labradorpuppyprp',
        'malsheppuppyprp',
        'pitbullpuppyprp',
        'popcornrpcanecorsopuppy',
        'rottweilerpupprp',
        'samoyedpuppyprp',
        'standardpoodlepupprp',
    },
    [CompatGroup.CAT] = {
        'a_c_cat',
        
        -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
        'armadillo',
        -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
        'bshorthairpoprp',
        'koalaprp',
        'popcornrparcticfox',
        'popcornrpchihuahua',
        'prplemur',
        'prpotter',
        'raccoon_new',
        'sphynxpoprp',
    },
}

--- which emotes can the compat group use.
---@type table<CompatGroup, string[]>
local emoteCompatibility = {
    [CompatGroup.DOG] = {
        'bdogindicateahead',
        'bdogindicatehigh',
        'bdogindicatelow',
        'bdogbeg',
        'bdogbeg2',
        'bdoglayright',
        'bdoglayleft',
        'bdogsitcar',
        'bdogfhump',
        'bdogmhump',
        'bdogshit',
        'bdogitch',
        'bdogsleep',
        'bdogsit',
        'bdogpee',
        'bdogpee2',
        'bdogglowa',
        'bdogglowb',
        'bdogpridea',
        'bdogprideb',
        'bdogpridec',
        'bdogprided',
        'bdogpridee',
        'bdogpridef',
        'bdogprideg',
        'bdogprideh',
        'bdogpridei',
        'bdogfw',
        'bdogfris',
    },
    [CompatGroup.SMALL_DOG] = {
        'sdogbark',
        'sdogitch',
        'sdogsit',
        'sdogld',
        'sdogshake',
        'sdogdance',
        'sdogdance2',
        'sdogdancepridea',
        'sdogdanceprideb',
        'sdogdancepridec',
        'sdogdanceprided',
        'sdogdancepridee',
        'sdogdancepridef',
        'sdogdanceprideg',
        'sdogdanceprideh',
        'sdogdancepridei',
        'sdogbb',
        'sdogburger',
        'sdogcontroller',
        'sdogdolla',
        'sdogdolla2',
        'sdogdolla3',
        'sdogdolla4',
        'sdogmic',
        'sdogteddy',
        'sdogteddy2',
        'sdogtennis',
        'sdogtennisr',
        'sdogrose',
        'sdogrose2',
        'sdogggun',
        'sdoggun2',
        'sdogstun',
        'sdoggl1',
        'sdoggl2',
        'sdoggl3',
        'sdoggl4',
        'sdoghd1',
        'sdoghd2',
        'sdoghlmt1',
        'sdoghlmt2',
        'sdoghat',
        'sdoghat2',
        'sdogsteak',
        'sdogsteak2',
        'sdogpridea',
        'sdogprideb',
        'sdogpridec',
        'sdogprided',
        'sdogpridee',
        'sdogpridef',
        'sdogprideg',
        'sdogprideh',
        'sdogpridei',
        'sdogpridesita',
        'sdogpridesitb',
        'sdogpridesitc',
        'sdogpridesitd',
        'sdogpridesite',
        'sdogpridesitf',
        'sdogpridesitg',
        'sdogpridesith',
        'sdogpridesiti',
        'sdogpee',
        'sdogshit',
        'sdogfw',
        'sdogfris',
    },
    [CompatGroup.ROTTWEILER] = {
        'bdogbark',
    },
    [CompatGroup.RETRIEVER] = {
        'bdogbark2', -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work
        'bdogexcited', -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work

    },
    [CompatGroup.HUSKY] = { },
    [CompatGroup.CAT] = { },
}

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
