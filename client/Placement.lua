-- The movement amounts when placing preview ped
local SMALL_CHANGE_AMOUNT = 0.01
local LARGE_CHANGE_AMOUNT = 2.5

local placementState = PlacementState.NONE
---@type vector4
local placementPosition
---@type vector3
local placementRotation
---@type vector3
local positionPriorToPlacement = vector3(0)
---@type boolean
local placementFrozePlayer = false -- true if the last placement emote caused the player to froze.

local previewPed
local menuBeforePlacement = nil

local function checkForCollidingEntities(ped)
    local pedPosition = GetEntityCoords(ped)
    local ray = StartExpensiveSynchronousShapeTestLosProbe(
        pedPosition.x, pedPosition.y, pedPosition.z,
        pedPosition.x, pedPosition.y, pedPosition.z - 2,
        2 + 4 + 8, -- Vehicles, Peds, & Ragdolls
        ped, 7
    )

    local _, hit, _, _, hitEntity = GetShapeTestResult(ray)

    return hit, hitEntity
end

local function checkCollisionsWhileInAnimation()
    CreateThread(function()
        while placementState == PlacementState.IN_ANIMATION do
            local ped = PlayerPedId()

            -- Basic collision checks for vehicles and peds
            local anyCollision, collidingEntity = checkForCollidingEntities(ped)

            if anyCollision then
                if collidingEntity and IsModelAVehicle(GetEntityModel(collidingEntity)) then
                    -- Allow emotes on *stationary* vehicles
                    if not IsVehicleStopped(collidingEntity) then
                        EmoteCancel()
                    end
                -- Ped collided with another ped or a ragdoll
                else
                    EmoteCancel()
                end
            end

            Wait(0)
        end
    end)
end

local function resetStoredPlacementValues()
    placementState = PlacementState.NONE
    placementPosition = vector4(0)
    placementRotation = vector3(0)
    positionPriorToPlacement = vector3(0)
    placementFrozePlayer = false
end

local function anyMovementControlsPressed()
    return
        IsControlJustPressed(0, 32) or -- W
        IsControlJustPressed(0, 33) or -- S
        IsControlJustPressed(0, 34) or -- A
        IsControlJustPressed(0, 35)    -- D
end

local function walkPedToPlacementPosition(emoteName)
    local anyMovementInput = false
    local playerPed = PlayerPedId()
    local timeout = GetGameTimer() + 5000

    TaskGoStraightToCoord(playerPed, placementPosition.x, placementPosition.y, placementPosition.z, 1, -1, placementPosition.w, 0)

    while timeout > GetGameTimer() and GetScriptTaskStatus(playerPed, "SCRIPT_TASK_GO_STRAIGHT_TO_COORD") ~= 7 and #(GetEntityCoords(playerPed) - placementPosition.xyz) > 1 and not anyMovementInput do
        anyMovementInput = anyMovementControlsPressed()
        Wait(0)
    end

    local latestPedPosition = GetEntityCoords(playerPed)
    local distanceToPlacementPosition = #(latestPedPosition - placementPosition.xyz)

    if anyMovementInput or distanceToPlacementPosition > 1.5 or GetGameTimer() > timeout then
        ClearPedTasks(playerPed)
        resetStoredPlacementValues()
        return
    end

    positionPriorToPlacement = latestPedPosition

    SetEntityCoordsNoOffset(playerPed, placementPosition.x, placementPosition.y, placementPosition.z, false, false, false)
    SetEntityRotation(playerPed, placementRotation.x, placementRotation.y, placementRotation.z, 2, false)
    SetEntityHeading(playerPed, placementPosition.w)

    placementState = PlacementState.IN_ANIMATION

    TriggerServerEvent("rpemotes:server:syncHeading", placementPosition.w)
    OnEmotePlay(emoteName)
    if not IsEntityPositionFrozen() then
        -- Only freeze the player if not already frozen by another script.
        -- This will prevent rpemotes from removing player freezing, when not needed to.
        FreezeEntityPosition(playerPed, true) -- Freeze player briefly to prevent initial fall
        placementFrozePlayer = true

        -- Unfreeze after one frame to restore collision
        CreateThread(function()
            Wait(0)
            FreezeEntityPosition(playerPed, false)
        end)
    end
    checkCollisionsWhileInAnimation()
end

local function disableControls()
    DisableControlAction(0, 23, true)
    DisableControlAction(0, 30, true)
    DisableControlAction(0, 31, true)
    DisableControlAction(0, 32, true)
    DisableControlAction(0, 33, true)
    DisableControlAction(0, 34, true)
    DisableControlAction(0, 35, true)
    DisableControlAction(0, 44, true)
    DisableControlAction(0, 45, true)
    DisableControlAction(0, 46, true)
    DisableControlAction(0, 49, true)
    DisableControlAction(0, 140, true)
    DisableControlAction(0, 141, true)
    DisableControlAction(0, 201, true)
