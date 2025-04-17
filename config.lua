-- FOR ALL KEYBINDS, GET THE BUTTON STRING HERE: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config = {
    MenuLanguage = 'en', -- Change the language of the menu here

    EnableCancelKeybind = true,
    CancelEmoteKey = 'X',

    MenuKeybindEnabled = true,
    MenuKeybind = 'F4',

    FavKeybindEnabled = true,
    FavKeybind = 'CAPITAL',

    Keybinding = false,
    keybindKVP = "rpemotes",
    NotificationsAsChatMessage = false,
    Search = true, -- Used to enable or disable the search feature in the menu.
    CancelPreviousEmote = false, -- If turned on, playing an emote will cancel the previous one.
    DisableControlsInMenu = false,

    MenuTitle = '',
    TitleOutline = true,
    TitleColour = { R = 255, G = 0, B = 255, A = 255 },
    MenuPosition = 'right', -- 'left' / 'right'
    CustomMenuEnabled = true, -- Change the header.png to your own image

    -- Combat Car, and Player Movement
    DisarmPlayerOnEmote = false,
    AllowPunchingDuringEmote = false,
    AllowEmoteInVehicle = true,
    AllowInWater = false,

    -- Ragdoll
    RagdollEnabled = false,
    RagdollKeybind = 'U',

    RagdollAsToggle = true,

    -- Expressions, Walks, and More
    ExpressionsEnabled = true,
    PersistentExpression = true,

    WalkingStylesEnabled = true,
    PersistentWalk = true,
    SharedEmotesEnabled = true,
    AdultEmotesDisabled = false,
    AnimalEmotesEnabled = true,

    -- Hands Up
    HandsupEnabled = false,
    HandsupKeybind = 'Y',
    HandsupKeybindEnabled = false,
    HandsupInCar = false,
    ReplayEmoteAfterHandsup = true,
    HoldToHandsUp = false,

    -- Pointing
    PointingEnabled = true,
    PointingKeybindEnabled = true,
    PointingKeybind = 'B', 
    PointingInCar = false,
    ReplayEmoteAfterPointing = true,

    -- Crouching
    CrouchEnabled = true,
    CrouchKeybindEnabled = true,
    CrouchKeybind = 'LCONTROL',
    CrouchOverrideStealthMode = false, -- If true, you won't enter stealth mode even if the crouch key and the 'duck' key are the same.
    FpsMode = false, -- set this to true if you have first-person shooting to disable the ability to crouch and shoot in third-person

    -- Crawling
    CrawlEnabled = true,
    CrawlKeybindEnabled = true,
    CrawlKeybind = 'RCONTROL',

    -- Binocular (/binoculars)
    BinocularsEnabled = false,
    AllowVisionsToggling = false,

    -- News Camera (/newscam)
    NewscamEnabled = false,

    DisableIdleCam = true,

    -- Preview Ped : Shows a preview of the emote on the player's ped next to the emote menu. Note that resmon will increase when this when emotes are being previewed.
    PreviewPed = true,

    CheckForUpdates = true,
    DebugDisplay = false,
}

Config.KeybindKeys = {
    'NUMPAD4',
    'NUMPAD5',
    'NUMPAD6',
    'NUMPAD7',
    'NUMPAD8',
    'NUMPAD9'
}

