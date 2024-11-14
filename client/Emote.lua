-- You probably shouldn't touch these.
local ChosenDict = ""
local ChosenAnimOptions = false
local PlayerGender = "male"
local PlayerProps = {}
local PlayerParticles = {}
local PreviewPedProps = {}
local PtfxNotif = false
local PtfxPrompt = false
local AnimationThreadStatus = false
local CheckStatus = false
local CanCancel = true
local InExitEmote = false
local ExitAndPlay = false
local EmoteCancelPlaying = false
local currentEmote = {}
local attachedProp
IsInAnimation = false
CurrentAnimationName = nil
CurrentTextureVariation = nil
InHandsup = false

-- Remove emotes if needed

local emoteTypes = {
    "Shared",
    "Dances",
    "AnimalEmotes",
    "Emotes",
    "PropEmotes",
}

for i = 1, #emoteTypes do
    local emoteType = emoteTypes[i]
    for emoteName, emoteData in pairs(RP[emoteType]) do
        local shouldRemove = false
        if Config.AdultEmotesDisabled and emoteData.AdultAnimation then shouldRemove = true end
        if emoteData[1] and not ((emoteData[1] == 'Scenario') or (emoteData[1] == 'ScenarioObject') or (emoteData[1] == 'MaleScenario')) and not DoesAnimDictExist(emoteData[1]) then shouldRemove = true end
        if shouldRemove then RP[emoteType][emoteName] = nil end
    end
end

local function RunAnimationThread()
    local playerId = PlayerPedId()
    if AnimationThreadStatus then return end
    AnimationThreadStatus = true
    CreateThread(function()
        local sleep
        while AnimationThreadStatus and (IsInAnimation or PtfxPrompt) do
            sleep = 500

            if IsInAnimation then
                sleep = 0
                if IsPlayerAiming(playerId) then
                    EmoteCancel()
                end
                if not Config.AllowPunching then
                    DisableControlAction(2, 140, true)
                    DisableControlAction(2, 141, true)
                    DisableControlAction(2, 142, true)
                end
            end

            if PtfxPrompt and ChosenAnimOptions then
                sleep = 0
                if not PtfxNotif then
                    SimpleNotify(ChosenAnimOptions.PtfxInfo)
                    PtfxNotif = true
                end
                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Wait(ChosenAnimOptions.PtfxWait)
                    if ChosenAnimOptions.PtfxCanHold then
                        while IsControlPressed(0, 47) and IsInAnimation and AnimationThreadStatus do
                            Wait(5)
                        end
                    end
                    PtfxStop()
                end
            end

            Wait(sleep)
        end
    end)
end

local function CheckStatusThread(dict, anim)
    CreateThread(function()
        if CheckStatus then
            CheckStatus = false
            Wait(10)
        end
        CheckStatus = true
        while not IsEntityPlayingAnim(PlayerPedId(), dict, anim, 3) do
            Wait(5)
        end
        while CheckStatus and IsInAnimation do
            if not IsEntityPlayingAnim(PlayerPedId(), dict, anim, 3) then
                DebugPrint("Animation ended")
                DestroyAllProps()
                EmoteCancel()
                break
            end
            Wait(0)
        end
    end)
end

if Config.EnableCancelKeybind then
    RegisterKeyMapping("emotecancel", Translate('register_cancel_emote'), "keyboard", Config.CancelEmoteKey)
end

