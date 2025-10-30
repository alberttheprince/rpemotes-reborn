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

-- Helper function to sort emotes by label alphabetically (case-insensitive)
-- Can accept either string[] or {name: string, emoteType: EmoteType}[]
local function sortEmotesByLabel(emotes)
    table.sort(emotes, function(a, b)
        local nameA, nameB, labelA, labelB

        -- Check if we're working with objects or strings
        if type(a) == "table" then
            nameA = a.name
            -- Get label from appropriate table based on emoteType
            if a.emoteType == EmoteType.SHARED then
                labelA = SharedEmoteData[nameA] and SharedEmoteData[nameA].label or nameA
            elseif a.emoteType == EmoteType.EXPRESSIONS then
                labelA = ExpressionData[nameA] and ExpressionData[nameA].label or nameA
            elseif a.emoteType == EmoteType.WALKS then
                labelA = WalkData[nameA] and WalkData[nameA].label or nameA
            else
                labelA = EmoteData[nameA] and EmoteData[nameA].label or nameA
            end
        else
            nameA = a
            labelA = EmoteData[nameA] and EmoteData[nameA].label or nameA
        end

        if type(b) == "table" then
            nameB = b.name
            -- Get label from appropriate table based on emoteType
            if b.emoteType == EmoteType.SHARED then
                labelB = SharedEmoteData[nameB] and SharedEmoteData[nameB].label or nameB
            elseif b.emoteType == EmoteType.EXPRESSIONS then
                labelB = ExpressionData[nameB] and ExpressionData[nameB].label or nameB
            elseif b.emoteType == EmoteType.WALKS then
                labelB = WalkData[nameB] and WalkData[nameB].label or nameB
            else
                labelB = EmoteData[nameB] and EmoteData[nameB].label or nameB
            end
        else
            nameB = b
            labelB = EmoteData[nameB] and EmoteData[nameB].label or nameB
        end

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

local function sendSharedEmoteRequest(emoteName)
    local target, distance = GetClosestPlayer()
    if (distance ~= -1 and distance < 3) then
        TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emoteName)
        SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
    else
        SimpleNotify(Translate('nobodyclose'))
    end
end