end

local function drawControlHelpText()
    SimpleHelpText(
        "~INPUT_MOVE_UP_ONLY~/~INPUT_MOVE_DOWN_ONLY~/~INPUT_MOVE_LEFT_ONLY~/~INPUT_MOVE_RIGHT_ONLY~ " .. Translate('position') .. '\n' ..
        "~INPUT_COVER~/~INPUT_TALK~ " .. Translate('rotate') .. '\n' ..
        "~INPUT_RELOAD~/~INPUT_ARREST~ " .. Translate('height') .. '\n' ..
        "~INPUT_FRONTEND_ACCEPT~ " .. Translate('btn_select') .. '\n' ..
        "~INPUT_FRONTEND_RRIGHT~ " .. Translate('btn_back')
    )
end

local distanceWarningShown = false

local function showDistanceWarning()
    if not distanceWarningShown then
        SimpleNotify(Translate('toofar'))
        distanceWarningShown = true
    end
end

local function resetDistanceWarning()
    distanceWarningShown = false
end

--- Check if a position is valid for ped placement (not inside geometry/furniture)
---@param position vector3 The position to validate
---@param playerPosition vector3 The player's current position
---@return boolean isValid True if position is safe for placement
local function isPositionValidForPlacement(position, playerPosition)
    -- Check 1: Valid ground exists
    local _, isOnGround = GetGroundZFor_3dCoord(position.x, position.y, position.z + 1.0, false)
    if not isOnGround then
        return false
    end

    -- Check 2: Line of sight from player to target (walls, doors, glass)
    local playerEyePos = vector3(playerPosition.x, playerPosition.y, playerPosition.z + 0.7)
    local targetCheckPos = vector3(position.x, position.y, position.z + 0.5)

    local ray = StartExpensiveSynchronousShapeTestLosProbe(
        playerEyePos.x, playerEyePos.y, playerEyePos.z,
        targetCheckPos.x, targetCheckPos.y, targetCheckPos.z,
        81, -- World (1) + Objects (16) + Glass (64)
        PlayerPedId(), 4
    )

    local _, hit, _, _, _ = GetShapeTestResult(ray)
    if hit then
        return false
    end

    -- Check 3: Downward raycast for furniture
    local abovePos = vector3(position.x, position.y, position.z + 2.0)
    local belowPos = vector3(position.x, position.y, position.z - 0.5)

    local downRay = StartExpensiveSynchronousShapeTestLosProbe(
        abovePos.x, abovePos.y, abovePos.z,
        belowPos.x, belowPos.y, belowPos.z,
        16, -- Objects only
        PlayerPedId(), 4
    )

    local _, hitDown, hitPosDown, _, _ = GetShapeTestResult(downRay)
    if hitDown then
        local hitHeight = hitPosDown.z - position.z
        if hitHeight > 0.1 and hitHeight < 1.8 then
            return false
        end
    end

    return true
end

local function rotationToDirection(rotation)
    local rotZ = math.rad(rotation.z)
    local rotX = math.rad(rotation.x)
    local multXY = math.abs(math.cos(rotX))

    return vector3(-math.sin(rotZ) * multXY, math.cos(rotZ) * multXY, math.sin(rotX))
end

local function preparePreviewPed(startPosition, emoteName)
    SetEntityAlpha(previewPed, 150, false)
    FreezeEntityPosition(previewPed, true)
    SetEntityRotation(previewPed, 0, 0, 0, 2, false)
    SetEntityCoords(previewPed, startPosition.x, startPosition.y, startPosition.z - 50, false, false, false, false)
    EmotePlayOnNonPlayerPed(previewPed, emoteName)
end

--- Get the appropriate height offset for a ped model
--- Human peds need ~1.0 offset, animals need less based on their size
---@param ped integer The ped to check
---@return number heightOffset The Z offset to apply
local function getPedHeightOffset(ped)
    if IsPedHuman(ped) then
        return 1.0
    end

    -- For non-human peds, use a smaller offset
    -- Animals are generally closer to the ground
    return 0.5
end