-----------------------------------------------------------------------------------------------------
-- Commands / Events --------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/e', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    TriggerEvent('chat:addSuggestion', '/emote', Translate('play_emote'),
        { { name = "emotename",      help = Translate('help_command') },
            { name = "texturevariation", help = Translate('help_variation') } })
    if Config.SqlKeybinding then
        TriggerEvent('chat:addSuggestion', '/emotebind', Translate('link_emote_keybind'),
            { { name = "key",     help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" },
                { name = "emotename", help = Translate('help_command') } })
        TriggerEvent('chat:addSuggestion', '/emotebinds', Translate('show_emote_keybind'))
        TriggerEvent('chat:addSuggestion', '/emotedelete', Translate('remove_emote_keybind'),
            { { name = "key", help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" } })
    end
    TriggerEvent('chat:addSuggestion', '/emotemenu', Translate('open_menu_emote'))
    TriggerEvent('chat:addSuggestion', '/emotes', Translate('show_list_emote'))
    TriggerEvent('chat:addSuggestion', '/emotecancel', Translate('cancel_emote'))
end)

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
RegisterCommand('emote', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
if Config.SqlKeybinding then
    RegisterCommand('emotebind', function(source, args, raw) EmoteBindStart(source, args, raw) end, false)
    RegisterCommand('emotebinds', function(source, args, raw) EmoteBindsStart() end, false)
    RegisterCommand('emotedelete', function(source, args) DeleteEmote(source, args) end, false)
end
if Config.MenuKeybindEnabled then
    RegisterCommand('emoteui', function() OpenEmoteMenu() end, false)
    RegisterKeyMapping("emoteui", Translate('register_open_menu'), "keyboard", Config.MenuKeybind)
else
    RegisterCommand('emotemenu', function() OpenEmoteMenu() end, false)
end
RegisterCommand('emotes', function() EmotesOnCommand() end, false)
RegisterCommand('emotecancel', function() EmoteCancel() end, false)

local disableHandsupControls = {
    [36] = true, -- INPUT_DUCK
    [44] = true, -- INPUT_COVER
    [53] = true, -- INPUT_WEAPON_SPECIAL
    [54] = true, --  INPUT_WEAPON_SPECIAL_TWO
    [59] = true, -- INPUT_VEH_MOVE_LR
    [60] = true, -- INPUT_VEH_MOVE_UD
    [61] = true, -- INPUT_VEH_MOVE_UP_ONLY
    [62] = true, -- INPUT_VEH_MOVE_DOWN_ONLY
    [63] = true, -- INPUT_VEH_MOVE_LEFT_ONLY
    [64] = true, -- INPUT_VEH_MOVE_RIGHT_ONLY
    [65] = true, -- INPUT_VEH_SPECIAL
    [66] = true, --  INPUT_VEH_GUN_LR
    [67] = true, -- INPUT_VEH_GUN_UD
    [69] = true, -- INPUT_VEH_ATTACK
    [70] = true, -- INPUT_VEH_ATTACK2
    [71] = true, -- INPUT_VEH_ACCELERATE
    [72] = true, -- INPUT_VEH_BRAKE
    [73] = true, -- INPUT_VEH_DUCK
    [74] = true, -- INPUT_VEH_HEADLIGHT
    [77] = true, -- INPUT_VEH_HOTWIRE_LEFT
    [78] = true, -- INPUT_VEH_HOTWIRE_RIGHT
    [80] = true, --  INPUT_VEH_CIN_CAM
    [86] = true,  -- INPUT_VEH_HORN
    [91] = true, -- INPUT_VEH_PASSENGER_AIM
    [102] = true, -- INPUT_VEH_JUMP
    [104] = true, -- INPUT_VEH_SHUFFLE
    [105] = true, -- INPUT_VEH_DROP_PROJECTILE
    [136] = true, -- INPUT_VEH_PUSHBIKE_PEDAL
    [137] = true, -- INPUT_VEH_PUSHBIKE_SPRINT
    [139] = true, -- INPUT_VEH_PUSHBIKE_REAR_BRAKE
    [140] = true, -- INPUT_MELEE_ATTACK_LIGHT
    [141] = true, --  INPUT_MELEE_ATTACK_HEAVY
    [142] = true, -- INPUT_MELEE_ATTACK_ALTERNATE
    [143] = true, -- INPUT_MELEE_BLOCK
    [337] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE
    [338] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_LEFT
    [339] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_RIGHT
    [340] = true, -- INPUT_VEH_HYDRAULICS_CONTROL_UP
    [341] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_DOWN
    [342] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_UD
    [343] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_LR
    [351] = true, --  INPUT_VEH_ROCKET_BOOST
    [354] = true, -- INPUT_VEH_BIKE_WINGS
    [357] = true, -- INPUT_VEH_TRANSFORM
    [345] = true, -- INPUT_VEH_MELEE_HOLD
    [346] = true, -- INPUT_VEH_MELEE_LEFT
    [347] = true, -- INPUT_VEH_MELEE_RIGHT
}

local playerId = PlayerId()

local function HandsUpLoop()
    CreateThread(function()
        while InHandsup do
            if disableHandsupControls then
                for control, state in pairs(disableHandsupControls) do
                    DisableControlAction(0, control, state)
                end
            end

            if IsPlayerAiming(playerId) then
                ClearPedSecondaryTask(PlayerPedId())
                CreateThread(function()
                    Wait(350)
                    InHandsup = false
                end)
            end

            Wait(0)
        end
    end)
end

if Config.HandsupEnabled then
    local function ToggleHandsUp(commandType)
        RegisterCommand(commandType, function()
            if IsPedInAnyVehicle(PlayerPedId(), false) and not Config.HandsupKeybindInCarEnabled and not InHandsup then
                return
            end
            Handsup()
        end, false)
    end

    if Config.HoldToHandsUp then
        ToggleHandsUp('+handsup')
        ToggleHandsUp('-handsup')
    else
        ToggleHandsUp('handsup')
    end

    function Handsup()
        local playerPed = PlayerPedId()
        if not IsPedHuman(playerPed) then
            return
        end
        if IsInActionWithErrorMessage() then
            return
        end

        InHandsup = not InHandsup
        if InHandsup then
            LocalPlayer.state:set('currentEmote', 'handsup', true)
            DestroyAllProps()
            local dict = "random@mugging3"
            RequestAnimDict(dict)
            while not HasAnimDictLoaded(dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), dict, "handsup_standing_base", 3.0, 3.0, -1, 49, 0, false,
                IsThisModelABike(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), false))) and 4127 or false, false)
            HandsUpLoop()
        else
            LocalPlayer.state:set('currentEmote', nil, true)
            ClearPedSecondaryTask(PlayerPedId())
            if Config.PersistentEmoteAfterHandsup and IsInAnimation then
                local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
                if not emote then
                    return
                end

                Wait(400)
                DestroyAllProps()
                OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
            end
        end
    end

    TriggerEvent('chat:addSuggestion', '/handsup', Translate('handsup'))

    if Config.HandsupKeybindEnabled then
        RegisterKeyMapping("handsup", Translate('register_handsup'), "keyboard", Config.HandsupKeybind)
    end

    local function IsPlayerInHandsUp()
        return InHandsup
    end

    exports('IsPlayerInHandsUp', IsPlayerInHandsUp)
