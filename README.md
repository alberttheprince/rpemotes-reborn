# DpEmotes 🏋️

Emotes / Animations for FiveM with human, animal and prop support 🐩

# Available in:

* Brazilian Portuguese 🇧🇷

* Dutch 🇳🇱

* English 🇺🇲

* French 🇫🇷

* German 🇩🇪

* Italian 🇮🇹

* Spanish 🇪🇸

* Swedish 🇸🇪

All languages were either translated using Google Translate or contributed by you, the community. 

If you happen to find any incorrect translations or would like to add more languages, please feel free to provide an "issue" with the correct / additional translations.

Languages can be selected and/or added in config.lua.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Ragdoll 🥴

* To enable ragdoll, change `RagdollEnabled = false,` to true in config.lua.

* To change which key is responsible for ragdoll, `RagdollKeybind = 303` is currently set to `U` by default., -- Get the button number [here](https://docs.fivem.net/game-references/controls/)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Menu Keybind

* Menu key has been changed to F5 as for some reason, F3 and F4 clash with [Menyoo](https://github.com/MAFINS/MenyooSP) and controllers 🎮

You can change this in the `config.lua`;

```lua
MenuKeybind = 'F5', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
```

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Keybinds and SQL 🎛️

The original dpemotes uses mysql-async which was then changed to ghmattimysql. Unfortunately, they are no longer maintained. 

To use the SQL features, install the [oxmysql](https://github.com/overextended/oxmysql) resource. If you do not want to use the SQL features, comment out the `oxmysql` region in fxmanifest.lua.


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Installation Instructions:

* add DpEmotes to your `server.cfg`

* [Enforce gamebuild to latest build](https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977) for all emotes and props to work correctly

* start dpemotes


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Optional Add-Ons 🛠️

* Fixes an issue with the clipboard and adds textures to paper (/e clipboard)

* Adds textures to the mugshot prop (/e mugshot)

* Changes umbrella texture to black (/e umbrella)

* Retextured protest sign (can be changed using Texture Toolkit: https://www.gta5-mods.com/tools/texture-toolkit)

**Grab it here:** 

[Add-Ons For DpEmotes](https://github.com/TayMcKenzieNZ/addonsfordpemotes)


# Additional Instructions 

[Please check the fivem forum thread](https://forum.fivem.net/t/dpemotes-356ish-emotes-usable-while-walking-props-and-more/843105)



----------------------

# Police Badge 👮

- Custom LSPD police badge by [LSPDFR member Sam](https://www.lcpdfr.com/downloads/gta5mods/misc/23386-lspd-police-badge/)

- LSPD reskinned badge by [GTA5Mods user Sladus_Slawonkus](https://www.gta5-mods.com/misc/lspd-police-badge-replace-sladus_slawonkus)


----------------------

# FAQs

**Q: Why do some emotes not work with females?**

**A:** Blame Rockstar Games. I've done my best to replicate animations to work with females, however some male scenarios have sound effects and particles, of which I am unfamiliar with and syncing particles is out of my expertise.

----------------------

**Q: Why do some emotes not work at all?**

**A:** Check the Installation Instructions above as you need to be on the highest FiveM gamebuild.

----------------------

**Q: Why do I see particle effects but other players don't?**

**A:** Dullpear and I can't figure out how to sync particles. If you know how, feel free to inform me.

----------------------

**Q: I bought this script off someone and notice it had a lot of the same animations. Can you help me?**

**A:** You got scammed and that's your fault. Dpemotes is and always will be **FREE**.

----------------------

**Q: Can I add my own emotes to this?**

**A:** Of course, see my in depth [tutorial](https://forum.cfx.re/t/how-to-menyoo-to-dpemotes-conversion/4775018) for using Menyoo and converting them to work with dpemotes.

You may sell ***custom made*** animations, however the menu must remain free.

----------------------

**Q: I bought a pack of custom animations, how can I add them to your fork of dpemotes?**

**A:** Usually the person who created them will provide code snippets for adding animations to dpemotes. If for whatever reason they haven't, you should contact them.

----------------------

**Q: How do I reset the SQL keybinds?**

**A:** No idea, but apparently only the server owner can 🤷🏻‍♂️ Google exist; Maybe contact the creator.

----------------------


