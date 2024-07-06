--- OFFICAL RPEMOTES REPOSITORY ---
--- BY TAYMCKENZIENZ, AvaN0x, MadsL, Mathu_lmn AND THE COMMUNITY ---
--- DO NOT REUPLOAD, SELL OR ENCRYPT. ---
--- IT IS FREE BY THE COMMUNITY, FOR THE COMMUNITY ---
Config = {
        -- MENU OPTIONS
        MenuLanguage = 'fr', -- Change the language of the menu here!.
        DebugDisplay = false, -- Set this to true to enable some extra prints.
        EnableCancelKeybind = true, -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
        CancelEmoteKey = 'x', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/.
        MenuKeybindEnabled = true, -- You can disable the menu keybind here
        MenuKeybind = 'f4', -- The keybind you set here will be server-sided for new players. Existing players can set their own in the ESC menu keybind settings.
        FavKeybindEnabled = true, -- You can disable the Favorite emote keybinding here.
        FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/.
        SqlKeybinding = true, -- If you have the SQL imported enable this to turn on keybinding.
        NotificationsAsChatMessage = true, -- If you don't like native GTA 5 notifications, you can disable them here to have messages in the chat.
        Framework = 'false', -- Used for few framework-dependent things. Accepted values: 'qb-core', false.
        Search = true, -- Used to enable or disable the search feature in the menu.
        CancelPreviousEmote = false, -- If turned on, playing an emote will cancel the previous one.
        
        
        -- MENU CUSTOMIZATION OPTIONS
        MenuTitle = '', -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners. This is blank by default. Ideally use 11 characters or less.
        -- You can set the menu's title font :
        -- 0 : Chalet London
        -- 1 : House Script
        -- 2 : Monospace
        -- 4 : Chalet Comprime Cologne
        -- 7 : Pricedown
        MenuFont = 1,
        -- Sets whether or not the menu text has an outline or not.
        TitleOutline = true,
        TitleColour = {R = 255, G = 0, B = 255, A = 255}, --- The colour of the menu banner text in RGB. This is white by default aka 255, 255, 255. See https://www.rapidtables.com/web/color/RGB_Color.html for colours.
        MenuPosition = 'right', -- You can change the menu position here. Use 'left' or 'right'
        CustomMenuEnabled = true, -- You can change the header image for the menu here, Note this might cause an issue of the image getting stuck on people's screens.
        MenuImage = 'https://i.imgur.com/vPkzd1M.png', -- You can change the menu image here, please use an image hosted on imgbb.com, GIPHY or a Discord channel / DM with the same width and length. Use a 512 x 128 image!
        
        
        -- COMBAT CAR, AND PLAYER MOVEMENT OPTIONS
        DisarmPlayer = false, -- Set this to true if you want to disarm the player when they play an emote..
        AllowPunching = false, -- Set this to true if you want to allow people punching while emotes are playing
        AllowedInCars = true, -- Set this false if you want to disable emotes in cars.
        AllowInWater = false, -- If turned off, opening the menu and playing an emote will not be possible while swimming.
        
        
        -- RAGDOLL OPTIONS
        RagdollEnabled = true, -- You can enable or disable the Ragdoll keybinding here.
        RagdollKeybind = 'u', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/.
        RagdollAsToggle = true, -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
        
        
        -- EXPRESSIONS, WALKS, AND MORE MENU OPTIONS
        ExpressionsEnabled = true, -- You can disable the Facial Expressions menu here.
        PersistentExpression = true, -- Saves expression style to client via KVP and applies them upon joining any server with RPEmotes installed.
        WalkingStylesEnabled = true, -- You can disable the Walking Styles menu here.
        PersistentWalk = true, -- Saves walkstyles style to client via KVP and applies them upon joining any server with RPEmotes installed. This is also reapplied upon exiting a vehicle.
        SharedEmotesEnabled = true, -- You can disable the Shared Emotes here.
        AdultEmotesDisabled = false, -- You can disable the Adult Emotes here. By default, this is set to false for obvious reasons.
        AnimalEmotesEnabled = true, -- You can disable the Animal Emotes here.
        
        
        -- HANDS UP OPTIONS
        HandsupEnabled = false, -- You can enable / disable the handsup here / change the keybind. It is currently set to Y however disabled by default as to not conflict with qb-core servers.
        HandsupKeybind = 'Y', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/.
        HandsupKeybindEnabled = false, -- Set this to false if you would for whatever reason prefer people use the chat commannd /handsup.
        HandsupKeybindInCarEnabled = false,
        PersistentEmoteAfterHandsup = true, -- If true, you will play the emote you were playing previously after you cancel your handsup animation. This is enabled by default with the 'true' value.
        
        
        -- POINTING OPTIONS
        PointingEnabled = true, -- You can enable / disable the finger pointing here / change the keybind. It is currently set to B however disabled by default as to not conflict with qb-core servers.
        PointingKeybindEnabled = true,
        PointingKeybind = 'B', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/.
        PointingKeybindInCarEnabled = false,
        PersistentEmoteAfterPointing = true, -- If true, you will play the emote you were playing previously after you stop pointing.
        
        
        -- CROUCHING OPTIONS
        CrouchEnabled = true, -- Enabled by default as this is an integral part of RPEmotes
        CrouchKeybindEnabled = true, -- If true, crouching will use keybinds.
        CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        CrouchOverride = false, -- If true, you won't enter stealth mode even if the crouch key and the "duck" key are the same.
        -- If crawling should be enabled.
        CrawlEnabled = true,
        
        -- CRAWLING OPTIONS
        CrawlEnabled = true, -- If crawling should be enabled.
        CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
        CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        
        
        
        -- BINOCULAR OPTIONS
        BinocularsEnabled = true, -- Enable / disable the /binoculars command in chat. This is enabled by default as it is an integral part of RPEmotes
        AllowVisionsToggling = false, -- If set to true, you'll be able to toggle between different vision modes in the binoculars
        
        -- NEWS CAMERA OPTIONS
        NewscamEnabled = true, -- If set to true, the /newscam command will be enabled. This is enabled by default as it is an integral part of RPEmotes
        
        -- OFFICAL UPDATES CHECKER
        CheckForUpdates = true, -- This is set to false by default and will check for any future updates on the official RPEmotes repository by TayMcKenzieNZ, as intended.

}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}