end

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        local ped = PlayerPedId()
        ClosePedMenu()
        DestroyAllProps()
        ClearPedTasksImmediately(ped)
        DetachEntity(ped, true, false)
        ResetPedMovementClipset(ped, 0.8)
    end
end)

-----------------------------------------------------------------------------------------------------
------ Functions and stuff --------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
local scenarioObjects = {
    `p_amb_coffeecup_01`,
    `p_amb_joint_01`,
    `p_cs_ciggy_01`,
    `p_cs_ciggy_01b_s`,
    `p_cs_clipboard`,
    `prop_curl_bar_01`,
    `p_cs_joint_01`,
    `p_cs_joint_02`,
    `prop_acc_guitar_01`,
    `prop_amb_ciggy_01`,
    `prop_amb_phone`,
    `prop_beggers_sign_01`,
    `prop_beggers_sign_02`,
    `prop_beggers_sign_03`,
    `prop_beggers_sign_04`,
    `prop_bongos_01`,
    `prop_cigar_01`,
    `prop_cigar_02`,
    `prop_cigar_03`,
    `prop_cs_beer_bot_40oz_02`,
    `prop_cs_paper_cup`,
    `prop_cs_trowel`,
    `prop_fib_clipboard`,
    `prop_fish_slice_01`,
    `prop_fishing_rod_01`,
    `prop_fishing_rod_02`,
    `prop_notepad_02`,
    `prop_parking_wand_01`,
    `prop_rag_01`,
    `prop_scn_police_torch`,
    `prop_sh_cigar_01`,
    `prop_sh_joint_01`,
    `prop_tool_broom`,
    `prop_tool_hammer`,
    `prop_tool_jackham`,
    `prop_tennis_rack_01`,
    `prop_weld_torch`,
    `w_me_gclub`,
    `p_amb_clipboard_01`
}

local function cleanScenarioObjects(isClone)
    local ped = isClone and ClonedPed or PlayerPedId()
    local playerCoords = GetEntityCoords(ped)

    for i = 1, #scenarioObjects do
        local deleteScenarioObject = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 1.0,
            scenarioObjects[i], false, true, true)
        if DoesEntityExist(deleteScenarioObject) then
            SetEntityAsMissionEntity(deleteScenarioObject, false, false)
            DeleteObject(deleteScenarioObject)
        end
    end
end