local function positionPreviewPed(emoteName)
    local playerPed = PlayerPedId()
    local playerPedPosition = GetEntityCoords(playerPed)

    local rotateAmount = 0
    local upDownOffset = 0
    local moveForwardBack = 0
    local moveLeftRight = 0
    local initHeading = GetEntityHeading(playerPed) + 180
    local previewPedHidden = false
    local isPlacementValid = true

    -- Get the appropriate height offset for this ped type
    local pedHeightOffset = getPedHeightOffset(playerPed)

    preparePreviewPed(vector3(playerPedPosition.x, playerPedPosition.y, playerPedPosition.z - 50), emoteName)

    -- Prevents TP abuse to 0,0,0
    placementPosition = vector4(playerPedPosition.x, playerPedPosition.y, playerPedPosition.z, initHeading)

    -- Prevents enter key being 'pressed' again by the prior key press
    Wait(100)

    CreateThread(function()
        while placementState == PlacementState.PREVIEWING do
            local cameraPosition = GetGameplayCamCoord()
            local cameraRotation = GetGameplayCamRot(2)
            local direction = rotationToDirection(cameraRotation)
            local destination = cameraPosition + (direction * 1000)

            local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(
                cameraPosition.x, cameraPosition.y, cameraPosition.z,
                destination.x, destination.y, destination.z,
                1 + 2 + 16, -- World, Vehicles, & Props
                playerPed, 7
            )
            local _, hit, hitPosition, _, _ = GetShapeTestResult(rayHandle)

            if hit then
                -- Use dynamic height offset based on ped type instead of hardcoded +1
                local targetPosition = vector3(hitPosition.x + moveForwardBack, hitPosition.y + moveLeftRight, hitPosition.z + pedHeightOffset + upDownOffset)
                local distanceFromPedToTarget = #(targetPosition - playerPedPosition)

                playerPedPosition = GetEntityCoords(playerPed)

                if distanceFromPedToTarget <= 5 then
                    resetDistanceWarning()

                    -- Validate position - check ground exists and line of sight from player isn't blocked
                    local isValid = isPositionValidForPlacement(targetPosition, playerPedPosition)

                    if isValid then
                        isPlacementValid = true

                        if previewPedHidden then
                            previewPedHidden = false
                        end
                        SetEntityAlpha(previewPed, 150, false)

                        placementPosition = vector4(targetPosition.x, targetPosition.y, targetPosition.z, initHeading + rotateAmount)
                        placementRotation = GetEntityRotation(previewPed)

                        SetEntityHeading(previewPed, initHeading + rotateAmount)
                        SetEntityCoords(previewPed, targetPosition.x, targetPosition.y, targetPosition.z - pedHeightOffset, false, false, false, false)
                    else
                        -- No valid ground - don't update position, show as invalid
                        isPlacementValid = false
                        SetEntityAlpha(previewPed, 80, false)
                    end
                else
                    showDistanceWarning()
                    isPlacementValid = false

                    if not previewPedHidden then
                        SetEntityAlpha(previewPed, 0, false)
                        previewPedHidden = true
                    end
                end
            end

            disableControls()

            if IsDisabledControlPressed(0, 44) then
                rotateAmount += LARGE_CHANGE_AMOUNT
            elseif IsDisabledControlPressed(0, 46) then
                rotateAmount -= LARGE_CHANGE_AMOUNT
            elseif IsDisabledControlPressed(0, 45) then
                upDownOffset += SMALL_CHANGE_AMOUNT

                if upDownOffset >= 0.3 then upDownOffset = 0.3 end
            elseif IsDisabledControlPressed(0, 49) then
                upDownOffset -= SMALL_CHANGE_AMOUNT

                if upDownOffset <= -0.5 then upDownOffset = -0.5 end
            elseif IsDisabledControlPressed(0, 33) then
                moveForwardBack += SMALL_CHANGE_AMOUNT

                if moveForwardBack >= 1 then moveForwardBack = 1 end
            elseif IsDisabledControlPressed(0, 32) then
                moveForwardBack -= SMALL_CHANGE_AMOUNT

                if moveForwardBack <= -1 then moveForwardBack = -1 end
            elseif IsDisabledControlPressed(0, 35) then
                moveLeftRight += SMALL_CHANGE_AMOUNT

                if moveLeftRight >= 1 then moveLeftRight = 1 end
            elseif IsDisabledControlPressed(0, 34) then
                moveLeftRight -= SMALL_CHANGE_AMOUNT

                if moveLeftRight <= -1 then moveLeftRight = -1 end
            elseif IsDisabledControlJustPressed(0, 18) then
                if isPlacementValid then
                    placementState = PlacementState.WALKING
                else
                    PlaySoundFrontend(-1, "ERROR", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    SimpleNotify("~r~Cannot place here - no valid ground")
                end
            elseif IsDisabledControlJustPressed(0, 194) then -- Backspace/ESC
                placementState = PlacementState.NONE
                DeleteEntity(previewPed)
                -- Prevent double backspace from affecting menu navigation
                Wait(100)
                -- Restore the menu we were on before placement
                if menuBeforePlacement then
                    menuBeforePlacement:Visible(true)
                    -- Restore the preview ped if we had a LastEmote
                    if LastEmote and LastEmote.name then
                        ShowPedMenu()
                        WaitForClonedPedThenPlayLastAnim()
                    end
                    menuBeforePlacement = nil
                    -- Restart menu processing loop
                    ProcessEmoteMenu()
                end
                return
            end

            -- Show different help text based on validity
            if isPlacementValid then
                drawControlHelpText()
            else
                SimpleHelpText(
                    "~r~INVALID POSITION~s~\n" ..
                    "~INPUT_MOVE_UP_ONLY~/~INPUT_MOVE_DOWN_ONLY~/~INPUT_MOVE_LEFT_ONLY~/~INPUT_MOVE_RIGHT_ONLY~ " .. Translate('position') .. '\n' ..
                    "~INPUT_COVER~/~INPUT_TALK~ " .. Translate('rotate') .. '\n' ..
                    "~INPUT_RELOAD~/~INPUT_ARREST~ " .. Translate('height') .. '\n' ..
                    "~INPUT_FRONTEND_RRIGHT~ " .. Translate('btn_back')
                )
            end

            Wait(0)
        end

        DestroyAllProps(true)
        DeleteEntity(previewPed)
        walkPedToPlacementPosition(emoteName)
    end)
end

function GetPlacementState() return placementState end
function GetPlacementFrozePlayer() return placementFrozePlayer end

function StartNewPlacement(emoteName)
    -- Cancel any current placed emote to prevent chaining through walls
    if placementState == PlacementState.IN_ANIMATION then
        EmoteCancel(true)
        Wait(100) -- Brief delay to ensure cleanup completes
    end

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed) - vector3(0.0, 0.0, 10.0)

    if DoesEntityExist(previewPed) then DeleteEntity(previewPed) end

    previewPed = CreatePed(26, GetEntityModel(playerPed), coords.x, coords.y, coords.z, 0, false, false)

    ClonePedToTarget(playerPed, previewPed)
    SetEntityInvincible(previewPed, true)
    SetEntityLocallyVisible(previewPed)
    NetworkSetEntityInvisibleToNetwork(previewPed, true)
    SetEntityCanBeDamaged(previewPed, false)
    SetBlockingOfNonTemporaryEvents(previewPed, true)
    SetEntityAlpha(previewPed, 254, false)
    SetEntityCollision(previewPed, false, false)
    SetPedCanBeTargetted(ClonedPed, false)

    ClosePedMenu()

    -- Store and hide the currently visible menu
    menuBeforePlacement = GetCurrentlyVisibleMenu()
    if menuBeforePlacement then
        menuBeforePlacement:Visible(false)
    end

    placementState = PlacementState.PREVIEWING

    positionPreviewPed(emoteName)
