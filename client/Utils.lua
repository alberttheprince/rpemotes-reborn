-- Stores permission manifest from server (adaptive allow/deny list)
local permissions = {
    mode = "allow",  -- "allow" or "deny"
    categories = {
        [EmoteType.EMOTES] = {},
        [EmoteType.SHARED] = {},
        [EmoteType.EXPRESSIONS] = {},
        [EmoteType.WALKS] = {}
    },
    loaded = false
}

RegisterNetEvent('rpemotes:client:receivePermissions', function(manifest)
    local wasLoaded = permissions.loaded
    permissions = manifest
    permissions.loaded = true
    DebugPrint(string.format("[rpemotes] Received permission manifest: mode=%s", permissions.mode))

    -- Initialize menu the first time permissions are received
    if not wasLoaded then
        InitMenu()
        DebugPrint("[rpemotes] Menu initialized after receiving permissions")
    else
        -- Rebuild menu if permissions changed after initial load
        RebuildEmoteMenu()
        DebugPrint("[rpemotes] Menu rebuilt due to permission update")
    end
end)

-- ACE Permission Helper
---@return boolean
function HasEmotePermission(emoteName, emoteType)
    -- If manifest not loaded yet, allow by default (server will validate anyway)
    if not permissions.loaded then return true end

    local category = AceCategoryFromEmoteType[emoteType]
    local present = permissions.categories[category][emoteName]

    -- Return based on mode
    if permissions.mode == "deny" then
        return not present  -- Allowed unless in deny list
    else
        return tobool(present)      -- Denied unless in allow list
    end
end


-- Helper function to strip GTA rich text formatting codes like ~y~, ~w~, ~g~, etc.
local function StripRichText(msg)
    if not Config.StripRichText then return msg end
    return string.gsub(msg, "~%a+~", "")
end
-- You can edit this function to add support for your favorite notification system
function SimpleNotify(msg)
    msg = StripRichText(tostring(msg))

    if Config.NotificationsAsChatMessage then
        TriggerEvent("chat:addMessage", { color = { 255, 255, 255 }, args = { msg } })
    else
        BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName(msg)
        EndTextCommandThefeedPostTicker(true, true)
    end
end

-- You can also edit this function to add support for your favorite notification system
function SimpleHelpText(msg)
    AddTextEntry('RPEMOTES_HELPTEXT', msg) -- Using text labels, because STRING has a 99 character limit.
    BeginTextCommandDisplayHelp("RPEMOTES_HELPTEXT")
    EndTextCommandDisplayHelp(0, false, false, -1)
end

-- Don't touch after this line if you don't know what you're doing
CreateExport = function(name, func)
    AddEventHandler('__cfx_export_rpemotes_'..name, function(setCb)
        setCb(function(...)
            return func(...)
        end)
    end)
    exports(name, func)
end

function DebugPrint(...)
    if Config.DebugDisplay then
        print(...)
    end
end

function FirstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function IsPlayerAiming(player)
    return (IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()) and
    tonumber(GetSelectedPedWeapon(player)) ~= tonumber(GetHashKey("WEAPON_UNARMED"))
end

function CanPlayerCrouchCrawl(ped)
    return IsPedOnFoot(ped)
        and not IsPedJumping(ped)
        and not IsPedFalling(ped)
        and not IsPedInjured(ped)
        and not IsPedInMeleeCombat(ped)
        and not IsPedRagdoll(ped)
end

-- Calls `TaskPlayAnim`, but bypasses issue with `use_experimental_fxv2_oal` being `true`, that prevents ints being passed for the last three parameters
function PlayAnim(...)
    return Citizen.InvokeNative(0xEA47FE3719165B94, ...)
end

function PlayAnimOnce(pPed, dict, anim, bISpeed, bOSpeed, duration, startTime)
    LoadAnim(dict)
    TaskPlayAnim(pPed, dict, anim, bISpeed or 2.0, bOSpeed or 2.0, duration or -1, 0, startTime or 0.0, false, false, false)
    RemoveAnimDict(dict)
end

function ChangeHeadingSmooth(playerPed, amount, time)
    local times = math.abs(amount)
    local test = amount / times
    local wait = time / times

    for _i = 1, times do
        Wait(wait)
        SetEntityHeading(playerPed, GetEntityHeading(playerPed) + test)
    end
end

function EmoteChatMessage(msg, multiline)
    if msg then
        TriggerEvent("chat:addMessage", {
            multiline = multiline == true or false,
            color = { 255, 255, 255 },
            args = { "^1Help^0", tostring(msg) }
        })
    end
end