function EmoteCancel(force)
    cleanScenarioObjects(false)

    LocalPlayer.state:set('currentEmote', nil, true)
    EmoteCancelPlaying = true
    -- Don't cancel if we are in an exit emote
    if InExitEmote then
        return
    end

    local ped = PlayerPedId()
    if not CanCancel and force ~= true then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if IsInAnimation then
        if LocalPlayer.state.ptfx then
            PtfxStop()
        end
        DetachEntity(ped, true, false)
        CancelSharedEmote()

        if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
            -- If the emote exit type is not specified, it defaults to Emotes
            local options = ChosenAnimOptions
            local ExitEmoteType = options.ExitEmoteType or "Emotes"

            -- Checks that the exit emote actually exists
            if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
                DebugPrint("Exit emote was invalid")
                IsInAnimation = false
                ClearPedTasks(ped)
                return
            end
            OnEmotePlay(RP[ExitEmoteType][options.ExitEmote], ExitEmoteType)
            DebugPrint("Playing exit animation")

            -- Check that the exit emote has a duration, and if so, set InExitEmote variable
            local animationOptions = RP[ExitEmoteType][options.ExitEmote].AnimationOptions
            if animationOptions and animationOptions.EmoteDuration then
                InExitEmote = true
                SetTimeout(animationOptions.EmoteDuration, function()
                    InExitEmote = false
                    DestroyAllProps()
                    ClearPedTasks(ped)
                    EmoteCancelPlaying = false
                end)
                return
            end
        else
            IsInAnimation = false
            ClearPedTasks(ped)
            EmoteCancelPlaying = false
        end
        DestroyAllProps()
    end
    AnimationThreadStatus = false
    CheckStatus = false
end

function PtfxThis(asset)
    while not HasNamedPtfxAssetLoaded(asset) do
        RequestNamedPtfxAsset(asset)
        Wait(10)
    end
    UseParticleFxAsset(asset)
end

function PtfxStart()
    LocalPlayer.state:set('ptfx', true, true)
end

function PtfxStop()
    LocalPlayer.state:set('ptfx', false, true)
end

