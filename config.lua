--- Maintained by TayMcKenzieNZ for the community ---
--- Leakers and resellers are the absolute scum of the earth ---

Config = {
    -- Change the language of the menu here!.
    -- Thank you to those who provided translations.
    -- If you would like to provide translations or help fix them, join our Discord!
    -- Check languages code below to change the MenuLanguage
    MenuLanguage = 'en',
    -- Set this to true to enable some extra prints
    DebugDisplay = false,
    -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    EnableXtoCancel = true,
    CancelEmoteKey = 'x', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to true if you want to disarm the player when they play an emote.
    DisarmPlayer = false,
    -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
    AllowedInCars = true,
    -- You can disable the menu here / change the keybind. It is currently set to F5
    MenuKeybindEnabled = true,
    MenuKeybind = 'f4', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Favorite emote keybinding here.
    FavKeybindEnabled = true,
    FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the header image for the menu here
    -- Use a 512 x 128 image!
    -- Note this might cause an issue of the image getting stuck on peoples screens
    CustomMenuEnabled = true,
    MenuImage = "https://i.giphy.com/media/zpKIWAzNO9IhYwEGkN/giphy.gif", ----[Custom banner IMGUR or GIPHY URLs go here ]---
    -- You can change the menu image by pasting a link above. It must be the same width and length
    -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners
    MenuTitle = "",
    -- You can change the menu position here
    MenuPosition = "right", -- (left, right)
    -- You can enable or disable the Ragdoll keybinding here.
    RagdollEnabled = false,
    RagdollKeybind = 'u', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
    RagdollAsToggle = true,
    -- You can disable the Facial Expressions menu here.
    ExpressionsEnabled = true,
    -- Saves expression style to client and applies them on joining
    PersistentExpression = true,
    -- You can disable the Walking Styles menu here.
    WalkingStylesEnabled = true,
    -- Saves walk styles to client and applies them periodically
    PersistentWalk = true,
    -- Polling period to apply persistent walkstyles
    PersistencePollPeriod = 60000,
    -- You can disable the Shared Emotes here.
    SharedEmotesEnabled = true,
    -- If you have the SQL imported enable this to turn on keybinding.
    SqlKeybinding = false,
    -- If you don't like gta notifications, you can disable them here to have messages in the chat.
    NotificationsAsChatMessage = false,
    -- Used for few framework dependent things. Accepted values: "qb-core", false
    Framework = false,
    -- You can disable the Adult Emotes here.
    AdultEmotesDisabled = false,
    -- You can disable the Animal Emotes here.
    AnimalEmotesEnabled = true,
    -- Used to enable or disable the search feature in the menu.
    Search = true,
    -- You can disable the handsup here / change the keybind. It is currently set to H
    HandsupKeybindEnabled = false,
    HandsupKeybind = 'h', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the fingrer pointing here / change the keybind. It is currently set to B
    PointingEnabled = false,
    PointingKeybindEnabled = true,
    PointingKeybind = 'b', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- If crouching should be enabled.
    CrouchEnabled = true,
    CrouchKeybindEnabled = true, -- If true, crouching will use keybinds.
    CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverride = false, -- If true, you won't enter stealth mode even if the crouch key and the "duck" key are the same.
    -- If crawling should be enabled.
    CrawlEnabled = true,
    CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
    CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Check for updates
	CheckForUpdates = true,
}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}