function PairsByKeys(t, f)
    local a = {}
    for n in pairs(t) do
        a[#a + 1] = n
    end
    table.sort(a, f)
    local i = 0             -- iterator variable
    local iter = function() -- iterator function
        i = i + 1
        if a[i] == nil then
            return nil
        else
            return a[i], t[a[i]]
        end
    end
    return iter
end

function LoadAnim(dict)
    if not DoesAnimDictExist(dict) then return false end

    local timeout = 2000
    while not HasAnimDictLoaded(dict) and timeout > 0 do
        RequestAnimDict(dict)
        Wait(5)
        timeout = timeout - 5
    end
    if timeout == 0 then
        DebugPrint("Loading anim dict " .. dict .. " timed out")
        return false
    else
        return true
    end
end

function LoadPropDict(model)
    if HasModelLoaded(GetHashKey(model)) then return end
    RequestModel(GetHashKey(model))
    local timeout = 2000
    while not HasModelLoaded(GetHashKey(model)) and timeout > 0 do
        Wait(5)
        timeout = timeout - 5
    end
    if timeout == 0 then
        DebugPrint("Loading model " .. model .. " timed out")
        return
    end
end

function RequestWalking(set)
    local timeout = GetGameTimer() + 5000
    while not HasAnimSetLoaded(set) and GetGameTimer() < timeout do
        RequestAnimSet(set)
        Wait(5)
    end
end

function GetPedInFront()
    local player = PlayerId()
    local pPed = GetPlayerPed(player)
    local pPos = GetEntityCoords(pPed, false)
    local pOffset = GetOffsetFromEntityInWorldCoords(pPed, 0.0, 1.3, 0.0)
    local rayHandle = StartShapeTestCapsule(pPos.x, pPos.y, pPos.z, pOffset.x, pOffset.y, pOffset.z, 10.0, 12, pPed, 7)
    local _, _, _, _, ped2 = GetShapeTestResult(rayHandle)
    return ped2
end

function NearbysOnCommand(source, args, raw)
    local NearbysCommand = ""
    for a, b in PairsByKeys(SharedEmoteData) do
        if type(b) == "table" then
            NearbysCommand = NearbysCommand .. a .. ", "
        end
    end
    EmoteChatMessage(NearbysCommand)
    EmoteChatMessage(Translate('emotemenucmd'))
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped, false)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if target ~= ped then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), false)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"],
                pedCoords["x"], pedCoords["y"], pedCoords["z"], true)
            if (closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players + 1] = i
        end
    end

    return players
end

-- Function that'll check if player is already proning, using news cam or else

---@param ignores? table key string is the ignored value
function IsInActionWithErrorMessage(ignores)
    if ignores then DebugPrint(ignores) end
    DebugPrint('IsProne', IsProne)
    DebugPrint('IsUsingNewscam', IsUsingNewscam)
    DebugPrint('IsUsingBinoculars', IsUsingBinoculars)
    if ignores == nil then ignores = {} end

    if not ignores.IsProne and IsProne then
        EmoteChatMessage(Translate('no_anim_crawling'))
        return true
    end
    if not ignores.IsUsingNewscam and IsUsingNewscam then
        -- TODO: use specific error message
        EmoteChatMessage(Translate('no_anim_right_now'))
        return true
    end
    if not ignores.IsUsingBinoculars and IsUsingBinoculars then
        -- TODO: use specific error message
        EmoteChatMessage(Translate('no_anim_right_now'))
        return true
    end

    return false
end

function HideHUDThisFrame()
    HideHelpTextThisFrame()
    HideHudAndRadarThisFrame()
    HideHudComponentThisFrame(19) -- weapon wheel
    HideHudComponentThisFrame(1)  -- Wanted Stars
    HideHudComponentThisFrame(2)  -- Weapon icon
    HideHudComponentThisFrame(3)  -- Cash
    HideHudComponentThisFrame(4)  -- MP CASH
    HideHudComponentThisFrame(13) -- Cash Change
    HideHudComponentThisFrame(11) -- Floating Help Text
    HideHudComponentThisFrame(12) -- more floating help text
    HideHudComponentThisFrame(15) -- Subtitle Text
    HideHudComponentThisFrame(18) -- Game Stream
end

function SetupButtons(button)
    local scaleform = RequestScaleformMovie("instructional_buttons")
    while not HasScaleformMovieLoaded(scaleform) do
        Wait(10)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    for i, btn in pairs(button) do
        PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
        PushScaleformMovieFunctionParameterInt(i - 1)
        ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(0, btn.key, true))
        BeginTextCommandScaleformString("STRING")
        AddTextComponentScaleform(Translate(btn.text))
        EndTextCommandScaleformString()
        PopScaleformMovieFunctionVoid()
    end

    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()

    return scaleform
