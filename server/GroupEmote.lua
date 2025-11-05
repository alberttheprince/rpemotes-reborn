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

function CreateGroupEmoteRequest(reqid, emote, source)
    return {
        emote = emote,
        requestorID = source,
        requestorName = GetPlayerName(source) or "INVALID",
        zoneOrigin = GetEntityCoords(GetPlayerPed(source)), -- Coords where the group request was started.
        zoneRadius = 5.0,
        players = {}
    }
end

RegisterNetEvent("rpemotes:server:startGroupEmote", function(emote, players)
    local source = source
    -- We will send the list of players from the client.
    -- We could loop through all the players server-side, but I am not sure servers with ~1000 players online would appreciate it.
    -- We'll sanitize the data received from the player instead.

    if not Player(source).state.canEmote then return end
    if type(players) ~= "table" or #players == 0 then return end
    
    -- Create groupEmoteRequest
    ::retry_reqid::
    local reqid = tostring(os.time())..tostring(source)..tostring(math.random(0,99))
    if groupEmoteRequests[reqid] then goto retry_reqid end
    groupEmoteRequests[reqid] = CreateGroupEmoteRequest(reqid, emote, source)

    local zone = {
        coords = groupEmoteRequests[reqid].zoneOrigin,
        radius = groupEmoteRequests[reqid].zoneRadius
    }

    -- Add Players to the group request
    local sourceCoords = GetEntityCoords(GetPlayerPed(source))
    for i=1, 128, 1 do -- Max number of players that can be in one scope.
        if not players[i] or type(players[i]) ~= "number" then
            break
        end
        if GetPlayerPing(players[i]) ~= 0 then
            local src = players[i]
            local ped = GetPlayerPed(src)
            local crds = DoesEntityExist(ped) and GetEntityCoords(ped)
            if #(sourceCoords - crds) <= groupEmoteRequests[reqid].zoneRadius then
                groupEmoteRequests[reqid].players[src] = false
            end
        end
    end
    groupEmoteRequests[reqid].players[source] = true -- Auto-accept requestor
    TriggerClientEvent("rpemotes:client:startGroupEmote", source, reqid, zone)

    -- Send request to all clients.
    for src,accepted in pairs(groupEmoteRequests[reqid].players) do
        if not accepted then
            TriggerClientEvent("rpemotes:client:requestGroupEmote", src, emote, reqid, source, zone)
        end
    end

    Citizen.Wait(10 * 1000) -- Wait 10 seconds. Auto-Start group emote after that.
    TriggerEvent("rpemotes:server:resolveGroupEmote", reqid)
end)

RegisterNetEvent("rpemotes:server:confirmGroupEmote", function(reqid)
    local source = source
    if not groupEmoteRequests[reqid] or groupEmoteRequests[reqid].players[source] == nil then return end
    local group = groupEmoteRequests[reqid]
    group.players[source] = true

    local startGroupEmote = true
    for i,k in pairs(group.players) do
        if not k then
            startGroupEmote = false
        end
    end

    if startGroupEmote then
        TriggerEvent("rpemotes:server:resolveGroupEmote", reqid)
    end
end)

AddEventHandler("rpemotes:server:resolveGroupEmote", function(reqid)
    if not groupEmoteRequests[reqid] then return end
    local group = groupEmoteRequests[reqid]
    for src,accepted in pairs(group.players) do
        if accepted == true and GetPlayerPing(src) ~= 0 then
            local crds = GetEntityCoords(GetPlayerPed(src))
            if #(group.zoneOrigin - crds) <= group.zoneRadius then
                TriggerClientEvent("rpemotes:client:doGroupEmote", src, group.emote)
            end
        end
    end

    group = nil -- Group emote is done. Clear memory
end)