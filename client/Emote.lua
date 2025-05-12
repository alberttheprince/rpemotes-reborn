-- You probably shouldn't touch these.
IsInAnimation = false
CurrentAnimationName = nil
CurrentTextureVariation = nil
InHandsup = false
CONVERTED = false

local ChosenDict = ""
local CurrentAnimOptions = false
local PlayerGender = "male"
local PlayerProps = {}
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

if not Config.AnimalEmotesEnabled then
    RP.AnimalEmotes = {}
end

CreateThread(function()
    LocalPlayer.state:set('canEmote', true, true)
end)

local function RunAnimationThread()
    local pPed = PlayerPedId()
    if AnimationThreadStatus then return end
    AnimationThreadStatus = true
    CreateThread(function()
        local sleep
        while AnimationThreadStatus and (IsInAnimation or PtfxPrompt) do
            sleep = 500

            if IsInAnimation then
                sleep = 0
                if IsPlayerAiming(pPed) then
                    EmoteCancel()
                end
                if not Config.AllowPunchingDuringEmote then
                    DisableControlAction(2, 140, true)
                    DisableControlAction(2, 141, true)
                    DisableControlAction(2, 142, true)
                end
            end

            if PtfxPrompt and CurrentAnimOptions then
                sleep = 0
                if not PtfxNotif then
                    SimpleNotify(CurrentAnimOptions.PtfxInfo or Translate('ptfxinfo'))
                    PtfxNotif = true
                end
                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Wait(CurrentAnimOptions.PtfxWait)
                    if CurrentAnimOptions.PtfxCanHold then
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
    LocalPlayer.state:set('currentEmote', nil, true)
    EmoteCancelPlaying = true

    if InExitEmote then
        return
    end

    if not CanCancel and not force then return end

    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(PlayerPedId())
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(PlayerPedId())
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if IsInAnimation then
        local ped = PlayerPedId()
        if LocalPlayer.state.ptfx then
            PtfxStop()
        end
        DetachEntity(ped, true, false)
        CancelSharedEmote()

        if CurrentAnimOptions and CurrentAnimOptions.ExitEmote then
            local options = CurrentAnimOptions
            local ExitEmoteType = options.ExitEmoteType or "Emotes"

            if not RP[options.ExitEmote] then
                DebugPrint("Exit emote was invalid")
                IsInAnimation = false
                ClearPedTasks(ped)
                return
            end

            OnEmotePlay(options.ExitEmote)
            DebugPrint("Playing exit animation")

            local animationOptions = RP[options.ExitEmote].AnimationOptions
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
    cleanScenarioObjects(false)
    AnimationThreadStatus = false
    CheckStatus = false
end

function EmoteMenuStart(name, category, textureVariation)
    local emote = RP[name]

    if not emote then
        return
    end

    if emote.category ~= category then
        DebugPrint("Emote category mismatch : " .. emote.category .. " vs " .. category)
        return
    end

    if category == "Expressions" then
        SetPlayerPedExpression(name, true)
        return
    end

    if emote.category == "AnimalEmotes" then
        CheckAnimalAndOnEmotePlay(name)
        return
    end

    OnEmotePlay(name, textureVariation)
end

function EmoteMenuStartClone(name, category)
    if not Config.PreviewPed then return end
    if not DoesEntityExist(ClonedPed) then return end

    local emote = RP[name]

    if not emote then
        return
    end

    if emote.category ~= category then
        DebugPrint("Emote category mismatch : " .. emote.category .. " vs " .. category)
        return
    end

    if category == "Expressions" then
        SetFacialIdleAnimOverride(ClonedPed, emote[1], true)
        return
    end

    OnEmotePlayClone(name)
end

function EmoteCommandStart(args)
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
        end

        local emote = RP[name]
        if emote then
            if emote.category == "AnimalEmotes" then
                if Config.AnimalEmotesEnabled then
                    CheckAnimalAndOnEmotePlay(name)
                else
                    EmoteChatMessage(Translate('animaldisabled'))
                end
                return
            end

            if emote.category == "PropEmotes" and emote.AnimationOptions.PropTextureVariations then
                if #args > 1 then
                    local textureVariation = tonumber(args[2])
                    if emote.AnimationOptions.PropTextureVariations[textureVariation] then
                        OnEmotePlay(name, textureVariation - 1)
                        return
                    else
                        local str = ""
                        for k, v in ipairs(emote.AnimationOptions.PropTextureVariations) do
                            str = str .. string.format("\n(%s) - %s", k, v.Name)
                        end

                        EmoteChatMessage(string.format(Translate('invalidvariation'), str), true)
                        OnEmotePlay(name, 0)
                        return
                    end
                end
            end

            OnEmotePlay(name)
        else
            EmoteChatMessage("'" .. name .. "' " .. Translate('notvalidemote') .. "")
        end
    end
end

function CheckAnimalAndOnEmotePlay(name)
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
        OnEmotePlay(name)
    else
        EmoteChatMessage(Translate('notvalidpet'))
    end
end

---@param isClone? boolean
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

---@param data table
---@return boolean
function AddProp(data)
    assert(data.prop1, 'no prop1 passed')
    assert(data.bone, 'no bone passed')
    assert(data.off1 and data.off2 and data.off3, 'missing offset(s)')
    assert(data.rot1 and data.rot2 and data.rot3, 'missing rotation(s)')
    assert(data.noCollision == nil or type(data.noCollision) == "boolean", 'noCollision must be a boolean')

    local target = data.isClone and ClonedPed or PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(target))

    if not IsModelValid(data.prop1) then
        DebugPrint(tostring(data.prop1) .. " is not a valid model!")
        return false
    end

    LoadPropDict(data.prop1)

    attachedProp = CreateObject(GetHashKey(data.prop1), x, y, z + 0.2, not data.isClone, true, true)

    if data.textureVariation ~= nil then
        SetObjectTextureVariation(attachedProp, data.textureVariation)
    end

    if data.noCollision then
        SetEntityCollision(attachedProp, false, false)
    end

    AttachEntityToEntity(attachedProp, target, GetPedBoneIndex(target, data.bone), data.off1, data.off2, data.off3, data.rot1, data.rot2, data.rot3,
        true, true, false, true, 1, true)

    if data.isClone then
        table.insert(PreviewPedProps, attachedProp)
    else
        table.insert(PlayerProps, attachedProp)
    end

    SetModelAsNoLongerNeeded(data.prop1)
    DebugPrint("Added prop to " .. (data.isClone and "clone" or "player"))
    return true
