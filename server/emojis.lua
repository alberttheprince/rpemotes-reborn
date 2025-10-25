RegisterNetEvent('rpemotes:server:shareEmoji', function(emoji)
    local source = source
    if not Player(source).state.canEmote then return end

    Player(source).state:set('emoji', emoji, true)

    SetTimeout(5000, function()
        if Player(source) and Player(source).state then
            Player(source).state:set('emoji', nil, true)
        end
    end)
end)