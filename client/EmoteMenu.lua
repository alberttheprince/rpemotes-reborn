---@type table<string, EmoteData>
EmoteData = {}

---@type table<string, SharedEmoteData>
SharedEmoteData = {}

---@type table<string, ExpressionData>
ExpressionData = {}

---@type table<string, WalkData>
WalkData = {}

local isMenuProcessing = false
local isWaitingForPed = false
keybindMenu = nil -- Global variable. Scary!
favoriteMenu = nil -- Global variable. Scary!
local currentZoomState = false
local dataForKeybind = {}

-- Tracks currently selected menu item for instruction button visibility
CurrentMenuSelection = {
    name = nil,
    emoteType = nil,
}

local function canPlayerEmote()
    local ped = PlayerPedId()
    if IsEntityDead(ped) then
        return false, Translate('dead')
    end
    if (IsPedSwimming(ped) or IsPedSwimmingUnderWater(ped)) and not Config.AllowInWater then
        return false, Translate('swimming')
    end
    return true
end

local function hasClonedPed()
    return ClonedPed and DoesEntityExist(ClonedPed)
end

local function isEmoteTypePreviewable(emoteType)
    return emoteType == EmoteType.DANCES
        or emoteType == EmoteType.EMOTES
        or emoteType == EmoteType.EXPRESSIONS
        or emoteType == EmoteType.PROP_EMOTES
        or emoteType == EmoteType.ANIMAL_EMOTES
        or emoteType == EmoteType.SHARED
end

local function isEmoteTypePlayable(emoteType)
    return emoteType == EmoteType.DANCES
        or emoteType == EmoteType.ANIMAL_EMOTES
        or emoteType == EmoteType.PROP_EMOTES
        or emoteType == EmoteType.EMOTES
end

