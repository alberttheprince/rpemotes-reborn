--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



local rightPosition = { x = 1450, y = 100 }
local leftPosition = { x = 0, y = 100 }
local menuPosition = { x = 0, y = 200 }

if GetAspectRatio() > 2.0 then
    rightPosition = { x = 1200, y = 100 }
    leftPosition = { x = -250, y = 100 }
end

if Config.MenuPosition then
    if Config.MenuPosition == "left" then
        menuPosition = leftPosition
    elseif Config.MenuPosition == "right" then
        menuPosition = rightPosition
    end
end

if Config.CustomMenuEnabled then
    local RuntimeTXD = CreateRuntimeTxd('Custom_Menu_Head')
    local Object = CreateDui(Config.MenuImage, 512, 128)
    _G.Object = Object
    local TextureThing = GetDuiHandle(Object)
    local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'Custom_Menu_Head', TextureThing)
    Menuthing = "Custom_Menu_Head"
else
    Menuthing = "shopui_title_sm_hangar"
end

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu(Config.MenuTitle or "", "", menuPosition["x"], menuPosition["y"], Menuthing, Menuthing)
_menuPool:Add(mainMenu)

local EmoteTable = {}
local FavEmoteTable = {}
local DanceTable = {}
local AnimalTable = {}
local PropETable = {}
local WalkTable = {}
local FaceTable = {}
local ShareTable = {}
local FavoriteEmote = ""

if Config.FavKeybindEnabled then
    RegisterCommand('emotefav', function() FavKeybind() end)
    RegisterKeyMapping("emotefav", "Execute your favorite emote", "keyboard", Config.FavKeybind)

    local doingFavoriteEmote = false

    function FavKeybind()
        if doingFavoriteEmote == false then
            doingFavoriteEmote = true
            if not IsPedSittingInAnyVehicle(PlayerPedId()) then
                if FavoriteEmote ~= "" and (not CanUseFavKeyBind or CanUseFavKeyBind()) then
                    EmoteCommandStart(nil, { FavoriteEmote, 0 })
                    Wait(500)
                end
            end
        else
            EmoteCancel()
            doingFavoriteEmote = false
        end
    end
end

lang = Config.MenuLanguage

function AddEmoteMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['emotes'], "", "", Menuthing, Menuthing)
    if Config.Search then
        submenu:AddItem(NativeUI.CreateItem(Config.Languages[lang]['searchemotes'], ""))
        table.insert(EmoteTable, Config.Languages[lang]['searchemotes'])
    end
    local dancemenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['danceemotes'], "", "", Menuthing, Menuthing)
    local animalmenu
    if Config.AnimalEmotesEnabled then
        animalmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['animalemotes'], "", "", Menuthing, Menuthing)
        table.insert(EmoteTable, Config.Languages[lang]['animalemotes'])
    end
    local propmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['propemotes'], "", "", Menuthing, Menuthing)
    table.insert(EmoteTable, Config.Languages[lang]['danceemotes'])
    table.insert(EmoteTable, Config.Languages[lang]['danceemotes'])

    if Config.SharedEmotesEnabled then
        sharemenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['shareemotes'],
            Config.Languages[lang]['shareemotesinfo'], "", Menuthing, Menuthing)
        shareddancemenu = _menuPool:AddSubMenu(sharemenu, Config.Languages[lang]['sharedanceemotes'], "", "", Menuthing,
            Menuthing)
        table.insert(ShareTable, 'none')
        table.insert(EmoteTable, Config.Languages[lang]['shareemotes'])
    end

    -- Temp var to be able to sort every emotes in the fav list
    local favEmotes = {}
    if not Config.SqlKeybinding then
        unbind2item = NativeUI.CreateItem(Config.Languages[lang]['rfavorite'], Config.Languages[lang]['rfavorite'])
        unbinditem = NativeUI.CreateItem(Config.Languages[lang]['prop2info'], "")
        favmenu = _menuPool:AddSubMenu(submenu, Config.Languages[lang]['favoriteemotes'],
            Config.Languages[lang]['favoriteinfo'], "", Menuthing, Menuthing)
        favmenu:AddItem(unbinditem)
        favmenu:AddItem(unbind2item)
        -- Add two elements as offset
        table.insert(FavEmoteTable, Config.Languages[lang]['rfavorite'])
        table.insert(FavEmoteTable, Config.Languages[lang]['rfavorite'])
        table.insert(EmoteTable, Config.Languages[lang]['favoriteemotes'])
    else
        table.insert(EmoteTable, "keybinds")
        keyinfo = NativeUI.CreateItem(Config.Languages[lang]['keybinds'],
            Config.Languages[lang]['keybindsinfo'] .. " /emotebind [~y~num4-9~w~] [~g~emotename~w~]")
        submenu:AddItem(keyinfo)
    end

    for a, b in pairsByKeys(RP.Emotes) do
        x, y, z = table.unpack(b)
        emoteitem = NativeUI.CreateItem(z, "/e (" .. a .. ")")
        submenu:AddItem(emoteitem)
        table.insert(EmoteTable, a)
        if not Config.SqlKeybinding then
            favEmotes[a] = z
        end
    end

    for a, b in pairsByKeys(RP.Dances) do
        x, y, z = table.unpack(b)
        danceitem = NativeUI.CreateItem(z, "/e (" .. a .. ")")
        dancemenu:AddItem(danceitem)
        if Config.SharedEmotesEnabled then
            sharedanceitem = NativeUI.CreateItem(z, "/nearby (" .. a .. ")")
            shareddancemenu:AddItem(sharedanceitem)
        end
        table.insert(DanceTable, a)
        if not Config.SqlKeybinding then
            favEmotes[a] = z
        end
    end

    if Config.AnimalEmotesEnabled then
        for a, b in pairsByKeys(RP.AnimalEmotes) do
            x, y, z = table.unpack(b)
            animalitem = NativeUI.CreateItem(z, "/e (" .. a .. ")")
            animalmenu:AddItem(animalitem)
            table.insert(AnimalTable, a)
            if not Config.SqlKeybinding then
                favEmotes[a] = z
            end
        end
    end

    if Config.SharedEmotesEnabled then
        for a, b in pairsByKeys(RP.Shared) do
            x, y, z, otheremotename = table.unpack(b)
            if otheremotename == nil then
                shareitem = NativeUI.CreateItem(z, "/nearby (~g~" .. a .. "~w~)")
            else
                shareitem = NativeUI.CreateItem(z,
                    "/nearby (~g~" ..
                    a .. "~w~) " .. Config.Languages[lang]['makenearby'] .. " (~y~" .. otheremotename .. "~w~)")
            end
            sharemenu:AddItem(shareitem)
            table.insert(ShareTable, a)
        end
    end

    for a, b in pairsByKeys(RP.PropEmotes) do
        x, y, z = table.unpack(b)

        if b.AnimationOptions.PropTextureVariations then
            propitem = NativeUI.CreateListItem(z, b.AnimationOptions.PropTextureVariations, 1, "/e (" .. a .. ")")
            propmenu:AddItem(propitem)
        else
            propitem = NativeUI.CreateItem(z, "/e (" .. a .. ")")
            propmenu:AddItem(propitem)
        end

        table.insert(PropETable, a)
        if not Config.SqlKeybinding then
            favEmotes[a] = z
        end
    end

    if not Config.SqlKeybinding then
        -- Add the emotes to the fav menu
        for emoteName, emoteLabel in pairsByKeys(favEmotes) do
            favemoteitem = NativeUI.CreateItem(emoteLabel,
                Config.Languages[lang]['set'] .. emoteLabel .. Config.Languages[lang]['setboundemote'])
            favmenu:AddItem(favemoteitem)
            table.insert(FavEmoteTable, emoteName)
        end

        favmenu.OnItemSelect = function(sender, item, index)
            if FavEmoteTable[index] == Config.Languages[lang]['rfavorite'] then
                FavoriteEmote = ""
                SimpleNotify(Config.Languages[lang]['rfavorite'])
                return
            end
            if Config.FavKeybindEnabled then
                FavoriteEmote = FavEmoteTable[index]
                SimpleNotify("~o~" .. firstToUpper(FavoriteEmote) .. Config.Languages[lang]['newsetemote'])
            end
        end
    end
    favEmotes = nil

    dancemenu.OnItemSelect = function(sender, item, index)
        EmoteMenuStart(DanceTable[index], "dances")
    end

    if Config.AnimalEmotesEnabled then
        animalmenu.OnItemSelect = function(sender, item, index)
            EmoteMenuStart(AnimalTable[index], "animals")
        end
    end

    if Config.SharedEmotesEnabled then
        sharemenu.OnItemSelect = function(sender, item, index)
            if ShareTable[index] ~= 'none' then
                target, distance = GetClosestPlayer()
                if (distance ~= -1 and distance < 3) then
                    _, _, rename = table.unpack(RP.Shared[ShareTable[index]])
                    TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), ShareTable[index])
                    SimpleNotify(Config.Languages[lang]['sentrequestto'] .. GetPlayerName(target))
                else
                    SimpleNotify(Config.Languages[lang]['nobodyclose'])
                end
            end
        end

        shareddancemenu.OnItemSelect = function(sender, item, index)
            target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                _, _, rename = table.unpack(RP.Dances[DanceTable[index]])
                TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), DanceTable[index], 'Dances')
                SimpleNotify(Config.Languages[lang]['sentrequestto'] .. GetPlayerName(target))
            else
                SimpleNotify(Config.Languages[lang]['nobodyclose'])
            end
        end
    end

    propmenu.OnItemSelect = function(sender, item, index)
        EmoteMenuStart(PropETable[index], "props")
    end

   propmenu.OnListSelect = function(menu, item, itemIndex, listIndex)
        EmoteMenuStart(PropETable[itemIndex], "props", item:IndexToItem(listIndex).Value)
    end

    submenu.OnItemSelect = function(sender, item, index)
        if Config.Search and EmoteTable[index] == Config.Languages[lang]['searchemotes'] then
            EmoteMenuSearch(submenu)
        elseif EmoteTable[index] ~= Config.Languages[lang]['favoriteemotes'] then
            EmoteMenuStart(EmoteTable[index], "emotes")
        end
    end