end

function CleanUpPlacement(ped)
    if #positionPriorToPlacement > 0 then
        local pedCoords = GetEntityCoords(ped)
        local foundGround, groundZ = GetGroundZFor_3dCoord(pedCoords.x, pedCoords.y, pedCoords.z, false)

        -- No ground found, or ground > 3 units away, or diff between start & end Z > 1 unit
        if not foundGround or math.abs(pedCoords.z - groundZ) > 3 or math.abs(pedCoords.z - positionPriorToPlacement.z) > 1 then
            SetEntityCoordsNoOffset(ped, positionPriorToPlacement.x, positionPriorToPlacement.y, positionPriorToPlacement.z, true, true, true)
        end
    end

    if placementFrozePlayer then
        FreezeEntityPosition(PlayerPedId(), false)
    end

    TriggerServerEvent("rpemotes:server:syncHeading", nil)
    resetStoredPlacementValues()

    if DoesEntityExist(previewPed) then DeleteEntity(previewPed) end
end

AddEventHandler('gameEventTriggered', function (name, args)
    if placementState ~= PlacementState.IN_ANIMATION then return end
    if name ~= 'CEventNetworkEntityDamage' then return end

    local playerPedId = PlayerPedId()
    local targetPedId = args[1]

    if playerPedId ~= targetPedId then return end

    EmoteCancel()
end)

-- Statebag change handler to sync heading for other clients
AddStateBagChangeHandler('emoteHeading', nil, function(bagName, key, value)
    -- Extract player ID from bag name (e.g., "player:1" -> 1)
    local playerId = GetPlayerFromStateBagName(bagName)
    if not playerId then return end

    -- Don't apply to local player (we set our own heading)
    if playerId == PlayerId() then return end

    local ped = GetPlayerPed(playerId)
    if not DoesEntityExist(ped) then return end

    -- If value is nil, heading was cleared (emote ended)
    if value == nil then return end

    -- Apply the synced heading to the player's ped
    SetEntityHeading(ped, value)
end)