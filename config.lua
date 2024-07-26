Config = {
    -- Menu Options
    MenuLanguage = 'en', -- Change the language of the menu here!.
    DebugDisplay = false, -- Set this to true to enable some extra prints
    EnableCancelKeybind = true,  -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    CancelEmoteKey = 'x', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    MenuKeybindEnabled = true,
    MenuKeybind = 'f4', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    FavKeybindEnabled = true, -- You can disable the Favorite emote keybinding here.
    FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    SqlKeybinding = false, -- If you have the SQL imported enable this to turn on keybinding.
    NotificationsAsChatMessage = false, -- If you don't like native GTA 5 notifications, you can disable them here to have messages in the chat.
    Framework = 'qb-core', -- Used for few framework-dependent things. Accepted values: 'qb-core', false
    Search = true, -- Used to enable or disable the search feature in the menu.
    CancelPreviousEmote = false,     -- If turned on, playing an emote will cancel the previous one.
    DisableControls = false, -- Disable specific controls when menu is open, can be configured in NativeUI.lua:2452 (approximately)

    -- Menu Customization Options
    MenuTitle = '', -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners
    TitleOutline = true,
    TitleColour = {R = 255, G = 0, B = 255, A = 255}, --- The colour of the menu banner text in RGB. This is white by default aka 255, 255, 255. See https://www.rapidtables.com/web/color/RGB_Color.html for colours.
    MenuPosition = 'right', -- You can change the menu position here. Use 'left' or 'right'
    CustomMenuEnabled = true, -- You can change the header image for the menu here, Note this might cause an issue of the image getting stuck on people's screens

    -- Combat Car, and Player Movement Options
    DisarmPlayer = false, -- Set this to true if you want to disarm the player when they play an emote.
    AllowPunching = false, -- Set this to true if you want to allow people punching while emotes are playing
    AllowedInCars = true, -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in a vehicle
    -- You can disable the menu here / change the keybind. It is currently set to F4
    -- The keybind you set here will be server-sided for new players. existing players can set their own in the ESC menu keybind settings
    AllowInWater = false, -- If turned off, opening the menu and playing an emote will not be possible while swimming

    -- Ragdoll options
    RagdollEnabled = false,     -- You can enable or disable the Ragdoll keybinding here.
    RagdollKeybind = 'u', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
    RagdollAsToggle = true,

    -- Expressions, Walks, and More Menu Options
    ExpressionsEnabled = true, -- You can disable the Facial Expressions menu here.
    PersistentExpression = true, -- Saves expression style to client and applies them on joining
    WalkingStylesEnabled = true, -- You can disable the Walking Styles menu here.
    PersistentWalk = true, -- Saves walk styles to client and applies them on joining
    SharedEmotesEnabled = true, -- You can disable the Shared Emotes here.
    AdultEmotesDisabled = false, -- You can disable the Adult Emotes here.
    AnimalEmotesEnabled = true, -- You can disable the Animal Emotes here.

    -- Hands Up Options
    HandsupEnabled = false, -- You can disable the handsup here / change the keybind. It is currently set to Y
    HandsupKeybind = 'Y', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    HandsupKeybindEnabled = false,
    HandsupKeybindInCarEnabled = false,
    PersistentEmoteAfterHandsup = true, -- If true, you will play the emote you were playing previously after you stop handsup.

    -- Pointing Options
    PointingEnabled = true, -- You can disable the finger pointing here / change the keybind. It is currently set to B
    PointingKeybindEnabled = true,
    PointingKeybind = 'B', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    PointingKeybindInCarEnabled = false,
    PersistentEmoteAfterPointing = true, -- If true, you will play the emote you were playing previously after you stop pointing.

    -- Crouching Options
    CrouchEnabled = true, -- If crouching should be enabled.
    CrouchKeybindEnabled = true, -- If true, crouching will use keybinds.
    CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverride = false, -- If true, you won't enter stealth mode even if the crouch key and the 'duck' key are the same.
    FpsMode = false, -- set this to true if you have first-person shooting to disable the ability to crouch and shoot in third-person

    -- Crawling Options
    CrawlEnabled = true, -- If crawling should be enabled.
    CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
    CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

    -- Binocular Options
    BinocularsEnabled = false, -- If set to true, the /binoculars command will be enabled.
    AllowVisionsToggling = false, -- If set to true, you'll be able to toggle between different vision modes in the binoculars

    -- News Camera Options
    NewscamEnabled = false, -- If set to true, the /newscam command will be enabled.

    -- Preview Ped Options
    PreviewPed = true, -- Shows a preview of the emote on the player's ped next to the emote menu. Note that resmon will increase when this when emotes are being previewed.

    CheckForUpdates = true
}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}

