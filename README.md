# DpEmotes 🏋️

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

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add-Ons 🛠️

* Fixed an issue with the clipboard and added textures to paper (/e clipboard)

* Changed umbrella texture to black (/e umbrella)

# Optional Add-Ons 🛠️

* Adds textures to the mugshot prop (/e mugshot)

* Retextured protest sign (can be changed using Texture Toolkit: https://www.gta5-mods.com/tools/texture-toolkit)

**Grab it here:** 

[Add-Ons For DpEmotes](https://github.com/TayMcKenzieNZ/addonsfordpemotes)


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

**A:** Originally, DullPear was unable to figure out how to sync these, however as of August 2022, AvaN0x was able to pull this off using state bags. Some bugs may still occur, if you come across any, please let us know 🙂.

----------------------

**Q: I bought this script off someone and noticed it had a lot of the same animations. Can you help me?**

**A:** Unfortunately you got scammed and that's your fault. Dpemotes is and always will be **FREE**.

----------------------

**Q: Can I add my own emotes to this?**

**A:** Of course! We've added a AnimationListCustom.lua for you to add any Rockstar Games or your own emotes into.

Please see my in depth [tutorial](https://forum.cfx.re/t/how-to-menyoo-to-dpemotes-conversion/4775018) for using Menyoo, adding props to bones, getting Shared Emotes coordinates and converting them to work with DpEmotes.

You may sell ***custom made*** animations, however the menu must remain free. You are not allowed to include it as an 'addon bonus'.

----------------------

**Q: I bought a pack of custom animations, how can I add them to your fork of DpEmotes?**

**A:** Usually the person who created them will provide code snippets for adding animations to DpEmotes, however unfortunately not everyone is this generous. If for whatever reason they haven't, you should contact them.

We have however added code to hopefully make it a lot easier to add shared emotes. Please take a look at the ReadMe section dedicated to Shared Emotes.

----------------------

**Q: How do I reset the SQL keybinds?**

**A:** Not often you'll hear a dev say "No idea" but I'm not here to BS you,; this feature was originally added by DullPear and personally I don't use it.

Apparently only the server owner can 🤷🏻‍♂️ Google exist.

----------------------

**Q: How do Shared Emotes work?**

**A:** Please see the Shared Emotes section of this ReadMe for more information.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Credits 🤝

This script is where it is today because of the amazing contributions made by the following people: 

- Thank you to [Tigerle](https://forum.cfx.re/u/tigerle_studios) for providing the additional code required to make Shared Emotes work to it's full extent

- Thank you to [SMGMissy](https://forum.cfx.re/u/smgmissy/) for assisting with custom pride flags and how to stream them

- Thank you to [MissSnowie](https://www.gta5-mods.com/users/MissySnowie) for the custom poses and emotes

- A huge thank you to [Kibook](https://github.com/kibook) for the addition of the Animal Emotes sub menu

- Thank you to [AvaN0x](https://github.com/AvaN0x) for reformatting and assisting with code and additional features

- Thank you to you, the community for being patient, showing love and appreciation, and for providing translations.

You pay a big role in keeping this script alive and we could not do it without you 🙏
