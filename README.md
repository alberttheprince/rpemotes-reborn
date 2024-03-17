March 16, 2024: This was once again deleted/closed. I have reopened this repository.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This repository serves as my fork of rpemotes, with fixes and edits done following the privatization of rpemotes in 2024. It remains up for anyone to view changes made by me, as of February 8, 2024. 

RPEmotes has been made public once again, which you can find [here](https://github.com/TayMcKenzieNZ/rpemotes/), which will likely be more up-to-date in the future.

The below information is left as is for you to view/read.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![image](https://github.com/alberttheprince/rpemotes-reborn/assets/85725579/6d4a26bd-0ee1-44f0-b377-7c30511d13b2)

rpemotes-reborn is a community-driven FiveM emote menu allowing players to express themselves in roleplay with custom animations, countless facial expressions, walk styles, and props inspired by [DullPear](https://github.com/andristum/dpemotes), then managed by TayMcKenzieNZ, and then later forked by Popcorn RP as "rpemotes-reborn" to make some minor fixes after TayMcKenzieNZ set all his repositories to private.

The original repository can be found [here](https://github.com/TayMcKenzieNZ/rpemotes).

A partial archive of the original RP Emotes docs can be found here: https://web.archive.org/web/20231218223552/https://docs.rpemotes.com/

Unfortunately, some pages are missing.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Features 🛠️

- Multiple Translations 🌏
- Search Function 🔎
- Custom Animations with **permission from the community** 🏃
- Persistent Facial Expressions via client KVP 🤪
- Animal Emotes 🐩
- Shared Dances 🕺💃
- Persistent Walkstyles via client KVP 🚶‍♂️
- Standalone, QB-Core and ESX support!
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

All languages were translated or contributed by you, our amazing community with the odd exception of using Google Translate.

If you happen to find any incorrect translations or would like to add more languages, please feel free to make a pull request with the corrections.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Exports and More

When using our emote menu with other scripts, using the `TriggerEvent('animations:client:EmoteCommandStart` won't do anything because the events do not exist. These have simply been replaced with the following exports:

```lua
exports["rpemotes"]:EmoteCommandStart(emoteName, textureVariation)
exports["rpemotes"]:EmoteCancel(forceCancel) – forceCancel is optional
exports["rpemotes"]:CanCancelEmote(state)
exports["rpemotes"]:IsPlayerCrouched()
exports["rpemotes"]:IsPlayerProne()
exports["rpemotes"]:IsPlayerCrawling()
exports["rpemotes"]:IsPlayerPointing()
exports["rpemotes"]:IsPlayerInAnim()
exports["rpemotes"]:toggleWalkstyle(bool, message)
exports["rpemotes"]:toggleBinoculars()
exports["rpemotes"]:toggleNewscam()
-- bool to allow the user to change their walk style in the menu or not / message to show the user (optional, default is: "You are unable to change your walking style right now.")"
```

Having issues with players using emotes when/where they're not supposed to? Use the following where you needed. This would be somewhere like if you want to disable emotes in jail or when someone is handcuffed/escorted:

```lua
LocalPlayer.state:set('canEmote', false, true) -- stops emoting
LocalPlayer.state:set('canEmote', true, true) -- allows emoting
```

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Menu Keybind 🎛️

The keybind uses RegisterKeyMapping. By default the configured keybind in the *initial* config.lua will be the default key, however once the keybind is set for a user it'll remain and can be changed in the users settings under `Esc > settings > keybinds > fivem`.


**Menu key:**

|COMMAND: | ACTION:|
|---|---|
| F4 | Open / Close  RPEmotes menu |

Server owners can change this in the `config.lua`.

Alternatively, the player base can set their menu keybind to open rpemotes-reborn

`Esc > settings > keybinds > fivem`

* More keybinds are now using key mappings which means that they are now available in your FiveM settings to change (`FavKeybind` and `RagdollKeybind`)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Keybinds and SQL 🎛️

To use the SQL features, install the latest version of the [oxmysql](https://github.com/overextended/oxmysql) resource and enable the setting in `config.lua`

```lua
SqlKeybinding = false,
```

If you do not want to use the SQL features keep the `oxmysql` region in fxmanifest.lua commented out.

Alternatively, you can use the keybind command that comes with FiveM without having to use SQL, by entering the following into F8:

`bind keyboard "Yourbutton" "e youremote"`. To remove the keybind, type `"unbind keyboard "Yourbutton"`.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Increments 

Pressing 'LEFT ALT' on the keyboard allows players to scroll through the menu one by one, or by 10.

Alternatively, players can use the `SHARE` button on an Xbox controller or `OPTIONS` button on a Playstation controller.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Ragdoll 🥴

* To enable ragdoll, change `RagdollEnabled = false,` to true in config.lua.

Much like the menu key, `RagdollKeybind` is also using RegisterKeyMapping. It is currently set to `U` by default *(server side)* however can be set to the player's preferred keybind in the FiveM keybinds setting found in the settings menu within the Esc Menu.

* New setting: `RagdollAsToggle`, this will make either the ragdoll a toggle or a hold key

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Finger Pointing & Hands Up 👆

Once enabled, players can press `B` on the keyboard to enable standalone finger pointing, and `Y` to put their hands up, without the need for unnecessary frameworks or "small resources".

Much like everything else in the menu, server owners can change these keybinds to their own preferences.

|COMMAND: | ACTION:|
|---|---|
| B | Toggle Finger Pointing |
| Y | Toggle Hands Up |
| /pointing | Toggle Finger Pointing |
| /handsup | Toggle Hands Up |

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Crouching & Crawling

**Crouching:**

RIGHT CONTROL. Players can move forward, back, left, and right as well as turn around. Press SPACEBAR to switch from stomach to back. Pressing the RIGHT CONTROL key while running will have the player "dive into" a crouching animation.

**Crawling:**

Server owners can opt in to either overriding the stealth/action animation when pressing the LEFT CONTROL keybind or have players tap LEFT CONTROL twice to switch from stealth to crouch (when enabled in the config.lua file)

# Chat Commands

|COMMAND: | ACTION:|
|---|---|
| LEFT CONTROL | Toggle Crouching On / Off |
| RIGHT CONTROL | Toggle Crawling On / Off |
| /crouch | Toggle Crouching On / Off |
| /crawl| Toggle Crawling On / Off |

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Moods & Walkstyles 😜🚶‍♂️

Moods and walk styles can be set from the menu. These will save to your character and reapply when exiting a vehicle, or loading back into the server as they are saved via client-side KVP.

|COMMAND: | ACTION:|
|---|---|
| F4 | Opens RPEmotes menu |
| /walks | See A List Of Walkstyles In Chat |
| /moods | See A List Of Walkstyles In Chat |
| /reset mood | Remove preferred mood and set default |
| /reset walk | Remove last walk style and set default |

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# No Idle Cam 📷

No Idle Cam allows players to disable the idle camera animation on foot and in the vehicle, making RP scenarios, streaming on Twitch, or just general gameplay just a little more enjoyable.

|COMMAND: | ACTION:|
|---|---|
| /Idlecamon | deactivates the native|
| /idlecamoff | enables the native|


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Binoculars 👀

|COMMAND: | ACTION:|
|---|---|
| /binoculars | starts the binoculars|
| L ALT | Toggle between night, heat, and normal visions |
| G | Show or hide the instructions |
| BACKSPACE | Exit the binoculars |



<img src="https://forum.cfx.re/uploads/default/original/4X/2/6/3/263b6f2afe148191193fca8c8cc0b9bc666da9e8.jpeg" width="600" height="auto"> 



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# News Camera 

|COMMAND: | ACTION:|
|---|---|
| /newscam | starts the News Camera |
| H |  Edit Text |
| L ALT | Toggle between vision modes |
| G | Show or hide the instructions |
| BACKSPACE | Exit News Camera |



<img src="https://forum.cfx.re/uploads/default/optimized/4X/5/4/e/54e47db5ae45f5afa4b84c2ae4858bc9ab0a8187_2_690x388.jpeg" width="600" height="auto"> 


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Favorite Emote

Players can search for an emote (as long as the search is enabled) and press LEFT SHIFT and CAPLOCKS on their keyboard to add it to their 'Favorites'. Pressing CAPLOCKS will toggle the emote.

Alternatively, you can use the 🌟 Favorite menu to find an emote and press enter.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Exit Emotes

Exit Emotes are used to make canceling an animation more smoother and dynamic, such as getting up off a chair or throwing a cigarette out instead of dropping it.

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

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Adult Emotes 🔞

Adult Emotes can be hidden from the menu by setting `AdultEmotesDisabled` to `true` in the config.lua file.

This will completely conceal the emotes from the lists *(Emotes, Shared Emotes, etc)* at startup making them unusable.

The emotes that are concealed, are the ones flagged in the animation list with `AdultAnimation`. You can see how it is done with `fspose`.

Alternatively, you can also hide animal emotes.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

*You may need to alter some code within qb-core to work with RPEmotes.*

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Prop Extractor ⬇️

Many people have expressed concerns over anti-cheat scripts kicking or banning their community members due to the fact rpemotes-reborn uses props and anti-cheats detecting said props being spawned.

To make server owners' jobs a little easier, we have added a prop extractor command that you can enter into the server console which will automate a file inside the rpemotes-reborn resource folder appropriately named, `prop_list.lua`.

### Command:

`emoteextract`

```lua

Available output formats:
1 - 'prop_name',
2 - "prop_name",
3 - prop_name

Command usage example: emoteextract 1
```

<img src="screenshots/extractor.png" width="700">


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Installation Instructions ⚙️:

* Add `ensure rpemotes` to your `server.cfg`

* Download the latest recommended artifacts [for Windows](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/) or [for Linux](https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/)

* [Enforce gamebuild to latest build](https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977) for all emotes and props to work as intended.

**Onesync Infinity is required for the particle effects to work as intended** This can be done via txadmin or your localhost .bat file.**

For localhost servers, comment out onesync from your server.cfg and add the following to your `.bat` file:

```lua

+set onesync on +set onesync_enableInfinity 1 +set onesync_enableBeyond 1 +set onesync_population true

```

You can put this before your gamebuild enforcement, aka `+set sv_enforceGameBuild XXXX`

* Set the desired language and settings in the config.lua under `MenuLanguage = 'en',`

* Qb-Core server owners, set `Framework = 'qb-core'` in the config file, otherwise leave it as false.

* To use the SQL features, install the [oxmysql](https://github.com/overextended/oxmysql) resource then open `keybinds.lua` in RPEmotes. If you do not want to use the SQL features, comment out the `oxmysql` region in fxmanifest.lua.

Alternatively, you can use the keybind command that comes with FiveM without having the SQL, by entering the following into F8:

`bind keyboard "Yourbutton" "e youremote"`. To remove the keybind, type `"unbind keyboard "Yourbutton"`.

* Type `/refresh` and `/ensure rpemotes` into your chat resource, or simply restart your server

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Shared emotes 👩🏻‍❤️‍💋‍👨🏼

Emotes will work with either `SyncOffset` or `Attachto`.

- If it is with `SyncOffsetFront` or `SyncOffsetSide`, then the offset used is the one of the emote the player started.<br/>
For example, if player one starts the emote `handshake` which has `SyncOffsetFront`, then player one will have the `SyncOffsetFront` but not the other player.


- If it is with `Attachto`, then it'll either be player one's data used for attaching or player two's data.<br/>
For example, if player one starts the emote carry, then the other player will be attached but not the player one because Attachto is set in `carry2` and not `carry`.<br/>
- If player one starts the emote `carry2`, then player one will be attached and not the other player.
it's the player who starts the animation who will in most cases be moved


*Special case, if both emote have the `Attachto` then only the player who started the emote will be attached.*

You can find a list of ped bones to attach the other player here: [Ped Bones](https://wiki.rage.mp/index.php?title=Bones) or alternatively, if the link is down for some reason, you can check [here](https://wiki.rage.mp/index.php?title=Bones)

Using the websites provided above, enter the bone ID, ie `1356` and not `111`, which is the Bone Index.

Understandably, this can be confusing for some people. We suggest using the `Attachto` approach.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Particle Effects 💨

**REQUIRES ONESYNC INFINITY**

Particle effects can be found using the [DurtyFree GTA V Dump](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json). You will need to add the particle asset, name, and placement. Placement is done via XYZ, Pitch, Roll, Yaw, and scale.

Onesync is required for them to work across all clients.

Big thanks to DurtyFree for his amazing work.


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

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Adding Your Own Animations ⚙️

Because the menu gets updated frequently, the files get overwritten. To avoid this, you can add your own / downloaded animation files `(.ycd)` inside of a newly created folder, give it a name, and place it in the `rpemotes\stream\[Custom Emotes]` folder.

Add your animation code to the `AnimationListCustom.lua` and make a backup of this file, call it `BackUpAnimationListCustom.lua`.

Whenever an update is released, rename `BackUpAnimationListCustom.lua` to `AnimationListCustom.lua`, click yes to overwrite, and you're good to go.

It is also a good idea to keep a backup of your config file.
Below is an example:

<img src="screenshots/customanims.png" width="550">

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# rpemotes-reborn Credits:

- Thank you to [DerDevHD](https://forum.cfx.re/t/fixed-remove-prop-after-scenario-animation/5002332/8) for the insight on deleting scenario props.

# Credits 🤝

**All** custom animations and props were added with permission from the creators.

All animation creators have ***specifically*** asked that their content remains free and that the RPEmotes team and community do not try to profit from them, claim them as their own, or reupload them anywhere else.

**A huge thank you to the following people for their amazing contributions to the menu 🫶🏻 :**
- Thank you to [TayMcKenzieNZ](https://github.com/TayMcKenzieNZ) for maintaining and updating RP emotes and managing the RP Emotes community
- A huge thank you to [Kibook](https://github.com/kibook) for the addition of the Animal Emotes sub menu
- Thank you to [AvaN0x](https://github.com/AvaN0x) for reformatting and assisting with code, additional features, and figuring out shared particle effects
- Thank you to [Mads](https://github.com/MadsLeander) for joining the team as Co-Developer 
- Thank you to [Mathu_lmn](https://github.com/Mathu-lmn) for joining the team as Co-Developer 
- Thank you to [Tigerle](https://forum.cfx.re/u/tigerle_studios) for providing the additional code required to make Shared Emotes work to its full extent
- Thank you to [SMGMissy](https://forum.cfx.re/u/smgmissy/) for assisting with custom pride flags and how to stream them
- Thank you to [MissSnowie](https://www.gta5-mods.com/users/MissySnowie) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord and for the motivational and overall moral support
- Thank you to [GeekGarage](https://github.com/geekgarage) for their knowledge, time, and dedication, helping to bring new and exciting features to the menu
- Thank you to [Smokey](https://www.gta5-mods.com/users/struggleville) for the Explicit Usage Rights Agreement to add free custom animations either publicly available on their discord
- Thank you to [BzZzi](https://forum.cfx.re/u/bzzzi/summary) for the Explicit Usage Rights Agreement to add free donuts, croissants and fire torch props
- Thank you to [Natty3d](https://forum.cfx.re/u/natty3d/summary) for the Explicit Usage Rights Agreement to add free lollipop props
- Thank you to [northsqrd](https://github.com/0sqrd) for adding the search function, Animal Emotes config, mobile phone prop texture variants, and general contributions
- Thank you to crusopaul and Eki for discussing KVP and initializing it to the menu for persistent walk styles
- Thank you to [Amnilka](https://www.gta5-mods.com/users/frabi) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- Thank you to [LittleSpoon](https://discord.gg/safeword) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- Thank you to [Pupppy](https://discord.gg/rsN35X4s4N) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- Thank you to [SapphireMods](https://discord.gg/Hf8F4nTyzt) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- Thank you to [QueenSisters Animations](https://discord.gg/qbPtGwQuep) for the Explicit Usage Rights Agreement to add free custom animations either publicly available or on their discord
- Thank you to [Kri's Graphic House](https://discord.gg/JueRG3fCy6) for the custom banners
- Thank you to !MWooM#0597 on Discord for the custom banners
- Thank you to [BoringNeptune](https://www.gta5-mods.com/users/BoringNeptune) for the custom dance emotes
- Thank you to [CMG Mods](https://www.gta5-mods.com/users/-moses-) for the custom emotes
- Thank you to [prue颜](discord.gg/lunyxmods) for being a great friend and providing us with exclusive custom animations
- Thank you to [PataMods](https://forum.cfx.re/u/Pata_PataMods) for the custom props
- Thank you to [Crowded1337](https://www.gta5-mods.com/users/crowded1337) for the custom Gucci bag. I have removed the Gucci logo to comply with Rockstar Games & TakeTwo Interactive
- Thanks to [EnchantedBrownie](https://www.gta5-mods.com/users/EnchantedBrownie) for the custom animations
- Thanks to [Copofiscool](https://forum.cfx.re/u/copofiscool/) for adding a toggle to the Favorite Keybinds
- Thank you to [iSentrie](https://forum.cfx.re/u/isentrie/) for additional code, support, and joining the RPEmotes project 
- Thank you to Chocoholic Animations for the custom animations
- Thank you to [CrunchyCat](https://www.gta5-mods.com/users/crunchycat) for the custom animations
- Thank you [KayKayMods](https://discord.gg/5bYQVWVaxG) for the custom props
- Thank you to [MonkeyWhisper](https://github.com/MonkeyWhisper) and [Project Sloth](https://github.com/Project-Sloth) for the custom props
- Thank you to [Brummieee](https://forum.cfx.re/u/brummieee_maps/summary) for the custom props
- Thank you [Dark Animations](https://www.gta5-mods.com/users/Darks%20Animations) for the partnership and custom animations. You the goat 😎
- Thank you [Chico](https://forum.cfx.re/u/chico) for implementing natives to reapply persistent moods and walk styles for ESX and QB-Core frameworks
- Thank you [-EcLiPsE-](https://www.gta5-mods.com/users/-EcLiPsE-) for allowing me to implement [Improved Prop Sets](https://www.gta5-mods.com/misc/improved-propsets-meta) and [GTA Online Biker Idle Anims](https://www.gta5-mods.com/misc/bike-idle-animations)
- Thank you [MrWitt](https://www.gta5-mods.com/users/MrWitt)for the custom animations and partnership
- A huge thank you to [AdoredRose](https://forum.cfx.re/u/adoredrose/summary) for assisting with animations
- Thank you [Vedere](https://discord.gg/XMywAMQ8Ef) for the custom props
- Thank you to [DRX Animations](https://www.gta5-mods.com/users/DRX%2DAnimations) for the custom animations and partnership
- Thank you to [VNSIanims](https://discord.gg/cTNrjYSXXG) for the custom animations and partnership
- Thank you to [PNWParksFan](https://www.gta5-mods.com/users/PNWParksFan) for the custom props
- Thank you to you, the community for being patient, showing love and appreciation, and for providing translations.

# Police Badge 👮

- Custom LSPD police badge by [LSPDFR member Sam](https://www.lcpdfr.com/downloads/gta5mods/misc/23386-lspd-police-badge/)
- LSPD reskinned badge by [GTA5Mods user Sladus_Slawonkus](https://www.gta5-mods.com/misc/lspd-police-badge-replace-sladus_slawonkus)

You played a big role in making this script what it is today and we could not do it without you 🙏
