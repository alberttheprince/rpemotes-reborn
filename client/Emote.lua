
--- Download the OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---



-- You probably shouldn't touch these.
local AnimationDuration = -1
local ChosenAnimation = ""
local ChosenDict = ""
local ChosenAnimOptions = false
local MovementType = 0
local PlayerGender = "male"
local PlayerHasProp = false
local PlayerProps = {}
local PlayerParticles = {}
local SecondPropEmote = false
local lang = Config.MenuLanguage
local PtfxNotif = false
local PtfxPrompt = false
local PtfxWait = 500
local PtfxCanHold = false
local PtfxNoProp = false
local AnimationThreadStatus = false
local CheckStatus = false
local CanCancel = true
local InExitEmote = false
local ExitAndPlay = false
local EmoteCancelPlaying = false
IsInAnimation = false
CurrentAnimationName = nil
CurrentTextureVariation = nil
inHandsup = false

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

            if PtfxPrompt then
                sleep = 0
                if not PtfxNotif then
                    SimpleNotify(PtfxInfo)
                    PtfxNotif = true
                end
                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Wait(PtfxWait)
                    if PtfxCanHold then
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
    RegisterKeyMapping("emotecancel", "Cancel current emote", "keyboard", Config.CancelEmoteKey)
end

-----------------------------------------------------------------------------------------------------
-- Commands / Events --------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/e', 'Play an emote',
        { { name = "emotename", help = "dance, camera, sit or any valid emote." },
            { name = "texturevariation", help = "(Optional) 1, 2, 3 or any number. Will change the texture of some props used in emotes, for example the color of a phone. Enter -1 to see a list of variations." } })
    TriggerEvent('chat:addSuggestion', '/emote', 'Play an emote',
        { { name = "emotename", help = "dance, camera, sit or any valid emote." },
            { name = "texturevariation", help = "(Optional) 1, 2, 3 or any number. Will change the texture of some props used in emotes, for example the color of a phone. Enter -1 to see a list of variations." } })
    if Config.SqlKeybinding then
        TriggerEvent('chat:addSuggestion', '/emotebind', 'Bind an emote',
            { { name = "key", help = "num4, num5, num6, num7. num8, num9. Numpad 4-9!" },
                { name = "emotename", help = "dance, camera, sit or any valid emote." } })
        TriggerEvent('chat:addSuggestion', '/emotebinds', 'Check your currently bound emotes.')
    end
    TriggerEvent('chat:addSuggestion', '/emotemenu', 'Open rpemotes menu (F4) by default. This may differ from server to server.')
    TriggerEvent('chat:addSuggestion', '/emotes', 'List available emotes.')
    TriggerEvent('chat:addSuggestion', '/emotecancel', 'Cancel currently playing emote.')
end)

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
RegisterCommand('emote', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)
if Config.SqlKeybinding then
    RegisterCommand('emotebind', function(source, args, raw) EmoteBindStart(source, args, raw) end, false)
    RegisterCommand('emotebinds', function(source, args, raw) EmoteBindsStart(source, args, raw) end, false)
end
if Config.MenuKeybindEnabled then
    RegisterCommand('emoteui', function() OpenEmoteMenu() end, false)
    RegisterKeyMapping("emoteui", "Open rpemotes menu", "keyboard", Config.MenuKeybind)
else
    RegisterCommand('emotemenu', function() OpenEmoteMenu() end, false)
end
RegisterCommand('emotes', function() EmotesOnCommand() end, false)
RegisterCommand('emotecancel', function() EmoteCancel() end, false)