end

if Config.Search then
    local ignoredCategories = {
        ["Walks"] = true,
        ["Expressions"] = true,
        ["Shared"] = not Config.SharedEmotesEnabled
    }

    function EmoteMenuSearch(lastMenu)
        local favEnabled = not Config.SqlKeybinding and Config.FavKeybindEnabled
        AddTextEntry("PM_NAME_CHALL", Config.Languages[lang]['searchinputtitle'])
        DisplayOnscreenKeyboard(1, "PM_NAME_CHALL", "", "", "", "", "", 30)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(100)
        end
        local input = GetOnscreenKeyboardResult()
        if input ~= nil then
            local results = {}
            for k, v in pairs(RP) do
                if not ignoredCategories[k] then
                    for a, b in pairs(v) do
                        if string.find(string.lower(a), string.lower(input)) or (b[3] ~= nil and string.find(string.lower(b[3]), string.lower(input))) then
                            table.insert(results, {table = k, name = a, data = b})
                        end
                    end
                end
            end

            if #results > 0 then
                local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format(Config.Languages[lang]['searchmenudesc'], #results, input), "", true, Menuthing, Menuthing)
                local sharedDanceMenu
                if favEnabled then
                    local rFavorite = NativeUI.CreateItem(Config.Languages[lang]['rfavorite'], Config.Languages[lang]['rfavorite'])
                    searchMenu:AddItem(rFavorite)
                end

                if Config.SharedEmotesEnabled then
                    sharedDanceMenu = _menuPool:AddSubMenu(searchMenu, Config.Languages[lang]['sharedanceemotes'], "", true, Menuthing, Menuthing)
                end

                table.sort(results, function(a, b) return a.name < b.name end)
                for k, v in pairs(results) do
                    local desc = ""
                    if v.table == "Shared" then
                        local otheremotename = v.data[4]
                        if otheremotename == nil then
                           desc = "/nearby (~g~" .. v.name .. "~w~)"
                        else
                           desc = "/nearby (~g~" .. v.name .. "~w~) " .. Config.Languages[lang]['makenearby'] .. " (~y~" .. otheremotename .. "~w~)"
                        end
                    else
                        desc = "/e (" .. v.name .. ")" .. (favEnabled and "\n" .. Config.Languages[lang]['searchshifttofav'] or "")
                    end

                    if v.data.AnimationOptions and v.data.AnimationOptions.PropTextureVariations then
                        local item = NativeUI.CreateListItem(v.data[3], v.data.AnimationOptions.PropTextureVariations, 1, desc)
                        searchMenu:AddItem(item)
                    else
                        local item = NativeUI.CreateItem(v.data[3], desc)
                        searchMenu:AddItem(item)
                    end

                    if v.table == "Dances" and Config.SharedEmotesEnabled then
                        local item2 = NativeUI.CreateItem(v.data[3], "")
                        sharedDanceMenu:AddItem(item2)
                    end
                end

                if favEnabled then
                    table.insert(results, 1, Config.Languages[lang]['rfavorite'])
                end

                searchMenu.OnItemSelect = function(sender, item, index)
                    local data = results[index]

                    if data == Config.Languages[lang]['sharedanceemotes'] then return end
                    if data == Config.Languages[lang]['rfavorite'] then
                        FavoriteEmote = ""
                        SimpleNotify(Config.Languages[lang]['rfavorite'])
                        return
                    end

                    if favEnabled and IsControlPressed(0, 21) then
                        if data.table ~= "Shared" then
                            FavoriteEmote = data.name
                            SimpleNotify("~o~" .. firstToUpper(data.name) .. Config.Languages[lang]['newsetemote'])
                        else
                            SimpleNotify(Config.Languages[lang]['searchcantsetfav'])
                        end
                    elseif data.table == "Emotes" or data.table == "Dances" then
                        EmoteMenuStart(data.name, string.lower(data.table))
                    elseif data.table == "PropEmotes" then
                        EmoteMenuStart(data.name, "props")
                    elseif data.table == "AnimalEmotes" then
                        EmoteMenuStart(data.name, "animals")
                    elseif data.table == "Shared" then
                        target, distance = GetClosestPlayer()
                        if (distance ~= -1 and distance < 3) then
                            _, _, rename = table.unpack(RP.Shared[data.name])
                            TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), data.name)
                            SimpleNotify(Config.Languages[lang]['sentrequestto'] .. GetPlayerName(target))
                        else
                            SimpleNotify(Config.Languages[lang]['nobodyclose'])
                        end
                    end
                end

                searchMenu.OnListSelect = function(menu, item, itemIndex, listIndex)
                    EmoteMenuStart(results[itemIndex].name, "props", item:IndexToItem(listIndex).Value)
                end

                if Config.SharedEmotesEnabled then
                    if #sharedDanceMenu.Items > 0 then
                        table.insert(results, (favEnabled and 2 or 1), Config.Languages[lang]['sharedanceemotes'])
                        sharedDanceMenu.OnItemSelect = function(sender, item, index)
                            local data = results[index]
                            target, distance = GetClosestPlayer()
                            if (distance ~= -1 and distance < 3) then
                                _, _, rename = table.unpack(RP.Dances[data.name])
                                TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), data.name, 'Dances')
                                SimpleNotify(Config.Languages[lang]['sentrequestto'] .. GetPlayerName(target))
                            else
                                SimpleNotify(Config.Languages[lang]['nobodyclose'])
                            end
                        end
                    else
                        sharedDanceMenu:Clear()
                        searchMenu:RemoveItemAt((favEnabled and 2 or 1))
                    end
                end

                searchMenu.OnMenuClosed = function()
                    searchMenu:Clear()
                    lastMenu:RemoveItemAt(#lastMenu.Items)
                    _menuPool:RefreshIndex()
                    results = {}
                end

                _menuPool:RefreshIndex()
                _menuPool:CloseAllMenus()
                searchMenu:Visible(true)
            else
                SimpleNotify(string.format(Config.Languages[lang]['searchnoresult'], input))
            end
        end
    end
end

function AddCancelEmote(menu)
    local newitem = NativeUI.CreateItem(Config.Languages[lang]['cancelemote'], Config.Languages[lang]['cancelemoteinfo'])
    menu:AddItem(newitem)
    menu.OnItemSelect = function(sender, item, checked_)
        if item == newitem then
            EmoteCancel()
            DestroyAllProps()
        end
    end
end

function AddWalkMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['walkingstyles'], "", "", Menuthing, Menuthing)

    walkreset = NativeUI.CreateItem(Config.Languages[lang]['normalreset'], Config.Languages[lang]['resetdef'])
    submenu:AddItem(walkreset)
    table.insert(WalkTable, Config.Languages[lang]['resetdef'])

    -- This one is added here to be at the top of the list.
    WalkInjured = NativeUI.CreateItem("Injured", "/walk (injured)")
    submenu:AddItem(WalkInjured)
    table.insert(WalkTable, "move_m@injured")

    for a, b in pairsByKeys(RP.Walks) do
        x, label = table.unpack(b)
        walkitem = NativeUI.CreateItem(label or a, "/walk (" .. string.lower(a) .. ")")
        submenu:AddItem(walkitem)
        table.insert(WalkTable, x)
    end

    submenu.OnItemSelect = function(sender, item, index)
        if item ~= walkreset then
            WalkMenuStart(WalkTable[index])
        else
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        end
    end
