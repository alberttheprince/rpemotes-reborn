local groupEmoteReqId = nil
local groupEmoteAccepted = false
local groupEmoteOriginCoords = vector3(0)
local groupEmoteOriginRadius = 5.0

RegisterCommand('gemote', function(source, args, raw)
    if not LocalPlayer.state.canEmote then return end
    if IsPedInAnyVehicle(PlayerPedId(), true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    if #args > 0 then
        local emotename = string.lower(args[1])
        OnGroupEmoteRequest(emotename)
    else
        NearbysOnCommand()
    end
end, false)

function OnGroupEmoteRequest(emotename)
    if groupEmoteReqId then
        SimpleNotify(Translate("cannotstartgroupemote"))
        return
    end

    local emote = EmoteData[emotename]
    if emote ~= nil and emote.type ~= EmoteType.SHARED then
        local players = {}
        local originCoords = GetEntityCoords(PlayerPedId())
        for _,src in pairs(GetActivePlayers()) do
            local crds = GetEntityCoords(GetPlayerPed(src))
            if #(originCoords - crds) <= 5.0 then
                players[#players+1] = GetPlayerServerId(tonumber(src))
            end
        end
        if #players > 1 then
        else
            SimpleNotify(Translate('nobodyclose'))
            return
        end

        TriggerServerEvent("rpemotes:server:startGroupEmote", emotename, players)
        SimpleNotify(Translate("requestedgroupemote", emote.label, #players))
    else
        SimpleNotify(Translate("notvalidgroupemote"))
    end
end

RegisterNetEvent("rpemotes:client:startGroupEmote", function(reqid, zone)
    groupEmoteReqId = reqid
    groupEmoteAccepted = true
    groupEmoteOriginCoords = zone.coords
    groupEmoteOriginRadius = zone.radius
    TriggerEvent("rpemotes:client:autoCancel")
end)

AddEventHandler("rpemotes:client:autoCancel", function()

    -- We don't want to auto-cancel the group emote request, if the player already has an emote playing.
    local existingEmote = LocalPlayer.state.currentEmote 

    while groupEmoteReqId ~= nil and groupEmoteAccepted == true do
        -- Keep rechecking to make sure the player is still in area and not using another emote.
        local currentEmote = LocalPlayer.state.currentEmote
        local crds = GetEntityCoords(PlayerPedId())
        if #(crds - (groupEmoteOriginCoords or vector3(0))) > groupEmoteOriginRadius or (currentEmote ~= nil and currentEmote ~= existingEmote) then
            groupEmoteReqId = nil
            groupEmoteAccepted = false
            groupEmoteOriginCoords = vector3(0)
            SimpleNotify(Translate('canceledgroupemote'))
        end

        Wait(100)
    end
end)

RegisterNetEvent("rpemotes:client:requestGroupEmote", function(emotename, reqid, requestor, zone)
    if groupEmoteReqId then return end

    local isRequestAnim = true

    local emote = EmoteData[emotename]
    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", false, 0, true)
    SimpleNotify(Translate('doyouwanna') .. emote.label .. "~w~)")
    -- The player has now 10 seconds to accept the request
    local timer = (10 * 1000)/5
    local req = reqid
    while isRequestAnim do
        Wait(5)
        timer = timer - 5
        if timer <= 0 then
            isRequestAnim = false
            SimpleNotify(Translate('refusedgroupemote'))
        end

        if IsControlJustPressed(1, 246) then
            local myCoords = GetEntityCoords(PlayerPedId())
            if zone and zone.coords and zone.radius then
                if #(myCoords - zone.coords) <= zone.radius then
                    isRequestAnim = false
                    groupEmoteReqId = reqid
                    groupEmoteAccepted = true
                    groupEmoteOriginCoords = zone.coords
                    groupEmoteOriginRadius = zone.radius
                    SimpleNotify(Translate("acceptedgroupemote", emote.label))
                    TriggerServerEvent("rpemotes:server:confirmGroupEmote", reqid)
                    TriggerEvent("rpemotes:client:autoCancel")
                end
            end
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            SimpleNotify(Translate("refusedgroupemote"))
        end
    end
    Wait(1000)
    if groupEmoteReqId ~= nil and groupEmoteReqId == req then
        groupEmoteReqId = nil
        groupEmoteAccepted = false
    end
end)

RegisterNetEvent("rpemotes:client:doGroupEmote", function(emotename)
    if not groupEmoteReqId then return end
    if not EmoteData[emotename] then return end
    local emote = EmoteData[emotename]
    groupEmoteReqId = nil
    groupEmoteAccepted = false
    OnEmotePlay(emotename, nil)
end)