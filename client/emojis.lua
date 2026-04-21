local activeEmojis = {}
local drawLoopActive = false

EmojiData = {
    -- ['dizzy_spiral'] = '😵💫', -- This counts as 1 emoji, but for sake of preventing visual clutter we leave it out. Multiple emojis can be played like this though.
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
    ['awkward'] = '🫤',
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
    local onScreen, x, y = World3dToScreen2d(coords.x, coords.y, coords.z)
    
    if onScreen then
        local camCoords = GetGameplayCamCoord()
        local dist = #(coords - camCoords)
        local scale = (1 / dist) * 2
        local fov = (1 / GetGameplayCamFov()) * 100
        scale = scale * fov * 0.6
        
        SetTextScale(0.0, scale)
        SetTextFont(4)
        SetTextProportional(true)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        DrawText(x, y)
    end
end

local function startEmojiDrawLoop()
    if drawLoopActive then return end
    drawLoopActive = true

    CreateThread(function()
        local playerPed = PlayerPedId()

        while drawLoopActive do
            playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for serverId, emojiList in pairs(activeEmojis) do
                local player = GetPlayerFromServerId(serverId)
                if player ~= -1 then
                    local ped = GetPlayerPed(player)
                    if DoesEntityExist(ped) then
                        local pedCoords = GetEntityCoords(ped)
                        local dist = #(playerCoords - pedCoords)

                        if dist <= Config.EmojiRange then
                            for i = #emojiList, 1, -1 do
                                local emojiData = emojiList[i]

                                if GetGameTimer() >= emojiData.expireTime then
                                    table.remove(emojiList, i)
                                else
                                    if HasEntityClearLosToEntity(playerPed, ped, 17) then
                                        local coords = GetEntityCoords(ped)
                                        local offset = 1.0 + (i - 1) * 0.20
                                        local drawCoords = vector3(coords.x, coords.y, coords.z + offset)
                                        drawText3D(drawCoords, emojiData.emoji)
                                    end
                                end
                            end

                            if not next(emojiList) then
                                activeEmojis[serverId] = nil
                            end
                        else
                            activeEmojis[serverId] = nil
                        end
                    else
                        activeEmojis[serverId] = nil
                    end
                else
                    activeEmojis[serverId] = nil
                end
            end

            if not next(activeEmojis) then
                drawLoopActive = false
            end

            Wait(0)
        end
    end)
end

local function addEmojiToPlayer(serverId, emoji)
    if not activeEmojis[serverId] then
        activeEmojis[serverId] = {}
    end

    local emojiList = activeEmojis[serverId]
    emojiList[#emojiList + 1] = {
        emoji = emoji,
        expireTime = GetGameTimer() + 5000 -- 5 seconds display time
    }

    startEmojiDrawLoop()
end

RegisterNetEvent('rpemotes:client:displayEmoji', function(serverId, emoji)
    addEmojiToPlayer(serverId, emoji)
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
    if not CanDoAction() then return end

    TriggerServerEvent('rpemotes:server:shareEmoji', emoji)
end