InSearch = false


local rightPosition = { x = 1430, y = 200 }
local leftPosition = { x = 0, y = 200 }
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
    CreateRuntimeTextureFromImage(RuntimeTXD, 'Custom_Menu_Head', 'header.png')
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
    RegisterCommand('emotefav', function() FavKeybind() end, false)
    RegisterKeyMapping("emotefav", Translate("register_fav_anim"), "keyboard", Config.FavKeybind)

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
    local submenu = _menuPool:AddSubMenu(menu, Translate('emotes'), "", true, true)
    if Config.Search then
        submenu:AddItem(NativeUI.CreateItem(Translate('searchemotes'), ""))
        table.insert(EmoteTable, Translate('searchemotes'))
    end
    local dancemenu = _menuPool:AddSubMenu(submenu, Translate('danceemotes'), "", true, true)
    local animalmenu
    if Config.AnimalEmotesEnabled then
        animalmenu = _menuPool:AddSubMenu(submenu, Translate('animalemotes'), "", true, true)
        table.insert(EmoteTable, Translate('animalemotes'))
    end
    local propmenu = _menuPool:AddSubMenu(submenu, Translate('propemotes'), "", true, true)
    table.insert(EmoteTable, Translate('danceemotes'))
    table.insert(EmoteTable, Translate('danceemotes'))

    if Config.SharedEmotesEnabled then
        sharemenu = _menuPool:AddSubMenu(submenu, Translate('shareemotes'),
            Translate('shareemotesinfo'), true, true)
        shareddancemenu = _menuPool:AddSubMenu(sharemenu, Translate('sharedanceemotes'), "", true, true)
        table.insert(ShareTable, 'none')
        table.insert(EmoteTable, Translate('shareemotes'))
    end

    -- Temp var to be able to sort every emotes in the fav list
    local favEmotes = {}
    if not Config.SqlKeybinding then
        unbind2item = NativeUI.CreateItem(Translate('rfavorite'), Translate('rfavorite'))
        unbinditem = NativeUI.CreateItem(Translate('prop2info'), "")
        favmenu = _menuPool:AddSubMenu(submenu, Translate('favoriteemotes'),
            Translate('favoriteinfo'), true, true)
        favmenu:AddItem(unbinditem)
        favmenu:AddItem(unbind2item)
        -- Add two elements as offset
        table.insert(FavEmoteTable, Translate('rfavorite'))
        table.insert(FavEmoteTable, Translate('rfavorite'))
        table.insert(EmoteTable, Translate('favoriteemotes'))
    else
        table.insert(EmoteTable, "keybinds")
        keyinfo = NativeUI.CreateItem(Translate('keybinds'),
            Translate('keybindsinfo') .. " /emotebind [~y~num4-9~w~] [~g~emotename~w~]")
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
                    a .. "~w~) " .. Translate('makenearby') .. " (~y~" .. otheremotename .. "~w~)")
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
                Translate('set') .. emoteLabel .. Translate('setboundemote'))
            favmenu:AddItem(favemoteitem)
            table.insert(FavEmoteTable, emoteName)
        end

        favmenu.OnItemSelect = function(sender, item, index)
            if FavEmoteTable[index] == Translate('rfavorite') then
                FavoriteEmote = ""
                SimpleNotify(Translate('rfavorite'))
                return
            end
            if Config.FavKeybindEnabled then
                FavoriteEmote = FavEmoteTable[index]
                SimpleNotify("~o~" .. firstToUpper(FavoriteEmote) .. Translate('newsetemote'))
            end
        end
    end
    favEmotes = nil

    -- Ped Emote on Change Index

    dancemenu.OnIndexChange = function(menu, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartPed(DanceTable[newindex], "dances")
    end

    propmenu.OnIndexChange = function(menu, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartPed(PropETable[newindex], "props")
    end

    submenu.OnIndexChange = function(menu, newindex)
        if newindex > 6 then
            ClearPedTaskPreview()
            EmoteMenuStartPed(EmoteTable[newindex], "emotes")
        end
    end

    dancemenu.OnMenuClosed = function(menu)
        ClearPedTaskPreview()
    end

    --------


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
                    SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                else
                    SimpleNotify(Translate('nobodyclose'))
                end
            end
        end

        shareddancemenu.OnItemSelect = function(sender, item, index)
            target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                _, _, rename = table.unpack(RP.Dances[DanceTable[index]])
                TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), DanceTable[index], 'Dances')
                SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
            else
                SimpleNotify(Translate('nobodyclose'))
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
        if Config.Search and EmoteTable[index] == Translate('searchemotes') then
            EmoteMenuSearch(submenu)
        elseif EmoteTable[index] ~= Translate('favoriteemotes') then
            EmoteMenuStart(EmoteTable[index], "emotes")
        end
    end

    submenu.OnMenuClosed = function(menu)
        if not InSearch then
            ClosePedMenu()
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
        ClosePedMenu()
        local favEnabled = not Config.SqlKeybinding and Config.FavKeybindEnabled
        AddTextEntry("PM_NAME_CHALL", Translate('searchinputtitle'))
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
                InSearch = true

                local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format('%s '..Translate('searchmenudesc')..' ~r~%s~w~', #results, input), "", true, true)
                local sharedDanceMenu
                if favEnabled then
                    local rFavorite = NativeUI.CreateItem(Translate('rfavorite'), Translate('rfavorite'))
                    searchMenu:AddItem(rFavorite)
                end

                if Config.SharedEmotesEnabled then
                    sharedDanceMenu = _menuPool:AddSubMenu(searchMenu, Translate('sharedanceemotes'), "", true, true)
                end

                table.sort(results, function(a, b) return a.name < b.name end)
                for k, v in pairs(results) do
                    local desc = ""
                    if v.table == "Shared" then
                        local otheremotename = v.data[4]
                        if otheremotename == nil then
                           desc = "/nearby (~g~" .. v.name .. "~w~)"
                        else
                           desc = "/nearby (~g~" .. v.name .. "~w~) " .. Translate('makenearby') .. " (~y~" .. otheremotename .. "~w~)"
                        end
                    else
                        desc = "/e (" .. v.name .. ")" .. (favEnabled and "\n" .. Translate('searchshifttofav') or "")
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
                    table.insert(results, 1, Translate('rfavorite'))
                end


                searchMenu.OnMenuChanged = function(menu, newmenu, forward)
                    InSearch = false
                    ShowPedMenu()
                end


                searchMenu.OnIndexChange = function(menu, newindex)
                    local data = results[newindex]

                    ClearPedTaskPreview()
                    if data.table == "Emotes" or data.table == "Dances" then
                        EmoteMenuStartPed(data.name, string.lower(data.table))
                    elseif data.table == "PropEmotes" then
                        EmoteMenuStartPed(data.name, "props")
                    elseif data.table == "AnimalEmotes" then
                        EmoteMenuStartPed(data.name, "animals")
                    end
                end


                searchMenu.OnItemSelect = function(sender, item, index)
                    local data = results[index]

                    if data == Translate('sharedanceemotes') then return end
                    if data == Translate('rfavorite') then
                        FavoriteEmote = ""
                        SimpleNotify(Translate('rfavorite'))
                        return
                    end

                    if favEnabled and IsControlPressed(0, 21) then
                        if data.table ~= "Shared" then
                            FavoriteEmote = data.name
                            SimpleNotify("~o~" .. firstToUpper(data.name) .. Translate('newsetemote'))
                        else
                            SimpleNotify(Translate('searchcantsetfav'))
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
                            SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                        else
                            SimpleNotify(Translate('nobodyclose'))
                        end
                    end
                end

                searchMenu.OnListSelect = function(menu, item, itemIndex, listIndex)
                    EmoteMenuStart(results[itemIndex].name, "props", item:IndexToItem(listIndex).Value)
                end

                if Config.SharedEmotesEnabled then
                    if #sharedDanceMenu.Items > 0 then
                        table.insert(results, (favEnabled and 2 or 1), Translate('sharedanceemotes'))
                        sharedDanceMenu.OnItemSelect = function(sender, item, index)
                            local data = results[index]
                            target, distance = GetClosestPlayer()
                            if (distance ~= -1 and distance < 3) then
                                _, _, rename = table.unpack(RP.Dances[data.name])
                                TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), data.name, 'Dances')
                                SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                            else
                                SimpleNotify(Translate('nobodyclose'))
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
                ShowPedMenu()
            else
                SimpleNotify(string.format(Translate('searchnoresult')..' ~r~%s~w~', input))
            end
        end
    end
