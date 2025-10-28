local emojiCooldowns = {}
local playerEmojiCounts = {}

local function getPlayersInRange(coords, range)
    local players = {}
    for _, playerId in ipairs(GetPlayers()) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed and DoesEntityExist(targetPed) then
            local targetCoords = GetEntityCoords(targetPed)
            if #(coords - targetCoords) <= range then
                players[#players + 1] = playerId
            end
        end
    end
    return players
end

RegisterNetEvent('rpemotes:server:shareEmoji', function(emoji)
    local source = source
    if not Player(source).state.canEmote then return end

    if emojiCooldowns[source] and GetGameTimer() < emojiCooldowns[source] then
        return
    end

    emojiCooldowns[source] = GetGameTimer() + Config.EmojiCooldownMs

    if not playerEmojiCounts[source] then
        playerEmojiCounts[source] = 0
    end

    if playerEmojiCounts[source] >= Config.MaxEmojisPerPlayer then
        return
    end

    playerEmojiCounts[source] = playerEmojiCounts[source] + 1

    local ped = GetPlayerPed(source)
    local coords = GetEntityCoords(ped)

    local nearbyPlayers = getPlayersInRange(coords, Config.EmojiRange)

    for _, playerId in ipairs(nearbyPlayers) do
        TriggerClientEvent('rpemotes:client:displayEmoji', playerId, source, emoji)
    end

    SetTimeout(5000, function()
        if playerEmojiCounts[source] and playerEmojiCounts[source] > 0 then
            playerEmojiCounts[source] = playerEmojiCounts[source] - 1
        end
    end)
end)

AddEventHandler('playerDropped', function()
    local source = source
    if emojiCooldowns[source] then
        emojiCooldowns[source] = nil
    end
    if playerEmojiCounts[source] then
        playerEmojiCounts[source] = nil
    end
end)