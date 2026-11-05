local groupEmoteRequests = {
    --[[
    [reqID] = {
        emote = "emote",
        requestorID = 0,
        requestorName = "PlayerName",
        zoneOrigin = vector3,
        zoneRadius = 5.0,
        players = {
            [requestorSrc] = true,
            [src] = false,
            [src2] = true,
            ...
        }
    }
    ]]--
}

local function createGroupEmoteRequest(reqid, emote, radius, source)
    return {
        emote = emote,
        requestorID = source,
        requestorName = GetPlayerName(source) or "Unknown",
        zoneOrigin = GetEntityCoords(GetPlayerPed(source)), -- Coords where the group request was started.
        zoneRadius = radius or Config.GroupEmoteDefaultArea or 5.0,
        players = {}
    }
end

RegisterNetEvent("rpemotes:server:startGroupEmote", function(emote, players, radius)
    local source = source
    -- We will send the list of players from the client.
    -- We could loop through all the players server-side, but I am not sure servers with ~1000 players online would appreciate it.
    -- We'll sanitize the data received from the player instead.

    if not Player(source).state.canEmote then return end
    if type(players) ~= "table" or #players == 0 then return end
    if not ServerEmoteExists(emote, EmoteType.EMOTES) then return end
    if not ServerHasEmotePermission(source, emote, EmoteType.EMOTES) then return end

    local sourcePed = GetPlayerPed(source)
    if not DoesEntityExist(sourcePed) then return end

    radius = tonumber(radius)
    if not radius or radius > Config.GroupEmoteMaxArea or radius < 1 then
        radius = Config.GroupEmoteDefaultArea
    end
    
    -- Create groupEmoteRequest
    local reqid = tostring(os.time())..tostring(source)
    if groupEmoteRequests[reqid] then return end -- Player already started a group emote.
    groupEmoteRequests[reqid] = createGroupEmoteRequest(reqid, emote, radius, source)

    local zone = {
        coords = groupEmoteRequests[reqid].zoneOrigin,
        radius = groupEmoteRequests[reqid].zoneRadius
    }

    -- Add Players to the group request
    local sourceCoords = GetEntityCoords(sourcePed)
    for i=1, 128, 1 do -- Max number of players that can be in one scope.
        if not players[i] or type(players[i]) ~= "number" then
            break
        end
        local src = players[i]
        local ped = GetPlayerPing(src) ~= 0 and GetPlayerPed(src)
        if ped and DoesEntityExist(ped) then
            if #(sourceCoords - GetEntityCoords(ped)) <= groupEmoteRequests[reqid].zoneRadius then
                groupEmoteRequests[reqid].players[src] = false
            end
        end
    end
    groupEmoteRequests[reqid].players[source] = true -- Auto-accept requestor
    TriggerClientEvent("rpemotes:client:startGroupEmote", source, reqid, zone)

    -- Send request to all clients.
    for src,acceptedEmote in pairs(groupEmoteRequests[reqid].players) do
        if not acceptedEmote then
            TriggerClientEvent("rpemotes:client:requestGroupEmote", src, emote, reqid, source, zone)
        end
    end

    Wait(Config.GroupEmoteCountdownTime * 1000) -- Wait configured time. Auto-Start group emote after that.
    TriggerEvent("rpemotes:server:resolveGroupEmote", reqid)
end)

-- Check if all players have responded and start the emote if all have accepted
local function recordResponse(reqid, source, response)
    if not groupEmoteRequests[reqid] or groupEmoteRequests[reqid].players[source] == nil then return end
    groupEmoteRequests[reqid].players[source] = response or nil
    local group = groupEmoteRequests[reqid]
    local allAccepted = true
    local hasPlayers = false
    for _, acceptedEmote in pairs(group.players) do
        hasPlayers = true
        if not acceptedEmote then
            allAccepted = false
            break
        end
    end

    -- If all remaining players have accepted, start immediately
    if allAccepted and hasPlayers then
        TriggerEvent("rpemotes:server:resolveGroupEmote", reqid)
    end
end

RegisterNetEvent("rpemotes:server:refuseGroupEmote", function(reqid)
    local source = source
    recordResponse(reqid, source, false)
end)

RegisterNetEvent("rpemotes:server:confirmGroupEmote", function(reqid)
    local source = source
    recordResponse(reqid, source, true)
end)

AddEventHandler("rpemotes:server:resolveGroupEmote", function(reqid)
    if not groupEmoteRequests[reqid] then return end
    local group = groupEmoteRequests[reqid]

    -- Clear the request immediately to prevent duplicate triggers
    groupEmoteRequests[reqid] = nil

    for src,accepted in pairs(group.players) do
        local ped = accepted == true and GetPlayerPing(src) ~= 0 and GetPlayerPed(src)
        if ped and DoesEntityExist(ped) then
            if #(group.zoneOrigin - GetEntityCoords(ped)) <= group.zoneRadius then
                TriggerClientEvent("rpemotes:client:doGroupEmote", src, group.emote)
            end
        end
    end
end)