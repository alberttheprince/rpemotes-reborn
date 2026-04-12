local nuiReady = false
local initialDataLoaded = false


-- The NUI logic is designed to run *on top* of the existing NativeUI logic, since that menu already does all the data handling that we need.
-- As the NativeUI menu is being built, this data will be built as well. When we send this to NUI, we will clear it from Lua to get some bytes back.
-- In my opinion, this is a better way to maintain both menu styles, as any new logic that will be added to the emotes data, will reflect in both menus. -CritteR


local dataForMenu = {
    type = "BUILD_EMOTE_MENUS",
    ["emotes"] = {},
    -- ["Custom Category Name"] = {} -- Automagically added by the builder.
    ["walkstyles"] = {},
    ["moods"] = {},
    ["emojis"] = {},
    ["favorites"] = {}
}

local NUIEmoteType = {
    [EmoteType.EXPRESSIONS] = "moods",
    [EmoteType.WALKS] = "walkstyles",
    [EmoteType.SHARED] = "sharedemotes",
    [EmoteType.DANCES] = "danceemotes",
    [EmoteType.ANIMAL_EMOTES] = "emotes",
    [EmoteType.EXITS] = "emotes",
    [EmoteType.EMOTES] = "emotes",
    [EmoteType.PROP_EMOTES] = "propemotes",
    [EmoteType.EMOJI] = "emojis"
}

local keyListKeyboard = {
    { controlGroup = 2, key = 176, text = 'btn_select' },
    { controlGroup = 2, keys = {176, 209}, text = 'btn_contextmenu'},
    { controlGroup = 2, key = 177,  text = 'btn_back' },
    { controlGroup = 2, keys = {172, 173}, text = 'btn_move'},
    { controlGroup = 2, key = 209,  text = 'btn_move_faster' },
    { key = 19,  text = 'btn_cursor' }
}

local keyListMouse = {
    { controlGroup = 2, key = 223, text = 'btn_select' },
    { controlGroup = 2, key = 225, text = 'btn_contextmenu'},
    { key = 19,  text = 'btn_cursor' }
}