Config.Credits = {
    {title = "<b>Thanks to the community<b>", subtitle = "For supporting and using RP Emotes!"},
    {title = "Thanks <font color=\"#ff451d\">Enzo2991 🇧🇪 </font>", subtitle = "<font color=\"#ff451d\">Enzo2991 🇧🇪 </font> for creating the ped preview functionality"},
    {title = "Thanks ~o~DullPear 🍐~s~", subtitle = "~o~DullPear~s~ for the original dpemotes ❤️"},
    {title = "Thanks <b>Kibook 🐩</b>", subtitle = "<b>Kibook</b> for the addition of Animal Emotes 🐩 submenu."},
    {title = "Thanks ~y~AvaN0x 🇫🇷~s~", subtitle = "~y~AvaN0x~s~ 🇫🇷 for reformatting and assisting with code and additional features 🙏"},
    {title = "Thanks <font color=\"#0e64ed\">Mads 🤖</font>", subtitle = "<font color=\"#0e64ed\">Mads 🤖</font> for the addition of Exit Emotes, Crouch & Crawl ⚙️"},
    {title = "Thanks <font color=\"#ff451d\">Mathu_lmn 🇫🇷 </font>", subtitle = "<font color=\"#ff451d\">Mathu_lmn 🇫🇷</font>  Additional features and fixes 🛠️"},
    {title = "Thanks <font color=\"#1C9369\">northsqrd ⚙️</font>", subtitle = "<font color=\"#1C9369\">northsqrd</font> for assisting with search feature and phone colours 🔎"},
    {title = "Thanks <font color=\"#15BCEC\">GeekGarage 🤓</font>", subtitle = "<font color=\"#15BCEC\">GeekGarage</font> for assisting with code and features"},
    {title = "Thanks <font color=\"#3b8eea\">SMGMissy 🪖</font>", subtitle = "<font color=\"#3b8eea\">SMGMissy</font> for the custom pride flags 🏳️‍🌈."},
    {title = "Thanks <font color=\"#a356fa\">Dollie 👧</font>", subtitle = "<font color=\"#a356fa\">DollieMods</font> for the custom emotes 💜."},
    {title = "Thanks <font color=\"#ff00c3\">Tigerle 🐯</font>", subtitle = "<font color=\"#ff00c3\">Tigerle</font> for assisting with attached Shared Emotes ⚙️."},
    {title = "Thanks <font color=\"#7dbf7b\">MissSnowie 🐰</font>", subtitle = "<font color=\"#7dbf7b\">MissSnowie</font> for the custom emotes 🐇."},
    {title = "Thanks <font color=\"#FF6100\">Smokey 💨</font>", subtitle = "<font color=\"#FF6100\">Smokey</font> for the custom emotes 🤙🏼."},
    {title = "Thanks ~b~Ultrahacx 🧑‍💻~s~", subtitle = "~b~Ultrahacx~s~ for the custom emotes ☺️."},
    {title = "Thanks <font color=\"#37DA00\">BzZzi 🤭</font>", subtitle = "<font color=\"#37DA00\">BzZzi</font> for the custom props 🍩."},
    {title = "Thanks <font color=\"#C40A7D\">Natty3d 🍭</font>", subtitle = "<font color=\"#C40A7D\">Natty3d</font> for the custom lollipop props 🍭."},
    {title = "Thanks <font color=\"#ff61a0\">Amnilka 🇵🇱</font>", subtitle = "<font color=\"#ff61a0\">Amnilka</font> for the custom emotes ☺️."},
    {title = "Thanks <font color=\"#ff058f\">LittleSpoon 🥄</font>", subtitle = "<font color=\"#ff058f\">LittleSpoon</font> for the custom emotes 💗."},
    {title = "Thanks <font color=\"#1a88c9\">Pupppy 🐶</font>", subtitle = "<font color=\"#1a88c9\">Pupppy</font> for the custom emotes 🦴."},
    {title = "Thanks <font color=\"#53ba04\">SapphireMods</font>", subtitle = "<font color=\"#53ba04\">SapphireMods</font> for the custom emotes ✨."},
    {title = "Thanks <font color=\"#8526f0\">QueenSisters Animations 👭</font>", subtitle = "<font color=\"#8526f0\">QueenSistersAnimations</font> for the custom emotes 🍧"},
    {title = "Thanks <font color=\"#0acf52\">BoringNeptune 👽</font>", subtitle = "<font color=\"#0acf52\">BoringNeptune</font> for the custom emotes 🕺"},
    {title = "Thanks <font color=\"#edae00\">Moses 🐮</font>", subtitle = "<font color=\"#edae00\">-Moses-</font> for the custom emotes 🧡" },
    {title = "Thanks <font color=\"#D71196\">PataMods 🍓</font>", subtitle = "<font color=\"#D71196\">PataMods</font> for the custom props 🍕"},
    {title = "Thanks <font color=\"#FB7403\">Crowded1337 👜</font>", subtitle = "<font color=\"#FB7403\">Crowded1337</font> for the custom Gucci bag 👜"},
    {title = "Thanks <font color=\"#8180E5\">EnchantedBrownie 🍪</font>", subtitle = "<font color=\"#8180E5\">EnchantedBrownie 🍪</font> for the custom animations 🍪"},
    {title = "Thanks <font color=\"#eb540e\">Copofiscool 🇦🇺</font>", subtitle = "<font color=\"#eb540e\">Copofiscool</font> for the Favorite Emote keybind toggle fix 🇦🇺"},
    {title = "Thanks <font color=\"#40E0D0\">iSentrie </font>", subtitle = "<font color=\"#40E0D0\">iSentrie</font> for assisting with code 🛠️"},
    {title = "Thanks <font color=\"#7B3F00\">Chocoholic Animations 🍫</font>", subtitle = "<font color=\"#7B3F00\">Chocoholic Animations</font> for the custom emotes 🍫"},
    {title = "Thanks <font color=\"#34cf5d\">CrunchyCat 🐱</font>", subtitle = "<font color=\"#34cf5d\">CrunchyCat 🐱</font> for the custom emotes 🐱"},
    {title = "Thanks <font color=\"#d10870\">KayKayMods</font>", subtitle = "<font color=\"#d10870\">KayKayMods</font> for the custom props 🧋"},
    {title = "Thanks <font color=\"#de1846\">Dark Animations</font>", subtitle = "<font color=\"#de1846\">Dark Animations</font> for the custom animations 🖤"},
    {title = "Thanks <font color=\"#00FF12\">Brum 🇬🇧</font>", subtitle = "<font color=\"#00FF12\">Brum</font> for the custom props  🇬🇧"},
    {title = "Thanks <font color=\"#017a05\">Chico 💀</font>", subtitle = "<font color=\"#017a05\">Chico 💀</font> for fixing persistent walkstyles and moods for QB-Core and ESX." },
    {title = "Thanks <font color=\"#194ce6\">-EcLiPsE- ✌🏻</font>", subtitle = "<font color=\"#194ce6\">-EcLiPsE- ✌🏻 </font> for NPC prop sets and GTA Online biker animations"},
    {title = "Thanks <font color=\"#3488c8\">MrWitt 🦑️</font>", subtitle = "<font color=\"#3488c8\">MrWitt 🦑</font> for the custom animations."},
    {title = "Thanks <font color=\"#ff96b6\">AdoredRose 🌹</font>", subtitle = "<font color=\"#ff96b6\">AdoredRose 🌹</font> for assistance with adding animations."},
    {title = "Thanks <font color=\"#ff451d\">DRX Animations 👑</font>", subtitle = "<font color=\"#ff451d\">DRX Animations 👑</font> for the custom animations"},
    {title = "Thanks <font color=\"#12ab0a\">Radial 🫡</font>", subtitle = "<font color=\"#12ab0a\">Radial</font> on discord for contributing animations code"},
    {title = "<font color=\"#FF25B1\"><b>TayMcKenzieNZ 🇳🇿<b></font>", subtitle = "<font color=\"#FF25B1\">TayMcKenzieNZ 🇳🇿</font> Previous maintainer of RP Emotes."},
}