local disableHandsupControls = {

--- On Foot Controls 

    [36] = true,  -- INPUT_DUCK
    [44] = true,  -- INPUT_COVER

    
--- Vehicle Controls - Car


    [59] = true,  -- INPUT_VEH_MOVE_LR
    [60] = true,  -- INPUT_VEH_MOVE_UD
    [61] = true,  -- INPUT_VEH_MOVE_UP_ONLY
    [62] = true,  -- INPUT_VEH_MOVE_DOWN_ONLY
    [63] = true,  -- INPUT_VEH_MOVE_LEFT_ONLY
    [64] = true,  -- INPUT_VEH_MOVE_RIGHT_ONLY
    [65] = true,  -- INPUT_VEH_SPECIAL
    [66] = true, --  INPUT_VEH_GUN_LR
    [67] = true, -- INPUT_VEH_GUN_UD
    [69] = true, -- INPUT_VEH_ATTACK
    [70] = true, -- INPUT_VEH_ATTACK2
    [71] = true, -- INPUT_VEH_ACCELERATE
    [72] = true, -- INPUT_VEH_BRAKE
    [73] = true,  -- INPUT_VEH_DUCK
    [74] = true,  -- INPUT_VEH_HEADLIGHT
    [77] = true,  -- INPUT_VEH_HOTWIRE_LEFT
    [78] = true,  -- INPUT_VEH_HOTWIRE_RIGHT
    [80] = true, --  INPUT_VEH_CIN_CAM
    [91] = true,  -- INPUT_VEH_PASSENGER_AIM
    [53] = true,  -- INPUT_WEAPON_SPECIAL
    [54] = true, --  INPUT_WEAPON_SPECIAL_TWO
    
--- We need these enabled as the weapon and radio wheel are tied together, and I want players to be able to defend themselves -- TayMcKenzieNZ --
 --   [81] = true, -- INPUT_VEH_NEXT_RADIO
--    [82] = false, -- INPUT_VEH_PREV_RADIO
--    [83] = true, -- INPUT_VEH_NEXT_RADIO_TRACK
--    [84] = true, -- INPUT_VEH_PREV_RADIO_TRACK
--    [85] = true, -- INPUT_VEH_RADIO_WHEEL

    [86] = true, -- INPUT_VEH_HORN
    [102] = true, -- INPUT_VEH_JUMP
    [104] = true, -- INPUT_VEH_SHUFFLE
    [105] = true,  -- INPUT_VEH_DROP_PROJECTILE
    [337] = true,  -- INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE
    [338] = true,  -- INPUT_VEH_HYDRAULICS_CONTROL_LEFT
    [339] = true,  -- INPUT_VEH_HYDRAULICS_CONTROL_RIGHT
    [340] = true,  -- INPUT_VEH_HYDRAULICS_CONTROL_UP
    [341] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_DOWN
    [342] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_UD
    [343] = true, --  INPUT_VEH_HYDRAULICS_CONTROL_LR
    [351] = true, --  INPUT_VEH_ROCKET_BOOST
    [351] = true, --  INPUT_VEH_ROCKET_BOOST
    [354] = true, -- INPUT_VEH_BIKE_WINGS
    [357] = true, -- INPUT_VEH_TRANSFORM


-- Vehicle Controls - Bicycle / Motorcycle

    [136] = true,  -- INPUT_VEH_PUSHBIKE_PEDAL
    [137] = true,  -- INPUT_VEH_PUSHBIKE_SPRINT
    [139] = true,  -- INPUT_VEH_PUSHBIKE_REAR_BRAKE
    [140] = true,  -- INPUT_MELEE_ATTACK_LIGHT
    [141] = true, --  INPUT_MELEE_ATTACK_HEAVY
    [142] = true, -- INPUT_MELEE_ATTACK_ALTERNATE
    
-- We disable the following, as the hands up animation on a bicycle / motorcycle looks broken and therefore meele does not work correctly. Perhaps we can fix this later? - TayMcKenzieNZ --
-- Players can however meele attack with a weapon --    
    
    [143] = true, -- INPUT_MELEE_BLOCK
    [345] = true, -- INPUT_VEH_MELEE_HOLD
    [346] = true, -- INPUT_VEH_MELEE_LEFT
    [347] = true, -- INPUT_VEH_MELEE_RIGHT



}

local playerId = PlayerId()

local function HandsUpLoop()
    CreateThread(function()
        while inHandsup do
            if disableHandsupControls then
                for control, state in pairs(disableHandsupControls) do
                    DisableControlAction(0, control, state)
                end
            end            

            if IsPlayerAiming(playerId) then
                ClearPedSecondaryTask(PlayerPedId())
                CreateThread(function()
                    Wait(350)
                    inHandsup = false
                end)
            end

            Wait(0)
        end
    end)