end

function HandleZoomAndCheckRotation(cam, fov)
    local zoomspeed = 10.0 -- camera zoom speed
    local lPed = PlayerPedId()

    local fov_max = 70.0
    local fov_min = 10.0 -- max zoom level (smaller fov is more zoom)
    local speed_lr = 8.0 -- speed by which the camera pans left-right
    local speed_ud = 8.0 -- speed by which the camera pans up-down

    local zoomvalue = (1.0 / (fov_max - fov_min)) * (fov - fov_min)
    local rightAxisX = GetDisabledControlNormal(0, 220)
    local rightAxisY = GetDisabledControlNormal(0, 221)
    local rotation = GetCamRot(cam, 2)

    if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
        local new_z = rotation.z + rightAxisX * -1.0 * (speed_ud) * (zoomvalue + 0.1)
        local new_x = math.max(math.min(20.0, rotation.x + rightAxisY * -1.0 * (speed_lr) * (zoomvalue + 0.1)), -29.5)
        SetCamRot(cam, new_x, 0.0, new_z, 2)
    end

    if not IsPedSittingInAnyVehicle(lPed) then
        if IsControlJustPressed(0, 241) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 242) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05)
    else
        if IsControlJustPressed(0, 17) then -- Scrollup
            fov = math.max(fov - zoomspeed, fov_min)
        end
        if IsControlJustPressed(0, 16) then
            fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
        end
        local current_fov = GetCamFov(cam)
        if math.abs(fov - current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
            fov = current_fov
        end
        SetCamFov(cam, current_fov + (fov - current_fov) * 0.05) -- Smoothing of camera zoom
    end

    return fov
end

function DoesPedVehicleHaveHandleBars(ped)
    local pedVehicle = GetVehiclePedIsIn(ped, false)

    if pedVehicle == 0 then return false end

    local vehicleModel = GetEntityModel(pedVehicle)

    return IsThisModelABike(vehicleModel) or IsThisModelAJetski(vehicleModel) or IsThisModelAQuadbike(vehicleModel) or IsThisModelABicycle(vehicleModel)
end

-- Helper function to route the binded emote to whatever function it needs to use (regular emote, shared emote, emoji, etc)
function RouteEmoteToFunction(emoteName, emoteType, textureVariation)
    if emoteType == EmoteType.SHARED then
        SendSharedEmoteRequest(emoteName)
        return
    end
    if emoteType == EmoteType.EXPRESSIONS then
        EmoteMenuStart(emoteName, nil, EmoteType.EXPRESSIONS)
        return
    end
    if emoteType == EmoteType.WALKS then
        WalkMenuStart(emoteName)
        return
    end
    if emoteType == EmoteType.EMOJI then
        ShowEmoji(emoteName)
        return
    end
    EmoteCommandStart({ emoteName, textureVariation or 1 })
end

----------------------------------------------------------------------

ShowPed = false

function ShowPedMenu(zoom)
    if not Config.PreviewPed then return end

    if not ShowPed then
        CreateThread(function()
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed) - vector3(0.0, 0.0, 10.0)
            ClonedPed = CreatePed(26, GetEntityModel(playerPed), coords.x, coords.y, coords.z, 0, false, false)
            ClonePedToTarget(playerPed, ClonedPed)

            SetEntityInvincible(ClonedPed, true)
            SetEntityLocallyVisible(ClonedPed)
            NetworkSetEntityInvisibleToNetwork(ClonedPed, true)
            SetEntityCanBeDamaged(ClonedPed, false)
            SetBlockingOfNonTemporaryEvents(ClonedPed, true)
            SetEntityAlpha(ClonedPed, 254, false)
            SetEntityCollision(ClonedPed, false, false)
            SetPedCanBeTargetted(ClonedPed, false)

            ShowPed = true

            local positionBuffer = {}
            local bufferSize = 5

            while ShowPed do
                local screencoordsX = zoom and 0.6 or 0.65135417461395
                local screencoordsY = zoom and 1.9 or 0.77

                if Config.MenuPosition == "left" then
                    screencoordsX = 1.0 - screencoordsX
                end

                local world, normal = GetWorldCoordFromScreenCoord(screencoordsX, screencoordsY)
                local depth = zoom and 2.0 or 3.5
                local target = world + normal * depth
                local camRot = GetGameplayCamRot(2)

                positionBuffer[#positionBuffer + 1] = target
                if #positionBuffer > bufferSize then
                    table.remove(positionBuffer, 1)
                end

                local averagedTarget = vector3(0, 0, 0)
                for _, position in ipairs(positionBuffer) do
                    averagedTarget = averagedTarget + position
                end
                averagedTarget = averagedTarget / #positionBuffer

                local zOffset = IsPedHuman(ClonedPed) and 0.0 or (zoom and 0.85 or 0.5)
                SetEntityCoords(ClonedPed, averagedTarget.x, averagedTarget.y, averagedTarget.z + zOffset, false, false, false, false)
                local heading_offset = Config.MenuPosition == "left" and 170.0 or 190.0
                SetEntityHeading(ClonedPed, camRot.z + heading_offset)
                SetEntityRotation(ClonedPed, camRot.x * (-1), 0.0, camRot.z + 170.0, 2, false)
                ForcePedMotionState(ClonedPed, `MotionState_None`, false, 1, true)

                Wait(4)
            end

            DeleteEntity(ClonedPed)
            ClonedPed = nil
        end)
    end
end

function ClosePedMenu()
    if not Config.PreviewPed then return end

    if ClonedPed then
        ShowPed = false
        ClearPedTaskPreview()
        DeleteEntity(ClonedPed)
    end
end

function ClearPedTaskPreview()
    if not Config.PreviewPed then return end

    if ClonedPed then
        DestroyAllProps(true)

        if LastEmote.name == nil then return end
        local lastEmoteDate = LastEmote.emoteType == EmoteType.EXPRESSIONS and ExpressionData[LastEmote.name] or EmoteData[LastEmote.name]

        if not lastEmoteDate then return end

        if lastEmoteDate.scenario then
            SetPedShouldPlayImmediateScenarioExit(ClonedPed)
        else
            StopAnimTask(ClonedPed, lastEmoteDate.dict, lastEmoteDate.anim, -4)
        end
    end
end

--------------------------------------------------------------------------------------------------
-- Handle prop spawning (except the preview screen)
ServerProps = {
    -- [playerPed] = {AnimationOptions, TextureVariation}
}


AddStateBagChangeHandler('rpemotes:props', nil, function(bagName, key, value, reserved, replicated)
    if replicated then return end
    local ply = GetPlayerFromStateBagName(bagName)
    if ply == 0 then return end
    local ped = GetPlayerPed(ply)
    local serverSource = GetPlayerServerId(ply)

    if ServerProps[ped] and #ServerProps[ped] > 0 then
        for _, v in pairs(ServerProps[ped]) do
            SetEntityAsMissionEntity(v, false, false)
            DeleteEntity(v)
        end
        DebugPrint("Deleted props for player. rpemotes statebag update")
        ServerProps[ped] = nil
    end

    if type(value) == "table" and value.Emote ~= nil then
        if not ServerProps[ped] then ServerProps[ped] = {} end
        -- Overly cautious? Maybe.
        local gameTime = GetGameTimer()
        DebugPrint("creating props")
        while not DoesEntityExist(ped) do
            ped = GetPlayerPed(ply)
            Wait(0)
        end
        DebugPrint("time to finish loading ped (ms)", GetGameTimer() - gameTime)
        local emoteData = value.emoteType == EmoteType.SHARED and SharedEmoteData[value.Emote] or EmoteData[value.Emote]
        addProps(emoteData.AnimationOptions, value.TextureVariation or nil, -1, ply)
    end
end)

CreateThread(function()
    while true do
        for attachedPed, attachData in pairs(ServerProps) do
            for idx, prop in pairs(attachData) do
                if not DoesEntityExist(prop) then
                    attachData[idx] = nil
                end
            end
            if not DoesEntityExist(attachedPed) then
                for idx, prop in pairs(attachData) do
                    SetEntityAsMissionEntity(prop, false, false)
                    DeleteEntity(prop)
                end
                ServerProps[attachedPed] = nil
            end
        end
        Wait(1000)
    end
end)

RegisterNetEvent("onResourceStop", function(resource)
    if GetCurrentResourceName() ~= resource then return end
    for i, k in pairs(ServerProps) do
        for _, v in pairs(k) do
            SetEntityAsMissionEntity(v, false, false)
            DeleteEntity(v)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------
-- Client-side prop deletion, in case the normal prop spawning does not work.
-- Client-side Prop spawning uses `addProps()` as that function never actually lost the functionality.

function ClearEmoteProps()
    if ServerProps and ServerProps[PlayerPedId()] then
        for _, prop in pairs(ServerProps[PlayerPedId()]) do
            SetEntityAsMissionEntity(prop, false, false)
            DeleteEntity(prop)
        end
    end
end