-- Emoji display functionality
local emojiDisplaying = {}

-- Emoji data (key = emoji)
EmojiData = {
    ['grinning'] = '😀',
    ['smiley'] = '😃',
    ['smile'] = '😄',
    ['grin'] = '😁',
    ['laughing'] = '😆',
    ['sweat_smile'] = '😅',
    ['joy'] = '😂',
    ['rofl'] = '🤣',
    ['relaxed'] = '😊',
    ['slightly_smiling'] = '🙂',
    ['upside_down'] = '🙃',
    ['wink'] = '😉',
    ['relieved'] = '😌',
    ['heart_eyes'] = '😍',
    ['smiling_hearts'] = '🥰',
    ['yum'] = '😋',
    ['tongue'] = '😛',
    ['squinting_tongue'] = '😝',
    ['winking_tongue'] = '😜',
    ['zany'] = '🤪',
    ['star_struck'] = '🤩',
    ['sunglasses'] = '😎',
    ['partying'] = '🥳',
    ['innocent'] = '😇',
    ['neutral'] = '😐',
    ['expressionless'] = '😑',
    ['no_mouth'] = '😶',
    ['smirk'] = '😏',
    ['unamused'] = '😒',
    ['rolling_eyes'] = '🙄',
    ['raised_eyebrow'] = '🤨',
    ['thinking'] = '🤔',
    ['diagonal_mouth'] = '🫤',
    ['shushing'] = '🤫',
    ['zipper_mouth'] = '🤐',
    ['disappointed'] = '😞',
    ['pensive'] = '😔',
    ['worried'] = '😟',
    ['confused'] = '😕',
    ['slightly_frowning'] = '🙁',
    ['frowning'] = '☹️',
    ['persevere'] = '😣',
    ['confounded'] = '😖',
    ['tired'] = '😫',
    ['weary'] = '😩',
    ['pleading'] = '🥺',
    ['cry'] = '😢',
    ['sob'] = '😭',
    ['sweat'] = '😓',
    ['disappointed_relieved'] = '😥',
    ['cold_sweat'] = '😰',
    ['fearful'] = '😨',
    ['anguished'] = '😧',
    ['frowning_open_mouth'] = '😦',
    ['triumph'] = '😤',
    ['angry'] = '😠',
    ['rage'] = '😡',
    ['cursing'] = '🤬',
    ['flushed'] = '😳',
    ['hushed'] = '😯',
    ['open_mouth'] = '😮',
    ['astonished'] = '😲',
    ['peeking'] = '🫣',
    ['hand_over_mouth'] = '🫢',
    ['exploding_head'] = '🤯',
    ['scream'] = '😱',
    ['grimacing'] = '😬',
    ['exhaling'] = '😮💨',
    ['dizzy'] = '😵',
    ['dizzy_spiral'] = '😵💫',
    ['melting'] = '🫠',
    ['shaking'] = '🫨',
    ['yawning'] = '🥱',
    ['sleepy'] = '😪',
    ['sleeping'] = '😴',
    ['holding_tears'] = '🥹',
    ['smiling_tear'] = '🥲',
    ['heart'] = '❤️',
    ['poultry_leg'] = '🍗',
    ['potable_water'] = '🚰',
    ['nauseated'] = '🤢',
    ['vomiting'] = '🤮',
    ['sneezing'] = '🤧',
    ['monocle'] = '🧐',
    ['skull'] = '💀',
    ['poop'] = '💩',
    ['skull_crossbones'] = '☠️',
    ['bone'] = '🦴',
    ['paw_prints'] = '🐾',
    ['injured'] = '🤕',
    ['no_pedestrians'] = '🚷',
    ['toilet'] = '🚽',
    ['ear'] = '👂',
    ['thumbs_up'] = '👍',
    ['thumbs_down'] = '👎',
}

-- Function to draw text in 3D space
local function DrawText3D(coords, text)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    local scale = 300 / (GetGameplayCamFov() * dist)

    SetTextColour(230, 230, 230, 255)
    SetTextScale(0.0, 0.5 * scale)
    SetTextDropshadow(0, 0, 0, 0, 55)
    SetTextDropShadow()
    SetTextCentre(true)

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

-- Function to display emoji above the ped's head
local function DisplayEmoji(ped, emoji)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)

    if dist <= 25 then
        emojiDisplaying[ped] = (emojiDisplaying[ped] or 0) + 1
        local isDisplaying = true

        CreateThread(function()
            Wait(5000) -- Display time in milliseconds
            isDisplaying = false
        end)

        local offset = 1.0 + emojiDisplaying[ped] * 0.1
        while isDisplaying do
            if HasEntityClearLosToEntity(playerPed, ped, 17) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), emoji)
            end
            Wait(0)
        end

        emojiDisplaying[ped] = emojiDisplaying[ped] - 1
    end
end

-- State bag change handler for emoji display (replaces old event-based system)
AddStateBagChangeHandler('emoji', '', function(bagName, key, value, _unused, replicated)
    -- Ignore if no emoji value (cleared) or if it's our own state
    if not value then return end
    
    -- Extract player ID from state bag name
    local plyId = tonumber(bagName:gsub('player:', ''), 10)
    if not plyId then return end
    
    -- Get the player from server ID
    local ply = GetPlayerFromServerId(plyId)
    if ply == -1 then return end
    
    -- Get the player's ped
    local ped = GetPlayerPed(ply)
    if not DoesEntityExist(ped) then return end
    
    -- Display the emoji
    DisplayEmoji(ped, value)
end)

-- Function to show emoji (called from menu or keybind)
function ShowEmoji(emojiKey)
    if not Config.EmojiMenuEnabled then return end

    local playerPed = PlayerPedId()

    -- Check if animals only mode is enabled
    if Config.EmojiMenuAnimalsOnly then
        if IsPedHuman(playerPed) then
            SimpleNotify("Emojis are only available for animals!")
            return
        end
    end

    local emoji = EmojiData[emojiKey]
    if not emoji then
        SimpleNotify("Emoji not found!")
        return
    end

    TriggerServerEvent('rpemotes:server:shareEmoji', emoji)
end