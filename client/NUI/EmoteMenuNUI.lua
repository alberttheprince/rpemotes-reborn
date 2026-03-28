local nuiReady = false



-- As the NativeUI menu is being built, this data will be built as well. When we send this to NUI, we will clear it from Lua to get some bytes back.
-- NativeUI kinda wants to rebuild the menu a lot, so let's be careful here.
local dataForMenu = {
    type = "BUILD_EMOTE_MENUS",
    ["emotes"] = {},
    ["sharedemotes"] = {},
    ["propemotes"] = {},
    ["danceemotes"] = {},
    ["walkstyles"] = {},
    ["moods"] = {},
    ["emojis"] = {},
    ["favorites"] = {},
    ["keybinds"] = {}
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


RegisterCommand("__nui", function()
    print(not IsNuiFocused())
    SetNuiFocus(not IsNuiFocused(), not IsNuiFocused())
    SetNuiFocusKeepInput(true)
end)

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
    RouteEmoteToFunction(data.emoteName, data.emoteType, 1)

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
    print(Locales[Config.MenuLanguage])
    cb({["ok"] = true, ["data"] = Locales[Config.MenuLanguage]})
end)


AddEventHandler("rpemotes:internal:loadEmoteDataToNUI", function(EmoteData, CategoryToEmotes)
    while not nuiReady do Citizen.Wait(10) end

    SendNUIMessage({type = "LOAD_EMOTE_DATA", emoteData = EmoteData, categoryToEmotes = CategoryToEmotes})
end)

function AddEmoteToNUIQueue(data)
    -- data = {}
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
    dataForMenu = { -- Restarting it.
        type = "BUILD_EMOTE_MENUS",
        ["emotes"] = {},
        ["sharedEmotes"] = {},
        ["propEmotes"] = {},
        ["danceEmotes"] = {},
        ["walkStyles"] = {},
        ["moods"] = {},
        ["emojis"] = {},
        ["favorites"] = {},
        ["keybinds"] = {}
    }
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
            SetCursorLocation(0.5,0.5)
            -- Even if you don't give the cursor to NUI, the menu still picks it up because it's focused...
            -- Keep this out for now, since it controls the OS cursor too :),
            -- meaning that you can hijack a player's cursor, even if the game is not focused :)
        end
        if IsControlJustReleased(0,19) then
            SetNuiFocus(true, false)
        end
        Citizen.Wait(1) -- LOL
    end
    CreatePreviewPed("", "")
    SendNUIMessage({type = "OPEN_MENU", value = false})
end)