end

if Config.HandsupEnabled then
    RegisterCommand('handsup', function()
        if IsPedInAnyVehicle(PlayerPedId(), false) and not Config.HandsupKeybindInCarEnabled and not inHandsup then
            return
        end

        Handsup()
    end, false)

    function Handsup()
        local playerPed = PlayerPedId()
        if not IsPedHuman(playerPed) then
            return
        end
        if isInActionWithErrorMessage() then
            return
        end

        inHandsup = not inHandsup
        if inHandsup then
            DestroyAllProps()
            local dict = "random@mugging3"
            RequestAnimDict(dict)
            while not HasAnimDictLoaded(dict) do
                Wait(0)
            end
            TaskPlayAnim(PlayerPedId(), dict, "handsup_standing_base", 2.0, 2.0, -1, 49, 0, false, IsThisModelABike(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), false))) and 4127 or false, false)
            HandsUpLoop()
        else
            ClearPedSecondaryTask(PlayerPedId())
            if Config.PersistentEmoteAfterHandsup and IsInAnimation then
                local emote = RP.Emotes[CurrentAnimationName]
                if not emote then
                    emote = RP.PropEmotes[CurrentAnimationName]
                end

                if not emote then
                    return
                end

                emote.name = CurrentAnimationName

                ClearPedSecondaryTask(PlayerPedId())
                Wait(400)
                DestroyAllProps()
                OnEmotePlay(emote, emote.name, CurrentTextureVariation)
            end
        end
    end

    TriggerEvent('chat:addSuggestion', '/handsup', 'Put your arms up.')

    if Config.HandsupKeybindEnabled then
        RegisterKeyMapping("handsup", "Put your arms up", "keyboard", Config.HandsupKeybind)
    end

    local function IsPlayerInHandsUp()
        return inHandsup
    end
    
    exports('IsPlayerInHandsUp', IsPlayerInHandsUp)
end

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        local ply = PlayerPedId()
        DestroyAllProps()
        ClearPedTasksImmediately(ply)
        DetachEntity(ply, true, false)
        ResetPedMovementClipset(ply, 0.8)
        AnimationThreadStatus = false
    end
end)

-----------------------------------------------------------------------------------------------------
------ Functions and stuff --------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

function EmoteCancel(force)
    local scenarioObjects = {
 	    `p_amb_coffeecup_01`,
		`p_amb_joint_01`,
		`p_cs_ciggy_01`,
		`p_cs_ciggy_01b_s`,
		`p_cs_clipboard`,
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
		`w_me_gclub`
    }
    
    for i = 1, #scenarioObjects do
        local deleteScenarioObject = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, scenarioObjects[i], false, true ,true)
        if DoesEntityExist(deleteScenarioObject) then
            SetEntityAsMissionEntity(deleteScenarioObject, false, false)
            DeleteObject(deleteScenarioObject)
        end  
    end

    EmoteCancelPlaying = true
    -- Don't cancel if we are in an exit emote
    if InExitEmote then
        return
    end

    local ply = PlayerPedId()
	if not CanCancel and force ~= true then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
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
        DetachEntity(ply, true, false)
        CancelSharedEmote(ply)

        if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
            -- If the emote exit type is not specified, it defaults to Emotes
            local options = ChosenAnimOptions
            local ExitEmoteType = options.ExitEmoteType or "Emotes"

            -- Checks that the exit emote actually exists
            if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
                DebugPrint("Exit emote was invalid")
                IsInAnimation = false
                ClearPedTasks(ply)
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
                    ClearPedTasks(ply)
                    EmoteCancelPlaying = false
                end)
                return
            end
        else
            IsInAnimation = false
            ClearPedTasks(ply)
            EmoteCancelPlaying = false
        end
        DestroyAllProps()
    end
    AnimationThreadStatus = false
    CheckStatus = false
end

--#region ptfx
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

