function SetPlayerPedExpression(expression, saveToKvp)
    local emote = ExpressionData[expression]
    if emote then
        SetFacialIdleAnimOverride(PlayerPedId(), emote.anim, 0)
        if Config.PersistentExpression and saveToKvp then SetResourceKvp("expression", emote.anim) end
    else
        ClearFacialIdleAnimOverride(PlayerPedId())
        DeleteResourceKvp("expression")
    end
end

if Config.ExpressionsEnabled then
    RegisterCommand('mood', function(_source, args, _raw)
        local expression = FirstToUpper(string.lower(args[1]))
        local emote = ExpressionData[expression]
        if emote then
            -- Check ACE permission
            if not HasEmotePermission(expression, EmoteType.EXPRESSIONS) then
                EmoteChatMessage("You don't have permission to use this expression")
                return
            end
            SetPlayerPedExpression(emote.anim, true)
        elseif expression == "Reset" then
            ClearFacialIdleAnimOverride(PlayerPedId())
            DeleteResourceKvp("expression")
        else
            EmoteChatMessage("'" .. expression .. "' is not a valid mood")
        end
    end, false)

    TriggerEvent('chat:addSuggestion', '/mood', 'Set your current mood/expression.',
        { { name = "expression", help = "/moods for a list of valid moods" } })
    TriggerEvent('chat:addSuggestion', '/moods', 'List available walking moods/expressions.')


    local function LoadPersistentExpression()
        local expression = GetResourceKvpString("expression")
        if expression then
            Wait(2500)
            SetPlayerPedExpression(expression, false)
        end
    end

    if Config.PersistentExpression then
        AddEventHandler('playerSpawned', LoadPersistentExpression)
        RegisterNetEvent('QBCore:Client:OnPlayerLoaded', LoadPersistentExpression)
        RegisterNetEvent('esx:playerLoaded', LoadPersistentExpression)
    end

    AddEventHandler('onResourceStart', function(resource)
        if resource ~= GetCurrentResourceName() then return end
        LoadPersistentExpression()
    end)
end
