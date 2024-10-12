![image](https://github.com/alberttheprince/rpemotes-reborn/assets/85725579/25b38001-1b50-42ff-b9c9-07046d8be0a1)

Rpemotes-reborn is a community-driven FiveM emote menu allowing players to express themselves in roleplay with custom animations, countless facial expressions, walk styles, and props.

Rpemotes-reborn is free, **and will always be free**: accept no substitutes or reproductions from scummy people reselling other's hard work against agreements made with creators. We're committed to the open-source community and the dozens of contributors who put hard work into rpemotes to provide the community with free emotes and props.

Want to help support them? Check out our credits section at the bottom of the Readme and support those creators!

Interested in joining our community? You can find our Discord [here](https://discord.gg/UJ72w8rgar).

# Features 🛠️

- Emote Preview - View emotes before you use them

- Changeable Banner Font

- Changeable Banner Colour

- Multiple Translations 🌏

- Search Function 🔎

- Custom Animations with **permission from the community** 🏃

- Persistent Facial Expressions via client KVP 🤪

- Animal Emotes 🐩

- Shared Dances 🕺💃

- Persistent Walkstyles via client KVP 🚶‍♂️ - Standalone, QB-Core and ESX support!

- Persistent Disabling Of Idle Camera via KVP 🎥

- Crouching 🐞

- Crawling 🐛

- Finger Pointing 👆

- Ragdoll 😵

- Hands up 🙌

- Shared Particle Effects 💨

- QB-Core Framework & SQL Keybinding Support ⚙️

- Further support for shared and couple poses/animations 👫

- Easily convert Menyoo to RPEmotes 🔄

- Hide Adult Emotes 🔞

- Hide Animal Emotes ⛔

- Easy To Understand Configuration File ⚙️

- Exit Emotes 😎

- Working Binoculars 👀

- News Camera 🎤📹

- Props Extractor for anti-cheat scripts 💾

**Available in the following languages:**

Albanian, Brazilian Portuguese, Chinese (Simplified), Chinese (Traditional), Czech, Danish, Dutch, English, Finnish, French, German, Greek, Hungarian, Indonesian, Italian, Lithuanian, Norwegian, Persian, Polish, Romanian, Russian, Serbian, Sinhala, Slovenian, Spanish, Swedish, Turkish, Vietnamese

Languages can be selected and/or added in the config.lua.

All languages were translated or contributed by the FiveM community, with the odd exception of using Google Translate.

If you find any incorrect translations or would like to add more languages, please make a pull request with the corrections.

# Header

To edit the header, find the image in the main directory of rpemotes-reborn and edit the image in your program of choice. The image dimensions are 512 x 128.

Do not change the name of the image file.

Example Banner:
![image](https://github.com/user-attachments/assets/dac5b7e5-4b63-4d10-8d59-3e8502d9913c)

**Note for users of older versions of rpemotes:** Previously, the banner was hosted through a web link on an image hosting website. Due to various image hosting sites dealing with large amounts of traffic from FiveM, they cut off access to FiveM.

# Exports and Documentation

A partial archive of the original RP Emotes docs can be found [here](https://web.archive.org/web/20231218223552/https://docs.rpemotes.com/)

When using our emote menu with other scripts, using the `TriggerEvent('animations:client:EmoteCommandStart` won't do anything because the events do not exist. These have simply been replaced with the following exports:

**Note for legacy use of rpemotes:** if you have resources dependent on or currently using exports from rpemotes, rename rpemotes-reborn's folder to rpemotes to maintain functionality. Or, rename all exports from exports["rpemotes"] to exports["rpemotes-reborn"]

```lua
exports["rpemotes-reborn"]:EmoteCommandStart(emoteName, textureVariation)
exports["rpemotes-reborn"]:EmoteCancel(forceCancel) – forceCancel is optional
exports["rpemotes-reborn"]:CanCancelEmote(state)
exports["rpemotes-reborn"]:IsPlayerCrouched()
exports["rpemotes-reborn"]:IsPlayerProne()
exports["rpemotes-reborn"]:IsPlayerCrawling()
exports["rpemotes-reborn"]:IsPlayerPointing()
exports["rpemotes-reborn"]:IsPlayerInAnim() -- returns current animation name or nil
exports["rpemotes-reborn"]:IsPlayerInHandsUp()
exports["rpemotes-reborn"]:toggleWalkstyle(bool, message) -- bool to allow the user to change their walkstyle in the menu or not / message to show the user (optional, default is :"You are unable to change your walking style right now.")"
exports["rpemotes-reborn"]:toggleBinoculars()
exports["rpemotes-reborn"]:toggleNewscam()
exports["rpemotes-reborn"]:getWalkstyle() -- Gets walk style of player, used to detect certain walk. useful for applying effects while doing certain walks like tripping or other "funny" effects.
exports["rpemotes-reborn"]:setWalkstyle(name, force) -- name = "move_m@alien" or any other, force = optional bool. Lets you set or force a walk style, useful for scripts like retrieving a style before drinking and restoring it after sobering up.
```

Having issues with players using emotes when/where they're not supposed to? Use the following where you need. This would be somewhere like if you want to disable emotes in jail or when someone is handcuffed/escorted:

```lua
LocalPlayer.state:set('canEmote', false, true) -- stops emoting
LocalPlayer.state:set('canEmote', true, true) -- allows emoting
```

# Menu Keybind 🎛️

The keybind uses RegisterKeyMapping. By default the configured keybind in the _initial_ config.lua will be the default key, however once the keybind is set for a user it'll remain and can be changed in the users settings under `Esc > settings > keybinds > fivem`.

**Menu key:**

| COMMAND: | ACTION:                    |
| -------- | -------------------------- |
| F4       | Open / Close RPEmotes menu |

Server owners can change this in the `config.lua`.

Alternatively, the player base can set their menu keybind to open rpemotes-reborn

`Esc > settings > keybinds > fivem`

- More keybinds are now using key mappings which means that they are now available in your FiveM settings to change (`FavKeybind` and `RagdollKeybind`)

# Keybinds and SQL 🎛️

To use the SQL features, install the latest version of the [oxmysql](https://github.com/overextended/oxmysql) resource and enable the setting in `config.lua`

```lua
SqlKeybinding = false,
```

If you do not want to use the SQL features keep the `oxmysql` region in fxmanifest.lua commented out.

Alternatively, you can use the keybind command that comes with FiveM without having to use SQL, by entering the following into F8:

`bind keyboard "Yourbutton" "e youremote"`. To remove the keybind, type `"unbind keyboard "Yourbutton"`.

# Menu Customization

In the`config.lua` file, server owners can set the MenuTitle or simply leave it blank. Ideally, this should be 11 characters or less without any spaces.
You can also set the font and decide whether or not you want an outline and MenuPosition. The available fonts are as follows:

```lua
    -- 0 : Chalet London
    -- 1 : House Script
    -- 2 : Monospace
    -- 4 : Chalet Comprime Cologne
    -- 7 : Pricedown
```

Additional customizations can be found in the config. Please note due to limitations by Imgur and Discord; images can not be directly linked from either platform. You may link directly to an image from the forums, or just leave it blank.

# Increments

Pressing 'LEFT ALT' on the keyboard allows players to scroll through the menu one by one, or by 10.

Alternatively, players can use the `SHARE` button on an Xbox controller or `OPTIONS` button on a Playstation controller.

# Ragdoll 🥴

- To enable ragdoll, change `RagdollEnabled = false,` to true in config.lua.

- Much like the menu key, `RagdollKeybind` is also using RegisterKeyMapping. It is currently set to `U` by default _(server side)_ however can be set to the player's preferred keybind in the FiveM keybinds setting found in the settings menu within the Esc Menu.

- New setting: `RagdollAsToggle`, this will make either the ragdoll be a toggle or a hold key

# Finger Pointing & Hands Up 👆

Once enabled, players can press `B` on the keyboard to enable standalone finger pointing, and `Y` to put their hands up, without the need for unnecessary frameworks or "small resources".

Much like everything else in the menu, server owners can change these keybinds to their own preferences.

| COMMAND:  | ACTION:                |
| --------- | ---------------------- |
| B         | Toggle Finger Pointing |
| Y         | Toggle Hands Up        |
| /pointing | Toggle Finger Pointing |
| /handsup  | Toggle Hands Up        |

# Crouching & Crawling

**Crouching:**

RIGHT CONTROL. Players can move forward, back, left, and right as well as turn around. Press SPACEBAR to switch from stomach to back. Pressing the RIGHT CONTROL key while running will have the player "dive into" a crouching animation.

**Crawling:**

Server owners can opt in to either overriding the stealth/action animation when pressing the LEFT CONTROL keybind or have players tap LEFT CONTROL twice to switch from stealth to crouch (when enabled in the config.lua file)

# Chat Commands

| COMMAND:      | ACTION:                   |
| ------------- | ------------------------- |
| LEFT CONTROL  | Toggle Crouching On / Off |
| RIGHT CONTROL | Toggle Crawling On / Off  |
| /crouch       | Toggle Crouching On / Off |
| /crawl        | Toggle Crawling On / Off  |

---

# Moods & Walkstyles 😜🚶‍♂️

Moods and walk styles can be set from the menu. These will save to your character and reapply when exiting a vehicle, or loading back into the server as they are saved via client-side KVP.

| COMMAND:    | ACTION:                               |
| ----------- | ------------------------------------- |
| F4          | Opens RPEmotes menu                   |
| /walks      | See A List Of Walkstyles In Chat      |
| /moods      | See A List Of Walkstyles In Chat      |
| /reset mood | Remove preferred mood and set default |
| /reset walk | Remove last walkstyle and set default |

Having problems with users "abusing" certain walk styles? rpemotes-reborn checks if a user has an "abusable" walk style saved and clears it when a player joins. Alternatively, you can use a resource like [rpemotes-punishment](https://github.com/alberttheprince/rpemotes-punishment/) to trip players abusing these emotes.

Just want to remove them? Delete the following walk styles from Animationlist.lua:

Bigfoot, Hurry, Hurry2, Hurry3, Flee, Flee2, Flee3, Flee4, and Flee5

# No Idle Cam 📷

No Idle Cam allows players to disable the idle camera animation on foot and in vehicle, making RP scenarios, streaming on Twitch, or just general gameplay just a little more enjoyable.

| COMMAND:    | ACTION:                |
| ----------- | ---------------------- |
| /Idlecamon  | deactivates the native |
| /idlecamoff | enables the native     |

# Binoculars 👀

| COMMAND:    | ACTION:                                       |
| ----------- | --------------------------------------------- |
| /binoculars | starts the binoculars                         |
| L ALT       | Toggle between night, heat and normal visions |
| G           | Show or hide the instructions                 |
| BACKSPACE   | Exit the binoculars                           |

<img src="https://forum.cfx.re/uploads/default/original/4X/2/6/3/263b6f2afe148191193fca8c8cc0b9bc666da9e8.jpeg" width="600" height="auto">

# News Camera

| COMMAND:  | ACTION:                       |
| --------- | ----------------------------- |
| /newscam  | starts the News Camera        |
| H         | Edit Text                     |
| L ALT     | Toggle between vision modes   |
| G         | Show or hide the instructions |
| BACKSPACE | Exit News Camera              |

<img src="https://forum.cfx.re/uploads/default/optimized/4X/5/4/e/54e47db5ae45f5afa4b84c2ae4858bc9ab0a8187_2_690x388.jpeg" width="600" height="auto">

# Favorite Emote

Players can search for an emote (so long as search is enabled) and press LEFT SHIFT and CAPLOCKS on their keyboard to add it to their 'Favorites'. Pressing CAPLOCKS will toggle the emote.

Alternatively, you can use the 🌟 Favorite menu to find an emote and press enter.

# Exit Emotes

Exit Emotes are used to make cancelling an animation more smoother and dynamic, such as getting up off a chair or throwing a cigarette out instead of dropping it.

You can add your own Exit Emotes under `AnimationListCustom.lua`'s new `CustomDP.Exits = {}` array.

Below is an example of how this would look:

```lua
    },
    ["sit"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_idle_nowork",
        "Sit",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
```

The ExitEmote calls for the 'getup' emote, which is noted as the following:

```lua
["getup"] = {
        "get_up@sat_on_floor@to_stand",
        "getup_0",
        "Get Up",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    }
}
```

# Adult Emotes 🔞

Adult Emotes can be hidden from the menu by setting `AdultEmotesDisabled` to `true` in the config.lua file.

This will completely conceal the emotes from the lists _(Emotes, Shared Emotes, etc)_ at startup making them unusable.

The emotes that are concealed, are the ones flagged in the animation list with `AdultAnimation`. You can see how it is done with `fspose`.

Alternatively, you can also hide animal emotes.

# QB-Core ⚙️

**QBCore integration to match their fork of dpemotes**

- Config option that supports the QB Framework in their fork of the original dpemotes.

If you’re using qb-core, you can now set

```lua
Framework = "qb-core",
```

in the config file, otherwise, leave it as

```lua
Framework = false,
```

_You may need to alter some code within qb-core to work with RPEmotes._

# Prop Extractor ↔️

Many people have expressed concerns over anticheat scripts kicking or banning their community members due to the fact RPEmotes uses props and anticheats detecting said props being spawned.

To make server owners' jobs a little easier, we have added a prop extractor command that you can enter into the server console which will automate a file inside the RPEmotes resource folder appropriately named, `prop_list.lua`.

### Command:

`emoteextract`

```lua

Available output formats:
1 - 'prop_name',
2 - "prop_name",
3 - prop_name
4 - calculate total emotes

Command usage example: emoteextract 1
```
![image](https://github.com/user-attachments/assets/6ec6e042-00b7-4be2-8086-1805eb87196c)

# Installation Instructions ⚙️:

- Add `ensure rpemotes` to your `server.cfg`

- Download the latest recommended artifacts [for Windows](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/) or [for Linux](https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/)

- [Enforce gamebuild to latest build](https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977) for all emotes and props to work as intended.

**Onesync Infinity is required for the particle effects to work as intended** This can be done via txadmin or your localhost .bat file.\*\*

For localhost servers, comment out onesync from your server.cfg and add the following to your `.bat` file:

```lua

+set onesync on +set onesync_enableInfinity 1 +set onesync_enableBeyond 1 +set onesync_population true

```

You can put this before your gamebuild enforcement, aka `+set sv_enforceGameBuild XXXX`

- Set the desired language and settings in the config.lua under `MenuLanguage = 'en',`

- Qb-Core server owners, set `Framework = 'qb-core'` in the config file, otherwise leave it as false.

- To use the SQL features, install the [oxmysql](https://github.com/overextended/oxmysql) resource then open `keybinds.lua` in RPEmotes. If you do not want to use the SQL features, comment out the `oxmysql` region in fxmanifest.lua.

Alternatively, you can use the keybind command that comes with FiveM without having the SQL, by entering the following into F8:

`bind keyboard "Yourbutton" "e youremote"`. To remove the keybind, type `"unbind keyboard "Yourbutton"`.

- Type `/refresh` and `/ensure rpemotes` into your chat resource, or simply restart your server

# Shared emotes 👩🏻‍❤️‍💋‍👨🏼

Emotes will work with either `SyncOffset` or `Attachto`.

If it is with `SyncOffsetFront` or `SyncOffsetSide`, then the offset used is the one of the emote the player started.<br/>

For example, if player one starts the emote `handshake` which has `SyncOffsetFront`, then player one will have the `SyncOffsetFront` but not the other player.

- If it is with `Attachto`, then it'll either be player one's data used for attaching or player two's data.<br/>
  For example, if player one starts the emote carry, then the other player will be attached but not the player one because Attachto is set in `carry2` and not `carry`.<br/>
- If player one starts the emote `carry2`, then player one will be attached and not the other player.
  it's the player who starts the animation who will in most cases be moved

_Special case, if both emote have the `Attachto` then only the player who started the emote will be attached._

You can find a list of ped bones to attach the other player here: [Ped Bones](https://wiki.rage.mp/index.php?title=Bones) or alternatively, if the link is down for some reason, you can check [here](https://wiki.rage.mp/index.php?title=Bones)

Using the websites provided above, enter the bone ID, ie `1356` and not `111`, which is the Bone Index.

Understandably, this can be confusing for some people. We suggest using the `Attachto` approach.

# Particle Effects 💨

**REQUIRES ONESYNC INFINITY**

Particle effects can be found using the [DurtyFree GTA V Dump](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json). You will need to add the particle asset, name, and placement. Placement is done via XYZ, Pitch, Roll, Yaw, and scale.

Onesync is required for them to work across all clients.

```lua
PtfxPlacement = {
    -0.15, -- X
    -0.35, -- Y
     0.0, -- Z
     0.0, -- ROTATION X
     90.0, -- ROTATION Y
     180.0, -- ROTATION Z
       1.0 -- SCALE
},
```

<img src="screenshots/pfxcoords.png" width="350">

By default, the main prop will share its coordinates with the particle effect, so just put 0.0 for the particle effects and you will be good to go.

If no prop is used in the animation or you require the particle effect to be in a different location, use `PtfxNoProp = true`, and 0.0 will 9/10 times be the human peds' stomach; you can then offset your coordinates based on that with the first 3 entries being XYZ, and the last 3 being rotation XYZ.

Alternatively, you can use the `PtfxBone =` AnimationOption to attach the PTFX to the ped's bone, similarly to how you attach props.

Using Menyoo, spawn down a tennis ball and attach it to a human, by default menyoo will attach it to the SKEL_ROOT bone (stomach), so from that, what we can do is either offset the coordinates, say, up to the human ped's mouth, or change the bone altogether. Once we've got it correct, we can transfer those coordinates over to RPEmotes, and tah dah, we have our Ptfx Placement.

Note that `ptfxwait = ` is in ms, so if you'd like a particle to last for 30 seconds, it should be `ptfxwait = 30000`.

# Adding Your Own Animations ⚙️

Because the menu gets updated frequently, the files get overwritten. To avoid this, you can add your own / downloaded animation files `(.ycd)` inside of a newly created folder, give it a name, and place it in the `rpemotes\stream\[Custom Emotes]` folder.

Add your animation code to the `AnimationListCustom.lua` and make a backup of this file and call it `BackUpAnimationListCustom.lua`.

**Note on animal emotes:** For the addition of custom emotes for animal peds, you must add use the `sdog` or `bdog` tags. For example if you want to add an emote of `laydownflat` it must be either `sdoglaydownflat` or `bdoglaydownflat`. You must also add any custom addon peds to the `animals.lua` file in either category for these animations to be played on those models.

Whenever an update is released, rename `BackUpAnimationListCustom.lua` to `AnimationListCustom.lua`, click yes to overwrite, and you're good to go.

Note that `AnimationListCustom.lua` and `BackUpAnimationListCustom.lua` files from versions prior to version 1.5.0 are not compatible with version 1.5.0, and files from version 1.5.0 are not backwards compatible with versions prior to version 1.5.0. To retain any custom animation code from previous versions, copy over any customizations into the `AnimationListCustom.lua` file that is included in the current version.

It is also a good idea to keep a backup of your config file.
Below is an example:

<img src="screenshots/customanims.png" width="550">

# Credits 🤝

**All** custom animations and props were added with permission from the creators.

All animation creators have **_specifically_** asked that their content remain free and that the RPEmotes team and community do not try to profit from them, claim them as their own, or reupload them anywhere else.

**A huge thank you the following people for their amazing contributions to the menu:**

- the FiveM community for using RP and updating rpemotes-reborn!
- [enzo2991](https://github.com/enzo2991) for creating the ped preview functionality
- [The Popcorn RP community](https://discord.gg/popcornroleplay) for putting up with all my emote menu testing and troubleshooting issues with me
- [DerDevHD](https://forum.cfx.re/t/fixed-remove-prop-after-scenario-animation/5002332/8) for the insight on deleting scenario props.
- [Kibook](https://github.com/kibook) for the addition of the Animal Emotes sub-menu
- [AvaN0x](https://github.com/AvaN0x) for reformatting and assisting with code, additional features, and figuring out shared particle effects
- [Mads](https://github.com/MadsLeander) for joining the team as Co-Developer
- [Mathu_lmn](https://github.com/Mathu-lmn) for joining the team as Co-Developer
- [Tigerle](https://forum.cfx.re/u/tigerle_studios) for providing the additional code required to make Shared Emotes work to its full extent
- [SMGMissy](https://jenscreations.tebex.io/) for creating the pride flag props
- [MissSnowie](https://www.gta5-mods.com/users/MissySnowie) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord and for the motivational and overall moral support
- [GeekGarage](https://github.com/geekgarage) for their knowledge, time, and dedication, helping to bring new and exciting features to the menu
- [Smokey](https://www.gta5-mods.com/users/struggleville) for the Explicit Usage Rights Agreement to add free custom animations either publicly available on their discord
- [BzZzi](https://forum.cfx.re/u/bzzzi/summary) for the Explicit Usage Rights Agreement to add free donuts, croissants and fire torch props
- [Natty3d](https://forum.cfx.re/u/natty3d/summary) for the Explicit Usage Rights Agreement to add free lollipop props
- [northsqrd](https://github.com/0sqrd) for adding the search function, Animal Emotes config, mobile phone prop texture variants, and general contributions
- Crusopaul and Eki for discussing KVP and initializing it to the menu for persistent walk styles
- [Amnilka](https://www.gta5-mods.com/users/frabi) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- [LittleSpoon](https://discord.gg/safeword) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- [Pupppy](https://discord.gg/rsN35X4s4N) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- [SapphireMods](https://discord.gg/Hf8F4nTyzt) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- [QueenSisters Animations](https://discord.gg/qbPtGwQuep) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- [Kri's Graphic House](https://discord.gg/JueRG3fCy6) for the custom banners
- !MWooM#0597 on Discord for the custom banners
- DurtyFree for his work on particle effects and cataloging GTA-related information [DurtyFree GTA V Dump](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json).
- [BoringNeptune](https://www.gta5-mods.com/users/BoringNeptune) for the custom dance emotes
- [CMG Mods](https://www.gta5-mods.com/users/-moses-) for the custom emotes
- [prue 颜](discord.gg/lunyxmods) for being a great friend and providing us with exclusive custom animations
- [PataMods](https://forum.cfx.re/u/Pata_PataMods) for the custom props
- [Crowded1337](https://www.gta5-mods.com/users/crowded1337) for the custom Gucci bag. I have removed the Gucci logo to comply with Rockstar Games & TakeTwo Interactive
- [EnchantedBrownie](https://www.gta5-mods.com/users/EnchantedBrownie) for the custom animations
- [Copofiscool](https://forum.cfx.re/u/copofiscool/) for adding a toggle to the Favorite Keybinds
- [iSentrie](https://forum.cfx.re/u/isentrie/) for additional code, support, and joining the RPEmotes project
- Chocoholic Animations for the custom animations
- [CrunchyCat](https://www.gta5-mods.com/users/crunchycat) for the custom animations
- [KayKayMods](https://discord.gg/5bYQVWVaxG) for the custom props
- [MonkeyWhisper](https://github.com/MonkeyWhisper) and [Project Sloth](https://github.com/Project-Sloth) for the custom props
- [Brummieee](https://forum.cfx.re/u/brummieee_maps/summary) for the custom props
- [Dark Animations](https://www.gta5-mods.com/users/Darks%20Animations) for the custom animations.
- [Chico](https://forum.cfx.re/u/chico) for implementing natives to reapply persistent moods and walk styles for ESX and QB-Core frameworks
- [-EcLiPsE-](https://www.gta5-mods.com/users/-EcLiPsE-) for allowing me to implement [Improved Prop Sets](https://www.gta5-mods.com/misc/improved-propsets-meta) and [GTA Online Biker Idle Anims](https://www.gta5-mods.com/misc/bike-idle-animations)
- [MrWitt](https://www.gta5-mods.com/users/MrWitt)for the custom animations
- [AdoredRose](https://forum.cfx.re/u/adoredrose/summary) for assisting with animations
- [Vedere](https://discord.gg/XMywAMQ8Ef) for the custom props
- [DRX Animations](https://www.gta5-mods.com/users/DRX%2DAnimations) for the custom animations
- [VNSIanims](https://discord.gg/cTNrjYSXXG) for the custom animations
- [PNWParksFan](https://www.gta5-mods.com/users/PNWParksFan) for the custom props
- [LSPDFR member Sam](https://www.lcpdfr.com/downloads/gta5mods/misc/23386-lspd-police-badge/) for their Custom LSPD police badge
- [GTA5Mods user Sladus_Slawonkus](https://www.gta5-mods.com/misc/lspd-police-badge-replace-sladus_slawonkus) for their reskinned LSPD badge
- [Scully](https://github.com/Scullyy/) for their past work on rpemotes
- [EP](https://github.com/EpKouhia) for their ice fishing props and emotes, originally used in scully_emotemenu
- [TayMcKenzieNZ](https://github.com/TayMcKenzieNZ) for their past work maintaining RP Emotes
- [ESX](https://github.com/esx-framework) for the creation of the translation system
- [41anims](https://www.gta5-mods.com/users/41anims) for allowing us to use their custom emotes in rpemotes-reborn
- [corbs](https://www.gta5-mods.com/users/corbs) for allowing us to use their custom emotes and poses in rpemotes-reborn
- [jaysigx](https://www.gta5-mods.com/misc/improved-umbrella) for allowing us to use their improved umbrella prop