AddStateBagChangeHandler('ptfx', nil, function(bagName, key, value, _unused, replicated)
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
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(plyPed, stateBag.ptfxBone) or GetEntityBoneIndexByName(name, "VFX")
        local scale = stateBag.ptfxScale or 1
        local color = stateBag.ptfxColor
        local propNet = stateBag.ptfxPropNet
        local entityTarget = plyPed
        -- Only do for valid obj
        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then
                entityTarget = propObj
            end
        end
        PtfxThis(asset)
        PlayerParticles[plyId] = StartNetworkedParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, 0, 0, 0, 1065353216, 1065353216, 1065353216, 0)
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
        -- Stop ptfx
        DebugPrint("Stopped PTFX: " .. PlayerParticles[plyId])
        StopParticleFxLooped(PlayerParticles[plyId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        PlayerParticles[plyId] = nil
    end
end)
--#endregion ptfx

function EmotesOnCommand(source, args, raw)
    local EmotesCommand = ""
    for a in pairsByKeys(RP.Emotes) do
        EmotesCommand = EmotesCommand .. "" .. a .. ", "
    end
    EmoteChatMessage(EmotesCommand)
    EmoteChatMessage(Config.Languages[lang]['emotemenucmd'])
end

function EmoteMenuStart(args, hard, textureVariation)
    local name = args
    local etype = hard

    if etype == "dances" then
        if RP.Dances[name] ~= nil then
            OnEmotePlay(RP.Dances[name], name)
        end
    elseif etype == "animals" then
        if RP.AnimalEmotes[name] ~= nil then
            CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
        end
    elseif etype == "props" then
        if RP.PropEmotes[name] ~= nil then
            OnEmotePlay(RP.PropEmotes[name], name, textureVariation)
        end
    elseif etype == "emotes" then
        if RP.Emotes[name] ~= nil then
            OnEmotePlay(RP.Emotes[name], name)
        end
    elseif etype == "expression" then
        if RP.Expressions[name] ~= nil then
            SetPlayerPedExpression(RP.Expressions[name][1], true)
        end
    end
end

function EmoteCommandStart(source, args, raw)
    if #args > 0 then
        if IsEntityDead(PlayerPedId()) or IsPedRagdoll(PlayerPedId()) or IsPedGettingUp(PlayerPedId()) or IsPedInMeleeCombat(PlayerPedId()) then
            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {"RPEmotes", Config.Languages[lang]['dead']}
            })
            return
        end
        if (IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId())) and not Config.AllowInWater then
            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {"RPEmotes", Config.Languages[lang]['swimming']}
            })
            return
        end
        local name = string.lower(args[1])
        if name == "c" then
            if IsInAnimation then
                EmoteCancel()
            else
                EmoteChatMessage(Config.Languages[lang]['nocancel'])
            end
            return
        elseif name == "help" then
            EmotesOnCommand()
            return
        end

        if RP.Emotes[name] ~= nil then
            OnEmotePlay(RP.Emotes[name], name)
            return
        elseif RP.Dances[name] ~= nil then
            OnEmotePlay(RP.Dances[name], name)
            return
        elseif RP.AnimalEmotes[name] ~= nil then
            if Config.AnimalEmotesEnabled then
                CheckAnimalAndOnEmotePlay(RP.AnimalEmotes[name], name)
                return
            else
                EmoteChatMessage(Config.Languages[lang]['animaldisabled'])
                return
            end
        elseif RP.Exits[name] ~= nil then
            OnEmotePlay(RP.Exits[name], name)
            return
        elseif RP.PropEmotes[name] ~= nil then
            if RP.PropEmotes[name].AnimationOptions.PropTextureVariations then
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

                        EmoteChatMessage(string.format(Config.Languages[lang]['invalidvariation'], str), true)
                        OnEmotePlay(RP.PropEmotes[name], name, 0)
                        return
                    end
                end
            end
            OnEmotePlay(RP.PropEmotes[name], name)
            return
        else
            EmoteChatMessage("'" .. name .. "' " .. Config.Languages[lang]['notvalidemote'] .. "")
        end
    end
end

