---@enum CompatGroup
local CompatGroup = {
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
}

--- models not listed will be assumed to be compatible with all emotes not assigned to a compat group.
---@type table<integer, CompatGroup>
local models = {
    -- ROTTWEILER
    [`a_c_chop`] = CompatGroup.ROTTWEILER,
    [`a_c_rottweiler`] = CompatGroup.ROTTWEILER,
    [`a_c_shepherd`] = CompatGroup.ROTTWEILER,

    -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
    [`a_c_k9`] = CompatGroup.ROTTWEILER,
    [`k9_male`] = CompatGroup.ROTTWEILER,
    [`k9_female`] = CompatGroup.ROTTWEILER,
    [`doberman`] = CompatGroup.ROTTWEILER, -- this shares the same name as future shop's doberman, comment this one out and uncomment the one below if using future shop's
    [`chowchow`] = CompatGroup.ROTTWEILER,
    -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
    [`ame`] = CompatGroup.ROTTWEILER,
    [`BullTerrier`] = CompatGroup.ROTTWEILER,
    [`Cattle_Dog`] = CompatGroup.ROTTWEILER,
    [`dobermannprp`] = CompatGroup.ROTTWEILER,
    [`Dogue`] = CompatGroup.ROTTWEILER,
    [`EnglishBulldog`] = CompatGroup.ROTTWEILER,
    [`filabrasileiroprp`] = CompatGroup.ROTTWEILER,
    [`greatdaneprp`] = CompatGroup.ROTTWEILER,
    [`k9_shepherd`] = CompatGroup.ROTTWEILER,
    [`kangaldogprp`] = CompatGroup.ROTTWEILER,
    [`pitbullxl`] = CompatGroup.ROTTWEILER,
    [`stffordbtprp`] = CompatGroup.ROTTWEILER,
    [`canecorsoprptwo`] = CompatGroup.ROTTWEILER,
    [`popcornrpcanecorso`] = CompatGroup.ROTTWEILER,
    [`rottweilerk9_new`] = CompatGroup.ROTTWEILER,
    [`rhodesianridge`] = CompatGroup.ROTTWEILER,
    [`newsamoyedprp`] = CompatGroup.ROTTWEILER,
    [`Samoyed`] = CompatGroup.ROTTWEILER,
    [`Sharpei_dog`] = CompatGroup.ROTTWEILER,
    [`standardpoodle`] = CompatGroup.ROTTWEILER,
    [`Weimaranerprp`] = CompatGroup.ROTTWEILER,
    [`goredogfprp`] = CompatGroup.ROTTWEILER,
    [`goredogmprp`] = CompatGroup.ROTTWEILER,
    -- Future Store: https://future.tebex.io/category/animals-1
    [`abdog`] = CompatGroup.ROTTWEILER,
    [`ft-boxer`] = CompatGroup.ROTTWEILER,
    [`ft-pitbull2`] = CompatGroup.ROTTWEILER,
    [`ft_malinois`] = CompatGroup.ROTTWEILER,
    [`ft-gs`] = CompatGroup.ROTTWEILER,
    [`golden_r`] = CompatGroup.ROTTWEILER,
    [`k9_husky`] = CompatGroup.ROTTWEILER,
    [`ft-labrador`] = CompatGroup.ROTTWEILER,
    [`ft-pterrier`] = CompatGroup.ROTTWEILER,
    [`ft-aushep`] = CompatGroup.ROTTWEILER,
    [`bernard`] = CompatGroup.ROTTWEILER,
    [`ft-bloodhound`] = CompatGroup.ROTTWEILER,
    [`ft-pitbull`] = CompatGroup.ROTTWEILER,
    [`ft-dobermanv2`] = CompatGroup.ROTTWEILER,
    [`ft_dshepherd`] = CompatGroup.ROTTWEILER,
    [`k9`] = CompatGroup.ROTTWEILER,
    [`ft_kangal`] = CompatGroup.ROTTWEILER,
    [`riley`] = CompatGroup.ROTTWEILER,
    -- Bugs Mods: https://bugs-basement.tebex.io/
    [`bugk9`] = CompatGroup.ROTTWEILER,
    [`bugxl`] = CompatGroup.ROTTWEILER,
    [`k9wolf`] = CompatGroup.ROTTWEILER,
    [`pitbull`] = CompatGroup.ROTTWEILER,
    [`bugdoberman`] = CompatGroup.ROTTWEILER,
    [`bughusky`] = CompatGroup.ROTTWEILER,
    -- DWX https://forum.cfx.re/t/free-rework-edit-animal-ped-fivem-ready-german-shepherd-belgian-malinois
    [`dwxunit`] = CompatGroup.ROTTWEILER,

    -- RETRIEVER
    [`a_c_retriever`] = CompatGroup.RETRIEVER,

    -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
    [`robot_dog`] = CompatGroup.RETRIEVER,
    -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
    [`akitaprp`] = CompatGroup.RETRIEVER,
    [`bandoggeprp`] = CompatGroup.RETRIEVER,
    [`bandoggeprpxl`] = CompatGroup.RETRIEVER,
    [`boxerhoundprp`] = CompatGroup.RETRIEVER,
    [`dogoargentinoprp`] = CompatGroup.RETRIEVER,
    [`hyenaprp`] = CompatGroup.RETRIEVER,
    [`inutosaprp`] = CompatGroup.RETRIEVER,
    [`irishsetterprp`] = CompatGroup.RETRIEVER,
    [`newfoundland`] = CompatGroup.RETRIEVER,
    [`poprprott`] = CompatGroup.RETRIEVER,
    [`retriever_k9`] = CompatGroup.RETRIEVER,
    [`standardpitbullprp`] = CompatGroup.RETRIEVER,

    -- HUSKY
    [`a_c_husky`] = CompatGroup.HUSKY,
    [`a_c_dalmatian`] = CompatGroup.HUSKY,

    -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
    [`huskyk9_new`] = CompatGroup.HUSKY,
    -- Future Store: https://future.tebex.io/category/animals-1
    [`akita_inu`] = CompatGroup.HUSKY,
    [`dalmatian`] = CompatGroup.HUSKY,
    [`dane`] = CompatGroup.HUSKY,
    [`a_c_airedale`] = CompatGroup.HUSKY,
    [`ft-akbash`] = CompatGroup.HUSKY,
    [`ft-amakita`] = CompatGroup.HUSKY,
    [`ft-btcoon`] = CompatGroup.HUSKY,
    [`ft-catahoula`] = CompatGroup.HUSKY,
    [`ft-ecocker`] = CompatGroup.HUSKY,
    [`ft-groe`] = CompatGroup.HUSKY,
    [`ft-pandags`] = CompatGroup.HUSKY,
    [`a_c_pitbull`] = CompatGroup.HUSKY,
    [`shiba`] = CompatGroup.HUSKY,
    -- [`doberman`] = CompatGroup.HUSKY, -- this shares the same name as popcornrp-pets doberman, comment that one out and uncomment this if you are using this one

    -- SMALL_DOG
    [`a_c_poodle`] = CompatGroup.SMALL_DOG,
    [`a_c_pug`] = CompatGroup.SMALL_DOG,
    [`a_c_westy`] = CompatGroup.SMALL_DOG,

    -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
    [`a_c_airterrier`] = CompatGroup.SMALL_DOG,
    [`babypygmyhippoprp`] = CompatGroup.SMALL_DOG,
    [`alligatorprp`] = CompatGroup.SMALL_DOG,
    [`Brittany`] = CompatGroup.SMALL_DOG,
    [`capybaraprp`] = CompatGroup.SMALL_DOG,
    [`daschundprp`] = CompatGroup.SMALL_DOG,
    [`yorkie`] = CompatGroup.SMALL_DOG,
    [`chihuahuaprpnew`] = CompatGroup.SMALL_DOG,
    [`chowchowpuppyprp`] = CompatGroup.SMALL_DOG,
    [`dobermanpupprp`] = CompatGroup.SMALL_DOG,
    [`engbullpuppyprp`] = CompatGroup.SMALL_DOG,
    [`greatdanepuppyprp`] = CompatGroup.SMALL_DOG,
    [`huskypuppyprp`] = CompatGroup.SMALL_DOG,
    [`labradorpuppyprp`] = CompatGroup.SMALL_DOG,
    [`malsheppuppyprp`] = CompatGroup.SMALL_DOG,
    [`pitbullpuppyprp`] = CompatGroup.SMALL_DOG,
    [`popcornrpcanecorsopuppy`] = CompatGroup.SMALL_DOG,
    [`rottweilerpupprp`] = CompatGroup.SMALL_DOG,
    [`samoyedpuppyprp`] = CompatGroup.SMALL_DOG,
    [`standardpoodlepupprp`] = CompatGroup.SMALL_DOG,
    -- Future Store: https://future.tebex.io/category/animals-1
    [`beagle`] = CompatGroup.SMALL_DOG,
    [`corgi`] = CompatGroup.SMALL_DOG,
    [`russel`] = CompatGroup.SMALL_DOG,
    [`yorkshire`] = CompatGroup.SMALL_DOG,
    [`ft-ebully`] = CompatGroup.SMALL_DOG,
    [`ft_bterrier`] = CompatGroup.SMALL_DOG,
    [`ft-bulldogBIG`] = CompatGroup.SMALL_DOG,
    [`ft-chihuahua`] = CompatGroup.SMALL_DOG,
    [`dachshund`] = CompatGroup.SMALL_DOG,
    [`ft-fbulldog`] = CompatGroup.SMALL_DOG,
    [`ft-pas`] = CompatGroup.SMALL_DOG,
    [`ft-pboxer`] = CompatGroup.SMALL_DOG,
    [`ft-pbulldog`] = CompatGroup.SMALL_DOG,
    [`ft-pbulldog2`] = CompatGroup.SMALL_DOG,
    [`ft-dalma`] = CompatGroup.SMALL_DOG,
    [`ft-pdoberman`] = CompatGroup.SMALL_DOG,
    [`ft-shepk9`] = CompatGroup.SMALL_DOG,
    [`ft-phusky`] = CompatGroup.SMALL_DOG,
    [`ft-pkangal`] = CompatGroup.SMALL_DOG,
    [`ft-labrak9`] = CompatGroup.SMALL_DOG,
    [`ft-pretriever`] = CompatGroup.SMALL_DOG,
    [`ft-pshepherd`] = CompatGroup.SMALL_DOG,
    [`ft-shiba`] = CompatGroup.SMALL_DOG,
    [`ft_samoyed`] = CompatGroup.SMALL_DOG,
    -- Bugs Mods: https://bugs-basement.tebex.io/
    [`a_c_aussiepup`] = CompatGroup.SMALL_DOG,
    [`k9puppy`] = CompatGroup.SMALL_DOG,
    [`a_c_pitbullpup`] = CompatGroup.SMALL_DOG,
    [`yorkie_puppy`] = CompatGroup.SMALL_DOG,
    [`bostonterrier_puppy`] = CompatGroup.SMALL_DOG,
    [`a_c_fdpuppy`] = CompatGroup.SMALL_DOG,
    [`bugdalpuppy`] = CompatGroup.SMALL_DOG,
    [`k9puppydoberman`] = CompatGroup.SMALL_DOG,
    [`bugxlpuppy`] = CompatGroup.SMALL_DOG,
    [`bughuskypup`] = CompatGroup.SMALL_DOG,

    -- CAT
    [`a_c_cat`] = CompatGroup.CAT,

    -- popcornrp-pets: https://github.com/alberttheprince/popcornrp-pets
    [`armadillo`] = CompatGroup.CAT,
    -- Popcorn Roleplay Peds: https://popcornrp-store.tebex.io/
    [`bshorthairpoprp`] = CompatGroup.CAT,
    [`koalaprp`] = CompatGroup.CAT,
    [`popcornrparcticfox`] = CompatGroup.CAT,
    [`popcornrpchihuahua`] = CompatGroup.CAT,
    [`prplemur`] = CompatGroup.CAT,
    [`prpotter`] = CompatGroup.CAT,
    [`raccoon_new`] = CompatGroup.CAT,
    [`sphynxpoprp`] = CompatGroup.CAT,

    -- Bug Store: https://bugs-store.tebex.io/
    [`tabbycat`] = CompatGroup.CAT,

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
        'bdogeat',
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
        'cbdog2',
    },
    [CompatGroup.SMALL_DOG] = {
        'sdogbark',
        'sdogitch',
        'sdoglay',
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
        'csdog2',
        'csdog3',
    },
    [CompatGroup.ROTTWEILER] = {
        'bdogbark',
    },
    [CompatGroup.RETRIEVER] = {
        'bdogbark2', -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work
        'bdogexcited', -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work
    },
    [CompatGroup.HUSKY] = { },
    [CompatGroup.CAT] = {
        'catsleep',
        'catsleep2',
        'catlayobserve',
        'catlaywatch',
        'catstretch',
        'catpanic',
        'catplaydead',
        'catplaydead2',
        'catpensive',
        'catshuffleright',
        'catshuffleleft',
        'ccat2',
     },
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