end

function AddCancelEmote(menu)
    local newitem = NativeUI.CreateItem(Translate('cancelemote'), Translate('cancelemoteinfo'))
    menu:AddItem(newitem)
    newitem.Activated = function()
        EmoteCancel()
        DestroyAllProps()
    end
end


ShowPedPreview = function(menu)
    menu.OnItemSelect = function(sender, item, index)
        if (index == 1) then
            InSearch = false
            ShowPedMenu()
        elseif index == 4 then
            ShowPedMenu(true)
        end
    end
end

function AddWalkMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Translate('walkingstyles'), "", true, true)

    walkreset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    submenu:AddItem(walkreset)
    table.insert(WalkTable, Translate('resetdef'))

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
    local submenu = _menuPool:AddSubMenu(menu, Translate('moods'), "", true, true)

    local facereset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    submenu:AddItem(facereset)
    table.insert(FaceTable, "")

    for name, data in pairsByKeys(RP.Expressions) do
        local faceitem = NativeUI.CreateItem(data[2] or name, "")
        submenu:AddItem(faceitem)
        table.insert(FaceTable, name)
    end


    submenu.OnMenuClosed = function(menu)
        ClosePedMenu()
    end

    submenu.OnIndexChange = function(menu, newindex)
        EmoteMenuStartPed(FaceTable[newindex], "expression")
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
    infomenu = _menuPool:AddSubMenu(menu, Translate('infoupdate'), "~h~~y~The RPEmotes Team & Collaborators~h~~y~", true, true)

    for _,v in ipairs(Config.Credits) do
        local item = NativeUI.CreateItem(v.title,v.subtitle or "")
        infomenu:AddItem(item)
    end
end

function OpenEmoteMenu()
    if IsEntityDead(PlayerPedId()) then
        -- show in chat
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"RPEmotes", Translate('dead')}
        })
        return
    end
    if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
        -- show in chat
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"RPEmotes", Translate('swimming')}
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

LoadAddonEmotes()
AddEmoteMenu(mainMenu)
AddCancelEmote(mainMenu)
if Config.PreviewPed then
    ShowPedPreview(mainMenu)
end
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

RegisterNetEvent("rp:Update", function(state)
    UpdateAvailable = state
    AddInfoMenu(mainMenu)
    _menuPool:RefreshIndex()
end)

RegisterNetEvent("rp:RecieveMenu", function()
    OpenEmoteMenu()
end)


-- While ped is dead, don't show menus
CreateThread(function()
    while true do
        Wait(500)
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