function CheckAnimalAndOnEmotePlay(EmoteName, name)
    -- if the name string starts with "bdog" and the current ped is in the BigDog list, play the emote
    if string.sub(name, 1, 4) == "bdog" then
        for i = 1, #BigDogs do
            if IsPedModel(PlayerPedId(), GetHashKey(BigDogs[i])) then
                OnEmotePlay(EmoteName, name)
                return
            end
        end
        EmoteChatMessage(Config.Languages[lang]['notvalidpet'])
    elseif string.sub(name, 1, 4) == "sdog" then
        for i = 1, #SmallDogs do
            if IsPedModel(PlayerPedId(), GetHashKey(SmallDogs[i])) then
                OnEmotePlay(EmoteName, name)
                return
            end
        end
        EmoteChatMessage(Config.Languages[lang]['notvalidpet'])
    end
end

function DestroyAllProps()
    for _, v in pairs(PlayerProps) do
        DeleteEntity(v)
    end
    PlayerHasProp = false
    DebugPrint("Destroyed Props")
end

function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation)
    local Player = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(Player))

    if not IsModelValid(prop1) then
        DebugPrint(tostring(prop1).." is not a valid model!")
        return false
    end

    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end

    prop = CreateObject(joaat(prop1), x, y, z + 0.2, true, true, true)
    if textureVariation ~= nil then
        SetObjectTextureVariation(prop, textureVariation)
    end
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true,
        false, true, 1, true)
    table.insert(PlayerProps, prop)
    PlayerHasProp = true
    SetModelAsNoLongerNeeded(prop1)
    DebugPrint("Added prop to player")
    return true
end

-----------------------------------------------------------------------------------------------------
-- V -- This could be a whole lot better, i tried messing around with "IsPedMale(ped)"
-- V -- But i never really figured it out, if anyone has a better way of gender checking let me know.
-- V -- Since this way doesnt work for ped models.
-- V -- in most cases its better to replace the scenario with an animation bundled with prop instead.
-----------------------------------------------------------------------------------------------------

function CheckGender()
    local playerPed = PlayerPedId()

    if GetEntityModel(playerPed) == joaat("mp_f_freemode_01") then
        PlayerGender = "female"
    else
        PlayerGender = "male"
    end

    DebugPrint("Set gender as = (" .. PlayerGender .. ")")
end

-----------------------------------------------------------------------------------------------------
------ This is the major function for playing emotes! -----------------------------------------------
-----------------------------------------------------------------------------------------------------

