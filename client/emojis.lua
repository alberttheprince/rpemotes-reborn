local activeEmojis = {}
local drawLoopActive = false

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
    ['exhaling'] = '💨',
    ['dizzy'] = '😵',
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

local function drawText3D(coords, text)
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

local function startEmojiDrawLoop()
    if drawLoopActive then return end
    drawLoopActive = true

    CreateThread(function()
        local playerPed = PlayerPedId()

        while drawLoopActive do
            playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local hasActiveEmojis = false

            for ped, emojiList in pairs(activeEmojis) do
                if DoesEntityExist(ped) then
                    local pedCoords = GetEntityCoords(ped)
                    local dist = #(playerCoords - pedCoords)

                    if dist <= 25 then
                        for i = #emojiList, 1, -1 do
                            local emojiData = emojiList[i]

                            if GetGameTimer() >= emojiData.expireTime then
                                table.remove(emojiList, i)
                            else
                                hasActiveEmojis = true

                                if HasEntityClearLosToEntity(playerPed, ped, 17) then
                                    local coords = GetEntityCoords(ped)
                                    local offset = 1.0 + (i - 1) * 0.15
                                    local drawCoords = vector3(coords.x, coords.y, coords.z + offset)
                                    drawText3D(drawCoords, emojiData.emoji)
                                end
                            end
                        end

                        if #emojiList == 0 then
                            activeEmojis[ped] = nil
                        end
                    else
                        activeEmojis[ped] = nil
                    end
                else
                    activeEmojis[ped] = nil
                end
            end

            if not hasActiveEmojis then
                drawLoopActive = false
            end

            Wait(0)
        end
    end)
end

local function addEmojiToPed(ped, emoji)
    if not activeEmojis[ped] then
        activeEmojis[ped] = {}
    end

    if #activeEmojis[ped] >= Config.MaxEmojisPerPlayer then
        table.remove(activeEmojis[ped], 1)
    end

    table.insert(activeEmojis[ped], {
        emoji = emoji,
        expireTime = GetGameTimer() + 5000 -- 5 seconds display time
    })

    startEmojiDrawLoop()
end

AddStateBagChangeHandler('emoji', '', function(bagName, key, value, _unused, replicated)
    if not value then return end

    local plyId = tonumber(bagName:gsub('player:', ''), 10)
    if not plyId then return end

    local ply = GetPlayerFromServerId(plyId)
    if ply == -1 then return end

    local ped = GetPlayerPed(ply)
    if not DoesEntityExist(ped) then return end

    addEmojiToPed(ped, value)
end)

function ShowEmoji(emojiKey)
    if not Config.EmojiMenuEnabled then return end

    local playerPed = PlayerPedId()

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