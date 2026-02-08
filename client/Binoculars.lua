IsUsingBinoculars = false
if not Config.BinocularsEnabled then return end

local fov = 40.0
local index = 0
local cam
local prop_binoc
local instructions = true
local scaleform_bin
local scaleform_instructions

local function CleanupBinoculars()
    ClearPedTasks(PlayerPedId())
    ClearTimecycleModifier()
    RenderScriptCams(false, false, 0, true, false)
    SetScaleformMovieAsNoLongerNeeded(scaleform_bin)
    SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
    DestroyCam(cam, false)
    if prop_binoc then
        DeleteEntity(prop_binoc)
    end
    if Config.UseOldPropSpawning then
        ClearEmoteProps()
    else
        LocalPlayer.state:set("rpemotes:props", {}, true)
    end
    SetNightvision(false)
    SetSeethrough(false)
end

function UseBinocular()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then return end
    if IsInActionWithErrorMessage({ IsUsingBinoculars = true }) then return end
    IsUsingBinoculars = not IsUsingBinoculars

    if IsUsingBinoculars then
        CreateThread(function()
            DestroyAllProps()
            ClearPedTasks(PlayerPedId())
            LoadAnim("amb@world_human_binoculars@male@idle_a")

            -- attach the prop to the player
            local boneIndex = GetPedBoneIndex(PlayerPedId(), 28422)
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
            LoadPropDict("prop_binoc_01")
            -- prop_binoc = CreateObject(`prop_binoc_01`, x, y, z + 0.2, true, true, true)
            -- AttachEntityToEntity(prop_binoc, PlayerPedId(), boneIndex, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true,
            --     false, true, 1, true)
            OnEmotePlay("binoculars")

            TaskPlayAnim(PlayerPedId(), "amb@world_human_binoculars@male@idle_a", "idle_c", 5.0, 5.0, -1, 51, 0,
                false, false, false)
            PlayAmbientSpeech1(PlayerPedId(), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
            SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)

            RemoveAnimDict("amb@world_human_binoculars@male@idle_a")
            SetModelAsNoLongerNeeded("prop_binoc_01")
        end)

        Wait(200)

        SetTimecycleModifier("default")
        SetTimecycleModifierStrength(0.3)
        scaleform_bin = RequestScaleformMovie("BINOCULARS")
        while not HasScaleformMovieLoaded(scaleform_bin) do
            Wait(10)
        end

        cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

        AttachCamToEntity(cam, PlayerPedId(), 0.0, 0.0, 1.2, true)
        SetCamRot(cam, 0.0, 0.0, GetEntityHeading(PlayerPedId()))
        SetCamFov(cam, fov)
        RenderScriptCams(true, false, 0, true, false)
        PushScaleformMovieFunction(scaleform_bin, "SET_CAM_LOGO")
        PushScaleformMovieFunctionParameterInt(0) -- 0 for nothing, 1 for LSPD logo
        PopScaleformMovieFunctionVoid()

        local keyList = {
            { key = 177, text = 'exit_binoculars' },
            { key = 47,  text = 'toggle_instructions' }
        }

        if Config.AllowVisionsToggling then
            table.insert(keyList, 2, { key = 19, text = 'toggle_binoculars_vision' })
        end

        scaleform_instructions = SetupButtons(keyList)

        while IsUsingBinoculars and not IsEntityDead(PlayerPedId()) and not IsPedSittingInAnyVehicle(PlayerPedId()) do
            if IsControlJustPressed(0, 177) then
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                IsUsingBinoculars = false
            end


            fov = HandleZoomAndCheckRotation(cam, fov)

            HideHUDThisFrame()
            DisableControlAction(0, 25, true)        -- disable aim
            DisableControlAction(0, 44, true)        -- INPUT_COVER
            DisableControlAction(0, 37, true)        -- INPUT_SELECT_WEAPON
            DisableControlAction(0, 24, true)        -- Attack
            DisablePlayerFiring(PlayerPedId(), true) -- Disable weapon firing


            if IsControlJustPressed(0, 19) and Config.AllowVisionsToggling then
                -- if index = 0, toggle night vision, if index = 1, toggle thermal vision, if index = 2, toggle normal vision and reset index
                if index == 0 then
                    SetNightvision(true)
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    index = index + 1
                elseif index == 1 then
                    SetSeethrough(true)
                    SetNightvision(false)
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    index = index + 1
                elseif index == 2 then
                    SetNightvision(false)
                    SetSeethrough(false)
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    index = 0
                end
            end

            if IsControlJustPressed(0, 47) then
                instructions = not instructions
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
            end

            DrawScaleformMovieFullscreen(scaleform_bin, 255, 255, 255, 255)
            if instructions then
                DrawScaleformMovieFullscreen(scaleform_instructions, 255, 255, 255, 255)
            end
            Wait(0)
        end
    end

    -- RESET EVERYTHING
    IsUsingBinoculars = false
    index = 0

    CleanupBinoculars()
end

RegisterCommand("binoculars", UseBinocular, false)
TriggerEvent('chat:addSuggestion', '/binoculars', 'Use binoculars', {})

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    CleanupBinoculars()
end)

CreateExport('toggleBinoculars', function()
    UseBinocular()
end)
