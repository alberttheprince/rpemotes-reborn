if Config.Framework ~= 'esx' then return end

local framework = 'es_extended'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

ESX, PlayerData, isLoggedIn = nil, nil, false

-- ESX core parts
ESX = exports[framework]:getSharedObject()
PlayerData = ESX.GetPlayerData()
isLoggedIn = false

RegisterNetEvent('esx:onPlayerSpawn', function()
    PlayerData = ESX.GetPlayerData()
    isLoggedIn = true
end)

-- This is here to get the player data when the resource is restarted instead of having to log out and back in each time
-- This won't set the player data too early as this only triggers when the server side is started and not the client side
AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(200)
        PlayerData = ESX.GetPlayerData()
        isLoggedIn = true
    end
end)

function CanUseFavKeyBind()
    return not ESX.PlayerData.dead
end

-- Added events
RegisterNetEvent('animations:client:PlayEmote', function(args)
    if not ESX.PlayerData.dead then
        EmoteCommandStart(source, args)
    end
end)

if Config.SqlKeybinding then
    RegisterNetEvent('animations:client:BindEmote', function(args)
        if not ESX.PlayerData.dead then
            EmoteBindStart(source, args)
        end
    end)

    RegisterNetEvent('animations:client:EmoteBinds', function()
        if not ESX.PlayerData.dead then
            EmoteBindsStart()
        end
    end)
end

RegisterNetEvent('animations:client:EmoteMenu', function()
    if not ESX.PlayerData.dead then
        OpenEmoteMenu()
    end
end)

RegisterNetEvent('animations:client:ListEmotes', function()
    if not ESX.PlayerData.dead then
        EmotesOnCommand()
    end
end)

RegisterNetEvent('animations:client:Walk', function(args)
    if not ESX.PlayerData.dead then
        WalkCommandStart(source, args)
    end
end)

RegisterNetEvent('animations:client:ListWalks', function()
    if not ESX.PlayerData.dead then
        WalksOnCommand()
    end
end)

-- Added by https://github.dev/qbcore-framework/dpemotes/

CanDoEmote = true
RegisterNetEvent('animations:ToggleCanDoAnims', function(bool)
    CanDoEmote = bool
end)

RegisterNetEvent('animations:client:EmoteCommandStart', function(args)
    if CanDoEmote then
        EmoteCommandStart(source, args)
    end
end)
