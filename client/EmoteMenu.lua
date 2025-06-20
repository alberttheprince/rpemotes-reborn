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

local sharemenu, shareddancemenu, infomenu

local EmoteTable = {}
local DanceTable = {}
local AnimalTable = {}
local PropTable = {}
local WalkTable = {}
local FaceTable = {}
local ShareTable = {}


function AddEmoteMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Translate('emotes'), "", true, true)
    if Config.Search then
        submenu:AddItem(NativeUI.CreateItem(Translate('searchemotes'), ""))
        EmoteTable[#EmoteTable + 1] = Translate('searchemotes')
    end
    local dancemenu = _menuPool:AddSubMenu(submenu, Translate('danceemotes'), "", true, true)
    local animalmenu
    if Config.AnimalEmotesEnabled then
        animalmenu = _menuPool:AddSubMenu(submenu, Translate('animalemotes'), "", true, true)
        EmoteTable[#EmoteTable + 1] = Translate('animalemotes')
    end
    local propmenu = _menuPool:AddSubMenu(submenu, Translate('propemotes'), "", true, true)
    EmoteTable[#EmoteTable + 1] = Translate('danceemotes')
    EmoteTable[#EmoteTable + 1] = Translate('danceemotes')

    if Config.SharedEmotesEnabled then
        sharemenu = _menuPool:AddSubMenu(submenu, Translate('shareemotes'),
            Translate('shareemotesinfo'), true, true)
        shareddancemenu = _menuPool:AddSubMenu(sharemenu, Translate('sharedanceemotes'), "", true, true)
        ShareTable[#ShareTable + 1] = 'none'
        EmoteTable[#EmoteTable + 1] = Translate('shareemotes')
    end

    if Config.Keybinding then
        EmoteTable[#EmoteTable + 1] = "keybinds"
        submenu:AddItem(NativeUI.CreateItem(Translate('keybinds'), Translate('keybindsinfo') .. " /emotebind [~y~num4-9~w~] [~g~emotename~w~]"))
    end

    for a, b in PairsByKeys(RP.Emotes) do
        local x, y, z = table.unpack(b)
        submenu:AddItem(NativeUI.CreateItem(z, "/e (" .. a .. ")"))
        EmoteTable[#EmoteTable + 1] = a
    end

    for a, b in PairsByKeys(RP.Dances) do
        local name = '🤼 ' .. b[3]
        dancemenu:AddItem(NativeUI.CreateItem(name, "/e (" .. a .. ")"))
        if Config.SharedEmotesEnabled then
            shareddancemenu:AddItem(NativeUI.CreateItem(name, "/nearby (" .. a .. ")"))
        end
        DanceTable[#DanceTable + 1] = a
    end

    if Config.AnimalEmotesEnabled then
        for a, b in PairsByKeys(RP.AnimalEmotes) do
            local name = '🐶 ' .. b[3]
            animalmenu:AddItem(NativeUI.CreateItem(name, "/e (" .. a .. ")"))
            AnimalTable[#AnimalTable + 1] = a
        end
    end

    if Config.SharedEmotesEnabled then
        for a, b in PairsByKeys(RP.Shared) do
            local name = b[3]
            local shareitem = NativeUI.CreateItem(name, "/nearby (~g~" .. a .. "~w~)" .. (otheremotename and " " .. Translate('makenearby') .. " (~y~" .. otheremotename .. "~w~)" or ""))
            sharemenu:AddItem(shareitem)
            ShareTable[#ShareTable + 1] = a
        end
    end

    for a, b in PairsByKeys(RP.PropEmotes) do
        local name = '📦 ' .. b[3]
        local propitem = b.AnimationOptions.PropTextureVariations and
            NativeUI.CreateListItem(name, b.AnimationOptions.PropTextureVariations, 1, "/e (" .. a .. ")") or
            NativeUI.CreateItem(name, "/e (" .. a .. ")")

        propmenu:AddItem(propitem)

        PropTable[#PropTable + 1] = a
    end

    -- Ped Emote on Change Index

    dancemenu.OnIndexChange = function(_, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartClone(DanceTable[newindex], "Dances")
    end

    propmenu.OnIndexChange = function(_, newindex)
        ClearPedTaskPreview()
        EmoteMenuStartClone(PropTable[newindex], "PropEmotes")
    end

    submenu.OnIndexChange = function(_, newindex)
        if newindex > 5 then
            ClearPedTaskPreview()
            EmoteMenuStartClone(EmoteTable[newindex], "Emotes")
        end
    end

    dancemenu.OnMenuClosed = function()
        ClearPedTaskPreview()
    end

    dancemenu.OnItemSelect = function(_, _, index)
        EmoteMenuStart(DanceTable[index], "Dances")
    end

    if Config.AnimalEmotesEnabled then
        animalmenu.OnItemSelect = function(_, _, index)
            EmoteMenuStart(AnimalTable[index], "AnimalEmotes")
        end
    end

    if Config.SharedEmotesEnabled then
        sharemenu.OnItemSelect = function(_, _, index)
            if ShareTable[index] ~= 'none' then
                local target, distance = GetClosestPlayer()
                if (distance ~= -1 and distance < 3) then
                    TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), ShareTable[index])
                    SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                else
                    SimpleNotify(Translate('nobodyclose'))
                end
            end
        end

        shareddancemenu.OnItemSelect = function(_, _, index)
            local target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), DanceTable[index], 'Dances')
                SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
            else
                SimpleNotify(Translate('nobodyclose'))
            end
        end
    end

    propmenu.OnItemSelect = function(_, _, index)
        EmoteMenuStart(PropTable[index], "PropEmotes")
    end

   propmenu.OnListSelect = function(_, item, itemIndex, listIndex)
        EmoteMenuStart(PropTable[itemIndex], "PropEmotes", item:IndexToItem(listIndex).Value)
    end

    submenu.OnItemSelect = function(_, _, index)
        if Config.Search and EmoteTable[index] == Translate('searchemotes') then
            EmoteMenuSearch(submenu)
        else
            EmoteMenuStart(EmoteTable[index], "Emotes")
        end
    end

    submenu.OnMenuClosed = function()
        if not isSearching then
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
        AddTextEntry("PM_NAME_CHALL", Translate('searchinputtitle'))
        DisplayOnscreenKeyboard(1, "PM_NAME_CHALL", "", "", "", "", "", 30)
        while UpdateOnscreenKeyboard() == 0 do
            DisableAllControlActions(0)
            Wait(100)
        end
        local input = GetOnscreenKeyboardResult()
        if input ~= nil then
            local results = {}
            for a, b in pairs(EmoteData) do
                if not ignoredCategories[b.category] then
                    if string.find(string.lower(a), string.lower(input)) or (b.label ~= nil and string.find(string.lower(b.label), string.lower(input))) then
                        results[#results + 1] = { table = b.category, name = a, data = b }
                    end
                end
            end

            if #results > 0 then
                isSearching = true

                local searchMenu = _menuPool:AddSubMenu(lastMenu, string.format('%s '..Translate('searchmenudesc')..' ~r~%s~w~', #results, input), "", true, true)
                local sharedDanceMenu

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
                        desc = "/e (" .. v.name .. ")"
                    end

                    if v.data.AnimationOptions and v.data.AnimationOptions.PropTextureVariations then
                        searchMenu:AddItem(NativeUI.CreateListItem(v.data[3], v.data.AnimationOptions.PropTextureVariations, 1, desc))
                    else
                        searchMenu:AddItem(NativeUI.CreateItem(v.data[3], desc))
                    end

                    if v.table == "Dances" and Config.SharedEmotesEnabled then
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
                    EmoteMenuStartClone(data.name, data.data.category)
                end


                searchMenu.OnItemSelect = function(_, _, index)
                    local data = results[index]

                    if data == Translate('sharedanceemotes') then return end

                    if data.table == "Shared" then
                        local target, distance = GetClosestPlayer()
                        if (distance ~= -1 and distance < 3) then
                            TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), data.name)
                            SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                        else
                            SimpleNotify(Translate('nobodyclose'))
                        end
                    else
                        EmoteMenuStart(data.name, data.data.category)
                    end
                end

                searchMenu.OnListSelect = function(_, item, itemIndex, listIndex)
                    EmoteMenuStart(results[itemIndex].name, "PropEmotes", item:IndexToItem(listIndex).Value)
                end

                if Config.SharedEmotesEnabled then
                    if #sharedDanceMenu.Items > 0 then
                        table.insert(results, 1, Translate('sharedanceemotes'))
                        sharedDanceMenu.OnItemSelect = function(_, _, index)
                            if not LocalPlayer.state.canEmote then return end

                            local data = results[index]
                            local target, distance = GetClosestPlayer()
                            if (distance ~= -1 and distance < 3) then
                                TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), data.name, 'Dances')
                                SimpleNotify(Translate('sentrequestto') .. GetPlayerName(target))
                            else
                                SimpleNotify(Translate('nobodyclose'))
                            end
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
    menu.OnItemSelect = function(_, _, index)
        if index == 1 then
            isSearching = false
            ShowPedMenu()
        elseif index == 4 then
            ShowPedMenu(true)
        end
    end
end

function AddWalkMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Translate('walkingstyles'), "", true, true)

    local walkreset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    submenu:AddItem(walkreset)
    WalkTable[#WalkTable + 1] = Translate('resetdef')

    local sortedWalks = {}
    for a, b in PairsByKeys(RP.Walks) do
        if b[1] == "move_m@injured" then
            table.insert(sortedWalks, 1, {label = a, anim = b[1]})
        else
            sortedWalks[#sortedWalks + 1] = {label = a, anim = b[1]}
        end
    end

    for _, walk in ipairs(sortedWalks) do
        submenu:AddItem(NativeUI.CreateItem(walk.label, "/walk (" .. string.lower(walk.label) .. ")"))
        WalkTable[#WalkTable + 1] = walk.label
    end

    submenu.OnItemSelect = function(_, item, index)
        if item == walkreset then
            ResetWalk()
            DeleteResourceKvp("walkstyle")
        else
            WalkMenuStart(WalkTable[index])
        end
    end
end

function AddFaceMenu(menu)
    local submenu = _menuPool:AddSubMenu(menu, Translate('moods'), "", true, true)

    local facereset = NativeUI.CreateItem(Translate('normalreset'), Translate('resetdef'))
    submenu:AddItem(facereset)
    FaceTable[#FaceTable + 1] = ""

    for name, data in PairsByKeys(RP.Expressions) do
        local faceitem = NativeUI.CreateItem(data[2] or name, "")
        submenu:AddItem(faceitem)
        FaceTable[#FaceTable + 1] = name
    end


    submenu.OnIndexChange = function(_, newindex)
        EmoteMenuStartClone(FaceTable[newindex], "Expressions")
    end

    submenu.OnItemSelect = function(_, item, index)
        if item == facereset then
            DeleteResourceKvp("Expressions")
            ClearFacialIdleAnimOverride(PlayerPedId())
        else
            EmoteMenuStart(FaceTable[index], "Expressions")
        end
    end

    submenu.OnMenuClosed = function()
        ClosePedMenu()
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
        if type == 'MaleScenario' or type == 'Scenario' or type == 'ScenarioObject' then
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
end

CreateThread(function()
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

    local newRP = {}
    assert(RP ~= nil)
    for emoteType, content in pairs(RP) do
        for emoteName, emoteData in pairs(content) do
            if newRP[emoteName] then
                print(string.format(
                    "WARNING - Duplicate emote name found: %s in %s and %s",
                    emoteName, emoteType, newRP[emoteName].category
                ))
            end
            if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
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

            newRP[emoteName].category = emoteType
            convertToEmoteData(newRP[emoteName])

            ::continue::
        end
    end
    EmoteData = newRP
    RP = nil
    CONVERTED = true
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
