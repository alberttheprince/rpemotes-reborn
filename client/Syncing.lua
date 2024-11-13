local isRequestAnim = false
local requestedemote = ''
local targetPlayerId

if Config.SharedEmotesEnabled then
    RegisterCommand('nearby', function(source, args, raw)
        if not LocalPlayer.state.canEmote then return end
        if IsPedInAnyVehicle(PlayerPedId(), true) then
            return EmoteChatMessage(Translate('not_in_a_vehicle'))
        end

        if #args > 0 then
            local emotename = string.lower(args[1])
            local target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                if RP.Shared[emotename] ~= nil then
                    local _, _, ename = table.unpack(RP.Shared[emotename])
                    TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), emotename)
                    SimpleNotify(Translate('sentrequestto') ..
                        GetPlayerName(target) .. " ~w~(~g~" .. ename .. "~w~)")
                else
                    EmoteChatMessage("'" .. emotename .. "' " .. Translate('notvalidsharedemote') .. "")
                end
            else
                SimpleNotify(Translate('nobodyclose'))
            end
        else
            NearbysOnCommand()
        end
    end, false)
end

RegisterNetEvent("SyncPlayEmote", function(emote, player)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    local plyServerId = GetPlayerFromServerId(player)

    if IsPedInAnyVehicle(GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer()), true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    -- wait a little to make sure animation shows up right on both clients after canceling any previous emote
    if RP.Shared[emote] then
        local options = RP.Shared[emote].AnimationOptions
        if options and options.Attachto then
            local targetEmote = RP.Shared[emote][4]
            if not targetEmote or not RP.Shared[targetEmote] or not RP.Shared[targetEmote].AnimationOptions or not RP.Shared[targetEmote].AnimationOptions.Attachto then
                local ped = PlayerPedId()
                local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

                AttachEntityToEntity(
                    ped,
                    pedInFront,
                    GetPedBoneIndex(pedInFront, options.bone or -1),
                    options.xPos or 0.0,
                    options.yPos or 0.0,
                    options.zPos or 0.0,
                    options.xRot or 0.0,
                    options.yRot or 0.0,
                    options.zRot or 0.0,
                    false,
                    false,
                    false,
                    true,
                    1,
                    true
                )
            end
        end

        OnEmotePlay(RP.Shared[emote], emote)
        return
    elseif RP.Dances[emote] then
        OnEmotePlay(RP.Dances[emote], emote)
        return
    else
        DebugPrint("SyncPlayEmote : Emote not found")
    end
end)

RegisterNetEvent("SyncPlayEmoteSource", function(emote, player)
    local ped = PlayerPedId()
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    if IsPedInAnyVehicle(ped, true) or IsPedInAnyVehicle(pedInFront, true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    local options = RP.Shared[emote] and RP.Shared[emote].AnimationOptions
    if options then

        if (options.Attachto) then
            AttachEntityToEntity(
                ped,
                pedInFront,
                GetPedBoneIndex(pedInFront, options.bone or -1),
                options.xPos or 0.0,
                options.yPos or 0.0,
                options.zPos or 0.0,
                options.xRot or 0.0,
                options.yRot or 0.0,
                options.zRot or 0.0,
                false,
                false,
                false,
                true,
                1,
                true
            )
        end
    end

    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, (options.SyncOffsetSide or 0) + 0.0, (options.SyncOffsetFront or 1) + 0.0, (options.SyncOffsetHeight or 0) + 0.0)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(ped, heading - (options.SyncOffsetHeading or 180) + 0.0)
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z)
    EmoteCancel()
    Wait(300)

    targetPlayerId = player
    if RP.Shared[emote] ~= nil then
        OnEmotePlay(RP.Shared[emote], emote)
        return
    elseif RP.Dances[emote] ~= nil then
        OnEmotePlay(RP.Dances[emote], emote)
        return
    end
end)

RegisterNetEvent("SyncCancelEmote", function(player)
    if targetPlayerId and targetPlayerId == player then
        targetPlayerId = nil
        EmoteCancel()
    end
end)

function CancelSharedEmote()
    if targetPlayerId then
        TriggerServerEvent("ServerEmoteCancel", targetPlayerId)
        targetPlayerId = nil
    end
end

RegisterNetEvent("ClientEmoteRequestReceive", function(emotename, etype, target)
    isRequestAnim = true

    local displayed = (etype == 'Dances') and select(3, table.unpack(RP.Dances[emotename])) or select(3, table.unpack(RP.Shared[emotename]))

    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", false, 0, true)
    SimpleNotify(Translate('doyouwanna') .. displayed .. "~w~)")
    -- The player has now 10 seconds to accept the request
    local timer = 10 * 1000
    while isRequestAnim do
        Wait(5)
        timer = timer - 5
        if timer <= 0 then
            isRequestAnim = false
            SimpleNotify(Translate('refuseemote'))
        end

        if IsControlJustPressed(1, 246) then
            isRequestAnim = false

            local otheremote = RP.Shared[requestedemote] and RP.Shared[requestedemote][4] or RP.Dances[requestedemote] and RP.Dances[requestedemote][4] or requestedemote
            TriggerServerEvent("ServerValidEmote", target, requestedemote, otheremote)
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            SimpleNotify(Translate('refuseemote'))
        end
    end
end)
