local nuiReady = false


-- The NUI logic is designed to run *on top* of the existing NativeUI logic, since that menu already does all the data handling that we need.
-- As the NativeUI menu is being built, this data will be built as well. When we send this to NUI, we will clear it from Lua to get some bytes back.
-- In my opinion, this is a better way to maintain both menu styles, as any new logic that will be added to the emotes data, will reflect in both menus. -CritteR


local dataForMenu = {
    type = "BUILD_EMOTE_MENUS",
    ["emotes"] = {},
    ["sharedemotes"] = {},
    ["propemotes"] = {},
    ["danceemotes"] = {},
    ["walkstyles"] = {},
    ["moods"] = {},
    ["emojis"] = {},
    ["favorites"] = {}
}

local NUIEmoteType = {
    ["Expressions"] = "moods",
    ["Walks"] = "walkstyles",
    ["Shared"] = "sharedemotes",
    ["Dances"] = "danceemotes",
    ["AnimalEmotes"] = "emotes",
    ["Exits"] = "emotes",
    ["Emotes"] = "emotes",
    ["PropEmotes"] = "propemotes",
    ["Emojis"] = "emojis"
}

RegisterNUICallback('NUI_READY', function(data, cb)
    nuiReady = true
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
        RouteEmoteToFunction(data.emoteName, data.emoteType, 1)
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
    while not nuiReady do Citizen.Wait(10) end

    SendNUIMessage({type = "LOAD_EMOTE_DATA", emoteData = EmoteData, categoryToEmotes = CategoryToEmotes, emoteTypeIcons = EmoteTypeEmoji})
end)

function AddEmoteToNUIQueue(data)
    if data.isFavorite then
        table.insert(dataForMenu["favorites"], data)
        return
    end
    if dataForMenu[NUIEmoteType[data.emoteType]] ~= nil then
        table.insert(dataForMenu[NUIEmoteType[data.emoteType]], data)  
    end
end

AddEventHandler("rpemotes:internal:sendMenuDataToNUI", function()
    while not nuiReady do Citizen.Wait(10) end

    SendNUIMessage(dataForMenu)
    dataForMenu = {
        type = "BUILD_EMOTE_MENUS",
        ["emotes"] = {},
        ["sharedEmotes"] = {},
        ["propEmotes"] = {},
        ["danceEmotes"] = {},
        ["walkStyles"] = {},
        ["moods"] = {},
        ["emojis"] = {},
        ["favorites"] = {}
    }
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
    SendNUIMessage({type = "OPEN_MENU", value = true})
    while IsNuiFocused() do
        DisableControlAction(0,37,true)
        DisableControlAction(0,200,true)
        if IsControlJustPressed(0,19) then
            SetNuiFocus(true, true)
        end
        if IsControlPressed(0,19) then
            DisableControlAction(0,1,true)
            DisableControlAction(0,2,true)
            DisableControlAction(0,14,true)
            DisableControlAction(0,15,true)
            DisableControlAction(0,24,true)
            DisableControlAction(0,25,true)
        else
            SetCursorLocation(0.5,0.5) -- Used to block the cursor while the player is not using it.
            -- Even if you don't give the cursor to NUI, the menu still picks it up because it's focused...
            -- This means that it controls the OS cursor too :),
            -- meaning that you can hijack a player's cursor, even if the game is not focused :)
        end
        if IsControlJustReleased(0,19) then
            SetNuiFocus(true, false)
        end
        Citizen.Wait(1)
    end
    CreatePreviewPed("", "")
    SendNUIMessage({type = "OPEN_MENU", value = false})
end)