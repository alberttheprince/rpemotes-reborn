--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



local isRequestAnim = false
local requestedemote = ''
local targetPlayerId = ''

-- Some of the work here was done by Super.Cool.Ninja / rubbertoe98
-- https://forum.fivem.net/t/release-nanimstarget/876709

-----------------------------------------------------------------------------------------------------
-- Commands / Events --------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
if Config.SharedEmotesEnabled then
    RegisterCommand('nearby', function(source, args, raw)
        if #args > 0 then
            local emotename = string.lower(args[1])
            target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                if RP.Shared[emotename] ~= nil then
                    dict, anim, ename = table.unpack(RP.Shared[emotename])
                    TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), emotename)
                    SimpleNotify(Config.Languages[lang]['sentrequestto'] ..
                        GetPlayerName(target) .. " ~w~(~g~" .. ename .. "~w~)")
                else
                    EmoteChatMessage("'" .. emotename .. "' " .. Config.Languages[lang]['notvalidsharedemote'] .. "")
                end
            else
                SimpleNotify(Config.Languages[lang]['nobodyclose'])
            end
        else
            NearbysOnCommand()
        end
    end, false)
end

RegisterNetEvent("SyncPlayEmote")
AddEventHandler("SyncPlayEmote", function(emote, player)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    -- wait a little to make sure animation shows up right on both clients after canceling any previous emote
    if RP.Shared[emote] ~= nil then
        if RP.Shared[emote].AnimationOptions and RP.Shared[emote].AnimationOptions.Attachto then
            -- We do not want to attach the player if the target emote already is attached to player
            -- this would cause issue where both player would be attached to each other and fall under the map
            local targetEmote = RP.Shared[emote][4]
            if not targetEmote or not RP.Shared[targetEmote] or not RP.Shared[targetEmote].AnimationOptions or
                not RP.Shared[targetEmote].AnimationOptions.Attachto then
                local plyServerId = GetPlayerFromServerId(player)
                local ply = PlayerPedId()
                local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())
                local bone = RP.Shared[emote].AnimationOptions.bone or -1 -- No bone
                local xPos = RP.Shared[emote].AnimationOptions.xPos or 0.0
                local yPos = RP.Shared[emote].AnimationOptions.yPos or 0.0
                local zPos = RP.Shared[emote].AnimationOptions.zPos or 0.0
                local xRot = RP.Shared[emote].AnimationOptions.xRot or 0.0
                local yRot = RP.Shared[emote].AnimationOptions.yRot or 0.0
                local zRot = RP.Shared[emote].AnimationOptions.zRot or 0.0
                AttachEntityToEntity(ply, pedInFront, GetPedBoneIndex(pedInFront, bone), xPos, yPos, zPos, xRot, yRot,
                    zRot, false, false, false, true, 1, true)
            end
        end

        OnEmotePlay(RP.Shared[emote], emote)
        return
    elseif RP.Dances[emote] ~= nil then
        OnEmotePlay(RP.Dances[emote], emote)
        return
    else
        DebugPrint("SyncPlayEmote : Emote not found")
    end
end)

RegisterNetEvent("SyncPlayEmoteSource")
AddEventHandler("SyncPlayEmoteSource", function(emote, player)
    -- Thx to Poggu for this part!
    local ply = PlayerPedId()
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    local SyncOffsetFront = 1.0
    local SyncOffsetSide = 0.0
    local SyncOffsetHeight = 0.0
    local SyncOffsetHeading = 180.1

    local AnimationOptions = RP.Shared[emote] and RP.Shared[emote].AnimationOptions
    if AnimationOptions then
        if AnimationOptions.SyncOffsetFront then
            SyncOffsetFront = AnimationOptions.SyncOffsetFront + 0.0
        end
        if AnimationOptions.SyncOffsetSide then
            SyncOffsetSide = AnimationOptions.SyncOffsetSide + 0.0
        end
        if AnimationOptions.SyncOffsetHeight then
            SyncOffsetHeight = AnimationOptions.SyncOffsetHeight + 0.0
        end
        if AnimationOptions.SyncOffsetHeading then
            SyncOffsetHeading = AnimationOptions.SyncOffsetHeading + 0.0
        end

        -- There is a priority to the source attached, if it is not set, it will use the target
        if (AnimationOptions.Attachto) then
            local bone = AnimationOptions.bone or -1 -- No bone
            local xPos = AnimationOptions.xPos or 0.0
            local yPos = AnimationOptions.yPos or 0.0
            local zPos = AnimationOptions.zPos or 0.0
            local xRot = AnimationOptions.xRot or 0.0
            local yRot = AnimationOptions.yRot or 0.0
            local zRot = AnimationOptions.zRot or 0.0
            AttachEntityToEntity(ply, pedInFront, GetPedBoneIndex(pedInFront, bone), xPos, yPos, zPos, xRot, yRot, zRot,
                false, false, false, true, 1, true)
        end
    end
    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, SyncOffsetSide, SyncOffsetFront, SyncOffsetHeight)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(ply, heading - SyncOffsetHeading)
    SetEntityCoordsNoOffset(ply, coords.x, coords.y, coords.z, 0)
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

RegisterNetEvent("SyncCancelEmote")
AddEventHandler("SyncCancelEmote", function(player)
    if targetPlayerId and targetPlayerId == player then
        targetPlayerId = nil
        EmoteCancel()
    end
end)

function CancelSharedEmote(ply)
    if targetPlayerId then
        TriggerServerEvent("ServerEmoteCancel", targetPlayerId)
        targetPlayerId = nil
    end
end

RegisterNetEvent("ClientEmoteRequestReceive")
AddEventHandler("ClientEmoteRequestReceive", function(emotename, etype, target)
    isRequestAnim = true
    requestedemote = emotename

    if etype == 'Dances' then
        _, _, remote = table.unpack(RP.Dances[requestedemote])
    else
        _, _, remote = table.unpack(RP.Shared[requestedemote])
    end

    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 0, 0, 1)
    SimpleNotify(Config.Languages[lang]['doyouwanna'] .. remote .. "~w~)")
    -- The player has now 10 seconds to accept the request
    local timer = 10 * 1000
    while isRequestAnim do
        Citizen.Wait(5)
        timer = timer - 5
        if timer == 0 then
            isRequestAnim = false
            SimpleNotify(Config.Languages[lang]['refuseemote'])
        end

        if IsControlJustPressed(1, 246) then
            isRequestAnim = false

            -- Check if the emote is shared or dance
            if RP.Shared[requestedemote] ~= nil then
                _, _, _, otheremote = table.unpack(RP.Shared[requestedemote])
            elseif RP.Dances[requestedemote] ~= nil then
                _, _, _, otheremote = table.unpack(RP.Dances[requestedemote])
            end
            if otheremote == nil then otheremote = requestedemote end
            TriggerServerEvent("ServerValidEmote", target, requestedemote, otheremote)
        elseif IsControlJustPressed(1, 182) then
            isRequestAnim = false
            SimpleNotify(Config.Languages[lang]['refuseemote'])
        end
    end
end)