end

function CheckGender()
    PlayerGender = "male"

    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
        PlayerGender = "female"
    end

    DebugPrint("Set gender to " .. PlayerGender)
end

RegisterNetEvent('animations:ToggleCanDoAnims', function(value)
    LocalPlayer.state:set('canEmote', value, true)
end)

function OnEmotePlay(name, textureVariation)
    local emoteData = RP[name]
    if not emoteData then
        EmoteChatMessage("'" .. name .. "' " .. Translate('notvalidemote') .. "")
        return
    end

    if not LocalPlayer.state.canEmote then return end

    if not DoesEntityExist(PlayerPedId()) then
        return false
    end

    cleanScenarioObjects(false)

    InVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
    Pointing = false

    if not Config.AllowEmoteInVehicle and InVehicle then
        return
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
        PlayExitAndEnterEmote(name, textureVariation)
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

    if CurrentAnimOptions and CurrentAnimOptions.ExitEmote and animOption and animOption.ExitEmote then
        if not (animOption and CurrentAnimOptions.ExitEmote == animOption.ExitEmote) and RP[CurrentAnimOptions.ExitEmote][2] ~= emoteData[2] then
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
    CurrentAnimOptions = animOption

    if Config.DisarmPlayerOnEmote then
        if IsPedArmed(PlayerPedId(), 7) then
            SetCurrentPedWeapon(PlayerPedId(), GetHashKey('WEAPON_UNARMED'), true)
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
        EmoteChatMessage("'" .. name .. "' " .. Translate('notvalidemote') .. "")
        return
    end

    local movementType = 0

    if InVehicle then
        if animOption and animOption.FullBody then
            movementType = 35
        else
            movementType = 51
        end
    elseif animOption then
        if animOption.EmoteMoving then
            movementType = 51
        elseif animOption.EmoteLoop then
            movementType = 1
        elseif animOption.EmoteStuck then
            movementType = 50
        end
    end

    DebugPrint("Animation flag = (" .. movementType .. ")")

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

    TaskPlayAnim(PlayerPedId(), ChosenDict, anim, animOption?.BlendInSpeed or 5.0, animOption?.BlendOutSpeed or 5.0, animOption?.EmoteDuration or -1, animOption?.Flag or movementType, 0, false, false,
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

        if not AddProp({
            prop1 = animOption.Prop,
            bone = animOption.PropBone,
            off1 = PropPl1, off2 = PropPl2, off3 = PropPl3,
            rot1 = PropPl4, rot2 = PropPl5, rot3 = PropPl6,
            textureVariation = textureVariation,
            isClone = false,
            noCollision = animOption.PropNoCollision
        }) then return end

        if animOption.SecondProp then
            SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)
            if not AddProp({
                prop1 = animOption.SecondProp,
                bone = animOption.SecondPropBone,
                off1 = SecondPropPl1, off2 = SecondPropPl2, off3 = SecondPropPl3,
                rot1 = SecondPropPl4, rot2 = SecondPropPl5, rot3 = SecondPropPl6,
                textureVariation = textureVariation,
                isClone = false,
                noCollision = animOption.SecondPropNoCollision
            }) then
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