end

function AddFaceMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['moods'], "", "", Menuthing, Menuthing)

    local facereset = NativeUI.CreateItem(Config.Languages[lang]['normalreset'], Config.Languages[lang]['resetdef'])
    submenu:AddItem(facereset)
    table.insert(FaceTable, "")

    for name, data in pairsByKeys(RP.Expressions) do
        local faceitem = NativeUI.CreateItem(data[2] or name, "")
        submenu:AddItem(faceitem)
        table.insert(FaceTable, name)
    end

    submenu.OnItemSelect = function(sender, item, index)
        if item ~= facereset then
            EmoteMenuStart(FaceTable[index], "expression")
        else
            ClearFacialIdleAnimOverride(PlayerPedId())
        end
    end
end

function AddInfoMenu(menu)

    -- if not UpdateAvailable then
        infomenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['infoupdate'], "~h~~y~The RPEmotes Team & Collaborators~h~~y~", "",
            Menuthing, Menuthing)
    -- else
    --     infomenu = _menuPool:AddSubMenu(menu, Config.Languages[lang]['infoupdateav'],
    --         Config.Languages[lang]['infoupdateavtext'], "", Menuthing, Menuthing)
    -- end
 
    infomenu:AddItem(NativeUI.CreateItem("Join the <font color=\"#00ceff\"><b>Official Discord 💬<b></font>",
        "Join our official discord! 💬 <font color=\"#00ceff\"><b>https://discord.gg/sw3NwDq6C8<b></font>"))
    infomenu:AddItem(NativeUI.CreateItem("Download <font color=\"#FF25B1\"><b>RPEmotes<b></font> from 💾",
        "Official download link: <font color=\"#00ceff\">http://rpemotes.com</font>"))
    infomenu:AddItem(NativeUI.CreateItem("Read the <font color=\"#00ceff\"><b>Official Wiki Docs 📖<b></font>",
        "Check out our official Wiki Docs: <font color=\"#00ceff\">https://docs.rpemotes.com/</font>"))
    infomenu:AddItem(NativeUI.CreateItem("<font color=\"#FF25B1\"><b>TayMcKenzieNZ 🇳🇿<b></font>",
        "<font color=\"#FF25B1\">TayMcKenzieNZ 🇳🇿</font> Project Manager for RPEmotes."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks ~o~DullPear 🍐~s~", "~o~DullPear~s~ for the original dpemotes ❤️"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <b>Kibook 🐩</b>",
        "<b>Kibook</b> for the addition of Animal Emotes 🐩 submenu."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks ~y~AvaN0x 🇫🇷~s~",
        "~y~AvaN0x~s~ 🇫🇷 for reformatting and assisting with code and additional features 🙏"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#0e64ed\">Mads 🤖</font>",
        "<font color=\"#0e64ed\">Mads 🤖</font> for the addition of Exit Emotes, Crouch & Crawl ⚙️"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff451d\">Mathu_lmn 🇫🇷 </font>",
        "<font color=\"#ff451d\">Mathu_lmn 🇫🇷</font>  Additional features and fixes 🛠️"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#1C9369\">northsqrd ⚙️</font>",
        "<font color=\"#1C9369\">northsqrd</font> for assisting with search feature and phone colours 🔎"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#15BCEC\">GeekGarage 🤓</font>",
        "<font color=\"#15BCEC\">GeekGarage</font> for assisting with code and features"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#3b8eea\">SMGMissy 🪖</font>",
        "<font color=\"#3b8eea\">SMGMissy</font> for the custom pride flags 🏳️‍🌈."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#a356fa\">Dollie 👧</font>",
        "<font color=\"#a356fa\">DollieMods</font> for the custom emotes 💜."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff00c3\">Tigerle 🐯</font>",
        "<font color=\"#ff00c3\">Tigerle</font> for assisting with attached Shared Emotes ⚙️."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#7dbf7b\">MissSnowie 🐰</font>",
        "<font color=\"#7dbf7b\">MissSnowie</font> for the custom emotes 🐇."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#FF6100\">Smokey 💨</font>",
        "<font color=\"#FF6100\">Smokey</font> for the custom emotes 🤙🏼."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks ~b~Ultrahacx 🧑‍💻~s~",
	"~b~Ultrahacx~s~ for the custom emotes ☺️."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#37DA00\">BzZzi 🤭</font>",
        "<font color=\"#37DA00\">BzZzi</font> for the custom props 🍩."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#C40A7D\">Natty3d 🍭</font>",
        "<font color=\"#C40A7D\">Natty3d</font> for the custom lollipop props 🍭."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff61a0\">Amnilka 🇵🇱</font>",
        "<font color=\"#ff61a0\">Amnilka</font> for the custom emotes ☺️."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff058f\">LittleSpoon 🥄</font>",
        "<font color=\"#ff058f\">LittleSpoon</font> for the custom emotes 💗."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#1a88c9\">Pupppy 🐶</font>",
        "<font color=\"#1a88c9\">Pupppy</font> for the custom emotes 🦴."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#53ba04\">SapphireMods</font>",
        "<font color=\"#53ba04\">SapphireMods</font> for the custom emotes ✨."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#8526f0\">QueenSisters Animations 👭</font>",
        "<font color=\"#8526f0\">QueenSistersAnimations</font> for the custom emotes 🍧"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#0acf52\">BoringNeptune 👽</font>",
        "<font color=\"#0acf52\">BoringNeptune</font> for the custom emotes 🕺"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#edae00\">Moses 🐮</font>",
        "<font color=\"#edae00\">-Moses-</font> for the custom emotes 🧡"))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#D71196\">PataMods 🍓</font>",
        "<font color=\"#D71196\">PataMods</font> for the custom props 🍕"))
   infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#FB7403\">Crowded1337 👜</font>",
        "<font color=\"#FB7403\">Crowded1337</font> for the custom Gucci bag 👜"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#8180E5\">EnchantedBrownie 🍪</font>",
        "<font color=\"#8180E5\">EnchantedBrownie 🍪</font> for the custom animations 🍪"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#eb540e\">Copofiscool 🇦🇺</font>",
        "<font color=\"#eb540e\">Copofiscool</font> for the Favorite Emote keybind toggle fix 🇦🇺"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#40E0D0\">iSentrie </font>",
        "<font color=\"#40E0D0\">iSentrie</font> for assisting with code 🛠️"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#7B3F00\">Chocoholic Animations 🍫</font>",
        "<font color=\"#7B3F00\">Chocoholic Animations</font> for the custom emotes 🍫"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#34cf5d\">CrunchyCat 🐱</font>",
        "<font color=\"#34cf5d\">CrunchyCat 🐱</font> for the custom emotes 🐱"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#d10870\">KayKayMods</font>",
        "<font color=\"#d10870\">KayKayMods</font> for the custom props 🧋"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#de1846\">Dark Animations</font>",
        "<font color=\"#de1846\">Dark Animations</font> for the custom animations 🖤"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#00FF12\">Brum 🇬🇧</font>",
        "<font color=\"#00FF12\">Brum</font> for the custom props  🇬🇧"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#017a05\">Chico 💀</font>",
        "<font color=\"#017a05\">Chico 💀</font> for fixing persistent walkstyles and moods for QB-Core and ESX."))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#194ce6\">-EcLiPsE- ✌🏻</font>",
        "<font color=\"#194ce6\">-EcLiPsE- ✌🏻 </font> for NPC prop sets and GTA Online biker animations"))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#3488c8\">MrWitt 🦑️</font>",
        "<font color=\"#3488c8\">MrWitt 🦑</font> for the custom animations."))
  infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff96b6\">AdoredRose 🌹</font>",
       "<font color=\"#ff96b6\">AdoredRose 🌹</font> for assistance with adding animations."))
    infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#ff451d\">DRX Animations 👑</font>",
        "<font color=\"#ff451d\">DRX Animations 👑</font> for the custom animations"))
	infomenu:AddItem(NativeUI.CreateItem("Thanks <font color=\"#12ab0a\">Radial 🫡</font>",
       "<font color=\"#12ab0a\">Radial</font> on discord for contributing animations code"))
        
  infomenu:AddItem(NativeUI.CreateItem("<b>Thanks to the community<b>", "Translations, bug reports and moral support 🌐"))
    
