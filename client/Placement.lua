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

local previewPed

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

    SetEntityCoordsNoOffset(playerPed, placementPosition.x, placementPosition.y, placementPosition.z, true, true, true)
    SetEntityRotation(playerPed, placementRotation.x, placementRotation.y, placementRotation.z, 2, false)
    SetEntityHeading(playerPed, placementPosition.w)

    placementState = PlacementState.IN_ANIMATION

    OnEmotePlay(emoteName)
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

local function helpText(text)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, false, -1)
end

local function drawControlHelpText()
    helpText(
        "~INPUT_COVER~/~INPUT_TALK~ " .. Translate('rotate') .. '\n' ..
        "~INPUT_RELOAD~/~INPUT_ARREST~ " .. Translate('height') .. '\n' ..
        "~INPUT_FRONTEND_ACCEPT~ " .. Translate('btn_select')
    )
end

local function subtitle(text, duration)
    BeginTextCommandPrint("CELL_EMAIL_BCON")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandPrint(duration, true)
end

local function drawDistanceWarningSubtitle()
    subtitle(Translate('toofar'), 5)
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
    SetEntityCoordsNoOffset(previewPed, startPosition.x, startPosition.y, startPosition.z - 50, true, true, true)
    EmotePlayOnNonPlayerPed(previewPed, emoteName)
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
                -- z height `+1` to account for height of ped
                local possiblePosition = vector3(hitPosition.x + moveForwardBack, hitPosition.y + moveLeftRight, hitPosition.z + 1 + upDownOffset)
                local distanceFromPedToPreviewPed = #(possiblePosition - playerPedPosition)

                playerPedPosition = GetEntityCoords(playerPed)

                if distanceFromPedToPreviewPed <= 5 then
                    if previewPedHidden then
                        SetEntityAlpha(previewPed, 150, false)
                        previewPedHidden = false
                    end

                    placementPosition = vector4(possiblePosition.x, possiblePosition.y, possiblePosition.z, GetEntityHeading(previewPed))
                    placementRotation = GetEntityRotation(previewPed)
                else
                    drawDistanceWarningSubtitle()

                    if not previewPedHidden then
                        SetEntityAlpha(previewPed, 0, false)
                        previewPedHidden = true
                    end
                end

                SetEntityHeading(previewPed, initHeading + rotateAmount)
                SetEntityCoordsNoOffset(previewPed, possiblePosition.x, possiblePosition.y, possiblePosition.z, true, true, true)
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
            elseif IsDisabledControlPressed(0, 18) then
                placementState = PlacementState.WALKING
            end

            drawControlHelpText()

            Wait(0)
        end

        DeleteEntity(previewPed)
        walkPedToPlacementPosition(emoteName)
    end)
end

function GetPlacementState() return placementState end

function StartNewPlacement(emoteName)
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

    ClosePedMenu()
    CloseAllMenus()

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

    resetStoredPlacementValues()

    if DoesEntityExist(previewPed) then DeleteEntity(previewPed) end
end

AddEventHandler('gameEventTriggered', function (name, args)
    if not IsInAnimation or PlacementState ~= PlacementState.IN_ANIMATION or name ~= 'CEventNetworkEntityDamage' then return end

    local playerPedId = PlayerPedId()
    local targetPedId = args[1]

    if playerPedId ~= targetPedId then return end

    EmoteCancel()
end)