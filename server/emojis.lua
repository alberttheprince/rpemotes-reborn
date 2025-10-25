local activeEmojiTimers = {}
local emojiCooldowns = {}

RegisterNetEvent('rpemotes:server:shareEmoji', function(emoji)
    local source = source
    if not Player(source).state.canEmote then return end

    if emojiCooldowns[source] and GetGameTimer() < emojiCooldowns[source] then
        return
    end

    emojiCooldowns[source] = GetGameTimer() + Config.EmojiCooldownMs

    activeEmojiTimers[source] = nil

    Player(source).state:set('emoji', emoji, true)

    activeEmojiTimers[source] = true

    SetTimeout(5000, function() -- 5 seconds display time
        if activeEmojiTimers[source] and Player(source) and Player(source).state then
            Player(source).state:set('emoji', nil, true)
            activeEmojiTimers[source] = nil
        end
    end)
end)

AddEventHandler('playerDropped', function()
    local source = source
    if activeEmojiTimers[source] then
        activeEmojiTimers[source] = nil
    end
    if emojiCooldowns[source] then
        emojiCooldowns[source] = nil
    end
end)