end

function OpenEmoteMenu()
    if IsEntityDead(PlayerPedId()) then
        -- show in chat
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"RPEmotes", Config.Languages[lang]['dead']}
        })
        return
    end
    if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
        -- show in chat
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"RPEmotes", Config.Languages[lang]['swimming']}
        })
        return
    end
    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
    else
        mainMenu:Visible(true)
        ProcessMenu()
    end
end

AddEmoteMenu(mainMenu)
AddCancelEmote(mainMenu)
if Config.WalkingStylesEnabled then
    AddWalkMenu(mainMenu)
end
if Config.ExpressionsEnabled then
    AddFaceMenu(mainMenu)
end
AddInfoMenu(mainMenu)

_menuPool:RefreshIndex()

local isMenuProcessing = false
function ProcessMenu()
    if isMenuProcessing then return end
    isMenuProcessing = true
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
        Wait(0)
    end
    isMenuProcessing = false
end

RegisterNetEvent("rp:Update")
AddEventHandler("rp:Update", function(state)
    UpdateAvailable = state
    AddInfoMenu(mainMenu)
    _menuPool:RefreshIndex()
end)

RegisterNetEvent("rp:RecieveMenu") -- For opening the emote menu from another resource.
AddEventHandler("rp:RecieveMenu", function()
    OpenEmoteMenu()
end)


-- While ped is dead, don't show menus
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        if IsEntityDead(PlayerPedId()) then
            _menuPool:CloseAllMenus()
        end
        if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
            -- cancel emote, destroy props and close menu
            if IsInAnimation then
                EmoteCancel()
            end
            _menuPool:CloseAllMenus()
        end
    end
end)