AddStateBagChangeHandler('ptfx', '', function(bagName, key, value, _unused, replicated)
    local plyId = tonumber(bagName:gsub('player:', ''), 10)

    -- We stop here if we don't need to go further
    -- We don't need to start or stop the ptfx twice
    if (PlayerParticles[plyId] and value) or (not PlayerParticles[plyId] and not value) then return end

    -- Only allow ptfx change on players
    local ply = GetPlayerFromServerId(plyId)
    if ply == 0 then return end

    local plyPed = GetPlayerPed(ply)
    if not DoesEntityExist(plyPed) then return end

    local stateBag = Player(plyId).state

    if value then
        -- Start ptfx

        local asset = stateBag.ptfxAsset
        local name = stateBag.ptfxName
        local offset = stateBag.ptfxOffset
        local rot = stateBag.ptfxRot
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(plyPed, stateBag.ptfxBone) or
        GetEntityBoneIndexByName(name, "VFX")
        local scale = stateBag.ptfxScale or 1
        local color = stateBag.ptfxColor
        local propNet = stateBag.ptfxPropNet
        local entityTarget = plyPed

        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then
                entityTarget = propObj
            end
        end
        PtfxThis(asset)
        PlayerParticles[plyId] = StartNetworkedParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y,
            offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, false, false, false)
        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)
                color = color[randomIndex]
            end
            SetParticleFxLoopedAlpha(PlayerParticles[plyId], color.A)
            SetParticleFxLoopedColour(PlayerParticles[plyId], color.R / 255, color.G / 255, color.B / 255, false)
        end
        DebugPrint("Started PTFX: " .. PlayerParticles[plyId])
    else
        DebugPrint("Stopped PTFX: " .. PlayerParticles[plyId])
        StopParticleFxLooped(PlayerParticles[plyId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        PlayerParticles[plyId] = nil
    end
end)

function EmotesOnCommand(source, args, raw)
    local EmotesCommand = ""
    for a in PairsByKeys(RP.Emotes) do
        EmotesCommand = EmotesCommand .. "" .. a .. ", "
    end
    EmoteChatMessage(EmotesCommand)
    EmoteChatMessage(Translate('emotemenucmd'))
end

function EmoteMenuStart(name, category, textureVariation)
    if category == "dances" then
        if RP.Dances[name] ~= nil then
            OnEmotePlay(RP.Dances[name], name)
        end
    elseif category == "animals" then
        if RP.AnimalEmotes[name] ~= nil then
            CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
        end
    elseif category == "props" then
        if RP.PropEmotes[name] ~= nil then
            OnEmotePlay(RP.PropEmotes[name], name, textureVariation)
        end
    elseif category == "emotes" then
        if RP.Emotes[name] ~= nil then
            OnEmotePlay(RP.Emotes[name], name)
        end
    elseif category == "expression" then
        if RP.Expressions[name] ~= nil then
            SetPlayerPedExpression(RP.Expressions[name][1], true)
        end
    end
end

function EmoteMenuStartClone(name, category)
    if category == "dances" then
        if RP.Dances[name] then
            OnEmotePlayClone(RP.Dances[name])
        end
    elseif category == "props" then
        if RP.PropEmotes[name] then
            OnEmotePlayClone(RP.PropEmotes[name])
        end
    elseif category == "emotes" then
        if RP.Emotes[name] then
            OnEmotePlayClone(RP.Emotes[name])
        end
    elseif category == "expression" then
        if RP.Expressions[name] then
            SetFacialIdleAnimOverride(ClonedPed, RP.Expressions[name][1], 0)
        end
    end
end

function EmoteCommandStart(source, args, raw)
    if #args > 0 then
        if IsEntityDead(PlayerPedId()) or IsPedRagdoll(PlayerPedId()) or IsPedGettingUp(PlayerPedId()) or IsPedInMeleeCombat(PlayerPedId()) then
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0 },
                multiline = true,
                args = { "RPEmotes", Translate('dead') }
            })
            return
        end
        if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0 },
                multiline = true,
                args = { "RPEmotes", Translate('swimming') }
            })
            return
        end
        local name = string.lower(args[1])
        if name == "c" then
            if IsInAnimation then
                EmoteCancel()
            else
                EmoteChatMessage(Translate('nocancel'))
            end
            return
        elseif name == "help" then
            EmotesOnCommand()
            return
        end

        local emote = RP.Emotes[name] or RP.Dances[name] or RP.AnimalEmotes[name] or RP.PropEmotes[name] or RP.Expressions[name] or RP.Exits[name]
        if emote then
            if RP.AnimalEmotes[name] then
                if Config.AnimalEmotesEnabled then
                    CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
                else
                    EmoteChatMessage(Translate('animaldisabled'))
                end
                return
            end

            if RP.PropEmotes[name] and RP.PropEmotes[name].AnimationOptions.PropTextureVariations then
                if #args > 1 then
                    local textureVariation = tonumber(args[2])
                    if (RP.PropEmotes[name].AnimationOptions.PropTextureVariations[textureVariation] ~= nil) then
                        OnEmotePlay(RP.PropEmotes[name], name, textureVariation - 1)
                        return
                    else
                        local str = ""
                        for k, v in ipairs(RP.PropEmotes[name].AnimationOptions.PropTextureVariations) do
                            str = str .. string.format("\n(%s) - %s", k, v.Name)
                        end

                        EmoteChatMessage(string.format(Translate('invalidvariation'), str), true)
                        OnEmotePlay(RP.PropEmotes[name], name, 0)
                        return
                    end
                end
            end

            OnEmotePlay(emote, name)
        else
            EmoteChatMessage("'" .. name .. "' " .. Translate('notvalidemote') .. "")
        end
    end
end

function CheckAnimalAndOnEmotePlay(emoteData, name)
    local playerPed = PlayerPedId()
    local isValidPet = false

    if string.sub(name, 1, 4) == "bdog" then
        for _, model in ipairs(BigDogs) do
            if IsPedModel(playerPed, GetHashKey(model)) then
                isValidPet = true
                break
            end
        end
    elseif string.sub(name, 1, 4) == "sdog" then
        for _, model in ipairs(SmallDogs) do
            if IsPedModel(playerPed, GetHashKey(model)) then
                isValidPet = true
                break
            end
        end
    end

    if isValidPet then
        OnEmotePlay(emoteData, name)
    else
        EmoteChatMessage(Translate('notvalidpet'))
    end
end

---@param isClone boolean | nil
function DestroyAllProps(isClone)
    if isClone then
        for _, v in pairs(PreviewPedProps) do
            DeleteEntity(v)
        end
        PreviewPedProps = {}
    else
        for _, v in pairs(PlayerProps) do
            DeleteEntity(v)
        end
        PlayerProps = {}
    end
    DebugPrint("Destroyed Props for " .. (isClone and "clone" or "player"))
end