function OnEmotePlayClone(name)
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

    local emoteData = RP[name]
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
        EmoteChatMessage("'" .. name .. "' " .. Translate('notvalidemote') .. "")
        return
    end

    local movementType = 0

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

    TaskPlayAnim(ClonedPed, dict, anim, 5.0, 5.0, animOption and animOption.EmoteDuration or -1, animOption?.Flag or movementType, 0, false, false, false)
    RemoveAnimDict(dict)

    if animOption and animOption.Prop then
        local PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(animOption.PropPlacement)

        Wait(animOption and animOption.EmoteDuration or 0)

        if not AddProp({
            prop1 = animOption.Prop,
            bone = animOption.PropBone,
            off1 = PropPl1, off2 = PropPl2, off3 = PropPl3,
            rot1 = PropPl4, rot2 = PropPl5, rot3 = PropPl6,
            isClone = true,
            noCollision = animOption.PropNoCollision
        }) then return end

        if animOption.SecondProp then
            local SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(animOption.SecondPropPlacement)

            if not AddProp({
                prop1 = animOption.SecondProp,
                bone = animOption.SecondPropBone,
                off1 = SecondPropPl1, off2 = SecondPropPl2, off3 = SecondPropPl3,
                rot1 = SecondPropPl4, rot2 = SecondPropPl5, rot3 = SecondPropPl6,
                isClone = true,
                noCollision = animOption.SecondPropNoCollision
            }) then
                DestroyAllProps(true)
                return
            end
        end
    end
end

function PlayExitAndEnterEmote(name, textureVariation)
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

    if CurrentAnimOptions?.ExitEmote then
        local options = CurrentAnimOptions or {}

        if not RP[options.ExitEmote] then
            DebugPrint("Exit emote was invalid")
            ClearPedTasks(ped)
            IsInAnimation = false
            return
        end
        OnEmotePlay(options.ExitEmote)
        DebugPrint("Playing exit animation")

        local animationOptions = RP[options.ExitEmote].AnimationOptions
        if animationOptions and animationOptions.EmoteDuration then
            InExitEmote = true
            SetTimeout(animationOptions.EmoteDuration, function()
                InExitEmote = false
                DestroyAllProps(true)
                ClearPedTasks(ped)
                OnEmotePlay(name, textureVariation)
                ExitAndPlay = false
            end)
            return
        end
    else
        ClearPedTasks(ped)
        IsInAnimation = false
        ExitAndPlay = false
        DestroyAllProps(true)
        OnEmotePlay(name, CurrentTextureVariation)
    end
end

RegisterNetEvent('animations:client:EmoteCommandStart', function(args)
    EmoteCommandStart(args)
end)

CreateExport("EmoteCommandStart", function(emoteName, textureVariation)
    EmoteCommandStart({ emoteName, textureVariation })
end)
CreateExport("EmoteCancel", EmoteCancel)
CreateExport("CanCancelEmote", function(State)
    CanCancel = State == true
end)
CreateExport('IsPlayerInAnim', function()
    return LocalPlayer.state.currentEmote
end)
CreateExport('getCurrentEmote', function()
    return currentEmote
end)

-- Door stuff
local openingDoor = false
AddEventHandler('CEventOpenDoor', function(unk1)
    if unk1[1] ~= PlayerPedId() then return end
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

    ClearPedTasks(PlayerPedId())
    DestroyAllProps()
    OnEmotePlay(CurrentAnimationName, CurrentTextureVariation)
end)

local isBumpingPed = false
local timeout = 500

AddEventHandler("CEventPlayerCollisionWithPed", function(unk1)
    if unk1[1] ~= PlayerPedId() then return end
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

    isBumpingPed = false
    ClearPedTasks(PlayerPedId())
    Wait(125)
    DestroyAllProps()
    OnEmotePlay(CurrentAnimationName, CurrentTextureVariation)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    local ped = PlayerPedId()
    ClosePedMenu()
    DestroyAllProps()
    ClearPedTasksImmediately(ped)
    DetachEntity(ped, true, false)
    ResetPedMovementClipset(ped, 0.8)
end)