function OnEmotePlay(EmoteName, name, textureVariation)
    local scenarioObjects = {
        `p_amb_coffeecup_01`,
		`p_amb_joint_01`,
		`p_cs_ciggy_01`,
		`p_cs_ciggy_01b_s`,
		`p_cs_clipboard`,
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
		`w_me_gclub`
    }
    
    for i = 1, #scenarioObjects do
        local deleteScenarioObject = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 1.0, scenarioObjects[i], false, true ,true)
        if DoesEntityExist(deleteScenarioObject) then
            SetEntityAsMissionEntity(deleteScenarioObject, false, false)
            DeleteObject(deleteScenarioObject)
        end  
    end

    InVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
	Pointing = false

    if not Config.AllowedInCars and InVehicle == 1 then
        return
    end

    if not DoesEntityExist(PlayerPedId()) then
        return false
    end

    if Config.AdultEmotesDisabled and EmoteName.AdultAnimation then
        return EmoteChatMessage(Config.Languages[lang]['adultemotedisabled'])
    end

    -- Don't play a new animation if we are in an exit emote
    if InExitEmote then
        return false
    end

    if Config.CancelPreviousEmote and IsInAnimation and not ExitAndPlay and not EmoteCancelPlaying then
        ExitAndPlay = true
        DebugPrint("Canceling previous emote and playing next emote")
        PlayExitAndEnterEmote(EmoteName, name, textureVariation)
        return
    end


    local animOption = EmoteName.AnimationOptions
    if InVehicle then
        if animOption and animOption.NotInVehicle then
            return EmoteChatMessage(Config.Languages[lang]['not_in_a_vehicle'])
        end
    elseif animOption and animOption.onlyInVehicle then
        return EmoteChatMessage(Config.Languages[lang]['in_a_vehicle'])
    end

    if ChosenAnimOptions and ChosenAnimOptions.ExitEmote and animOption and animOption.ExitEmote then
        if not (animOption and ChosenAnimOptions.ExitEmote == animOption.ExitEmote) and RP.Exits[ChosenAnimOptions.ExitEmote][2] ~= EmoteName[2] then
            return
        end
    end

    if isInActionWithErrorMessage() then
        return false
    end

    ChosenDict, ChosenAnimation, ename = table.unpack(EmoteName)
    CurrentAnimationName = name
    CurrentTextureVariation = textureVariation
    ChosenAnimOptions = animOption
    AnimationDuration = -1

    if Config.DisarmPlayer then
        if IsPedArmed(PlayerPedId(), 7) then
            SetCurrentPedWeapon(PlayerPedId(), joaat('WEAPON_UNARMED'), true)
        end
    end

    if animOption and animOption.Prop and PlayerHasProp then
        DestroyAllProps()
    end

    if ChosenDict == "MaleScenario" or ChosenDict == "Scenario" or ChosenDict == "ScenarioObject" then
        CheckGender()
        if ChosenDict == "MaleScenario" then if InVehicle then return end
            if PlayerGender == "male" then
                ClearPedTasks(PlayerPedId())
                DestroyAllProps()
                TaskStartScenarioInPlace(PlayerPedId(), ChosenAnimation, 0, true)
                DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
                IsInAnimation = true
                RunAnimationThread()
            else
                DestroyAllProps()
                EmoteCancel()
                EmoteChatMessage(Config.Languages[lang]['maleonly'])
            end
            return
        elseif ChosenDict == "ScenarioObject" then if InVehicle then return end
            BehindPlayer = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0 - 0.5, -0.5);
            ClearPedTasks(PlayerPedId())
            TaskStartScenarioAtPosition(PlayerPedId(), ChosenAnimation, BehindPlayer['x'], BehindPlayer['y'], BehindPlayer['z'], GetEntityHeading(PlayerPedId()), 0, true, false)
            DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
            IsInAnimation = true
            RunAnimationThread()
            return
        elseif ChosenDict == "Scenario" then if InVehicle then return end
            ClearPedTasks(PlayerPedId())
            DestroyAllProps()
            TaskStartScenarioInPlace(PlayerPedId(), ChosenAnimation, 0, true)
            DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
            IsInAnimation = true
            RunAnimationThread()
            return
        end
    end

    -- Small delay at the start
    if animOption and animOption.StartDelay then
        Wait(animOption.StartDelay)
    end

    if not LoadAnim(ChosenDict) then
        EmoteChatMessage("'" .. ename .. "' " .. Config.Languages[lang]['notvalidemote'] .. "")
        return
    end

    MovementType = 0 -- Default movement type

    if InVehicle == 1 then
        MovementType = 51
    elseif animOption then
        if animOption.EmoteMoving then
            MovementType = 51
        elseif animOption.EmoteLoop then
            MovementType = 1
        elseif animOption.EmoteStuck then
            MovementType = 50
        end
    end

    if animOption then
        if animOption.EmoteDuration == nil then
            animOption.EmoteDuration = -1
            AttachWait = 0
        else
            AnimationDuration = animOption.EmoteDuration
            AttachWait = animOption.EmoteDuration
        end

        if animOption.PtfxAsset then
            PtfxAsset = animOption.PtfxAsset
            PtfxName = animOption.PtfxName
            if animOption.PtfxNoProp then
                PtfxNoProp = animOption.PtfxNoProp
            else
                PtfxNoProp = false
            end
            Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animOption.PtfxPlacement)
            PtfxBone = animOption.PtfxBone
            PtfxColor = animOption.PtfxColor
            PtfxInfo = animOption.PtfxInfo
            PtfxWait = animOption.PtfxWait
            PtfxCanHold = animOption.PtfxCanHold
            PtfxNotif = false
            PtfxPrompt = true
            -- RunAnimationThread() -- ? This call should not be required, see if needed with tests

            TriggerServerEvent("rpemotes:ptfx:sync", PtfxAsset, PtfxName, vector3(Ptfx1, Ptfx2, Ptfx3), vector3(Ptfx4, Ptfx5, Ptfx6), PtfxBone, PtfxScale, PtfxColor)
        else
            DebugPrint("Ptfx = none")
            PtfxPrompt = false
        end
    end

    if IsPedUsingAnyScenario(PlayerPedId()) or IsPedActiveInScenario(PlayerPedId()) then
        ClearPedTasksImmediately(PlayerPedId())
    end

    TaskPlayAnim(PlayerPedId(), ChosenDict, ChosenAnimation, 5.0, 5.0, AnimationDuration, MovementType, 0, false, false, false)
    RemoveAnimDict(ChosenDict)
    IsInAnimation = true
    RunAnimationThread()
    if animOption and animOption.Prop then
        -- if there is a prop, don't do the status thread as it's useless and leads to some bugs
    else
        CheckStatusThread(ChosenDict, ChosenAnimation)
    end
    MostRecentDict = ChosenDict
    MostRecentAnimation = ChosenAnimation

    if animOption and animOption.Prop then
        PropName = animOption.Prop
        PropBone = animOption.PropBone
        PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)
        if animOption.SecondProp then
            SecondPropName = animOption.SecondProp
            SecondPropBone = animOption.SecondPropBone
            SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)
            SecondPropEmote = true
        else
            SecondPropEmote = false
        end
        Wait(AttachWait)
        if not AddPropToPlayer(PropName, PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, textureVariation) then return end
        if SecondPropEmote then
        if not AddPropToPlayer(SecondPropName, SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6, textureVariation) then
                DestroyAllProps()
                return
            end
        end

        -- Ptfx is on the prop, then we need to sync it
        if animOption.PtfxAsset and not PtfxNoProp then
            TriggerServerEvent("rpemotes:ptfx:syncProp", ObjToNet(prop))
        end
    end
