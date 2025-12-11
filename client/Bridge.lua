Framework = 'standalone'
PlayerLoaded, PlayerData = nil, {}

local function InitializeFramework()
    if GetResourceState('es_extended') == 'started' then
        ESX = exports.es_extended:getSharedObject()
        Framework = 'esx'

        RegisterNetEvent('esx:playerLoaded', function(xPlayer)
            PlayerData = xPlayer
            PlayerLoaded = true
        end)

        RegisterNetEvent('esx:onPlayerLogout', function()
            PlayerData = {}
            PlayerLoaded = false
        end)

        AddEventHandler('esx:setPlayerData', function(key, value)
            PlayerData[key] = value
        end)

        AddEventHandler('onResourceStart', function(resourceName)
            if GetCurrentResourceName() ~= resourceName then return end
            PlayerData = ESX.GetPlayerData()
            PlayerLoaded = true
        end)
    elseif GetResourceState('qb-core') == 'started' then
        QBCore = exports['qb-core']:GetCoreObject()
        Framework = 'qb'

        AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
            PlayerData = QBCore.Functions.GetPlayerData()
        end)

        RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
            PlayerData = {}
        end)

        -- This event fires when metadata changes (death, laststand, etc.)
        RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
            PlayerData = val
        end)

        AddEventHandler('onResourceStart', function(resourceName)
            if GetCurrentResourceName() ~= resourceName then return end
            PlayerData = QBCore.Functions.GetPlayerData()
        end)
    end

    print('[RPEmotes-Reborn] Framework initialized: ' .. Framework)
end

function CanDoAction()
    if Framework == 'esx' then
        return PlayerLoaded and not PlayerData.dead
    elseif Framework == 'qb' then
        return LocalPlayer.state.isLoggedIn and not (PlayerData.metadata.inlaststand or PlayerData.metadata.isdead or PlayerData.metadata.ishandcuffed)    end
    -- here you can implement your own standalone framework check
    return true
end

InitializeFramework()


-- EVENTS

RegisterNetEvent('animations:client:PlayEmote', function(args)
    if CanDoAction() then
        EmoteCommandStart(args)
    end
end)

if Config.Keybinding then
    RegisterNetEvent('animations:client:BindEmote', function(args)
        if CanDoAction() then
            EmoteBindStart(nil, args)
        end
    end)

    RegisterNetEvent('animations:client:EmoteBinds', function()
        if CanDoAction() then
            ListKeybinds()
        end
    end)

    RegisterNetEvent('animations:client:EmoteDelete', function(args)
        if CanDoAction() then
            DeleteEmote(args)
        end
    end)
end


RegisterNetEvent('animations:client:EmoteMenu', function()
    if CanDoAction() then
        OpenEmoteMenu()
    end
end)

RegisterNetEvent('animations:client:Walk', function(args)
    if CanDoAction() then
        WalkCommandStart(args)
    end
end)

RegisterNetEvent('animations:client:ListWalks', function()
    if CanDoAction() then
        WalksOnCommand()
    end
end)


local function DelayedHandleWalkstyle()
    SetTimeout(1500, HandleWalkstyle)
end

if Framework == 'qb' then
    RegisterNetEvent('hospital:client:Revive', DelayedHandleWalkstyle)
    RegisterNetEvent('qbx_medical:client:playerRevived', DelayedHandleWalkstyle)
end