Config.DisabledHandsupControls = {
    [36] = true, -- INPUT_DUCK
    [44] = true, -- INPUT_COVER
    [53] = true, -- INPUT_WEAPON_SPECIAL
    [54] = true, --  INPUT_WEAPON_SPECIAL_TWO
    [59] = true, -- INPUT_VEH_MOVE_LR
    [60] = true, -- INPUT_VEH_MOVE_UD
    [61] = true, -- INPUT_VEH_MOVE_UP_ONLY
    [62] = true, -- INPUT_VEH_MOVE_DOWN_ONLY
    [63] = true, -- INPUT_VEH_MOVE_LEFT_ONLY
    [64] = true, -- INPUT_VEH_MOVE_RIGHT_ONLY
    [65] = true, -- INPUT_VEH_SPECIAL
    [66] = true, --  INPUT_VEH_GUN_LR
    [67] = true, -- INPUT_VEH_GUN_UD
    [69] = true, -- INPUT_VEH_ATTACK
    [70] = true, -- INPUT_VEH_ATTACK2
    [71] = true, -- INPUT_VEH_ACCELERATE
    [72] = true, -- INPUT_VEH_BRAKE
    [73] = true, -- INPUT_VEH_DUCK
    [74] = true, -- INPUT_VEH_HEADLIGHT
    [77] = true, -- INPUT_VEH_HOTWIRE_LEFT
    [78] = true, -- INPUT_VEH_HOTWIRE_RIGHT
    [80] = true, --  INPUT_VEH_CIN_CAM
    [86] = true,  -- INPUT_VEH_HORN
    [91] = true, -- INPUT_VEH_PASSENGER_AIM
    [102] = true, -- INPUT_VEH_JUMP
    [104] = true, -- INPUT_VEH_SHUFFLE
    [105] = true, -- INPUT_VEH_DROP_PROJECTILE
    [136] = true, -- INPUT_VEH_PUSHBIKE_PEDAL
    [137] = true, -- INPUT_VEH_PUSHBIKE_SPRINT
    [139] = true, -- INPUT_VEH_PUSHBIKE_REAR_BRAKE
    [140] = true, -- INPUT_MELEE_ATTACK_LIGHT
    [141] = true, --  INPUT_MELEE_ATTACK_HEAVY
    [142] = true, -- INPUT_MELEE_ATTACK_ALTERNATE
    [143] = true, -- INPUT_MELEE_BLOCK
    [337] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE
    [338] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_LEFT
    [339] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_RIGHT
    [340] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_UP
    [341] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_DOWN
    [342] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_UD
    [343] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_LR
    [351] = true, --  INPUT_VEH_ROCKET_BOOST
    [354] = true, -- INPUT_VEH_BIKE_WINGS
    [357] = true, -- INPUT_VEH_TRANSFORM
    [345] = true, -- INPUT_VEH_MELEE_HOLD
    [346] = true, -- INPUT_VEH_MELEE_LEFT
    [347] = true, -- INPUT_VEH_MELEE_RIGHT
}

Config.Credits = {
    { title = "<b>Thanks to the community<b>", subtitle = "For supporting and using RP Emotes!" },
    { title = "Thanks ~o~DullPear 🍐~s~", subtitle = "~o~DullPear~s~ for the original dpemotes ❤️" },
    { title = "Thanks <font color=\"#ff451d\">Mathu_lmn 🇫🇷 </font>", subtitle = "<font color=\"#ff451d\">Mathu_lmn 🇫🇷</font> Maintainer, additional features and fixes 🛠️" },
    { title = "Thanks <font color=\"#ff451d\">Enzo2991 🇧🇪 </font>", subtitle = "<font color=\"#ff451d\">Enzo2991 🇧🇪 </font> for creating the ped preview functionality, keybind with kvp" },
    { title = "Thanks <b>Kibook 🐩</b>", subtitle = "<b>Kibook</b> for the addition of Animal Emotes 🐩 submenu." },
    { title = "Thanks ~y~AvaN0x 🇫🇷~s~", subtitle = "~y~AvaN0x~s~ 🇫🇷 for reformatting and assisting with code and additional features 🙏" },
    { title = "Thanks <font color=\"#40E0D0\">iSentrie </font>", subtitle = "<font color=\"#40E0D0\">iSentrie</font> for assisting with code 🛠️" },
    { title = "Thanks <font color=\"#0e64ed\">Mads 🤖</font>", subtitle = "<font color=\"#0e64ed\">Mads 🤖</font> for the addition of Exit Emotes, Crouch & Crawl ⚙️" },
    { title = "Thanks <font color=\"#ff00c3\">Tigerle 🐯</font>", subtitle = "<font color=\"#ff00c3\">Tigerle</font> for assisting with attached Shared Emotes ⚙️." },
    { title = "Thanks <font color=\"#1C9369\">northsqrd ⚙️</font>", subtitle = "<font color=\"#1C9369\">northsqrd</font> for assisting with search feature and phone colours 🔎" },
    { title = "Thanks <font color=\"#15BCEC\">GeekGarage 🤓</font>", subtitle = "<font color=\"#15BCEC\">GeekGarage</font> for assisting with code and features" },
}
