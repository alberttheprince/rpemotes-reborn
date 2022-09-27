# DpEmotes 🏋️

💬 Join our official Discord!

<a href="https://discord.gg/sw3NwDq6C8" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/discord.svg" alt="sw3NwDq6C8" height="120" width="120" /></a>

Emotes / Animations for FiveM with human, animal and prop support 🐩

# Available in:

* Brazilian Portuguese 🇧🇷

* Czech 🇨🇿

* Danish 🇩🇰

* Dutch 🇳🇱

* English 🇬🇧

* Finnish 🇫🇮

* French 🇫🇷

* German 🇩🇪

* Italian 🇮🇹

* Polish 🇵🇱

* Romanian 🇷🇴

* Spanish 🇪🇸

* Swedish 🇸🇪

All languages were either translated using Google Translate or contributed by you, the community. 

If you happen to find any incorrect translations or would like to add more languages, please feel free to provide an "issue" with the correct / additional translations.

Languages can be selected and/or added in config.lua.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Features

- Custom Animations

- Further support for shared and couple poses / animations

- Animal Emotes - Big dog and small dog. *More to come. Stay tuned!*

* Easily convert Menyoo to dpemotes

- Shared Dances

- Shared Particle Effects

------------------------------------------------------------

# Menu Keybind 🎛️

**Important Note:**

The keybind uses RegisterKeyMapping. By default, the server owner configured keybind in the *initial* config.lua will be the default key, however once the keybind is set for a user, it'll stay with this new value. Editing the config keybind will change it for new players only.


**Menu key:** F5