function AddProp(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation, isClone)
    local target = isClone and ClonedPed or PlayerPedId()

    local x, y, z = table.unpack(GetEntityCoords(target))

    if not IsModelValid(prop1) then
        DebugPrint(tostring(prop1) .. " is not a valid model!")
        return false
    end

    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end


    attachedProp = CreateObject(joaat(prop1), x, y, z + 0.2, not isClone, true, true)

    if textureVariation ~= nil then
        SetObjectTextureVariation(attachedProp, textureVariation)
    end


    if isClone then
        AttachEntityToEntity(attachedProp, target, GetPedBoneIndex(target, bone), off1, off2, off3, rot1, rot2, rot3,
            true, true, false, true, 1, true)
        table.insert(PreviewPedProps, attachedProp)
    else
        AttachEntityToEntity(attachedProp, target, GetPedBoneIndex(target, bone), off1, off2, off3, rot1, rot2, rot3,
            true, true, false, true, 1, true)
        table.insert(PlayerProps, attachedProp)
    end


    SetModelAsNoLongerNeeded(prop1)
    DebugPrint("Added prop to " .. (isClone and "clone" or "player"))
    return true
end

function CheckGender()
    local playerPed = PlayerPedId()

    if GetEntityModel(playerPed) == joaat("mp_f_freemode_01") then
        PlayerGender = "female"
    else
        PlayerGender = "male"
    end

    DebugPrint("Set gender as = (" .. PlayerGender .. ")")
end

function OnEmotePlay(emoteData, name, textureVariation)
    if not LocalPlayer.state.canEmote then return end

    cleanScenarioObjects(false)

    InVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
    Pointing = false

    if not Config.AllowedInCars and InVehicle then
        return
    end

    if not DoesEntityExist(PlayerPedId()) then
        return false
    end

    if Config.AdultEmotesDisabled and emoteData.AdultAnimation then
        return EmoteChatMessage(Translate('adultemotedisabled'))
    end

    if InExitEmote then
        return false
    end

    if Config.CancelPreviousEmote and IsInAnimation and not ExitAndPlay and not EmoteCancelPlaying then
        ExitAndPlay = true
        DebugPrint("Canceling previous emote and playing next emote")
        PlayExitAndEnterEmote(emoteData, name, textureVariation)
        return
    end


    local animOption = emoteData.AnimationOptions
    if InVehicle then
        if animOption and animOption.NotInVehicle then
            return EmoteChatMessage(Translate('not_in_a_vehicle'))
        end
    elseif animOption and animOption.onlyInVehicle then
        return EmoteChatMessage(Translate('in_a_vehicle'))
    end

    if ChosenAnimOptions and ChosenAnimOptions.ExitEmote and animOption and animOption.ExitEmote then
        if not (animOption and ChosenAnimOptions.ExitEmote == animOption.ExitEmote) and RP.Exits[ChosenAnimOptions.ExitEmote][2] ~= emoteData[2] then
            return
        end
    end

    if IsInActionWithErrorMessage() then
        return false
    end

    ChosenDict = emoteData[1]
    local anim = emoteData[2]
    CurrentAnimationName = name
    LocalPlayer.state:set('currentEmote', name, true)
    CurrentTextureVariation = textureVariation
    ChosenAnimOptions = animOption

    if Config.DisarmPlayer then
        if IsPedArmed(PlayerPedId(), 7) then
            SetCurrentPedWeapon(PlayerPedId(), joaat('WEAPON_UNARMED'), true)
        end
    end

    if animOption and animOption.Prop then
        DestroyAllProps()
    end

    if ChosenDict == "MaleScenario" or ChosenDict == "Scenario" or ChosenDict == "ScenarioObject" then
        if InVehicle then return end
        CheckGender()
        ClearPedTasks(PlayerPedId())
        DestroyAllProps()
        if ChosenDict == "MaleScenario" then
            if PlayerGender == "male" then
                TaskStartScenarioInPlace(PlayerPedId(), anim, 0, true)
                DebugPrint("Playing scenario = (" .. anim .. ")")
            else
                EmoteCancel()
                EmoteChatMessage(Translate('maleonly'))
                return
            end
        elseif ChosenDict == "ScenarioObject" then
            local BehindPlayer = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, -0.5, -0.5)
            TaskStartScenarioAtPosition(PlayerPedId(), anim, BehindPlayer.x, BehindPlayer.y, BehindPlayer.z, GetEntityHeading(PlayerPedId()), 0, true, false)
            DebugPrint("Playing scenario = (" .. anim .. ")")
        else
            TaskStartScenarioInPlace(PlayerPedId(), anim, 0, true)
            DebugPrint("Playing scenario = (" .. anim .. ")")
        end
        IsInAnimation = true
        RunAnimationThread()
        return
    end

    -- Small delay at the start
    if animOption and animOption.StartDelay then
        Wait(animOption.StartDelay)
    end

    if not LoadAnim(ChosenDict) then
        EmoteChatMessage("'" .. ename .. "' " .. Translate('notvalidemote') .. "")
        return
    end

    local movementType = 0 -- Default movement type

    if InVehicle then
        movementType = 51
    elseif animOption then
        if animOption.EmoteMoving then
            movementType = 51
        elseif animOption.EmoteLoop then
            movementType = 1
        elseif animOption.EmoteStuck then
            movementType = 50
        end
    end

    if animOption then
        if animOption.PtfxAsset then
            Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animOption.PtfxPlacement)
            PtfxNotif = false
            PtfxPrompt = true
            RunAnimationThread()
            TriggerServerEvent("rpemotes:ptfx:sync", animOption.PtfxAsset, animOption.PtfxName, vector3(Ptfx1, Ptfx2, Ptfx3),
                vector3(Ptfx4, Ptfx5, Ptfx6), animOption.PtfxBone, PtfxScale, animOption.PtfxColor)
        else
            PtfxPrompt = false
        end
    end

    if IsPedUsingAnyScenario(PlayerPedId()) or IsPedActiveInScenario(PlayerPedId()) then
        ClearPedTasksImmediately(PlayerPedId())
    end

    TaskPlayAnim(PlayerPedId(), ChosenDict, anim, 5.0, 5.0, animOption and animOption.EmoteDuration or -1, movementType, 0, false, false,
        false)
    RemoveAnimDict(ChosenDict)

    IsInAnimation = true
    RunAnimationThread()

    if not (animOption and animOption.Prop) then
        CheckStatusThread(ChosenDict, anim)
    end

    local currentEmoteTable = emoteData
    for _, tabledata in pairs(RP) do
        for command, emotedata in pairs(tabledata) do
            if emotedata == emoteData then
                table.insert(currentEmoteTable, command)
                break
            end
        end
    end
    currentEmote = currentEmoteTable

    if animOption and animOption.Prop then
        PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)

        Wait(animOption and animOption.EmoteDuration or 0)

        if not AddProp(animOption.Prop, animOption.PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, textureVariation, false) then return end

        if animOption.SecondProp then
            SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)
            if not AddProp(animOption.SecondProp, animOption.SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, textureVariation, false) then
                DestroyAllProps()
                return
            end
        end

        -- Ptfx is on the prop, then we need to sync it
        if not animOption then return end
        if animOption.PtfxAsset and not animOption.PtfxNoProp then
            TriggerServerEvent("rpemotes:ptfx:syncProp", ObjToNet(attachedProp))
        end
    end
