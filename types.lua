---@enum AnimFlag
AnimFlag = {
    MOVING = 51,
    LOOP = 1,
    STUCK = 50,
}

---@enum ScenarioType
ScenarioType = {
    MALE = 'MaleScenario',
    SCENARIO = 'Scenario',
    OBJECT = 'ScenarioObject',
}

---@enum VehicleRequirement
VehicleRequirement = {
    NOT_ALLOWED = 'NOT_ALLOWED',
    REQUIRED = 'REQUIRED',
}

---@enum Category
Category = {
    EXPRESSIONS = 'Expressions',
    WALKS = 'Walks',
    SHARED = 'Shared',
    DANCES = 'Dances',
    ANIMAL_EMOTES = 'AnimalEmotes',
    EXITS = 'Exits',
    EMOTES = 'Emotes',
    PROP_EMOTES = 'PropEmotes',
}

---@alias Dictionary string
---@alias AnimName string
---@alias ScenarioName string
---@alias Label string

---@class Color
---@field R number
---@field G number
---@field B number
---@field A number

---@class AnimationOptions
---@field EmoteMoving? boolean deprecated. Set onFootFlag instead
---@field EmoteLoop? boolean deprecated. Set onFootFlag instead
---@field EmoteStuck? boolean deprecated. Set onFootFlag instead
---@field onFootFlag? AnimFlag anim flag to use when not in a vehicle
---@field Flag? AnimFlag | integer anim flag to use. If set, overrides onFootFlag.
---@field FullBody? boolean
---@field Attachto? boolean
---@field NotInVehicle? boolean deprecated. Use vehicleRequirement instead
---@field onlyInVehicle? boolean deprecated. Use vehicleRequirement instead
---@field vehicleRequirement? VehicleRequirement
---@field EmoteDuration? integer
---@field SyncOffsetSide? number defaults to 0.0
---@field SyncOffsetFront? number defaults to 1.0
---@field SyncOffsetHeight? number defaults to 0.0
---@field SyncOffsetHeading? number defaults to 180.0
---@field syncOffset? vector4 internal use only
---@field bone? integer
---@field pos? vector3
---@field rot? vector3
---@field xPos? number deprecated use pos instead
---@field yPos? number deprecated use pos instead
---@field zPos? number deprecated use pos instead
---@field xRot? number deprecated use rot instead
---@field yRot? number deprecated use rot instead
---@field zRot? number deprecated use rot instead
---@field Prop? string
---@field PropBone? integer
---@field PropPlacement? number[]
---@field PropNoCollision? boolean
---@field StartDelay? integer
---@field SecondProp? string
---@field SecondPropBone? integer
---@field SecondPropPlacement? number[]
---@field SecondPropNoCollision? boolean
---@field PropTextureVariations? {Name: string, Value: integer}[]
---@field PtfxAsset? string
---@field PtfxName? string
---@field PtfxNoProp? boolean
---@field PtfxPlacement? number[]
---@field PtfxInfo? string
---@field PtfxWait? number
---@field PtfxCanHold? boolean
---@field PtfxColor? Color[]
---@field PtfxBone? integer
---@field ExitEmote? string
---@field ExitEmoteType? "Exits" deprecated. unused.
---@field BlendInSpeed? number
---@field BlendOutSpeed? number

---@class AnimationListConfig
---@field Expressions table<string, {[1]: AnimName, [2]: Label?}>
---@field Walks table<string, {[1]: AnimName, [2]: Label?}>
---@field Shared table<string, {[1]: Dictionary, [2]: AnimName, [3]: Label, [4]: AnimName?, AnimationOptions?: AnimationOptions, AnimalEmote?: boolean}>
---@field Dances table<string, {[1]: Dictionary, [2]: AnimName, [3]: Label, AnimationOptions?: AnimationOptions}>
---@field AnimalEmotes table<string, {[1]: Dictionary, [2]: AnimName, [3]: Label, AnimationOptions?: AnimationOptions, AdultAnimation?: boolean, AnimalEmote?: boolean}>
---@field Exits table<string, {[1]: Dictionary, [2]: AnimName, [3]: Label, AnimationOptions?: AnimationOptions}>
---@field Emotes table<string, {[1]: Dictionary | ScenarioType, [2]: AnimName | ScenarioName, [3]: Label, AnimationOptions?: AnimationOptions, AdultAnimation?: boolean}>
---@field PropEmotes table<string, {[1]: Dictionary, [2]: AnimName, [3]: Label, AnimationOptions?: AnimationOptions}>

---@class EmoteData
---@field [1] AnimName | Dictionary | ScenarioType deprecated: Use anim or dict instead.
---@field [2] AnimName | ScenarioName | Label? deprecated: Use anim, scenario, or label instead
---@field [3]? Label deprecated: Use label instead
---@field [4]? AnimName deprecated: Use secondPlayersAnim instead
---@field anim? string
---@field dict? string
---@field scenario? string
---@field scenarioType? ScenarioType
---@field label? string
---@field secondPlayersAnim? string Second player's anim during a shared emote. Defaults to the same as first player if unset.
---@field AnimationOptions? AnimationOptions
---@field AnimalEmote? boolean
---@field AdultAnimation? boolean
---@field category Category