end

function PlayExitAndEnterEmote(emoteName, name, textureVariation)
    local ply = PlayerPedId()
    if not CanCancel and force ~= true then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if LocalPlayer.state.ptfx then
        PtfxStop()
    end
    DetachEntity(ply, true, false)
    CancelSharedEmote(ply)

    if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
        -- If the emote exit type is not spesifed it defaults to Emotes
        local options = ChosenAnimOptions
        local ExitEmoteType = options.ExitEmoteType or "Emotes"

        -- Checks that the exit emote actually exists
        if not RP[ExitEmoteType] or not RP[ExitEmoteType][options.ExitEmote] then
            DebugPrint("Exit emote was invalid")
            ClearPedTasks(ply)
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
                DestroyAllProps()
                ClearPedTasks(ply)
                OnEmotePlay(emoteName, name, textureVariation)
                ExitAndPlay = false
            end)
            return
        end
    else
        ClearPedTasks(ply)
        IsInAnimation = false
        ExitAndPlay = false
        DestroyAllProps()
        OnEmotePlay(emoteName, name, CurrentTextureVariation)
    end
end


-----------------------------------------------------------------------------------------------------
------ Some exports to make the script more standalone! (by Clem76) ---------------------------------
-----------------------------------------------------------------------------------------------------

exports("EmoteCommandStart", function(emoteName, textureVariation)
        EmoteCommandStart(nil, {emoteName, textureVariation}, nil)
end)
exports("EmoteCancel", EmoteCancel)
exports("CanCancelEmote", function(State)
		CanCancel = State == true
end)
exports('IsPlayerInAnim', function()
	return IsInAnimation
end)

-- Door stuff
local openingDoor = false
AddEventHandler('CEventOpenDoor', function(entities, eventEntity, args)
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

    local emote = RP.Emotes[CurrentAnimationName]
    if not emote then
        emote = RP.PropEmotes[CurrentAnimationName]

    end

    if not emote then
        return
    end

    emote.name = CurrentAnimationName

    ClearPedTasks(PlayerPedId())
    DestroyAllProps()
    OnEmotePlay(emote, emote.name, CurrentTextureVariation)
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

    local emote = RP.Emotes[CurrentAnimationName]
    if not emote then
        emote = RP.PropEmotes[CurrentAnimationName]
    end

    if not emote then
        return
    end

    emote.name = CurrentAnimationName

    isBumpingPed = false
    ClearPedTasks(PlayerPedId())
    DestroyAllProps()
    OnEmotePlay(emote, emote.name, CurrentTextureVariation )
end)