end

function OnEmotePlayClone(emoteData)
    if not Config.PreviewPed then return end

    cleanScenarioObjects(true)

    if not DoesEntityExist(ClonedPed) then
        return false
    end

    if InExitEmote then
        return false
    end

    if Config.CancelPreviousEmote and not ExitAndPlay and not EmoteCancelPlaying then
        ExitAndPlay = true
        DebugPrint("Canceling previous emote and playing next emote")
        return
    end

    local animOption = emoteData.AnimationOptions

    local dict, anim = table.unpack(emoteData)

    if animOption and animOption.Prop then
        DestroyAllProps(true)
    end

    if dict == "MaleScenario" or dict == "Scenario" or dict == "ScenarioObject" then
        CheckGender()
        ClearPedTasks(ClonedPed)
        DestroyAllProps(true)
        if dict == "MaleScenario" then
            if PlayerGender == "male" then
                TaskStartScenarioInPlace(ClonedPed, anim, 0, true)
            end
        elseif dict == "ScenarioObject" then
            local BehindPlayer = GetOffsetFromEntityInWorldCoords(ClonedPed, 0.0, -0.5, -0.5)
            TaskStartScenarioAtPosition(ClonedPed, anim, BehindPlayer.x, BehindPlayer.y, BehindPlayer.z, GetEntityHeading(ClonedPed), 0, true, false)
        elseif dict == "Scenario" then
            TaskStartScenarioInPlace(ClonedPed, anim, 0, true)
        end
        return
    end

    if not LoadAnim(dict) then
        EmoteChatMessage("'" .. ename .. "' " .. Translate('notvalidemote') .. "")
        return
    end

    local movementType = 0 -- Default movement type

    if animOption then
        if animOption.EmoteMoving then
            movementType = 51
        elseif animOption.EmoteLoop then
            movementType = 1
        elseif animOption.EmoteStuck then
            movementType = 50
        end
    end

    if IsPedUsingAnyScenario(ClonedPed) or IsPedActiveInScenario(ClonedPed) then
        ClearPedTasksImmediately(ClonedPed)
    end

    TaskPlayAnim(ClonedPed, dict, anim, 5.0, 5.0, animOption and animOption.EmoteDuration or -1, movementType, 0, false, false, false)
    RemoveAnimDict(dict)

    if animOption and animOption.Prop then
        local PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)

        Wait(animOption and animOption.EmoteDuration or 0)

        if not AddProp(animOption.Prop, animOption.PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, nil, true) then return end

        if animOption.SecondProp then
            local SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)

            if not AddProp(animOption.SecondProp, animOption.SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, nil, true) then
                DestroyAllProps(true)
                return
            end
        end
    end
