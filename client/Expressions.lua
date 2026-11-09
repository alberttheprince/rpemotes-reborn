function SetPlayerPedExpression(expression, saveToKvp)
    local emote = ExpressionData[expression]
    if emote then
        if IsPedBusy(PlayerPedId()) then return end

        SetFacialIdleAnimOverride(PlayerPedId(), emote.anim, 0)
        if Config.PersistentExpression and saveToKvp then SetResourceKvp("expression", expression) end
    else
        ClearFacialIdleAnimOverride(PlayerPedId())
        DeleteResourceKvp("expression")
    end
end

if Config.ExpressionsEnabled then
    RegisterCommand('mood', function(_source, args, _raw)
        if not args[1] then return end
        local expression = FirstToUpper(string.lower(args[1]))
        if ExpressionData[expression] then
            if not HasEmotePermission(expression, EmoteType.EXPRESSIONS) then
                EmoteChatMessage("You don't have permission to use this expression")
                return
            end
            SetPlayerPedExpression(expression, true)
        elseif expression == "Reset" then
            SetPlayerPedExpression(nil)
        else
            EmoteChatMessage("'" .. expression .. "' is not a valid mood")
        end
    end, false)

    TriggerEvent('chat:addSuggestion', '/mood', 'Set your current mood/expression.',
        { { name = "expression", help = "/moods for a list of valid moods" } })
    TriggerEvent('chat:addSuggestion', '/moods', 'List available walking moods/expressions.')


    local function LoadPersistentExpression()
        local expression = GetResourceKvpString("expression")
        if not expression then return end
        Wait(2500)

        -- Older versions saved the animation name instead of the expression name
        if not ExpressionData[expression] then
            for name, data in pairs(ExpressionData) do
                if data.anim == expression then
                    expression = name
                    break
                end
            end
        end
        SetPlayerPedExpression(expression, false)
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