local function hidePreview()
    LastEmoteName = nil

    if ClonedPed and DoesEntityExist(ClonedPed) then
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
        if LastEmote.name == emoteName and ClonedPed and DoesEntityExist(ClonedPed) then
            return
        end

        -- Show this emote
        if ClonedPed and DoesEntityExist(ClonedPed) then
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

        if isEmoteTypePlayable(emote.emoteType) then
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
        EmoteMenuStart(items[itemIndex].name, item:IndexToItem(listIndex).Value, items[itemIndex].emoteType)
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
                local data = emoteType == EmoteType.SHARED and SharedEmoteData[emoteName] or EmoteData[emoteName]

                if data then
                    if data.emoteType == EmoteType.EMOTES then
                        addEmoteToMenu(categoryMenu.menu, categoryMenu.items, emoteName, data.label, string.format("/e (%s)", emoteName), data.emoteType)
                    elseif data.emoteType == EmoteType.DANCES then
                        local label = '🤼 ' .. data.label
                        addEmoteToMenu(categoryMenu.menu, categoryMenu.items, emoteName, label, string.format("/e (%s)", emoteName), data.emoteType)
                    elseif data.emoteType == EmoteType.ANIMAL_EMOTES then
                        if Config.AnimalEmotesEnabled then
                            local name = '🐶 ' .. data.label
                            addEmoteToMenu(categoryMenu.menu, categoryMenu.items, emoteName, name, string.format("/e (%s)", emoteName), data.emoteType)
                        end
                    elseif data.emoteType == EmoteType.SHARED then
                        if Config.SharedEmotesEnabled then
                            local desc = formatSharedEmoteDescription(emoteName, data.secondPlayersAnim)
                            local shareitem = NativeUI.CreateItem(data.label, desc)
                            categoryMenu.menu:AddItem(shareitem)
                            categoryMenu.items[#categoryMenu.items+1] = {name = emoteName, emoteType = data.emoteType}
                        end
                    elseif data.emoteType == EmoteType.PROP_EMOTES then
                        local name = '📦 ' .. data.label
                        local propitem = data.AnimationOptions.PropTextureVariations and
                            NativeUI.CreateListItem(name, data.AnimationOptions.PropTextureVariations, 1, string.format("/e (%s)", emoteName)) or
                            NativeUI.CreateItem(name, string.format("/e (%s)", emoteName))
                        categoryMenu.menu:AddItem(propitem)
                        categoryMenu.items[#categoryMenu.items+1] = {name = emoteName, emoteType = data.emoteType}
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

            if data.table == EmoteType.SHARED then
                sendSharedEmoteRequest(data.name)
            else
                local shiftHeld = IsControlPressed(0, 21)
                local placementState = GetPlacementState()

                if shiftHeld and placementState ~= PlacementState.PREVIEWING and placementState ~= PlacementState.WALKING then
                    StartNewPlacement(data.name)
                    return
                end

                EmoteMenuStart(data.name, nil, data.emoteType)
            end
        end

        searchMenu.OnListSelect = function(_, item, itemIndex, listIndex)
            EmoteMenuStart(results[itemIndex].name, item:IndexToItem(listIndex).Value, results[itemIndex].emoteType)
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

-- TODO: merge with main iterating for loop for menu initialization.
local function addWalkMenu(menu)
    createSubMenu(menu, EmoteType.WALKS, Translate('walkingstyles'))
    local walkMenu = subMenus[EmoteType.WALKS]
    local walkreset = addResetMenuItem(walkMenu.menu, walkMenu.items, EmoteType.WALKS)

    local sortedWalks = {}
    for walkName, data in pairs(WalkData) do
        sortedWalks[#sortedWalks + 1] = {name = walkName, label = data.label, anim = data.anim}
    end

    -- Sort walking styles alphabetically by label (case-insensitive)
    table.sort(sortedWalks, function(a, b)
        return string.lower(a.label) < string.lower(b.label)
    end)

    for _, walk in ipairs(sortedWalks) do
        if not walk.label then
            print('missing label', json.encode(walk))
        end
        walkMenu.menu:AddItem(NativeUI.CreateItem(walk.label, string.format("/walk (%s)", string.lower(walk.label))))
        walkMenu.items[#walkMenu.items+1] = {name = walk.name, emoteType = EmoteType.WALKS}
    end

    walkMenu.menu.OnItemSelect = function(_, item, index)
        if item == walkreset then
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        else
            WalkMenuStart(walkMenu.items[index].name)
        end
    end
end

-- TODO: merge with main iterating for loop for menu initialization.
local function addFaceMenu(menu)
    createSubMenu(menu, EmoteType.EXPRESSIONS, Translate('moods'))
    local faceMenu = subMenus[EmoteType.EXPRESSIONS]
    local facereset = addResetMenuItem(faceMenu.menu, faceMenu.items, EmoteType.EXPRESSIONS)
    -- Override the last item to be empty string instead of 'resetdef'
    faceMenu.items[#faceMenu.items] = {name = "", emoteType = EmoteType.EXPRESSIONS}

    local expressionsList = {}
    for emoteName in pairs(ExpressionData) do
        expressionsList[#expressionsList + 1] = emoteName
    end
    sortEmotesByLabel(expressionsList)
    for _, emoteName in ipairs(expressionsList) do
        local data = ExpressionData[emoteName]
        local faceitem = NativeUI.CreateItem(data.label or emoteName, "")
        faceMenu.menu:AddItem(faceitem)
        faceMenu.items[#faceMenu.items+1] = {name = emoteName, emoteType = EmoteType.EXPRESSIONS}
    end

    faceMenu.menu.OnItemSelect = function(_, item, index)
        if item == facereset then
            DeleteResourceKvp(EmoteType.EXPRESSIONS)
            ClearFacialIdleAnimOverride(PlayerPedId())
        else
            EmoteMenuStart(faceMenu.items[index].name, nil, EmoteType.EXPRESSIONS)
        end
    end
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
    while _menuPool:IsAnyMenuOpen() do
        _menuPool:ProcessMenus()
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
        if ClonedPed and DoesEntityExist(ClonedPed) then
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
                    if not ClonedPed or not DoesEntityExist(ClonedPed) then
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

        while GetGameTimer() < timeout and (not ClonedPed or not DoesEntityExist(ClonedPed)) do
            Wait(50)
        end

        if ClonedPed and DoesEntityExist(ClonedPed) and LastEmote.name then
            EmoteMenuStartClone(LastEmote.name, LastEmote.emoteType)
        end

        isWaitingForPed = false
    end)
end

function CloseAllMenus() _menuPool:CloseAllMenus() end