end

function PlayExitAndEnterEmote(emoteName, name, textureVariation)
    local ped = PlayerPedId()
    if not CanCancel then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ped)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if LocalPlayer.state.ptfx then
        PtfxStop()
    end
    DetachEntity(ped, true, false)
    CancelSharedEmote()

    if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
        -- If the emote exit type is not spesifed it defaults to Emotes
        local options = ChosenAnimOptions
        local ExitEmoteType = options.ExitEmoteType or "Emotes"

        -- Checks that the exit emote actually exists
        if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
            DebugPrint("Exit emote was invalid")
            ClearPedTasks(ped)
            IsInAnimation = false
            return
        end
        OnEmotePlay(RP[ExitEmoteType][options.ExitEmote], ExitEmoteType)
        DebugPrint("Playing exit animation")

        -- Check that the exit emote has a duration, and if so, set InExitEmote variable
        local animationOptions = RP[ExitEmoteType][options.ExitEmote].AnimationOptions
        if animationOptions and animationOptions.EmoteDuration then
            InExitEmote = true
            SetTimeout(animationOptions.EmoteDuration, function()
                InExitEmote = false
                DestroyAllProps(true)
                ClearPedTasks(ped)
                OnEmotePlay(emoteName, name, textureVariation)
                ExitAndPlay = false
            end)
            return
        end
    else
        ClearPedTasks(ped)
        IsInAnimation = false
        ExitAndPlay = false
        DestroyAllProps(true)
        OnEmotePlay(emoteName, name, CurrentTextureVariation)
    end
end

exports("EmoteCommandStart", function(emoteName, textureVariation)
    EmoteCommandStart(nil, { emoteName, textureVariation }, nil)
end)
exports("EmoteCancel", EmoteCancel)
exports("CanCancelEmote", function(State)
    CanCancel = State == true
end)
exports('IsPlayerInAnim', function()
    return LocalPlayer.state.currentEmote
end)
exports('getCurrentEmote', function()
    return currentEmote
end)

-- Door stuff
local openingDoor = false
AddEventHandler('CEventOpenDoor', function(entities, eventEntity, args)
    if ShowPed then
        return
    end

    if not IsInAnimation then
        return
    end

    if openingDoor then
        return
    end

    openingDoor = true

    while IsPedOpeningADoor(PlayerPedId()) do
        Wait(100)
    end

    openingDoor = false

    Wait(200)

    local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
    if not emote then
        return
    end

    ClearPedTasks(PlayerPedId())
    DestroyAllProps()
    OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
end)

local isBumpingPed = false
local timeout = 500

AddEventHandler("CEventPlayerCollisionWithPed", function()
    if not IsInAnimation then
        return
    end

    if isBumpingPed then
        timeout = 500
        return
    end
    isBumpingPed = true
    timeout = 500
    -- We wait a bit to avoid collision with the ped resetting the animation again

    while timeout > 0 do
        Wait(100)
        timeout = timeout - 100
    end

    if not IsInAnimation then
        return
    end

    local emote = RP.Emotes[CurrentAnimationName] or RP.PropEmotes[CurrentAnimationName] or RP.Dances[CurrentAnimationName] or RP.AnimalEmotes[CurrentAnimationName]
    if not emote then
        return
    end

    isBumpingPed = false
    ClearPedTasks(PlayerPedId())
    Wait(125)
    DestroyAllProps()
    OnEmotePlay(emote, CurrentAnimationName, CurrentTextureVariation)
end)
