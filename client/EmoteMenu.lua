---@type table<string, EmoteData>
EmoteData = {}

local isSearching = false
local rightPosition = { x = 1430, y = 200 }
local leftPosition = { x = 0, y = 200 }
local menuPosition = { x = 0, y = 200 }
local menuHeader = "shopui_title_sm_hangar"

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
    local txd = CreateRuntimeTxd('Custom_Menu_Head')
    CreateRuntimeTextureFromImage(txd, 'Custom_Menu_Head', 'header.png')
    menuHeader = "Custom_Menu_Head"
end

local _menuPool = NativeUI.CreatePool()
local mainMenu = NativeUI.CreateMenu(Config.MenuTitle or "", "", menuPosition["x"], menuPosition["y"], menuHeader, menuHeader)
_menuPool:Add(mainMenu)

local shareddancemenu, infomenu

---@class SubMenu
---@field menu table
---@field items string[]

---@alias Category string
---@type table<Category, SubMenu>
local subMenus = {}

local function sendSharedEmoteRequest(emoteName)
    local target, distance = GetClosestPlayer()
    if (distance ~= -1 and distance < 3) then
        TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emoteName)
        SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
    else
        SimpleNotify(Translate('nobodyclose'))
    end
end

---@param parent SubMenu|table
---@param category string
---@param title string
---@param description? string
---@return SubMenu
local function createSubMenu(parent, category, title, description)
    if parent.menu then
        parent.items[#parent.items+1] = title
    end
    local menu = _menuPool:AddSubMenu(parent.menu or parent, title, description or '', true, true)
    local items = {}

    menu.OnIndexChange = function(_, newIndex)
        local emoteName = items[newIndex]
        local emote = EmoteData[emoteName]
        ClearPedTaskPreview()
        if not emote then return end
        if emote.emoteType == EmoteType.DANCES
            or emote.emoteType == EmoteType.EMOTES
            or emote.emoteType == EmoteType.EXPRESSIONS
            or emote.emoteType == EmoteType.PROP_EMOTES
        then
            EmoteMenuStartClone(emoteName)
        end
    end

    menu.OnItemSelect = function(_, _, index)
        if Config.Search and items[index] == Translate('searchemotes') then
            EmoteMenuSearch(menu)
            return
        end
        
        local emoteName = items[index]
        local emote = EmoteData[emoteName]
        if not emote then return end

        if emote.emoteType == EmoteType.DANCES
            or emote.emoteType == EmoteType.ANIMAL_EMOTES
            or emote.emoteType == EmoteType.PROP_EMOTES
            or emote.emoteType == EmoteType.EMOTES
        then
            EmoteMenuStart(items[index])
        elseif emote.emoteType == EmoteType.SHARED then
            sendSharedEmoteRequest(items[index])
        end
    end

    menu.OnListSelect = function(_, item, itemIndex, listIndex)
        local emoteName = items[itemIndex]
        local emote = EmoteData[emoteName]
        if not emote then return end
        if not emote.emoteType ~= EmoteType.PROP_EMOTES then return end
        EmoteMenuStart(items[itemIndex], item:IndexToItem(listIndex).Value)
    end

    menu.OnMenuClosed = function()
        if not isSearching then
            ClosePedMenu()
        end
    end

    local subMenu = {
        menu = menu,
        items = items,
    }
    subMenus[category] = subMenu
    return subMenu
end

function AddEmoteMenu(menu)
    local emoteMenu = createSubMenu(menu, EmoteType.EMOTES, Translate('emotes'))
    -- local submenu = _menuPool:AddSubMenu(menu, Translate('emotes'), "", true, true)
    if Config.Search then
        emoteMenu.menu:AddItem(NativeUI.CreateItem(Translate('searchemotes'), ""))
        emoteMenu.items[#emoteMenu.items+1] = Translate('searchemotes')
    end

    local danceMenu = createSubMenu(emoteMenu, EmoteType.DANCES, Translate('danceemotes'))
    local animalMenu
    if Config.AnimalEmotesEnabled then
        animalMenu = createSubMenu(emoteMenu, EmoteType.ANIMAL_EMOTES, Translate('animalemotes'))
    end
    local propMenu = createSubMenu(emoteMenu, EmoteType.PROP_EMOTES, Translate('propemotes'))
    local shareMenu
    if Config.SharedEmotesEnabled then
        shareMenu = createSubMenu(emoteMenu, EmoteType.SHARED, Translate('shareemotes'), Translate('shareemotesinfo'))
        shareddancemenu = _menuPool:AddSubMenu(shareMenu.menu, Translate('sharedanceemotes'), "", true, true)
        shareMenu.items[#shareMenu.items+1] = 'none'
    end

    if Config.Keybinding then
        emoteMenu.items[#emoteMenu.items+1] = "keybinds"
        emoteMenu.menu:AddItem(NativeUI.CreateItem(Translate('keybinds'), Translate('keybindsinfo') .. " /emotebind [~y~num4-9~w~] [~g~emotename~w~]"))
    end

    for emoteName, data in pairs(EmoteData) do
        if data.emoteType == EmoteType.EMOTES then
            emoteMenu.menu:AddItem(NativeUI.CreateItem(data.label, string.format("/e (%s)", emoteName)))
            emoteMenu.items[#emoteMenu.items+1] = emoteName
        elseif data.emoteType == EmoteType.DANCES then
            local label = '🤼 ' .. data.label
            danceMenu.menu:AddItem(NativeUI.CreateItem(label, string.format("/e (%s)", emoteName)))
            if Config.SharedEmotesEnabled then
                shareddancemenu:AddItem(NativeUI.CreateItem(label, string.format("/nearby (%s)", emoteName)))
            end
            danceMenu.items[#danceMenu.items+1] = emoteName
        elseif data.emoteType == EmoteType.ANIMAL_EMOTES then
            if Config.AnimalEmotesEnabled then
                local name = '🐶 ' .. data.label
                animalMenu.menu:AddItem(NativeUI.CreateItem(name, string.format("/e (%s)", emoteName)))
                animalMenu.items[#animalMenu.items+1] = emoteName
            end
        elseif data.emoteType == EmoteType.SHARED then
            if Config.SharedEmotesEnabled then
                local desc
                if data.secondPlayersAnim == nil then
                    desc = string.format("/nearby (~g~%s~w~)", emoteName)
                else
                    desc = string.format("/nearby (~g~%s~w~) %s (~y~%s~w~)", emoteName, Translate('makenearby'), data.secondPlayersAnim)
                end
                local shareitem = NativeUI.CreateItem(data.label, desc)
                shareMenu.menu:AddItem(shareitem)
                shareMenu.items[#shareMenu.items+1] = emoteName
            end
        elseif data.emoteType == EmoteType.PROP_EMOTES then
            local name = '📦 ' .. data.label
            local propitem = data.AnimationOptions.PropTextureVariations and
                NativeUI.CreateListItem(name, data.AnimationOptions.PropTextureVariations, 1, string.format("/e (%s)", emoteName)) or
                NativeUI.CreateItem(name, string.format("/e (%s)", emoteName))
            propMenu.menu:AddItem(propitem)
            propMenu.items[#propMenu.items+1] = emoteName
        end
    end

    -- Ped Emote on Change Index
    if Config.SharedEmotesEnabled then
        shareddancemenu.OnItemSelect = function(_, _, index)
            sendSharedEmoteRequest(subMenus[EmoteType.DANCES].items[index])
        end
    end
end

if Config.Search then
    local ignoredCategories = {
        [EmoteType.WALKS] = true,
        [EmoteType.EXPRESSIONS] = true,
        [EmoteType.SHARED] = not Config.SharedEmotesEnabled
    }

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
        for a, b in pairs(EmoteData) do
            if not ignoredCategories[b.emoteType] then
                if string.find(string.lower(a), string.lower(input)) or (b.label ~= nil and string.find(string.lower(b.label), string.lower(input))) then
                    results[#results + 1] = { table = b.emoteType, name = a, data = b }
                end
            end
        end

        if #results <= 0 then
            SimpleNotify(string.format(Translate('searchnoresult')..' ~r~%s~w~', input))
            return
        end

        isSearching = true

        local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format('%s '..Translate('searchmenudesc')..' ~r~%s~w~', #results, input), "", true, true)
        local sharedDanceMenu

        if Config.SharedEmotesEnabled then
            sharedDanceMenu = _menuPool:AddSubMenu(searchMenu, Translate('sharedanceemotes'), "", true, true)
        end

        table.sort(results, function(a, b) return a.name < b.name end)
        for k, v in pairs(results) do
            local desc = ""
            if v.table == EmoteType.SHARED then
                local otheremotename = v.data[4]
                if otheremotename == nil then
                    desc = string.format("/nearby (~g~%s~w~)", v.name)
                else
                    desc = string.format("/nearby (~g~%s~w~) %s (~y~%s~w~)", v.name, Translate('makenearby'), otheremotename)
                end
            else
                desc = "/e (" .. v.name .. ")"
            end

            if v.data.AnimationOptions and v.data.AnimationOptions.PropTextureVariations then
                searchMenu:AddItem(NativeUI.CreateListItem(v.data[3], v.data.AnimationOptions.PropTextureVariations, 1, desc))
            else
                searchMenu:AddItem(NativeUI.CreateItem(v.data[3], desc))
            end

            if v.table == EmoteType.DANCES and Config.SharedEmotesEnabled then
                sharedDanceMenu:AddItem(NativeUI.CreateItem(v.data[3], ""))
            end
        end

        searchMenu.OnMenuChanged = function()
            isSearching = false
            ShowPedMenu()
        end


        searchMenu.OnIndexChange = function(_, newindex)
            local data = results[newindex]

            ClearPedTaskPreview()
            EmoteMenuStartClone(data.name)
        end


        searchMenu.OnItemSelect = function(_, _, index)
            local data = results[index]

            if data == Translate('sharedanceemotes') then return end

            if data.table == EmoteType.SHARED then
                sendSharedEmoteRequest(data.name)
            else
                EmoteMenuStart(data.name)
            end
        end

        searchMenu.OnListSelect = function(_, item, itemIndex, listIndex)
            EmoteMenuStart(results[itemIndex].name, item:IndexToItem(listIndex).Value)
        end

        if Config.SharedEmotesEnabled then
            if #sharedDanceMenu.Items > 0 then
                table.insert(results, 1, Translate('sharedanceemotes'))
                sharedDanceMenu.OnItemSelect = function(_, _, index)
                    if not LocalPlayer.state.canEmote then return end

                    local data = results[index]
                    sendSharedEmoteRequest(data.name)
                end
            else
                sharedDanceMenu:Clear()
                searchMenu:RemoveItemAt(1)
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
    menu.OnItemSelect = function(_, _, index)
        if index == 1 then
            isSearching = false
            ShowPedMenu()
        elseif index == 4 then
            ShowPedMenu(true)
        end
    end
end

-- TODO: merge with main iterating for loop for menu initialization.
function AddWalkMenu(menu)
    createSubMenu(menu, EmoteType.WALKS, Translate('walkingstyles'))
    local walkMenu = subMenus[EmoteType.WALKS]
    local walkreset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    walkMenu.menu:AddItem(walkreset)
    walkMenu.items[#walkMenu.items+1] = Translate('resetdef')

    local sortedWalks = {}
    for _, data in pairs(EmoteData) do
        if data.emoteType == EmoteType.WALKS then
            -- TODO: I'm not sure why injured walk styles need to appear first in the list.
            -- Maybe it's a commonly used one? Should find out and add a comment explaining it. 
            if data.anim == "move_m@injured" then
                table.insert(sortedWalks, 1, {label = data.label, anim = data.anim})
            else
                sortedWalks[#sortedWalks + 1] = {label = data.label, anim = data.anim}
            end
        end
    end

    for _, walk in ipairs(sortedWalks) do
        walkMenu.menu:AddItem(NativeUI.CreateItem(walk.label, string.format("/walk (%s)", string.lower(walk.label))))
        walkMenu.items[#walkMenu.items+1] = walk.label
    end

    walkMenu.menu.OnItemSelect = function(_, item, index)
        if item == walkreset then
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        else
            WalkMenuStart(walkMenu.items[index])
        end
    end
end

-- TODO: merge with main iterating for loop for menu initialization.
function AddFaceMenu(menu)
    createSubMenu(menu, EmoteType.EXPRESSIONS, Translate('moods'))
    local facereset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    local faceMenu = subMenus[EmoteType.EXPRESSIONS]
    faceMenu.menu:AddItem(facereset)
    faceMenu.items[#faceMenu.items+1] = ""

    for emoteName, data in pairs(EmoteData) do
        if data.emoteType == EmoteType.EXPRESSIONS then
            local faceitem = NativeUI.CreateItem(data.label or emoteName, "")
            faceMenu.menu:AddItem(faceitem)
            faceMenu.items[#faceMenu.items+1] = emoteName
        end
    end

    faceMenu.menu.OnItemSelect = function(_, item, index)
        if item == facereset then
            DeleteResourceKvp(EmoteType.EXPRESSIONS)
            ClearFacialIdleAnimOverride(PlayerPedId())
        else
            EmoteMenuStart(faceMenu.items[index])
        end
    end
end

function AddInfoMenu(menu)
    infomenu = _menuPool:AddSubMenu(menu, Translate('infoupdate'), "~h~~y~The RPEmotes Developers~h~~y~", true, true)

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

---@param emote EmoteData
local function convertToEmoteData(emote)
    local arraySize = 0
    for i = 1, 4 do
        if emote[i] then
            arraySize += 1
        end
    end

    if arraySize == 1 then
        emote.anim = emote[1]
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
            if newRP[emoteName] then
                print(string.format(
                    "WARNING - Duplicate emote name found: %s in %s and %s",
                    emoteName, emoteType, newRP[emoteName].emoteType
                ))
            end
            if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
                goto continue
            end
            
            if Config.AbusableEmotesDisabled and emoteData.abusable then
                goto continue
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
            convertToEmoteData(newRP[emoteName])

            ::continue::
        end
    end
    EmoteData = newRP
    RP = nil
    CONVERTED = true
end

local function initMenu()
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
end

CreateThread(function()
    LoadAddonEmotes()
    convertRP()
    initMenu()
end)

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
