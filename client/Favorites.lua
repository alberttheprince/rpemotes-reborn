local favoriteEmotes = {}
local emotesKeySort = {} -- index list, to sort emotes by label
local kvpKey = string.format('%s_favorites', Config.keybindKVP)

local function saveFavoriteEmotes()
    SetResourceKvpNoSync(kvpKey, json.encode(favoriteEmotes))
end

local function sortFavoriteEmotes()
    -- This function might be slow when a player has hundreds of saved emotes, but it's needed
    --      if we want the Favorites tab to be sorted.
    -- This function runs once when the player joins the server, and then it's called
    --      every time a saved emote is added or removed.

    -- We first get all the saved emotes, into an index list.
    emotesKeySort = {}
    for key,_ in pairs(favoriteEmotes) do
        emotesKeySort[#emotesKeySort+1] = key
    end

    -- Then we sort the index list based on the `label` value inside the main table.
    table.sort(emotesKeySort, function(a, b)
        return favoriteEmotes[a].label < favoriteEmotes[b].label
    end)
end

Citizen.CreateThread(function()
    -- Load the initial favorite emotes from the KVP.
    favoriteEmotes = GetResourceKvpString(kvpKey)
    if favoriteEmotes then favoriteEmotes = json.decode(favoriteEmotes) end
    if not favoriteEmotes then
        favoriteEmotes = {}
    end -- If there are no favorites saved, treat as empty table.
    sortFavoriteEmotes() -- full array passthrough AND table.sort. Scary when `favoriteEmotes` contains many items!
end)

-- Getters for the favorite emotes table, and the associated index list.
function GetFavoriteEmotes()
    return favoriteEmotes
end
function GetFavoriteEmotesMap()
    return emotesKeySort
end

function ToggleFavoriteEmote(id, emoteData)
    if favoriteEmotes[id] then
        favoriteEmotes[id] = nil
        sortFavoriteEmotes()
        --  FIXME: This can slowly fill up the JSON with nulls.
        --  While this is not a problem for LUA (since the decoder just ignores them),
        --      it might be a problem if a server owner wants to send this JSON to NUI.

        SimpleNotify(Translate("removedfromfavorites", emoteData.label))
    else
        favoriteEmotes[id] = emoteData
        sortFavoriteEmotes()
        SimpleNotify(Translate("addedtofavorites", emoteData.label))
    end
    saveFavoriteEmotes()
end
