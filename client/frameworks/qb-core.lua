if Config.Framework ~= 'qb-core' then return end

local framework = 'qb-core'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

QBCore, PlayerData, isLoggedIn = nil, nil, false

-- QB core parts
QBCore = exports[framework]:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData()
isLoggedIn = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    isLoggedIn = true
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
    isLoggedIn = false
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

-- This is here to get the player data when the resource is restarted instead of having to log out and back in each time
-- This won't set the player data too early as this only triggers when the server side is started and not the client side
AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(200)
        PlayerData = QBCore.Functions.GetPlayerData()
        isLoggedIn = true
    end
end)

function CanUseFavKeyBind()
    return not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead']
end

-- Added events
RegisterNetEvent('animations:client:PlayEmote', function(args)
    if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
        EmoteCommandStart(source, args)
    end
end)

if Config.SqlKeybinding then
    RegisterNetEvent('animations:client:BindEmote', function(args)
        if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
            EmoteBindStart(source, args)
        end
    end)

    RegisterNetEvent('animations:client:EmoteBinds', function()
        if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
            EmoteBindsStart()
        end
    end)
end

RegisterNetEvent('animations:client:EmoteMenu', function()
    if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
        OpenEmoteMenu()
    end
end)

RegisterNetEvent('animations:client:ListEmotes', function()
    if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
        EmotesOnCommand()
    end
end)

RegisterNetEvent('animations:client:Walk', function(args)
    if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
        WalkCommandStart(source, args)
    end
end)

RegisterNetEvent('animations:client:ListWalks', function()
    if not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['isdead'] then
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