local function addEmoteToMenu(menu, items, emoteName, label, description, emoteType)
    local item = NativeUI.CreateItem(label, description)
    local hasPermission = HasEmotePermission(emoteName, emoteType)
    item:Enabled(hasPermission)
    menu:AddItem(item)
    items[#items+1] = {name = emoteName, emoteType = emoteType, label = label}
end

local function formatSharedEmoteDescription(emoteName, secondPlayersAnim)
    if secondPlayersAnim == nil then
        return string.format("/nearby (~g~%s~w~)", emoteName)
    else
        return string.format("/nearby (~g~%s~w~) %s (~y~%s~w~)", emoteName, Translate('makenearby'), secondPlayersAnim)
    end
end

local function getMenuPosition()
    local rightPosition = { x = 1430, y = 200 }
    local leftPosition = { x = 0, y = 200 }

    if GetAspectRatio() > 2.0 then
        rightPosition = { x = 1200, y = 100 }
        leftPosition = { x = -250, y = 100 }
    end

    if Config.MenuPosition == "left" then
        return leftPosition
    elseif Config.MenuPosition == "right" then
        return rightPosition
    end

    return { x = 0, y = 200 }
end

local function matchesSearchTerm(emoteName, emoteData, searchTerm)
    local lowerSearch = string.lower(searchTerm)
    return string.find(string.lower(emoteName), lowerSearch)
        or (emoteData.label
            and string.find(string.lower(emoteData.label), lowerSearch))
end

local function addResetMenuItem(menu, items, emoteType)
    local resetItem = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    menu:AddItem(resetItem)
    items[#items+1] = {name = Translate('resetdef'), emoteType = emoteType, notAnEmote = true}
    return resetItem
end

---@param emoteName string
---@param emoteType EmoteType
---@return EmoteData|SharedEmoteData|ExpressionData|WalkData|nil
local function getEmoteData(emoteName, emoteType)
    if emoteType == EmoteType.SHARED then
        return SharedEmoteData[emoteName]
    elseif emoteType == EmoteType.EXPRESSIONS then
        return ExpressionData[emoteName]
    elseif emoteType == EmoteType.WALKS then
        return WalkData[emoteName]
    else
        return EmoteData[emoteName]
    end
end

---@param emoteItem string|{name: string, emoteType: EmoteType}
---@return string
local function getEmoteLabel(emoteItem)
    local emoteName = type(emoteItem) == "table" and emoteItem.name or emoteItem
    local emoteType = type(emoteItem) == "table" and emoteItem.emoteType or nil

    local data = getEmoteData(emoteName, emoteType)
    return data and data.label or emoteName
end

---@param emotes string[] | {name: string, emoteType: EmoteType}[]
local function sortEmotesByLabel(emotes)
    table.sort(emotes, function(a, b)
        local labelA = getEmoteLabel(a)
        local labelB = getEmoteLabel(b)
        return string.lower(labelA) < string.lower(labelB)
    end)
end

--- Expands EmoteTypes in CustomCategories to actual emote names
---@return table<string, {name: string, emoteType: EmoteType}> -- Returns category name to array of emote names
local function expandCustomCategories()
    local expanded = {}

    for categoryName, emoteTypeMap in pairs(Config.CustomCategories) do
        expanded[categoryName] = {}

        for emoteType, emoteNames in pairs(emoteTypeMap) do
            -- Check if the array is empty (include all emotes of this type)
            if #emoteNames == 0 then
                -- Include all emotes of this type from RP
                if RP and RP[emoteType] then
                    for emoteName in pairs(RP[emoteType]) do
                        expanded[categoryName][#expanded[categoryName]+1] = {
                            name = emoteName,
                            emoteType = emoteType
                        }
                    end
                end
            else
                -- Include only the specified emotes
                for _, emoteName in ipairs(emoteNames) do
                    -- Verify it exists in the appropriate data structure
                    if RP and RP[emoteType] and RP[emoteType][emoteName] then
                        expanded[categoryName][#expanded[categoryName]+1] = {
                            name = emoteName,
                            emoteType = emoteType
                        }
                    end
                end
            end
        end
    end

    return expanded
end

local menuPosition = getMenuPosition()
local menuHeader = "shopui_title_sm_hangar"

if Config.CustomMenuEnabled then
    local txd = CreateRuntimeTxd('Custom_Menu_Head')
    CreateRuntimeTextureFromImage(txd, 'Custom_Menu_Head', 'header.png')
    menuHeader = "Custom_Menu_Head"
end

local _menuPool = NativeUI.CreatePool()
local mainMenu = NativeUI.CreateMenu(Config.MenuTitle or "", "", menuPosition.x, menuPosition.y, menuHeader, menuHeader)
_menuPool:Add(mainMenu)

---@class MenuItem
---@field name string
---@field emoteType EmoteType

---@class SubMenu
---@field menu table
---@field items MenuItem[]

---@type table<Category, SubMenu>
local subMenus = {}

---@type table<string, {name: string, emoteType: EmoteType}[]>
local categoryToEmotes = {}

-- Emoji prefixes for different emote types
local EMOTE_PREFIX = {
    [EmoteType.DANCES] = "🤼 ",
    [EmoteType.ANIMAL_EMOTES] = "🐶 ",
    [EmoteType.PROP_EMOTES] = "📦 ",
}

local function shouldShowEmojiMenu()
    if not Config.EmojiMenuEnabled then return false end
    if not Config.EmojiMenuAnimalsOnly then return true end

    return not IsPedHuman(PlayerPedId())
end


function SendSharedEmoteRequest(emoteName)
    local target, distance = GetClosestPlayer()
    if (distance ~= -1 and distance < 3) then
        TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emoteName)
        SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
    else
        SimpleNotify(Translate('nobodyclose'))
    end
end

--- Unified handler for emote selection from menus
local function handleEmoteSelection(emoteName, emoteType, textureVariation)
    local emote = getEmoteData(emoteName, emoteType)
    if not emote then return end

    if not HasEmotePermission(emoteName, emoteType) then
        EmoteChatMessage("You don't have permission to use this emote")
        return
    end

    if emote.emoteType == EmoteType.SHARED then
        -- Check for keybind request (K key)
        if Config.Keybinding and IsControlPressed(2, 311) then
            dataForKeybind = {emoteName = emoteName, emoteType = emote.emoteType, label = emote.label}
            RebuildKeybindEmoteMenu()
            keybindMenu.menu:Visible(true)
            return
        end
        dataForKeybind = {}

        SendSharedEmoteRequest(emoteName)
    elseif isEmoteTypePlayable(emote.emoteType) then
        -- Check for group emote request (CTRL key)
        if IsDisabledControlPressed(0, 36) then
            OnGroupEmoteRequest(emoteName)
            return
        end

        -- Check for keybind request (K key)
        if Config.Keybinding and IsControlPressed(2, 311) then
            dataForKeybind = {emoteName = emoteName, emoteType = emote.emoteType, label = emote.label}
            RebuildKeybindEmoteMenu()
            keybindMenu.menu:Visible(true)
            return
        end
        dataForKeybind = {}

        if Config.PlacementEnabled then
            local shiftHeld = IsControlPressed(0, 21)
            local movingForward = Config.DisablePlacementKeybindWhileMoving and (IsControlPressed(0,32) or IsControlPressed(0,31) or IsControlPressed(0,30)) -- INPUT_MOVE_UP_ONLY or INPUT_MOVE_UP or INPUT_MOVE_LR
            local placementState = GetPlacementState()

            if not movingForward and shiftHeld and placementState ~= PlacementState.PREVIEWING and placementState ~= PlacementState.WALKING then
                StartNewPlacement(emoteName)
                return
            end
        end

        EmoteMenuStart(emoteName, textureVariation, emoteType)
    end
end

local function hidePreview()
    LastEmote = {}
    currentZoomState = false  -- Reset zoom state

    if hasClonedPed() then
        ClosePedMenu()
    end
end

--- Unified handler that updates CurrentMenuSelection, instruction buttons, and ped preview
--- Called whenever menu selection changes (scroll, menu open, menu close)
---@param currentMenu table The menu to check for preview
local function onMenuItemHover(currentMenu)
    -- Handle main menu or no menu - clear everything
    if not currentMenu or currentMenu == mainMenu then
        CurrentMenuSelection = {}
        if mainMenu then
            mainMenu:UpdateScaleform()
        end
        hidePreview()
        return
    end

    -- Find the menu in our subMenus table to get the items list
    local subMenuData = nil
    for _, data in pairs(subMenus) do
        if data.menu == currentMenu then
            subMenuData = data
            break
        end
    end

    if not subMenuData then
        CurrentMenuSelection = {}
        currentMenu:UpdateScaleform()
        hidePreview()
        return
    end

    -- Get the current selection
    local currentIndex = currentMenu:CurrentSelection()
    if not currentIndex or currentIndex == 0 then
        currentIndex = 1 -- Default to first item if no selection
    end

    if not subMenuData.items[currentIndex] or subMenuData.items[currentIndex].notAnEmote then
        CurrentMenuSelection = {}
        currentMenu:UpdateScaleform()
        hidePreview()
        return
    end

    local emoteName = subMenuData.items[currentIndex].name
    local emoteType = subMenuData.items[currentIndex].emoteType
    local emoteLabel = subMenuData.items[currentIndex].label

    -- Always update CurrentMenuSelection for instruction buttons
    CurrentMenuSelection = {
        name = emoteName,
        emoteType = emoteType,
        label = emoteLabel,
    }

    -- Force scaleform refresh to update instruction buttons
    currentMenu:UpdateScaleform()

    local emote = EmoteData[emoteName] or SharedEmoteData[emoteName]

    -- Check if the selected item is a previewable emote
   -- Check if the selected item is a previewable emote
    if emoteType == EmoteType.EXPRESSIONS or (emote and isEmoteTypePreviewable(emote.emoteType)) then
        -- Determine if we need zoom (for expressions/moods, we want a closer view)
        local needsZoom = (emoteType == EmoteType.EXPRESSIONS)

        -- Check if we're already showing this exact emote - if so, do nothing
        if LastEmote.name == emoteName and hasClonedPed() then
            return
        end

        -- If zoom state changed, we need to recreate the ped
        if hasClonedPed() and currentZoomState ~= needsZoom then
            ClosePedMenu()
        end

        -- Clear previous preview (ClearPedTaskPreview uses LastEmote to know what to clear)
        if hasClonedPed() then
            ClearPedTaskPreview()
        end

        -- Update LastEmote to new preview
        LastEmote = {
            name = emoteName,
            emoteType = emoteType,
        }

        -- Show this emote
        if hasClonedPed() then
            -- Ped exists, just switch animation
            EmoteMenuStartClone(emoteName, emoteType)
        else
            -- Ped doesn't exist, create it with appropriate zoom
            currentZoomState = needsZoom
            ShowPedMenu(needsZoom)
            WaitForClonedPedThenPlayLastAnim()
        end
    else
        hidePreview()
    end
end

---@param parent SubMenu|table
---@param category string
---@param title string
---@param description? string
---@param emoteType? EmoteType
---@return SubMenu
local function createSubMenu(parent, category, title, description, emoteType)
    if parent.menu then
        parent.items[#parent.items+1] = {name = title, emoteType = emoteType}
    end
    local menu = _menuPool:AddSubMenu(parent.menu or parent, title, description or '', true, true)
    local items = {}

    menu.OnIndexChange = function(_, newIndex)
        onMenuItemHover(menu)
    end

    menu.OnItemSelect = function(_, _, index)
        if Config.Search and items[index].name == Translate('searchemotes') then
            EmoteMenuSearch(menu)
            return
        end

        handleEmoteSelection(items[index].name, items[index].emoteType)
    end

    menu.OnListSelect = function(_, item, itemIndex, listIndex)
        local emoteName = items[itemIndex].name
        local emote = EmoteData[emoteName]
        if not emote then return end
        if emote.emoteType ~= EmoteType.PROP_EMOTES then return end
        handleEmoteSelection(emoteName, items[itemIndex].emoteType, item:IndexToItem(listIndex).Value)
    end

    menu.OnMenuChanged = function(oldMenu, newMenu, forward)
        onMenuItemHover(newMenu)
    end

    local subMenu = {
        menu = menu,
        items = items,
    }
    subMenus[category] = subMenu
    return subMenu
end

local function addKeybindMenu(parent)
    if parent then -- Hack-job to allow us to use the same function for both creating and rebuilding the menu.
        createSubMenu(parent, "keybinds", Translate("keybinds"))
    end
    local menu = subMenus["keybinds"]

    for id = 1, #Config.KeybindKeys do
        local emoteData = GetResourceKvpString(string.format('%s_bind_%s', Config.keybindKVP, id))
        if emoteData and emoteData ~= "" then
            emoteData = json.decode(emoteData)
        end
        local label = string.format("Slot %i: ~b~%s~s~ %s", id, (emoteData and EmoteTypeEmoji[emoteData.emoteType]) or "", (emoteData and emoteData.label) or "Empty Slot")
        local description = string.format("This slot is bound to [ ~b~%s~s~ ]. You can change this in the in-game settings.", GetKeyForCommand("emoteSelect"..id))
        local item = NativeUI.CreateItem(label, description)
        menu.menu:AddItem(item)
        menu.items[#menu.items+1] = {name = "slot_"..id}
    end

    menu.menu.OnItemSelect = function(_, item, index)
        if dataForKeybind.emoteName then
            -- Set as bind.
            local label = string.format("Slot %i: %s", index, dataForKeybind.label or "Empty Slot")
            EmoteBindStart({index, dataForKeybind.emoteName, dataForKeybind.label, dataForKeybind.emoteType})
            dataForKeybind = {}
            _menuPool:RefreshIndex()
            _menuPool:CloseAllMenus()
            RebuildEmoteMenu()
            mainMenu:Visible(true)
        else
            -- Delete bind.
            if IsControlPressed(0,178) then
                DeleteEmoteBind({index})
                dataForKeybind = {}
                _menuPool:RefreshIndex()
                _menuPool:CloseAllMenus()
                RebuildEmoteMenu()
                mainMenu:Visible(true)
                return
            end

            -- When pressing enter without an emote context, just do the anim.
            ExecuteCommand("emoteSelect"..index)
        end
    end

    return menu
end

local function addFavoritesMenu(parent)
    if parent then -- Hack-job to allow us to use the same function for both creating and rebuilding the menu.
        createSubMenu(parent, "favorites", Translate("favorites"), Translate("favoritesinfo"))
    end
    local menu = subMenus["favorites"]
    local favoriteEmotes = GetFavoriteEmotes()
    local favoriteEmotesMap = GetFavoriteEmotesMap()
    for _, key in pairs(favoriteEmotesMap) do
        local emoteData = favoriteEmotes[key]
        local label = string.format("~b~%s~s~ %s", (emoteData and EmoteTypeEmoji[emoteData.emoteType]) or "", (emoteData and emoteData.label) or "Unknown Emote Name")
        local item = NativeUI.CreateItem(label, "")
        menu.menu:AddItem(item)
        menu.items[#menu.items+1] = {name = emoteData.name, label = emoteData.label, emoteType = emoteData.emoteType}
    end

    menu.menu.OnItemSelect = function(_, __, index)
        local item = menu.items[index]
        -- If it's a regular emote, we go through the normal process.
        local regularEmote = getEmoteData(item.name, item.emoteType)
        if regularEmote and (item.emoteType ~= EmoteType.EXPRESSIONS and item.emoteType ~= EmoteType.WALKS) then
            handleEmoteSelection(item.name, item.emoteType, item.textureVariation)
            return
        end
        -- For Emojis got through the router
        RouteEmoteToFunction(item.name, item.emoteType, item.textureVariation)
    end

    return menu
end

local function addEmoteMenu(menu)
    local emoteMenu = createSubMenu(menu, EmoteType.EMOTES, Translate('emotes'))
    if Config.Search then
        emoteMenu.menu:AddItem(NativeUI.CreateItem(Translate('searchemotes'), ""))
        emoteMenu.items[#emoteMenu.items+1] = {name = Translate('searchemotes'), emoteType = nil}
    end

    -- Create submenus for each custom category
    for categoryName in pairs(categoryToEmotes) do
        createSubMenu(emoteMenu, categoryName, categoryName)
    end

    -- Populate each category with its emotes
    for categoryName, emoteList in pairs(categoryToEmotes) do
        local categoryMenu = subMenus[categoryName]
        if categoryMenu then
            sortEmotesByLabel(emoteList)
            for _, emoteInfo in ipairs(emoteList) do
                local emoteName = emoteInfo.name
                local emoteType = emoteInfo.emoteType
                local data = getEmoteData(emoteName, emoteType)

                if data then
                    -- Check if this emote type is enabled
                    if data.emoteType == EmoteType.ANIMAL_EMOTES and not Config.AnimalEmotesEnabled then
                        goto continue
                    end
                    if data.emoteType == EmoteType.SHARED and not Config.SharedEmotesEnabled then
                        goto continue
                    end

                    -- Check model compatibility
                    if CachedPlayerModel and not IsModelCompatible(CachedPlayerModel, emoteName) then
                        goto continue
                    end

                    local hasPermission = HasEmotePermission(emoteName, emoteType)

                    if data.emoteType == EmoteType.SHARED then
                        local desc = formatSharedEmoteDescription(emoteName, data.secondPlayersAnim)
                        local shareitem = NativeUI.CreateItem(data.label, desc)
                        shareitem:Enabled(hasPermission)
                        categoryMenu.menu:AddItem(shareitem)
                        categoryMenu.items[#categoryMenu.items+1] = {name = emoteName, emoteType = data.emoteType, label = data.label}
                    elseif data.emoteType == EmoteType.PROP_EMOTES then
                        local label = EMOTE_PREFIX[EmoteType.PROP_EMOTES] .. data.label
                        local propitem = data.AnimationOptions.PropTextureVariations and
                            NativeUI.CreateListItem(label, data.AnimationOptions.PropTextureVariations, 1, string.format("/e (%s)", emoteName)) or
                            NativeUI.CreateItem(label, string.format("/e (%s)", emoteName))
                        propitem:Enabled(hasPermission)
                        categoryMenu.menu:AddItem(propitem)
                        categoryMenu.items[#categoryMenu.items+1] = {name = emoteName, emoteType = data.emoteType, label = data.label}
                    else
                        -- EMOTES, DANCES, ANIMAL_EMOTES
                        local prefix = EMOTE_PREFIX[data.emoteType] or ""
                        local label = prefix .. data.label
                        addEmoteToMenu(categoryMenu.menu, categoryMenu.items, emoteName, label, string.format("/e (%s)", emoteName), data.emoteType)
                    end
                    ::continue::
                end
            end
        end
    end


    -- Put all the emotes with EmoteType.EMOTES (and ANIMAL_EMOTES if enabled) within the emotes category
    local emotesList = {}
    for emoteName, data in pairs(EmoteData) do
        local isRegularEmote = data.emoteType == EmoteType.EMOTES
        local isAnimalEmote = Config.AnimalEmotesEnabled and data.emoteType == EmoteType.ANIMAL_EMOTES
        if isRegularEmote or isAnimalEmote then
            -- Check model compatibility
            if not CachedPlayerModel or IsModelCompatible(CachedPlayerModel, emoteName) then
                emotesList[#emotesList + 1] = emoteName
            end
        end
    end
    sortEmotesByLabel(emotesList)
    for _, emoteName in ipairs(emotesList) do
        local data = EmoteData[emoteName]
        addEmoteToMenu(emoteMenu.menu, emoteMenu.items, emoteName, data.label, string.format("/e (%s)", emoteName), data.emoteType)
    end
end

if Config.Search then
    function EmoteMenuSearch(lastMenu)
        ClosePedMenu()

        -- Clean up any previous search results from the menu
        for i = #lastMenu.Items, 1, -1 do
            local item = lastMenu.Items[i]
            if item and item.Description and type(item.Description) == "string" and string.find(item.Description, Translate('searchmenudesc')) then
                lastMenu:RemoveItemAt(i)
            end
        end
        _menuPool:RefreshIndex()

    AddTextEntry("PM_NAME_CHALL", Translate('searchinputtitle'))
        DisplayOnscreenKeyboard(1, "PM_NAME_CHALL", "", "", "", "", "", 30)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(100)
        end
        local input = GetOnscreenKeyboardResult()
        if not input then return end

        local results = {}
        for emoteName, emoteData in pairs(EmoteData) do
            if matchesSearchTerm(emoteName, emoteData, input) then
                -- Check model compatibility
                if not CachedPlayerModel or IsModelCompatible(CachedPlayerModel, emoteName) then
                    results[#results + 1] = { table = emoteData.emoteType, name = emoteName, data = emoteData }
                end
            end
        end

        if Config.SharedEmotesEnabled then
            for emoteName, emoteData in pairs(SharedEmoteData) do
                if matchesSearchTerm(emoteName, emoteData, input) then
                    results[#results + 1] = { table = EmoteType.SHARED, name = emoteName, data = emoteData }
                end
            end
        end

        if #results <= 0 then
            SimpleNotify(string.format(Translate('searchnoresult')..' ~r~%s~w~', input))
            return
        end

        local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format('%s '..Translate('searchmenudesc')..' ~r~%s~w~', #results, input), "", true, true)

        table.sort(results, function(a, b) return a.name < b.name end)
        for index, result in pairs(results) do
            local desc
            if result.table == EmoteType.SHARED then
                desc = formatSharedEmoteDescription(result.name, result.data.secondPlayersAnim)
            else
                desc = "/e (" .. result.name .. ")"
            end

            local hasPermission = HasEmotePermission(result.name, result.data.emoteType)
            local item
            if result.data.AnimationOptions and result.data.AnimationOptions.PropTextureVariations then
                item = NativeUI.CreateListItem(result.data.label, result.data.AnimationOptions.PropTextureVariations, 1, desc)
            else
                item = NativeUI.CreateItem(result.data.label, desc)
            end
            item:Enabled(hasPermission)
            searchMenu:AddItem(item)
        end

        searchMenu.OnMenuChanged = function()
            ShowPedMenu()
            -- Update CurrentMenuSelection for the first item and refresh scaleform
            if results[1] then
                CurrentMenuSelection = {name = results[1].name, emoteType = results[1].data.emoteType}
                searchMenu:UpdateScaleform()
            end
        end

        searchMenu.OnIndexChange = function(_, newindex)
            local result = results[newindex]

            -- Update CurrentMenuSelection for instruction buttons
            CurrentMenuSelection = {name = result.name, emoteType = result.data.emoteType}
            searchMenu:UpdateScaleform()

            -- Clear previous preview before updating LastEmote
            if hasClonedPed() and LastEmote.name ~= result.name then
                ClearPedTaskPreview()
            end

            -- Update LastEmote for the new preview
            LastEmote = {name = result.name, emoteType = result.data.emoteType}

            EmoteMenuStartClone(result.name, result.data.emoteType)
        end

        searchMenu.OnItemSelect = function(_, _, index)
            local data = results[index]
            handleEmoteSelection(data.name, data.table)
        end

        searchMenu.OnListSelect = function(_, item, itemIndex, listIndex)
            handleEmoteSelection(results[itemIndex].name, results[itemIndex].table, item:IndexToItem(listIndex).Value)
        end

        searchMenu.OnMenuClosed = function()
            searchMenu:Clear()
            lastMenu:RemoveItemAt(#lastMenu.Items)
            _menuPool:RefreshIndex()
            results = {}
            -- Clear CurrentMenuSelection and update instruction buttons when closing search
            CurrentMenuSelection = {}
            if lastMenu then
                lastMenu:UpdateScaleform()
            end
        end

        _menuPool:RefreshIndex()
        _menuPool:CloseAllMenus()
        searchMenu:Visible(true)

        -- Set CurrentMenuSelection for the first search result to show instruction buttons
        if results[1] then
            CurrentMenuSelection = {name = results[1].name, emoteType = results[1].data.emoteType}
            LastEmote = {name = results[1].name, emoteType = results[1].data.emoteType}
            searchMenu:UpdateScaleform()
        end

        ShowPedMenu()
        WaitForClonedPedThenPlayLastAnim()
    end
end

local function addCancelEmote(menu)
    local newitem = NativeUI.CreateItem(Translate('cancelemote'), Translate('cancelemoteinfo'))
    menu:AddItem(newitem)
    newitem.Activated = function()
        EmoteCancel()
        DestroyAllProps()
    end
end

---@class ResetableDataMenuConfig
---@field parent table The parent menu to attach this submenu to
---@field emoteType EmoteType The type of emote (WALKS or EXPRESSIONS)
---@field title string The menu title
---@field dataSource table<string, WalkData|ExpressionData> The data source containing the items
---@field onReset fun() Function to call when the reset item is selected
---@field onSelect fun(itemName: string) Function to call when a data item is selected

-- Generic builder for menus with reset functionality (walks, expressions, etc)
---@param input ResetableDataMenuConfig
local function addResetableDataMenu(input)
    createSubMenu(input.parent, input.emoteType, input.title)
    local menu = subMenus[input.emoteType]
    local resetItem = addResetMenuItem(menu.menu, menu.items, input.emoteType)

    -- Sort and add items
    local sortedItems = {}
    for name in pairs(input.dataSource) do
        sortedItems[#sortedItems + 1] = name
    end
    sortEmotesByLabel(sortedItems)

    for _, itemName in ipairs(sortedItems) do
        local data = input.dataSource[itemName]
        local label = data.label or itemName
        local description = input.emoteType == EmoteType.WALKS and string.format("/walk (%s)", string.lower(label)) or ""
        local hasPermission = HasEmotePermission(itemName, input.emoteType)
        local item = NativeUI.CreateItem(label, description)
        item:Enabled(hasPermission)
        menu.menu:AddItem(item)
        menu.items[#menu.items+1] = {name = itemName, emoteType = input.emoteType}
    end

    menu.menu.OnItemSelect = function(_, item, index)
        if item == resetItem then
            input.onReset()
        else
            local itemName = menu.items[index].name
            if not HasEmotePermission(itemName, input.emoteType) then
                local typeName = input.emoteType == EmoteType.WALKS and "walk" or "expression"
                EmoteChatMessage(string.format("You don't have permission to use this %s", typeName))
                return
            end
            input.onSelect(itemName)
        end
    end
end

local function addWalkMenu(menu)
    addResetableDataMenu({
        parent = menu,
        emoteType = EmoteType.WALKS,
        title = Translate('walkingstyles'),
        dataSource = WalkData,
        onReset = function()
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        end,
        onSelect = function(itemName)
            -- Check for keybind request (K key)
            if Config.Keybinding and IsControlPressed(2, 311) then
                dataForKeybind = {emoteName = itemName, emoteType = EmoteType.WALKS, label = itemName}
                RebuildKeybindEmoteMenu()
                keybindMenu.menu:Visible(true)
                return
            end
            dataForKeybind = {}
            WalkMenuStart(itemName)
        end
    })
end

local function addFaceMenu(menu)
    addResetableDataMenu({
        parent = menu,
        emoteType = EmoteType.EXPRESSIONS,
        title = Translate('moods'),
        dataSource = ExpressionData,
        onReset = function()
            DeleteResourceKvp(EmoteType.EXPRESSIONS)
            ClearFacialIdleAnimOverride(PlayerPedId())
        end,
        onSelect = function(expressionName)
            -- Check for keybind request (K key)
            if Config.Keybinding and IsControlPressed(2, 311) then
                dataForKeybind = {emoteName = expressionName, emoteType = EmoteType.EXPRESSIONS, label = expressionName}
                RebuildKeybindEmoteMenu()
                keybindMenu.menu:Visible(true)
                return
            end
            dataForKeybind = {}

            EmoteMenuStart(expressionName, nil, EmoteType.EXPRESSIONS)
        end
    })
end

local function addEmojiMenu(parent)
    if parent then -- Hack-job to allow us to use the same function for both creating and rebuilding the menu.
        createSubMenu(parent, "emojis", Translate("emojis"), Translate("emojisdescription"))
    end
    local menu = subMenus["emojis"]
    local sortedEmojis = {}
    for key, emoji in pairs(EmojiData) do
        sortedEmojis[#sortedEmojis + 1] = {key = key, emoji = emoji}
    end
    table.sort(sortedEmojis, function(a, b) return a.key < b.key end)

    for index, emojiData in pairs(sortedEmojis) do
        local label = emojiData.emoji .. " " .. emojiData.key:gsub("_", " ")
        local item = NativeUI.CreateItem(label, "")
        menu.menu:AddItem(item)
        menu.items[#menu.items+1] = {name = emojiData.key, label = label, emoteType = EmoteType.EMOJI, key = index}
    end

    menu.menu.OnItemSelect = function(_, __, index)
        -- Check for keybind request (K key)
        local item = menu.items[index]
        if Config.Keybinding and IsControlPressed(2, 311) then
            dataForKeybind = {emoteName = sortedEmojis[item.key].key, emoteType = EmoteType.EMOJI, label = sortedEmojis[item.key].emoji}
            RebuildKeybindEmoteMenu()
            keybindMenu.menu:Visible(true)
            return
        end
        dataForKeybind = {}

        ShowEmoji(sortedEmojis[item.key].key)
    end

    return menu
end

local function processMenu()
    if isMenuProcessing then return end
    isMenuProcessing = true
    mainMenu:UpdateScaleform()
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
        DisableControlAction(0, 36, true) -- Ducking, to not conflict with group emotes keybind
        if Config.DisableCombatInMenu then
            DisableControlAction(2, 25, true)
            DisablePlayerFiring(PlayerId(), true)
        end
        if IsControlJustPressed(2,121) then -- Set as Favorites
            if CurrentMenuSelection and CurrentMenuSelection.name and CurrentMenuSelection.emoteType then
                local emoteData = {
                    id = CurrentMenuSelection.emoteType.."_"..CurrentMenuSelection.name,
                    name = CurrentMenuSelection.name,
                    emoteType = CurrentMenuSelection.emoteType,
                    label = CurrentMenuSelection.label or CurrentMenuSelection.name,
                    textureVariation = CurrentMenuSelection.textureVariation or 1
                }
                ToggleFavoriteEmote(emoteData.id, emoteData)
                RebuildFavoritesEmoteMenu()
                local currentMenu = GetCurrentlyVisibleMenu()
                currentMenu:UpdateScaleform()
            end
        end
        Wait(0)
    end
    isMenuProcessing = false
end

local lastMenuOpenAttempt = 0

function OpenEmoteMenu()
    local now = GetGameTimer()
    if now - lastMenuOpenAttempt < 200 then return end
    lastMenuOpenAttempt = now

    local canEmote, errorMsg = canPlayerEmote()
    if not canEmote then
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"RPEmotes", errorMsg}
        })
        return
    end

    local placementState = GetPlacementState()

    if placementState == PlacementState.PREVIEWING or placementState == PlacementState.WALKING then return end

    local shouldHaveEmojiMenu = shouldShowEmojiMenu()
    local hasEmojiMenu = subMenus["emojis"] ~= nil

    if hasEmojiMenu ~= shouldHaveEmojiMenu then
        RebuildEmoteMenu()
    end
    if Config.Keybinding then
        RebuildKeybindEmoteMenu()
    end

    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
    else
        -- Clean up any existing preview before opening
        if hasClonedPed() then
            ClosePedMenu()
        end
        mainMenu:Visible(true)
        processMenu()
    end
end

---@param emoteName string
---@param emote EmoteData
local function convertToEmoteData(emoteName, emote)
    local arraySize = 0
    for i = 1, 4 do
        if emote[i] then
            arraySize += 1
        end
    end

    if arraySize == 1 then
        emote.anim = emote[1]
        emote.label = emoteName
    elseif arraySize == 2 then
        emote.anim = emote[1]
        emote.label = emote[2]
    elseif arraySize >= 3 then
        local type = emote[1]
        if type == ScenarioType.MALE or type == ScenarioType.SCENARIO or type == ScenarioType.OBJECT then
            emote.scenario = emote[2]
            emote.scenarioType = type
        else
            emote.dict = emote[1]
            emote.anim = emote[2]
            emote.secondPlayersAnim = emote[4]
        end

        emote.label = emote[3]
    end

    local animOptions = emote.AnimationOptions
    if animOptions and not animOptions.onFootFlag then
        if animOptions.EmoteMoving then
            animOptions.onFootFlag = AnimFlag.MOVING
        elseif animOptions.EmoteLoop then
            animOptions.onFootFlag = AnimFlag.LOOP
        elseif animOptions.EmoteStuck then
            animOptions.onFootFlag = AnimFlag.STUCK
        end
    end

    if animOptions and animOptions.Attachto then
        animOptions.pos = animOptions.pos
            or vector3(animOptions.xPos or 0.0, animOptions.yPos or 0.0, animOptions.zPos or 0.0)
        animOptions.rot = animOptions.rot
            or vector3(animOptions.xRot or 0.0, animOptions.yRot or 0.0, animOptions.zRot or 0.0)
    end

    if animOptions and not animOptions.vehicleRequirement then
        if animOptions.NotInVehicle then
            animOptions.vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        elseif animOptions.onlyInVehicle then
            animOptions.vehicleRequirement = VehicleRequirement.REQUIRED
        end
    end

    if animOptions and (animOptions.SyncOffsetSide
        or animOptions.SyncOffsetFront
        or animOptions.SyncOffsetHeight
        or animOptions.SyncOffsetHeading)
    then
        animOptions.syncOffset = vector4(
            animOptions.SyncOffsetSide or 0.0,
            animOptions.SyncOffsetFront or 1.0,
            animOptions.SyncOffsetHeight or 0.0,
            animOptions.SyncOffsetHeading or 180.0)
    end
end

local function convertRP()
    local newRP = {}
    assert(RP ~= nil)
    for emoteType, content in pairs(RP) do
        for emoteName, emoteData in pairs(content) do
            if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
                goto continue
            end

            if Config.AbusableEmotesDisabled and emoteData.abusable then
                goto continue
            end

            if emoteType == EmoteType.EXPRESSIONS then
                if ExpressionData[emoteName] then
                    print(string.format("WARNING - Duplicate expression name found: %s", emoteName))
                end
                emoteData.anim = emoteData[1]
                emoteData.label = emoteData[2] or emoteName
                ExpressionData[emoteName] = emoteData
            elseif emoteType == EmoteType.WALKS then
                if WalkData[emoteName] then
                    print(string.format("WARNING - Duplicate walk name found: %s", emoteName))
                end
                emoteData.anim = emoteData[1]
                emoteData.label = emoteData[2] or emoteName
                WalkData[emoteName] = emoteData
            elseif emoteType == EmoteType.SHARED then
                if SharedEmoteData[emoteName] then
                    print(string.format("WARNING - Duplicate shared emote name found: %s", emoteName))
                end

                if type(emoteData) == "table" then
                    local sharedEmote = {}
                    for k, v in pairs(emoteData) do
                        sharedEmote[k] = v
                    end
                    sharedEmote.emoteType = emoteType
                    convertToEmoteData(emoteName, sharedEmote)
                    SharedEmoteData[emoteName] = sharedEmote
                end
            else
                if newRP[emoteName] then
                    print(string.format(
                        "WARNING - Duplicate emote name found: %s in %s and %s",
                        emoteName, emoteType, newRP[emoteName].emoteType
                    ))
                end

                if type(emoteData) == "table" then
                    newRP[emoteName] = {}
                    for k, v in pairs(emoteData) do
                        newRP[emoteName][k] = v
                    end
                else
                    newRP[emoteName] = {emoteData}
                end

                newRP[emoteName].emoteType = emoteType
                convertToEmoteData(emoteName, newRP[emoteName])
            end
            ::continue::
        end
    end
    EmoteData = newRP

    -- Expand custom categories after EmoteData is populated
    categoryToEmotes = expandCustomCategories()

    RP = nil
    CONVERTED = true
end

function InitMenu()
    while not (GetFavoriteEmotes and EmojiData and WalkMenuStart and GetKeyForCommand) do
        Wait(100)
    end

    addEmoteMenu(mainMenu)
    addCancelEmote(mainMenu)
    if Config.Keybinding then
        keybindMenu = addKeybindMenu(mainMenu)
    end
    favoriteMenu = addFavoritesMenu(mainMenu)
    if Config.WalkingStylesEnabled then
        addWalkMenu(mainMenu)
    end
    if Config.ExpressionsEnabled then
        addFaceMenu(mainMenu)
    end
    if shouldShowEmojiMenu() then
        addEmojiMenu(mainMenu)
    end

    mainMenu.OnIndexChange = function()
        onMenuItemHover(mainMenu)
    end

    mainMenu.OnMenuChanged = function(oldMenu, newMenu, forward)
        onMenuItemHover(newMenu)
    end

    mainMenu.OnMenuClosed = function()
        ClosePedMenu()
    end
    _menuPool:RefreshIndex()
end

function RebuildEmoteMenu()
    -- Close all menus if open
    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
    end

    -- Clear all submenus from the main menu
    for i = #mainMenu.Items, 1, -1 do
        mainMenu:RemoveItemAt(i)
    end

    -- Reset main menu selection to avoid index out of bounds
    mainMenu.ActiveItem = 1000

    -- Clear the subMenus tracking table
    subMenus = {}

    -- Rebuild the menu
    InitMenu()

    DebugPrint("Menu rebuilt for model compatibility")
end

function RebuildKeybindEmoteMenu()
    if not Config.Keybinding or not keybindMenu then
        return
    end

    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
    end

    -- Clear all the items from the menu
    for i = #keybindMenu.menu.Items, 1, -1 do
        keybindMenu.menu:RemoveItemAt(i)
    end

    -- Reset menu selection to avoid index out of bounds
    keybindMenu.menu.ActiveItem = 1000

    -- Rebuild the menu
    keybindMenu = addKeybindMenu()

    DebugPrint("Keybind Menu rebuilt at runtime")
end

function RebuildFavoritesEmoteMenu()
    local cacheActiveItem = favoriteMenu.menu:CurrentSelection()
    -- Clear all the items from the menu
    for i = #favoriteMenu.menu.Items, 1, -1 do
        favoriteMenu.menu:RemoveItemAt(i)
    end
    favoriteMenu.items = {}

    -- Reset menu selection to avoid index out of bounds
    favoriteMenu.menu.ActiveItem = 1000

    -- Rebuild the menu
    favoriteMenu = addFavoritesMenu()
    if #favoriteMenu.items > 0 then
        if favoriteMenu.items[cacheActiveItem] then
            -- There is still an item at the cached index, so select it.
            favoriteMenu.menu:CurrentSelection(cacheActiveItem)
        else
            -- If there are no items at the cached index, select the last item in the menu.
            favoriteMenu.menu:CurrentSelection(#favoriteMenu.items)
        end

        -- We use the internal NativeUI functions to simulate a menu update.
        -- Otherwise NativeUI wont't be able to update the menu, until the player does any action,
        -- because :CurrentSelection() function doesn't update it by default.
        if favoriteMenu.menu.ActiveItem > 1 then
            favoriteMenu.menu:GoUp()
        else
            favoriteMenu.menu:GoDown()
        end
    else
        -- No emotes to select. Clear the cached emote data.
        CurrentMenuSelection = {}
    end

    DebugPrint("Favorite Menu rebuilt at runtime")
end

CreateThread(function()
    LoadAddonEmotes()
    convertRP()

    -- Request permissions from server before creating menu
    -- The menu will be initialized when permissions are received in Utils.lua
    TriggerServerEvent('rpemotes:server:requestPermissions')
    DebugPrint("[rpemotes] Requested permission manifest from server")
end)

local idleCamActive = false

CreateThread(function()
    while true do
        Wait(500)
        -- While ped is dead or swimming, don't show menus
        local canEmote, _ = canPlayerEmote()
        if not canEmote then
            if IsInAnimation then
                EmoteCancel()
            end
            _menuPool:CloseAllMenus()
            ClosePedMenu()  -- Clean up the preview ped
        end

        if Config.PreviewPed then
            local camIsIdle = IsCinematicIdleCamRendering()

            if not idleCamActive and camIsIdle then
                idleCamActive = true

                ClosePedMenu()
            elseif idleCamActive and not camIsIdle then
                idleCamActive = false

                if _menuPool:IsAnyMenuOpen() then
                    -- Only recreate ped if it doesn't exist
                    if not hasClonedPed() then
                        ShowPedMenu()

                        if LastEmote.name then
                            WaitForClonedPedThenPlayLastAnim()
                        end
                    end
                end
            end
        end
    end
end)

function WaitForClonedPedThenPlayLastAnim()
    -- Prevent multiple concurrent threads
    if isWaitingForPed then
        return
    end

    isWaitingForPed = true
    CreateThread(function()
        local timeout = GetGameTimer() + 1500

        while GetGameTimer() < timeout and not hasClonedPed() do
            Wait(50)
        end

        if hasClonedPed() and LastEmote.name then
            EmoteMenuStartClone(LastEmote.name, LastEmote.emoteType)
        end

        isWaitingForPed = false
    end)
end

function CloseAllMenus() _menuPool:CloseAllMenus() end

function GetCurrentlyVisibleMenu()
    for _, menu in pairs(_menuPool.Menus) do
        if menu:Visible() then
            return menu
        end
    end
end

function ProcessEmoteMenu()
    if isMenuProcessing then return end
    isMenuProcessing = true
    if _menuPool:IsAnyMenuOpen() then
        local currentMenu = GetCurrentlyVisibleMenu()
        if currentMenu then
            currentMenu:UpdateScaleform()
        end
    end
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
        DisableControlAction(0, 36, true) -- Ducking, to not conflict with group emotes keybind
        if Config.DisableCombatInMenu then
            DisableControlAction(2, 25, true)
            DisablePlayerFiring(PlayerId(), true)
        end
        Wait(0)
    end
    isMenuProcessing = false
end