local function getEmojiFromCategoryName(str)
    -- Wild for-loop to find emojis in the string.
    for i, char in utf8.codes(str) do
        if (
            (char >= 0x1F600 and char <= 0x1F64F)  -- Emoticons
            or (char >= 0x1F300 and char <= 0x1F5FF)  -- Misc Symbols
            or (char >= 0x1F680 and char <= 0x1F6FF)  -- Transport/Map
            or (char >= 0x2600 and char <= 0x26FF)    -- Misc Symbols
            or (char >= 0x2700 and char <= 0x27BF)    -- Dingbats
            or (char >= 0x1F900 and char <= 0x1F9FF)  -- Supplemental
            or (char >= 0x1FA70 and char <= 0x1FAFF)  -- Extended-A
        ) then
            return utf8.char(char)
        end
    end
    local NUIEmoteCategoryEmoji = {"🚵", "🥳", "💃", "🤸", "🤹‍♂️", "🤹‍♀️", "🤓", "🏄‍♂️", "⛹️‍♀️", "🏋️"} -- If we cannot find an emoji in the category name, use a random one from here.
    return NUIEmoteCategoryEmoji[math.random(1, #NUIEmoteCategoryEmoji)]
end

local function getHtmlClassFromCategoryName(str)
    local toLower = str:lower()
    local result = toLower:gsub("[%s%p]", "")
    return result
end

local NUIEmoteCategories = {
    -- ["Custom Category Name"] = {id="new-category-name", icon = "🥳"}
}

RegisterNUICallback('NUI_READY', function(data, cb)
    nuiReady = true
    DebugPrint("[ NUI READY ]")
    local configForNUI = {
        Keybinding = Config.Keybinding,
        MenuPosition = Config.MenuPosition,
        EmojiMenuEnabled = Config.EmojiMenuEnabled,
        ExpressionsEnabled = Config.ExpressionsEnabled,
        WalkingStylesEnabled = Config.WalkingStylesEnabled,
        PlacementEnabled = Config.PlacementEnabled,
        Search = Config.Search,
    }
    cb({["ok"] = true, ["config"] = configForNUI})
end)

RegisterNUICallback('INITIAL_DATA_LOADED', function(data, cb)
    initialDataLoaded = true
    DebugPrint("[ NUI CATEGORIES LOADED ]")
    cb({["ok"] = true})
end)

RegisterNUICallback('CLOSE_MENU', function(data, cb)
    ToggleNUIMenu()
    PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    cb({["ok"] = true})
end)

RegisterNUICallback('SEARCH_BAR_FOCUS', function(data, cb)
    if data.isFocused then
        SetNuiFocusKeepInput(false)
    else
        SetNuiFocusKeepInput(true)
    end
    cb({["ok"] = true})
end)

RegisterNUICallback('CANCEL_EMOTE', function(data, cb)
    EmoteCancel()
    DestroyAllProps()

    cb({["ok"] = true})
end)

RegisterNUICallback('ROUTE_EMOTE', function(data, cb)
    if data.type == "emote" then
        if data.emoteName == "_reset" then
            if data.emoteType == EmoteType.WALKS then
                ResetWalk()
                DeleteResourceKvp("walkstyle")
            elseif data.emoteType == EmoteType.EXPRESSIONS then
                DeleteResourceKvp(EmoteType.EXPRESSIONS)
                ClearFacialIdleAnimOverride(PlayerPedId())
            end
        else
            RouteEmoteToFunction(data.emoteName, data.emoteType, 1)
        end
    elseif data.type == "groupemote" then
        ToggleNUIMenu() -- Important to close first. Group emote request blocks the thread until you actually start the request.
        OnGroupEmoteRequest(data.emoteName)
    elseif data.type == "placement" then
        if Config.PlacementEnabled then
            StartNewPlacement(data.emoteName)
            ToggleNUIMenu() -- Important to close *after* the placement request. Closing it before the request will block the preview ped on the screen.
        end
    end

    cb({["ok"] = true})
end)

RegisterNUICallback("FAVORITE_EMOTE", function(data, cb)
    if data.emoteName and data.emoteType and data.emoteLabel then
        local emoteData = {
            id = data.emoteType.."_"..data.emoteName,
            name = data.emoteName,
            emoteType = data.emoteType,
            label = data.emoteLabel or data.emoteName,
            textureVariation = 1
        }
        ToggleFavoriteEmote(emoteData.id, emoteData)
        local favData = GetFavoriteEmotes()
        local favMap = GetFavoriteEmotesMap()
        local favorites = {}
        for index, emoteId in pairs(favMap) do
            favorites[index] = favData[emoteId]
        end
        cb({["favorites"] = favorites})
        return
    end
    cb({["ok"] = true})
end)

RegisterNUICallback('KEYBIND_EMOTE', function(data, cb)
    if data.type == "set" then
        if data.emoteName and data.emoteType and data.emoteLabel and data.id then
            EmoteBindStart({data.id, data.emoteName, data.emoteLabel, data.emoteType})
            RebuildEmoteMenu()
        end
    elseif data.type == "clear" then
        if data.id then
            DeleteEmoteBind({data.id})
            RebuildEmoteMenu()
        end
    end

    cb({["ok"] = true})
end)


RegisterNUICallback('PREVIEW_EMOTE', function(data, cb)
    local returnValue = true
    if data.emoteName and data.emoteType then
        returnValue = CreatePreviewPed(data.emoteName, data.emoteType)
    else
        CreatePreviewPed("", "")
    end

    cb({["ok"] = true, ["done"] = returnValue})
end)


RegisterNUICallback('PLAY_SOUND_FRONTEND', function(data, cb)
    PlaySoundFrontend(-1, data.soundName, "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

    cb({["ok"] = true})
end)

RegisterNUICallback('GET_LOCALES', function(data, cb)
    cb({["ok"] = true, ["data"] = Locales[Config.MenuLanguage]})
end)


AddEventHandler("rpemotes:internal:loadEmoteDataToNUI", function(EmoteData, CategoryToEmotes)
    for name, emotes in pairs(CategoryToEmotes) do
        local htmlClass = getHtmlClassFromCategoryName(name)
        NUIEmoteCategories[name] = {id=htmlClass, icon = getEmojiFromCategoryName(name)}
        dataForMenu[htmlClass] = {}
    end


    while not nuiReady do Citizen.Wait(10) end
    SendNUIMessage({type = "LOAD_EMOTE_DATA", emoteData = EmoteData, categoryToEmotes = CategoryToEmotes, emoteCategories = NUIEmoteCategories, emoteTypeIcons = EmoteTypeEmoji})
end)

function AddEmoteToNUIQueue(data)
    -- data = {emoteName, emoteType, label, categoryName, hasPermission, isFavorite}
    if data.isFavorite then
        table.insert(dataForMenu["favorites"], data)
        return
    end
    local tbl = dataForMenu[NUIEmoteCategories[data.categoryName] and NUIEmoteCategories[data.categoryName].id] or dataForMenu[NUIEmoteType[data.emoteType]]
    if tbl ~= nil then
        table.insert(tbl, data)
    end
end

AddEventHandler("rpemotes:internal:sendMenuDataToNUI", function()
    while not nuiReady and not initialDataLoaded do Citizen.Wait(10) end
    SendNUIMessage(dataForMenu)
    for key, val in pairs(dataForMenu) do
        dataForMenu[key] = {}
    end
end)

AddEventHandler("rpemotes:internal:sendKeybindsDataToNUI", function(binds)
    while not nuiReady do Citizen.Wait(10) end

    SendNUIMessage({
        type = "BUILD_KEYBINDS_MENU",
        ["keybinds"] = binds
    })
end)

function ToggleNUIMenu() 
    if not IsNuiFocused() then
        SetNuiFocus(true, false)
        SetNuiFocusKeepInput(true)
        TriggerEvent("rpemotes:internal:handleNUIOpened")
    else
        SetNuiFocus(false, false)
    end
end

AddEventHandler("rpemotes:internal:handleNUIOpened", function()
    local _showEmoji = ShouldShowEmojiMenu()
    SendNUIMessage({type = "OPEN_MENU", value = true, shouldShowEmojiMenu = _showEmoji})
    SendNUIMessage({type = "TOGGLE_CURSOR_INPUT", value = false})

    local scaleform_instructions = SetupButtons(keyListKeyboard)

    while IsNuiFocused() do
        DrawScaleformMovieFullscreen(scaleform_instructions, 255, 255, 255, 255)
        DisableControlAction(0,37,true)
        DisableControlAction(0,200,true)
        if IsControlJustPressed(0,19) then
            SetNuiFocus(true, true)
            SendNUIMessage({type = "TOGGLE_CURSOR_INPUT", value = true})
            SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
            scaleform_instructions = SetupButtons(keyListMouse)
        end
        if IsControlPressed(0,19) then
            DisableControlAction(0,1,true)
            DisableControlAction(0,2,true)
            DisableControlAction(0,14,true)
            DisableControlAction(0,15,true)
            DisableControlAction(0,24,true)
            DisableControlAction(0,25,true)
        end
        if IsControlJustReleased(0,19) then
            SetNuiFocus(true, false)
            SendNUIMessage({type = "TOGGLE_CURSOR_INPUT", value = false})
            SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
            scaleform_instructions = SetupButtons(keyListKeyboard)
        end
        Wait(1)
    end
    CreatePreviewPed("", "")
    SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
    SendNUIMessage({type = "OPEN_MENU", value = false, shouldShowEmojiMenu = _showEmoji})
end)