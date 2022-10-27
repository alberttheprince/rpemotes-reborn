function WalkMenuStart(name)
    TriggerEvent('dpemotes:client:SaveWalkstyle', name)
    RequestWalking(name)
    SetPedMovementClipset(PlayerPedId(), name, 0.2)
    RemoveAnimSet(name)
end

function RequestWalking(set)
    RequestAnimSet(set)
    while not HasAnimSetLoaded(set) do
        Citizen.Wait(1)
    end
end

function WalksOnCommand(source, args, raw)
    local WalksCommand = ""
    for a in pairsByKeys(DP.Walks) do
        WalksCommand = WalksCommand .. "" .. string.lower(a) .. ", "
    end
    EmoteChatMessage(WalksCommand)
    EmoteChatMessage("To reset do /walk reset")
end

function WalkCommandStart(source, args, raw)
    local name = firstToUpper(string.lower(args[1]))

    if name == "Reset" then
        ResetPedMovementClipset(PlayerPedId())
        return
    end

    if tableHasKey(DP.Walks, name) then
        local name2 = table.unpack(DP.Walks[name])
        WalkMenuStart(name2)
    elseif name == "Injured" then
        WalkMenuStart("move_m@injured")
    else
        EmoteChatMessage("'" .. name .. "' is not a valid walk")
    end
end

function tableHasKey(table, key)
    return table[key] ~= nil
end

if Config.WalkingStylesEnabled and Config.PersistentWalk then
    RegisterNetEvent('dpemotes:client:SaveWalkstyle')
    AddEventHandler('dpemotes:client:SaveWalkstyle', function(walkstyle)
        SetResourceKvp('walkstyle', walkstyle)
    end)

    RegisterNetEvent('dpemotes:client:ApplySavedWalkstyle')
    AddEventHandler('dpemotes:client:ApplySavedWalkstyle', function()
        local walkstyle = GetResourceKvpString('walkstyle')

        if walkstyle then
            WalkMenuStart(walkstyle)
        end
    end)

    CreateThread(function()
        while true do
            TriggerEvent('dpemotes:client:ApplySavedWalkstyle')
            Wait(Config.PersistencePollPeriod)
        end
    end)
end
