--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



function SetPlayerPedExpression(expression, saveToKvp)
    SetFacialIdleAnimOverride(PlayerPedId(), expression, 0)
    if Config.PersistentExpression and saveToKvp then SetResourceKvp("expression", expression) end
end

local function DisplayExpressions()
    local moodsString = ""
    for name, _ in pairs(RP.Expressions) do
        moodsString = moodsString..string.lower(name)..", "
    end

    EmoteChatMessage(moodsString)
    EmoteChatMessage("To reset do /mood reset")
end

if Config.ExpressionsEnabled then
    RegisterCommand('mood', function(_source, args, _raw)
        local expression = firstToUpper(string.lower(args[1]))
        if RP.Expressions[expression] ~= nil then
            SetPlayerPedExpression(RP.Expressions[expression][1], true)
        elseif expression == "Reset" then
            ClearFacialIdleAnimOverride(PlayerPedId())
            DeleteResourceKvp("expression")
        else
            EmoteChatMessage("'"..expression.."' is not a valid mood, do /moods to see all moods.")
        end
    end, false)

    RegisterCommand('moods', function()
        DisplayExpressions()
    end, false)

    -- Chat Suggestions
    TriggerEvent('chat:addSuggestion', '/mood', 'Set your current mood/expression.', { { name = "expression", help = "/moods for a list of valid moods" } })
    TriggerEvent('chat:addSuggestion', '/moods', 'List available walking moods/expressions.')


    -- Load the expression once the player has spawned. Standalone, QBCore and ESX --
    if Config.PersistentExpression then
        AddEventHandler('playerSpawned', function()
            local expression = GetResourceKvpString("expression")
            if expression ~= nil then
                Wait(2500) -- Delay, to ensure the player ped has loaded in
                SetPlayerPedExpression(expression, false)
            end
        end)

        RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
        AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
            Citizen.Wait(5000)
            local expression = GetResourceKvpString("expression")
            if expression ~= nil then
                Wait(2500) -- Delay, to ensure the player ped has loaded in
                SetPlayerPedExpression(expression, false)
            end
        end)

        RegisterNetEvent('esx:playerLoaded')
        AddEventHandler('esx:playerLoaded', function()
            Citizen.Wait(5000)
            local expression = GetResourceKvpString("expression")
            if expression ~= nil then
                Wait(2500) -- Delay, to ensure the player ped has loaded in
                SetPlayerPedExpression(expression, false)
            end
        end)
    end

end
