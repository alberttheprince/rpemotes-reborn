local groupEmoteReqId = nil
local groupEmoteAccepted = false
local groupEmoteOriginCoords = vector3(0)
local groupEmoteOriginRadius = Config.GroupEmoteDefaultArea
local groupEmoteEndTime = nil

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

-- Blocks all controls, renders a radius marker and allows the user to select the correct airfryer
local function setGroupArea(emotename, initialRadius)
    local waitForInput = true
    local returnRadius = initialRadius
    local coords = GetEntityCoords(PlayerPedId())
    Wait(10)
    while waitForInput do
        -- Disable movement actions but allow camera movement
        DisableControlAction(0, 30, true) -- Move Left/Right
        DisableControlAction(0, 31, true) -- Move Up/Down
        DisableControlAction(0, 32, true) -- Move Forward
        DisableControlAction(0, 33, true) -- Move Backward
        DisableControlAction(0, 34, true) -- Move Left
        DisableControlAction(0, 35, true) -- Move Right
        DisableControlAction(0, 21, true) -- Sprint
        DisableControlAction(0, 22, true) -- Jump
        DisableControlAction(0, 36, true) -- Ctrl (duck)
        DisableControlAction(0, 44, true) -- Cover
        DisableControlAction(0, 140, true) -- Light Melee Attack
        DisableControlAction(0, 141, true) -- Heavy Melee Attack
        DisableControlAction(0, 142, true) -- Alternative Attack
        DisableControlAction(0, 143, true) -- Dodge
        DisableControlAction(0, 24, true) -- Attack
        DisableControlAction(0, 25, true) -- Aim
        DisableControlAction(0, 257, true) -- Attack 2
        DisableControlAction(0, 263, true) -- Melee Attack 1
        DisableControlAction(0, 264, true) -- Melee Attack 2

        SimpleHelpText(Translate("groupemoteradiushelp", emotename))
        DrawMarker(1, coords.x, coords.y, coords.z-1, 0.0,0.0,0.0,0.0,0.0,0.0,returnRadius*2,returnRadius*2,0.5, 255,255,255,200, false, false, 2, false, nil,nil,false)

        if IsDisabledControlJustPressed(0, 14) and returnRadius > 1 then
            returnRadius = returnRadius - 1
        end
        if IsDisabledControlJustPressed(0, 15) and returnRadius < Config.GroupEmoteMaxArea then
            returnRadius = returnRadius + 1
        end
        if IsDisabledControlJustPressed(0, 201) then
            waitForInput = false
        end
        if IsDisabledControlJustPressed(2, 202) then
            returnRadius = -1 -- Cancel event.
            waitForInput = false
            Wait(100) -- Prevent double backspace from affecting menu navigation
        end

        Wait(0)
    end

    return returnRadius
end

function OnGroupEmoteRequest(emotename)
    if groupEmoteReqId then
        SimpleNotify(Translate("cannotstartgroupemote"))
        return
    end

    local emoteRadius = setGroupArea(emotename, Config.GroupEmoteDefaultArea)
    if emoteRadius < 0 then return end

    local emote = EmoteData[emotename]
    if emote ~= nil and emote.type ~= EmoteType.SHARED then
        local players = {}
        local originCoords = GetEntityCoords(PlayerPedId())
        for _,src in pairs(GetActivePlayers()) do
            local crds = GetEntityCoords(GetPlayerPed(src))
            if #(originCoords - crds) <= emoteRadius then
                players[#players+1] = GetPlayerServerId(tonumber(src))
            end
        end
        if #players > 0 then
        else
            SimpleNotify(Translate('nobodyclose'))
            return
        end

        TriggerServerEvent("rpemotes:server:startGroupEmote", emotename, players, emoteRadius)
        SimpleNotify(Translate("requestedgroupemote", emote.label, #players))
    else
        SimpleNotify(Translate("notvalidgroupemote"))
    end
end

-- Start countdown timer thread
local function startCountdownTimer()
    Citizen.CreateThread(function()
        while groupEmoteEndTime and groupEmoteAccepted do
            Wait(0)
            if groupEmoteEndTime then
                local remainingTime = math.max(0, math.ceil((groupEmoteEndTime - GetGameTimer()) / 1000))
                if remainingTime > 0 then
                    SimpleHelpText(("Group emote starting in: ~b~%ds"):format(remainingTime))
                end
            end
        end
    end)
end

RegisterNetEvent("rpemotes:client:startGroupEmote", function(reqid, zone)
    groupEmoteReqId = reqid
    groupEmoteAccepted = true
    groupEmoteOriginCoords = zone.coords
    groupEmoteOriginRadius = zone.radius
    groupEmoteEndTime = GetGameTimer() + (Config.GroupEmoteCountdownTime * 1000)
    startCountdownTimer()
    TriggerEvent("rpemotes:client:autoCancel")
end)

AddEventHandler("rpemotes:client:autoCancel", function()
    while groupEmoteReqId ~= nil and groupEmoteAccepted == true do
        -- Keep rechecking to make sure the player is still in area.
        local crds = GetEntityCoords(PlayerPedId())
        if #(crds - (groupEmoteOriginCoords or vector3(0))) > groupEmoteOriginRadius then
            groupEmoteReqId = nil
            groupEmoteAccepted = false
            groupEmoteOriginCoords = vector3(0)
            groupEmoteEndTime = nil
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
    -- The player has Config.GroupEmoteCountdownTime seconds to accept the request
    groupEmoteEndTime = GetGameTimer() + (Config.GroupEmoteCountdownTime * 1000)
    local timer = Config.GroupEmoteCountdownTime * 1000
    local req = reqid
    while isRequestAnim do
        Wait(5)
        timer = timer - 5
        if timer <= 0 then
            isRequestAnim = false
            TriggerServerEvent("rpemotes:server:refuseGroupEmote", reqid)
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
                    startCountdownTimer()
                    TriggerServerEvent("rpemotes:server:confirmGroupEmote", reqid)
                    TriggerEvent("rpemotes:client:autoCancel")

                    -- Safety timeout to clear state in case of race conditions
                    SetTimeout((Config.GroupEmoteCountdownTime + 5) * 1000, function()
                        -- If state hasn't been cleared by rpemotes:client:doGroupEmote, clear it now
                        if groupEmoteReqId == reqid and groupEmoteAccepted then
                            groupEmoteReqId = nil
                            groupEmoteAccepted = false
                            groupEmoteOriginCoords = vector3(0)
                            groupEmoteEndTime = nil
                        end
                    end)
                end
            end
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            TriggerServerEvent("rpemotes:server:refuseGroupEmote", reqid)
            SimpleNotify(Translate("refusedgroupemote"))
        end
    end
    -- Only cleanup if the request was not accepted
    if not groupEmoteAccepted then
        Wait(1000)
        if groupEmoteReqId ~= nil and groupEmoteReqId == req then
            groupEmoteReqId = nil
            groupEmoteAccepted = false
        end
        groupEmoteEndTime = nil
    end
end)

RegisterNetEvent("rpemotes:client:doGroupEmote", function(emotename)
    -- Clear group emote state
    groupEmoteReqId = nil
    groupEmoteAccepted = false
    groupEmoteEndTime = nil
    OnEmotePlay(emotename, nil)
end)