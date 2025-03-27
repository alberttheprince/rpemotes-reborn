if Config.Framework ~= 'esx' then return end

local framework = 'es_extended'
local state = GetResourceState(framework)

if state == 'missing' or state == "unknown" then
    -- Framework can't be used if it's missing or unknown
    return
end

-- ESX core parts
ESX = exports[framework]:getSharedObject()

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    ESX.PlayerLoaded = true
end)

-- This is here to get the player data when the resource is restarted instead of having to log out and back in each time
-- This won't set the player data too early as this only triggers when the server side is started and not the client side
AddEventHandler('onResourceStart', function(resource)
    CreateThread(function()
        while true do
            local IsLoaded = ESX.IsPlayerLoaded()
            if IsLoaded then
                ESX.PlayerData = ESX.GetPlayerData()
                ESX.PlayerLoaded = true
                break
            end
            Wait(100)
        end
    end)
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

if Config.Keybinding then
    RegisterNetEvent('animations:client:BindEmote', function(args)
        if not ESX.PlayerData.dead then
            EmoteBindStart(nil, args)
        end
    end)

    RegisterNetEvent('animations:client:EmoteBinds', function(_)
        if not ESX.PlayerData.dead then
            EmoteBindsStart()
        end
    end)

    RegisterNetEvent('animations:client:EmoteDelete', function(args)
        if not ESX.PlayerData.dead then
            DeleteEmote(args)
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
        WalkCommandStart(args)
    end
end)

RegisterNetEvent('animations:client:EmoteCancel', function()
    if not ESX.PlayerData.dead then
        EmoteCancel()
    end
end)

RegisterNetEvent('animations:client:EmoteFav', function()
    if not ESX.PlayerData.dead then
        FavKeybind()
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

RegisterNetEvent('animations:client:ragdoll',function()
    if not ESX.PlayerData.dead then
        Ragdoll()
    end
end)

RegisterNetEvent('animations:client:binoculars',function()
    if not ESX.PlayerData.dead then
        UseBinocular()
    end
end)

RegisterNetEvent('animations:client:crawl',function()
    if not ESX.PlayerData.dead then
        CrawlKeyPressed()
    end
end)

RegisterNetEvent('animations:client:crouch',function()
    if not ESX.PlayerData.dead then
        CrouchKeyPressed()
    end
end)

RegisterNetEvent('animations:client:idlecam',function(value)
    Idlecam(value)
end)

RegisterNetEvent('animations:client:newscam',function()
    if not ESX.PlayerData.dead then
        UseNewscam()
    end
end)

RegisterNetEvent('animations:client:pointing',function()
    if not ESX.PlayerData.dead then
        UsePointing()
    end
end)

RegisterNetEvent('animations:client:setMood',function(arg)
    if not ESX.PlayerData.dead then
        SetMood(arg)
    end
end)

RegisterNetEvent('animations:client:moods',function()
    DisplayExpressions()
end)

RegisterNetEvent('animations:client:nearby',function(arg)
    if not ESX.PlayerData.dead then
        Nearby(arg)
    end
end)
