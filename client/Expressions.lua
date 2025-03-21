if not Config.ExpressionsEnabled then return end

function SetPlayerPedExpression(expression, saveToKvp)
    SetFacialIdleAnimOverride(PlayerPedId(), expression, 0)
    if Config.PersistentExpression and saveToKvp then SetResourceKvp("expression", expression) end
end

function DisplayExpressions()
    local moodsString = ""
    for name, _ in pairs(RP.Expressions) do
        moodsString = moodsString .. string.lower(name) .. ", "
    end

    EmoteChatMessage(moodsString)
    EmoteChatMessage("To reset do /mood reset")
end

function SetMood(args)
    local expression = FirstToUpper(string.lower(args[1]))
    if RP.Expressions[expression] ~= nil then
        SetPlayerPedExpression(RP.Expressions[expression][1], true)
    elseif expression == "Reset" then
        ClearFacialIdleAnimOverride(PlayerPedId())
        DeleteResourceKvp("expression")
    else
        EmoteChatMessage("'" .. expression .. "' is not a valid mood, do /moods to see all moods.")
    end
end

    -- Load the expression once the player has spawned. Standalone, QBCore and ESX --
local function LoadPersistentExpression()
    local expression = GetResourceKvpString("expression")
    if expression then
        Wait(2500) -- Delay, to ensure the player ped has loaded in
        SetPlayerPedExpression(expression, false)
    end
end

if Config.PersistentExpression then
    AddEventHandler('playerSpawned', LoadPersistentExpression)
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', LoadPersistentExpression)
    RegisterNetEvent('esx:playerLoaded', LoadPersistentExpression)
end