F3 and F4 clash with [Menyoo](https://github.com/MAFINS/MenyooSP) and controllers 🎮

Server owners can change this in the `config.lua`;


MenuKeybind = 'F5', -- Get the button string [here]( https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/)


Alternatively, the player base can set their own menu keybind to open DpEmotes

Esc > settings > keybinds > fivem > dpemotes

* More keybinds are now using key mappings which means that they are now available in your FiveM settings to change (`FavKeybind` and `RagdollKeybind`)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Keybinds and SQL 🎛️

The original dpemotes uses mysql-async which was then changed to ghmattimysql. Unfortunately, they are no longer maintained. 

To use the SQL features, install the [oxmysql](https://github.com/overextended/oxmysql) resource. If you do not want to use the SQL features, comment out the `oxmysql` region in fxmanifest.lua.

--------------------

# Ragdoll 🥴

* To enable ragdoll, change `RagdollEnabled = false,` to true in config.lua.

Much like the menu key, `RagdollKeybind` is also using RegisterKeyMapping. It is currently set to `U` by default *(server side)* however can be set to the player's preferred keybind in the FiveM keybinds setting found in the settings menu within the Esc Menu.

* New setting: `RagdollAsToggle`, this will make either the ragdoll be a toggle or a hold key

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Adult Emotes 🔞

Adult Emotes can be hidden from the menu by setting `AdultEmotesDisabled` to `true` in the config.lua file.

This will completely conceal the emotes from the lists *(Emotes, Shared Emotes, etc)* at startup making them unusable.

The emotes that are concealed, are the ones flagged in the animation list with `AdultAnimation`. You can see how it is done with `fspose`.

------------------------------------------------------------------------------

# QBCore ⚙️

**QBCore integration to match their fork of the original dpemotes**

- Config option which supports the QB Framework in their fork of dpemotes

If you’re using qb-core, you can now set `Framework = 'qb-core'` in the config file, otherwise leave it as `false`.

This should hopefully add every features their fork had.

------------------------------------------------------------------------------

# Screenshots 📸



| | | |
|-|-|-|
| <img src="screenshots/col.jpeg" width="250"> | <img src="screenshots/bbox.png" width="250"> | <img src="screenshots/carry1.jpg" width="250"> |
| <img src="screenshots/flag1.jpg" width="250"> | <img src="screenshots/hhands.jpeg" width="250"> | <img src="screenshots/pigback.jpg" width="250"> |
| <img src="screenshots/sdog1.jpeg" width="250"> | <img src="screenshots/speace.png" width="250"> | <img src="screenshots/surf.jpeg" width="250"> |
| <img src="screenshots/CPR.jpg" width="250"> | <img src="screenshots/cp_after.jpg" width="250"> | <img src="screenshots/carrysmall.jpg" width="250">|




-----------------------------------------------------------------------------------------------------------------------------------------------------


# Installation Instructions ⚙️:

* add DpEmotes to your `server.cfg`

* [Enforce gamebuild to latest build](https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977) for all emotes and props to work correctly

* Set the desired language in the config using the available language codes, ie `es` for Spanish, or leave as it is for English 🇬🇧

* If you’re using qb-core, you can now set Framework = 'qb-core' in the config file, otherwise leave it as false.

* start dpemotes

# Additional Instructions ⚙️

- [Please check the fivem forum thread](https://forum.fivem.net/t/dpemotes-356ish-emotes-usable-while-walking-props-and-more/843105)

- [Read my Menyoo To DpEmotes Tutorial](https://forum.cfx.re/t/how-to-menyoo-to-dpemotes-conversion-streaming-custom-add-on-props/4775018) for tips on how to attach props to the players, how to convert Menyoo to dpemotes and other tips you may need to know.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Shared emotes 👩🏻‍❤️‍💋‍👨🏼

Emotes will work with either `SyncOffset` or `Attachto`.

- If it is with `SyncOffsetFront` or `SyncOffsetSide`, then the offset used is the one of the emote the player started.<br/>
For example, if player one starts the emote `handshake` which has `SyncOffsetFront`, then player one will have the `SyncOffsetFront` but not the other player.


- If it is with `Attachto`, then it'll either be player one's data used for attaching, or the player two's data.<br/>
For example, if player one start the emote carry, then the other player will be attached but not the player one because Attachto is set in `carry2` and not `carry`.<br/>
- If player one starts the emote `carry2`, then player one will be attached and not the other player.
it's the player who start the animation who will in most cases be moved


*Special case, if both emote have the `Attachto` then only the player who started the emote will be attached.*

You can find a list of ped bones to attach the other player here: [Ped Bones](https://wiki.rage.mp/index.php?title=Bones)

Using the website provided above, enter the bone ID, ie `1356` and not `111`, which is the Bone Index.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Particle Effects 💨

Particle effects can be found using the [DurtyFree GTA V Dump](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json). You will need to add the particle assest, name, and placement. Placement is done via XYZ, Pitch, Roll, Yaw, and scale.

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


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Adding Your Own Animations ⚙️

Because the menu gets updated frequently, the files get overwritten. To avoid this, you can add your own / downloaded animation files `(.ycd)` inside of a newly created folder, give it a name, and place it in the `dpemotes\stream\[Custom Emotes]` folder.

Add your animation code to the `AnimationListCustom.lua` and make a backup of this file, call it `BackUpAnimationListCustom.lua`.

Whenever an update is released, rename `BackUpAnimationListCustom.lua` to `AnimationListCustom.lua`, click yes to overwrite, and you're good to go. 

Below is an example:

<img src="screenshots/customanims.png" width="550">





-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add-Ons 🛠️

* Fixed an issue with the clipboard and added textures to paper (/e clipboard)

* Changed umbrella texture to black (/e umbrella)

--------------------------------------------------------

# Police Badge 👮

- Custom LSPD police badge by [LSPDFR member Sam](https://www.lcpdfr.com/downloads/gta5mods/misc/23386-lspd-police-badge/)

- LSPD reskinned badge by [GTA5Mods user Sladus_Slawonkus](https://www.gta5-mods.com/misc/lspd-police-badge-replace-sladus_slawonkus)

----------------------

# FAQs 🗨️

**Q: Why do some emotes not work with females?**

**A:** Unfortunately, a lot of these 'emotes' are Male Only scenarios; Blame Rockstar Games. I've done my best to replicate animations to work with females, however some male scenarios have sound effects and particles.

We were able to sync particle effects via using state bags, however I have no idea how to request audio and won't be looking into this any time soon.


----------------------


**Q: Why do some emotes not work at all?**

**A:** Check the Installation Instructions above as you need to be on the highest FiveM gamebuild.

----------------------


**Q: Why do I see particle effects but other players don't?**

**A:** Originally, DullPear was unable to figure out how to sync these, however as of August 2022, AvaN0x was able to pull this off using state bags. Some bugs may still occur, if you come across any, 
please let us know 🙂.

----------------------


**Q: I bought this script off someone and noticed it had a lot of the same animations. Can you help me?**

**A:** Unfortunately you got scammed and that's your fault. I am well aware of other websites uploading “600+ custom animation packs” however they are not custom, and a lot of it is stolen content from my menu. Dpemotes is and always will be FREE.

----------------------


**Q: Can I add my own emotes to this?**

**A:** Of course! We've added a AnimationListCustom.lua for you to add any Rockstar Games or your own emotes into.

Please see my in depth tutorial for using Menyoo, adding props to bones, getting Shared Emotes coordinates and converting them to work with DpEmotes.

You may sell custom made animations, however the menu must remain free. You are not allowed to include it as an 'addon bonus'.

----------------------


*Q: I bought a pack of custom animations, how can I add them to your fork of DpEmotes?*

**A:** Usually the person who created them will provide code snippets for adding animations to DpEmotes, however unfortunately not everyone is this generous. If for whatever reason they haven't, you should contact them.

We have however added code to hopefully make it a lot easier to add shared emotes. Please take a look at the ReadMe section dedicated to Shared Emotes.

----------------------


**Q: How do I reset the SQL keybinds?**

**A:** Not often you'll hear a dev say "No idea" but I'm not here to BS you,; this feature was originally added by DullPear and personally I don't use it.

Apparently only the server owner can 🤷🏻‍♂️ Google exist.

----------------------

**Q: How do Shared Emotes work?**

**A:** Please see the Shared Emotes section of the GitHub ReadMe for more information.

----------------------

**Q: When I enter and exit a vehicle, my walkstyle isn't saved?**

**A:** It should be, but of course, you'll have to set it every time you join the server as nothing currently saves it. Scripts that manipulate the character's body such as aim styles or crouching scripts, conflict with DpEmotes.

----------------------

**Q: How can I change the text that appears on the menu when you open it? I want to put my server name there.**

**A: In the config.lua file, you will fine `MenuTitle = "DpEmotes V2"`. Change this to your desired text.**

----------------------

**Q: Hey my eating / drinking animations dissapeared when I installed your dpemotes. What can I do? Help!**

**A:** In `config.lua` there's an option that currently says Framework = 'none'. Change it to Framework = "qb-core" or leave it alone.

----------------------

**Q: Do you plan to add more Adult Emotes? Are you taking any suggestions?**

**A:** I'm not an animator nor do I know anything about 3DS Max or Blender; although to answer your question, no. I don't plan to add any more adult emotes to the menu. 

You can reach out to the many creators and try and get some commissioned but not everyone is into ERP - once you have your custom animations, you can add them to the stream folder and add their code to the AnimationListCustom.lua:

----------------------

**Q:** Can you make it so that Shared Emotes are automatic rather than sending the other person a request?

A: Can I? Yes. Will I? No.

I do not condone running around forcing other players (who are minding their own business) to unwillingly engage in animations, especially adult animations. 
 
Everything should be done with consent, even kidnapping. If the other player wants to engage in that storyline, then so be it, otherwise, they have every right to decline.
 
 ----------------------
 
**Q: How do I add my own custom props to the menu? They don't work?**

**A:** You have to use codewalker and create a new ytyp and add the files to that, then in DpEmotes fxmanifest.lua, you need to add a line of code, as well as adding the animation and prop information into AnimationListCustom.luA: This video will help.


[![Video Preview](https://img.youtube.com/vi/qY6BriSsAq8/0.jpg)](https://youtu.be/qY6BriSsAq8)

 ----------------------
 
**Q: When I do Lollipop Suck, Cigar, or Smoke emotes, the player reaches their back pocket for the prop and then the menu closes?**

**A:** Yes, but only for a short period. If for any reason it does not open back up, there is something going on with your copy of dpemotes, as I have tested it in a standalone server with no QB-Core framework or SQL, and it is working as intended.

 ----------------------

**Q: If I sent you some code or animations, can you add them to your menu?**

**A:** If you can confirm that they are indeed your animations then sure, otherwise no. I am not just going to add random code and animation files into the menu. There are far too many leaks and I'm not going to jepodise my reputation.

 ----------------------
 
**Q: Can you please please add _____ language?**

**A:** All translations we're provided by the community. If you speak the language, you can translate it yourself and provide let me know. I will then give you Translator role so the community knows who provided that language, and will add it to the public release.


 ----------------------
 
**Q: Can you please make this work on AltV / RageMP etc?**

**A:** No. And you may not extract the animations or code for your desired menus and / or platforms either.

 ----------------------
 
**Q: I can only attach two props? Can you please make it more than that?**

**A:** As of right now, I don't have any plans to allow attaching more than two. You can add the code yourself and submit a pull request.

 ----------------------

**Q: you have options to hide the walkstyles and moods menu, but could you please remove or hide the Animal Emotes?**


**A:** Unfortunately this would require more coding and I can't really be bothered to be honest lol. You're free to figure it out yourself and make a pull request. Unfortunately, as rude as it may sound, being a FiveM dev is about learning and not expecting others to do everything for you; however with that being said, good luck. Perhaps one day I'll do it, but I don't have any plans to as of right now.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# License and disclaimer 📜

All custom animation were added with permission from the creators and does not contain any paid or leaked work.

- You are free to fork and improve the menu and it's code

- You are free to add your own animations

- You may not reupload the menu and it's content

- You may not sell the menu and it's content

- You may not extract the animations and use them for your own menus. They are exclusive to DpEmotes. 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Credits 🤝

This script is where it is today because of the amazing contributions made by the following people: 

- Thank you to [Tigerle](https://forum.cfx.re/u/tigerle_studios) for providing the additional code required to make Shared Emotes work to it's full extent

- Thank you to [SMGMissy](https://forum.cfx.re/u/smgmissy/) for assisting with custom pride flags and how to stream them

- Thank you to [MissSnowie](https://www.gta5-mods.com/users/MissySnowie) for the custom poses, emotes, motivation and moral support 

- A huge thank you to [Kibook](https://github.com/kibook) for the addition of the Animal Emotes sub menu

- Thank you to [AvaN0x](https://github.com/AvaN0x) for reformatting and assisting with code, additional features and figuring out shared particle effects 

- Thank you to [Smokey](https://www.gta5-mods.com/users/struggleville) for the permission to add free custom animations 

- Thank you to [BzZzi](https://forum.cfx.re/u/bzzzi/summary) for the permission to add free donut and croissant food props

- Thank you to [Natty3d](https://forum.cfx.re/u/natty3d/summary) for the permission to add free lollipop props 

- Thank you to you, the community for being patient, showing love and appreciation, and for providing translations.

You pay a big role in keeping this script alive and we could not do it without you 🙏
