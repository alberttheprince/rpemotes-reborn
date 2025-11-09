---@type table<string, EmoteData>
EmoteData = {}

---@type table<string, SharedEmoteData>
SharedEmoteData = {}

---@type table<string, ExpressionData>
ExpressionData = {}

---@type table<string, WalkData>
WalkData = {}

local isSearching = false
local isMenuProcessing = false
local isWaitingForPed = false

-- Helper functions
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
end

local function isEmoteTypePlayable(emoteType)
    return emoteType == EmoteType.DANCES
        or emoteType == EmoteType.ANIMAL_EMOTES
        or emoteType == EmoteType.PROP_EMOTES
        or emoteType == EmoteType.EMOTES
end

-- Helper function to add emote item to menu
local function addEmoteToMenu(menu, items, emoteName, label, description, emoteType)
    menu:AddItem(NativeUI.CreateItem(label, description))
    items[#items+1] = {name = emoteName, emoteType = emoteType}
end

-- Helper function to format shared emote description
local function formatSharedEmoteDescription(emoteName, secondPlayersAnim)
    if secondPlayersAnim == nil then
        return string.format("/nearby (~g~%s~w~)", emoteName)
    else
        return string.format("/nearby (~g~%s~w~) %s (~y~%s~w~)", emoteName, Translate('makenearby'), secondPlayersAnim)
    end
end

-- Helper function to get menu position based on config
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

-- Helper function to check if emote matches search term
local function matchesSearchTerm(emoteName, emoteData, searchTerm)
    local lowerSearch = string.lower(searchTerm)
    if string.find(string.lower(emoteName), lowerSearch) then
        return true
    end
    if emoteData.label and string.find(string.lower(emoteData.label), lowerSearch) then
        return true
    end
    return false
end

-- Helper function to add reset menu item
local function addResetMenuItem(menu, items, emoteType)
    local resetItem = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    menu:AddItem(resetItem)
    items[#items+1] = {name = Translate('resetdef'), emoteType = emoteType}
    return resetItem
end

-- Helper function to get emote data from the appropriate table based on type
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

-- Helper function to get label for an emote based on its name and type
---@param emoteItem string|{name: string, emoteType: EmoteType}
---@return string
local function getEmoteLabel(emoteItem)
    local emoteName = type(emoteItem) == "table" and emoteItem.name or emoteItem
    local emoteType = type(emoteItem) == "table" and emoteItem.emoteType or nil

    local data = getEmoteData(emoteName, emoteType)
    return data and data.label or emoteName
end

-- Helper function to sort emotes by label alphabetically (case-insensitive)
-- Can accept either string[] or {name: string, emoteType: EmoteType}[]
local function sortEmotesByLabel(emotes)
    table.sort(emotes, function(a, b)
        local labelA = getEmoteLabel(a)
        local labelB = getEmoteLabel(b)
        return string.lower(labelA) < string.lower(labelB)
    end)
end

-- Helper function to expand EmoteTypes in CustomCategories to actual emote names
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

local emojiSubmenu -- Store reference to emoji submenu for dynamic visibility based on ped type

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

-- Configuration for how different emote types are displayed in the menu
local EMOTE_TYPE_CONFIG = {
    [EmoteType.EMOTES] = {
        enabled = true,
        prefix = "",
        formatDescription = function(emoteName)
            return string.format("/e (%s)", emoteName)
        end,
        addToMenu = function(menu, items, emoteName, data)
            addEmoteToMenu(menu, items, emoteName, data.label, string.format("/e (%s)", emoteName), data.emoteType)
        end
    },
    [EmoteType.DANCES] = {
        enabled = true,
        prefix = "🤼 ",
        formatDescription = function(emoteName)
            return string.format("/e (%s)", emoteName)
        end,
        addToMenu = function(menu, items, emoteName, data)
            local label = '🤼 ' .. data.label
            addEmoteToMenu(menu, items, emoteName, label, string.format("/e (%s)", emoteName), data.emoteType)
        end
    },
    [EmoteType.ANIMAL_EMOTES] = {
        enabled = function() return Config.AnimalEmotesEnabled end,
        prefix = "🐶 ",
        formatDescription = function(emoteName)
            return string.format("/e (%s)", emoteName)
        end,
        addToMenu = function(menu, items, emoteName, data)
            if Config.AnimalEmotesEnabled then
                local name = '🐶 ' .. data.label
                addEmoteToMenu(menu, items, emoteName, name, string.format("/e (%s)", emoteName), data.emoteType)
            end
        end
    },
    [EmoteType.SHARED] = {
        enabled = function() return Config.SharedEmotesEnabled end,
        prefix = "",
        formatDescription = function(emoteName, data)
            return formatSharedEmoteDescription(emoteName, data.secondPlayersAnim)
        end,
        addToMenu = function(menu, items, emoteName, data)
            if Config.SharedEmotesEnabled then
                local desc = formatSharedEmoteDescription(emoteName, data.secondPlayersAnim)
                local shareitem = NativeUI.CreateItem(data.label, desc)
                menu:AddItem(shareitem)
                items[#items+1] = {name = emoteName, emoteType = data.emoteType}
            end
        end
    },
    [EmoteType.PROP_EMOTES] = {
        enabled = true,
        prefix = "📦 ",
        formatDescription = function(emoteName)
            return string.format("/e (%s)", emoteName)
        end,
        addToMenu = function(menu, items, emoteName, data)
            local name = '📦 ' .. data.label
            local propitem = data.AnimationOptions.PropTextureVariations and
                NativeUI.CreateListItem(name, data.AnimationOptions.PropTextureVariations, 1, string.format("/e (%s)", emoteName)) or
                NativeUI.CreateItem(name, string.format("/e (%s)", emoteName))
            menu:AddItem(propitem)
            items[#items+1] = {name = emoteName, emoteType = data.emoteType}
        end
    }
}

local function sendSharedEmoteRequest(emoteName)
    local target, distance = GetClosestPlayer()
    if (distance ~= -1 and distance < 3) then
        TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emoteName)
        SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
    else
        SimpleNotify(Translate('nobodyclose'))
    end
end

-- Unified handler for emote selection from menus
---@param emoteName string
---@param emoteType EmoteType
---@param textureVariation? any Optional texture variation for prop emotes
---@return boolean Returns true if the emote was handled successfully
local function handleEmoteSelection(emoteName, emoteType, textureVariation)
    local emote = getEmoteData(emoteName, emoteType)
    if not emote then return false end

    if not HasEmotePermission(emoteName, emoteType) then
        EmoteChatMessage("You don't have permission to use this emote")
        return false
    end

    if emote.emoteType == EmoteType.SHARED then
        sendSharedEmoteRequest(emoteName)
        return true
    end

    if isEmoteTypePlayable(emote.emoteType) then
        local shiftHeld = IsControlPressed(0, 21)
        local placementState = GetPlacementState()

        if shiftHeld and placementState ~= PlacementState.PREVIEWING and placementState ~= PlacementState.WALKING then
            StartNewPlacement(emoteName)
            return true
        end

        EmoteMenuStart(emoteName, textureVariation, emoteType)
        return true
    end

    return false
end

local function hidePreview()
    LastEmote = {}

    if hasClonedPed() then
        ClosePedMenu()
    end

end

--- Unified handler that updates the ped preview based on the currently active menu and selection
--- Determines which menu is active, what item is selected, and shows/hides preview accordingly
---@param currentMenu table The menu to check for preview
local function updatePedPreview(currentMenu)
    if not currentMenu or currentMenu == mainMenu then
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
        hidePreview()
        return
    end

    -- Get the current selection
    local currentIndex = currentMenu:CurrentSelection()
    if not currentIndex or not subMenuData.items[currentIndex] then
        hidePreview()
        return
    end

    local emoteName = subMenuData.items[currentIndex].name
    local emoteType = subMenuData.items[currentIndex].emoteType
    --- Don't preview SHARED emotes
    if emoteType == EmoteType.SHARED then hidePreview() return end
    local emote = EmoteData[emoteName]

    -- Check if the selected item is a previewable emote
    if emoteType == EmoteType.EXPRESSIONS or (emote and isEmoteTypePreviewable(emote.emoteType)) then
        -- Check if we're already showing this exact emote - if so, do nothing
        if LastEmote.name == emoteName and hasClonedPed() then
            return
        end

        -- Show this emote
        if hasClonedPed() then
            -- Ped exists, just switch animation
            ClearPedTaskPreview()
            LastEmote = {
                name = emoteName,
                emoteType = emoteType,
            }
            EmoteMenuStartClone(emoteName, emoteType)
        else
            -- Ped doesn't exist, create it
            LastEmote = {
                name = emoteName,
                emoteType = emoteType,
            }
            ShowPedMenu()
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

    menu:AddInstructionButton({GetControlInstructionalButton(2,176), GetControlInstructionalButton(2,36), Translate('btn_groupselect')})

    menu.OnIndexChange = function(_, newIndex)
        updatePedPreview(menu)
    end

    menu.OnItemSelect = function(_, _, index)
        if Config.Search and items[index].name == Translate('searchemotes') then
            EmoteMenuSearch(menu)
            return
        end

        local emoteName = items[index].name
        local emote = items[index].emoteType == EmoteType.SHARED and SharedEmoteData[emoteName] or EmoteData[emoteName]
        if not emote then return end

        if not HasEmotePermission(emoteName, items[index].emoteType) then
            EmoteChatMessage("You don't have permission to use this emote")
            return
        end

        if IsDisabledControlPressed(0, 36) and isEmoteTypePlayable(emote.emoteType) then
            OnGroupEmoteRequest(emoteName)
        elseif isEmoteTypePlayable(emote.emoteType) then
            local shiftHeld = IsControlPressed(0, 21)
            local placementState = GetPlacementState()

            if shiftHeld and placementState ~= PlacementState.PREVIEWING and placementState ~= PlacementState.WALKING then
                StartNewPlacement(items[index].name)
                return
            end

            EmoteMenuStart(items[index].name, nil, items[index].emoteType)
        elseif emote.emoteType == EmoteType.SHARED then
            sendSharedEmoteRequest(items[index].name)
        end
    end

    menu.OnListSelect = function(_, item, itemIndex, listIndex)
        local emoteName = items[itemIndex].name
        local emote = EmoteData[emoteName]
        if not emote then return end
        if emote.emoteType ~= EmoteType.PROP_EMOTES then return end
        handleEmoteSelection(emoteName, items[itemIndex].emoteType, item:IndexToItem(listIndex).Value)
    end

    menu.OnMenuChanged = function(oldMenu, newMenu, forward)
        updatePedPreview(newMenu)
    end

    local subMenu = {
        menu = menu,
        items = items,
    }
    subMenus[category] = subMenu
    return subMenu
end

local function addEmoteMenu(menu)
    local emoteMenu = createSubMenu(menu, EmoteType.EMOTES, Translate('emotes'))
    if Config.Search then
        emoteMenu.menu:AddItem(NativeUI.CreateItem(Translate('searchemotes'), ""))
        emoteMenu.items[#emoteMenu.items+1] = {name = Translate('searchemotes'), emoteType = EmoteType.EMOTES}
    end

    if Config.Keybinding then
        emoteMenu.items[#emoteMenu.items+1] = {name = "keybinds", emoteType = EmoteType.EMOTES}
        emoteMenu.menu:AddItem(NativeUI.CreateItem(Translate('keybinds'), Translate('keybindsinfo') .. " /emotebind [~y~num4-9~w~] [~g~emotename~w~]"))
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
                    local config = EMOTE_TYPE_CONFIG[data.emoteType]
                    if config and config.addToMenu then
                        -- Check if this type is enabled
                        local enabled = type(config.enabled) == "function" and config.enabled() or config.enabled
                        if enabled then
                            config.addToMenu(categoryMenu.menu, categoryMenu.items, emoteName, data)
                        end
                    end
                end
            end
        end
    end


    -- Put all the emotes with EmoteType.EMOTES within the emotes category
    local emotesList = {}
    for emoteName, data in pairs(EmoteData) do
        if data.emoteType == EmoteType.EMOTES then
            emotesList[#emotesList + 1] = emoteName
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
                results[#results + 1] = { table = emoteData.emoteType, name = emoteName, data = emoteData }
            end
        end

        if #results <= 0 then
            SimpleNotify(string.format(Translate('searchnoresult')..' ~r~%s~w~', input))
            return
        end

        isSearching = true

        local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format('%s '..Translate('searchmenudesc')..' ~r~%s~w~', #results, input), "", true, true)

        table.sort(results, function(a, b) return a.name < b.name end)
        for index, result in pairs(results) do
            if index == 1 then LastEmote = {name = result.name, emoteType = result.emoteType} end

            local desc
            if result.table == EmoteType.SHARED then
                desc = formatSharedEmoteDescription(result.name, result.data.secondPlayersAnim)
            else
                desc = "/e (" .. result.name .. ")"
            end

            if result.data.AnimationOptions and result.data.AnimationOptions.PropTextureVariations then
                searchMenu:AddItem(NativeUI.CreateListItem(result.data.label, result.data.AnimationOptions.PropTextureVariations, 1, desc))
            else
                searchMenu:AddItem(NativeUI.CreateItem(result.data.label, desc))
            end
        end

        searchMenu.OnMenuChanged = function()
            isSearching = false
            ShowPedMenu()
        end

        searchMenu.OnIndexChange = function(_, newindex)
            local data = results[newindex]

            ClearPedTaskPreview()
            EmoteMenuStartClone(data.name, data.emoteType)
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
        end

        _menuPool:RefreshIndex()
        _menuPool:CloseAllMenus()
        searchMenu:Visible(true)
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

-- Generic builder for menus with reset functionality (walks, expressions, etc)
local function addResetableDataMenu(parent, emoteType, title, dataSource, resetHandler, selectHandler)
    createSubMenu(parent, emoteType, title)
    local menu = subMenus[emoteType]
    local resetItem = addResetMenuItem(menu.menu, menu.items, emoteType)

    -- Sort and add items
    local sortedItems = {}
    for name in pairs(dataSource) do
        sortedItems[#sortedItems + 1] = name
    end
    sortEmotesByLabel(sortedItems)

    for _, itemName in ipairs(sortedItems) do
        local data = dataSource[itemName]
        local label = data.label or itemName
        local description = emoteType == EmoteType.WALKS and string.format("/walk (%s)", string.lower(label)) or ""
        menu.menu:AddItem(NativeUI.CreateItem(label, description))
        menu.items[#menu.items+1] = {name = itemName, emoteType = emoteType}
    end

    -- Setup OnItemSelect handler
    menu.menu.OnItemSelect = function(_, item, index)
        if item == resetItem then
            resetHandler()
        else
            local itemName = menu.items[index].name
            if not HasEmotePermission(itemName, emoteType) then
                local typeName = emoteType == EmoteType.WALKS and "walk" or "expression"
                EmoteChatMessage(string.format("You don't have permission to use this %s", typeName))
                return
            end
            selectHandler(itemName)
        end
    end
end

local function addWalkMenu(menu)
    addResetableDataMenu(
        menu,
        EmoteType.WALKS,
        Translate('walkingstyles'),
        WalkData,
        function()
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        end,
        WalkMenuStart
    )
end

local function addFaceMenu(menu)
    addResetableDataMenu(
        menu,
        EmoteType.EXPRESSIONS,
        Translate('moods'),
        ExpressionData,
        function()
            DeleteResourceKvp(EmoteType.EXPRESSIONS)
            ClearFacialIdleAnimOverride(PlayerPedId())
        end,
        function(expressionName)
            EmoteMenuStart(expressionName, nil, EmoteType.EXPRESSIONS)
        end
    )
    -- Override the first item to be empty string instead of 'resetdef'
    local faceMenu = subMenus[EmoteType.EXPRESSIONS]
    faceMenu.items[1] = {name = "", emoteType = EmoteType.EXPRESSIONS}
end

local function addEmojiMenu(menu)
    if not Config.EmojiMenuEnabled then return end

    emojiSubmenu = _menuPool:AddSubMenu(menu, Translate('emojis'), Translate('emojisdescription'), true, true)
    emojiSubmenu:SetMenuWidthOffset(45)

    local sortedEmojis = {}
    for key, emoji in pairs(EmojiData) do
        sortedEmojis[#sortedEmojis + 1] = {key = key, emoji = emoji}
    end
    table.sort(sortedEmojis, function(a, b) return a.key < b.key end)

    for _, emojiData in ipairs(sortedEmojis) do
        local displayName = emojiData.emoji .. " " .. emojiData.key:gsub("_", " ")
        local item = NativeUI.CreateItem(displayName, "")
        emojiSubmenu:AddItem(item)

        item.Activated = function(parentMenu, item)
            ShowEmoji(emojiData.key)
        end
    end
end

local function updateEmojiMenuAvailability()
    if not Config.EmojiMenuEnabled then return end
    if not Config.EmojiMenuAnimalsOnly then return end
    if not emojiSubmenu then return end

    local playerPed = PlayerPedId()
    local isHuman = IsPedHuman(playerPed)

    emojiSubmenu:Enabled(not isHuman)
end

local function processMenu()
    if isMenuProcessing then return end
    isMenuProcessing = true
    mainMenu:UpdateScaleform()
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
        DisableControlAction(0, 36, true) -- Ducking, to not conflict with group emotes keybind
        Wait(0)
    end
    isMenuProcessing = false
end

function OpenEmoteMenu()
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

    updateEmojiMenuAvailability()

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

local function initMenu()
    addEmoteMenu(mainMenu)
    addCancelEmote(mainMenu)
    if Config.WalkingStylesEnabled then
        addWalkMenu(mainMenu)
    end
    if Config.ExpressionsEnabled then
        addFaceMenu(mainMenu)
    end
    if Config.EmojiMenuEnabled then
        addEmojiMenu(mainMenu)
    end

    mainMenu.OnIndexChange = function()
        updatePedPreview(mainMenu)
    end

    mainMenu.OnMenuChanged = function(oldMenu, newMenu, forward)
        updatePedPreview(newMenu)
    end

    mainMenu.OnMenuClosed = function()
        ClosePedMenu()
    end
    _menuPool:RefreshIndex()
end

CreateThread(function()
    LoadAddonEmotes()
    convertRP()
    initMenu()

    -- Request permissions from server after menu is created
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