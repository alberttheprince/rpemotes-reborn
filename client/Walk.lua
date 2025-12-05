local canChange = true
local unable_message = "You are unable to change your walking style right now."

function WalkMenuStart(name, force)
    if not canChange and not force then
        EmoteChatMessage(unable_message)
        return
    end

    if not name or name == "" then
        ResetWalk()
        return
    end
    local emoteData = WalkData[name]
    if not emoteData or type(emoteData) ~= "table" then
        EmoteChatMessage("'" .. tostring(name) .. "' is not a valid walk")
        return
    end

    -- Check ACE permission
    if not HasEmotePermission(name, EmoteType.WALKS) then
        EmoteChatMessage("You don't have permission to use this walk")
        return
    end

    if Config.AbusableEmotesDisabled and emoteData.abusable then
        EmoteChatMessage(Translate('abusableemotedisabled'))
        return
    end

    local walk = emoteData.anim
    assert(walk ~= nil)
    RequestWalking(walk)
    SetPedMovementClipset(PlayerPedId(), walk, 0.2)
    RemoveAnimSet(walk)

    if Config.PersistentWalk then SetResourceKvp("walkstyle", name) end
end

function ResetWalk()
    if not canChange then
        EmoteChatMessage(unable_message)
        return
    end
    ResetPedMovementClipset(PlayerPedId(), 0.0)
end

function WalksOnCommand()
    local WalksCommand = ""
    for name, data in PairsByKeys(WalkData) do
        if type(data) == "table" then
            WalksCommand = WalksCommand .. string.lower(name) .. ", "
        end
    end
    EmoteChatMessage(WalksCommand)
    EmoteChatMessage("To reset do /walk reset")
end

function WalkCommandStart(name)
    if not canChange then
        EmoteChatMessage(unable_message)
        return
    end
    name = FirstToUpper(string.lower(name))

    if name == "Reset" then
        ResetPedMovementClipset(PlayerPedId(), 0.0)
        DeleteResourceKvp("walkstyle")
        return
    end

    WalkMenuStart(name, true)
end

if Config.WalkingStylesEnabled and Config.PersistentWalk then
    local function walkstyleExists(kvp)
        while not CONVERTED do
            Wait(0)
        end
        if not kvp or kvp == "" then
            return false
        end

        local walkstyle = WalkData[kvp]
        return walkstyle and type(walkstyle) == "table"
    end

    function HandleWalkstyle()
        local kvp = GetResourceKvpString("walkstyle")
        if not kvp then return end
        if walkstyleExists(kvp) then
            WalkMenuStart(kvp, true)
        else
            ResetPedMovementClipset(PlayerPedId(), 0.0)
            DeleteResourceKvp("walkstyle")
        end
    end

    AddEventHandler('playerSpawned', function()
        Wait(3000)
        HandleWalkstyle()
    end)

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', HandleWalkstyle)
    RegisterNetEvent('esx:playerLoaded', HandleWalkstyle)

    AddEventHandler('onResourceStart', function(resource)
        if resource ~= GetCurrentResourceName() then return end
        HandleWalkstyle()
    end)

    -- Monitor for ped changes and re-apply walkstyle
    CreateThread(function()
        local currentPed
        while true do
            Wait(1000)
            local newPed = PlayerPedId()
            if currentPed ~= newPed then
                currentPed = newPed
                Wait(500) -- Small delay to ensure ped is fully loaded
                HandleWalkstyle()
            end
        end
    end)
end

if Config.WalkingStylesEnabled then
    RegisterCommand('walks', function() WalksOnCommand() end, false)
    RegisterCommand('walk', function(_, args, _) WalkCommandStart(tostring(args[1])) end, false)
    TriggerEvent('chat:addSuggestion', '/walk', 'Set your walkingstyle.', { { name = "style", help = "/walks for a list of valid styles" } })
    TriggerEvent('chat:addSuggestion', '/walks', 'List available walking styles.')
end

CreateExport('toggleWalkstyle', function(bool, message)
    canChange = bool
    if message then
        unable_message = message
    end
end)

CreateExport('getWalkstyle', function()
    return GetResourceKvpString("walkstyle")
end)

CreateExport('setWalkstyle', WalkMenuStart)
