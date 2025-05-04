local isRequestAnim = false
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
                if RP[emotename] ~= nil and RP[emotename].category == "Shared" then
                    local _, _, ename = table.unpack(RP[emotename])
                    TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emotename)
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

RegisterNetEvent("rpemotes:client:syncEmote", function(emote, player)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    local plyServerId = GetPlayerFromServerId(player)

    if IsPedInAnyVehicle(GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer()), true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    if RP[emote] then
        local options = RP[emote].AnimationOptions
        if options and options.Attachto then
            local targetEmote = RP[emote][4]
            if not targetEmote or not RP[targetEmote] or not RP[targetEmote].AnimationOptions or not RP[targetEmote].AnimationOptions.Attachto then
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

        OnEmotePlay(emote)
        return
    else
        DebugPrint("rpemotes:client:syncEmote : Emote not found")
    end
end)

RegisterNetEvent("rpemotes:client:syncEmoteSource", function(emote, player)
    local ped = PlayerPedId()
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    if IsPedInAnyVehicle(ped, true) or IsPedInAnyVehicle(pedInFront, true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    local options = RP[emote] and RP[emote].AnimationOptions
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

    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, (options and options.SyncOffsetSide or 0) + 0.0, (options and options.SyncOffsetFront or 1) + 0.0, (options and options.SyncOffsetHeight or 0) + 0.0)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(ped, heading - (options and options.SyncOffsetHeading or 180) + 0.0)
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z)
    EmoteCancel()
    Wait(300)

    targetPlayerId = player
    if RP[emote] ~= nil then
        OnEmotePlay(emote)
        return
    end
end)

RegisterNetEvent("rpemotes:client:cancelEmote", function(player)
    if targetPlayerId and targetPlayerId == player then
        targetPlayerId = nil
        EmoteCancel()
    end
end)

function CancelSharedEmote()
    if targetPlayerId then
        TriggerServerEvent("rpemotes:server:cancelEmote", targetPlayerId)
        targetPlayerId = nil
    end
end

RegisterNetEvent("rpemotes:client:requestEmote", function(emotename, etype, target)
    isRequestAnim = true

    local displayed = RP[emotename] and select(3, table.unpack(RP[emotename]))

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

            local otheremote = RP[emotename] and RP[emotename][4] or emotename
            TriggerServerEvent("rpemotes:server:confirmEmote", target, emotename, otheremote)
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            SimpleNotify(Translate('refuseemote'))
        end
    end
end)
