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
                local emote = SharedEmoteData[emotename]
                if emote ~= nil then
                    TriggerServerEvent("rpemotes:server:requestEmote", GetPlayerServerId(target), emotename)
                    SimpleNotify(Translate('sentrequestto') ..
                        GetPlayerName(target) .. " ~w~(~g~" .. emote.label .. "~w~)")
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

    local emoteData = SharedEmoteData[emote]
    if not emoteData then
        DebugPrint("rpemotes:client:syncEmote : Emote not found")
        return
    end

    local options = emoteData.AnimationOptions
    if options and options.Attachto then
        local targetEmote = emoteData.secondPlayersAnim
        if not targetEmote
            or not SharedEmoteData[targetEmote]
            or not SharedEmoteData[targetEmote].AnimationOptions
            or not SharedEmoteData[targetEmote].AnimationOptions.Attachto
        then
            local ped = PlayerPedId()
            local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

            AttachEntityToEntity(
                ped,
                pedInFront,
                GetPedBoneIndex(pedInFront, options.bone or -1),
                options.pos.x,
                options.pos.y,
                options.pos.z,
                options.rot.x,
                options.rot.y,
                options.rot.z,
                false,
                false,
                false,
                true,
                1,
                true
            )
        end
    end

    OnEmotePlay(emote, nil, EmoteType.SHARED)
end)

RegisterNetEvent("rpemotes:client:syncEmoteSource", function(emote, player)
    local ped = PlayerPedId()
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    if IsPedInAnyVehicle(ped, true) or IsPedInAnyVehicle(pedInFront, true) then
        return EmoteChatMessage(Translate('not_in_a_vehicle'))
    end

    local emoteData = SharedEmoteData[emote]

    local options = emoteData and emoteData.AnimationOptions
    if options then
        if (options.Attachto) then
            AttachEntityToEntity(
                ped,
                pedInFront,
                GetPedBoneIndex(pedInFront, options.bone or -1),
                options.pos.x,
                options.pos.y,
                options.pos.z,
                options.rot.x,
                options.rot.y,
                options.rot.z,
                false,
                false,
                false,
                true,
                1,
                true
            )
        end
    end

    local offset = options and options.syncOffset or vector4(0.0, 1.0, 0.0, 180.0)
    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, offset.x + 0.0, offset.y + 0.0, offset.z + 0.0)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(ped, heading - offset.w + 0.0)
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z)
    EmoteCancel()
    Wait(300)

    targetPlayerId = player
    if emoteData ~= nil then
        OnEmotePlay(emote, nil, EmoteType.SHARED)
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

RegisterNetEvent("rpemotes:client:requestEmote", function(emotename, target)
    isRequestAnim = true

    local emote = SharedEmoteData[emotename]
    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", false, 0, true)
    SimpleNotify(Translate('doyouwanna') .. emote.label .. "~w~)")
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

            local otheremote = emote and emote.secondPlayersAnim or emotename
            TriggerServerEvent("rpemotes:server:confirmEmote", target, emotename, otheremote)
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            SimpleNotify(Translate('refuseemote'))
        end
    end
end)
