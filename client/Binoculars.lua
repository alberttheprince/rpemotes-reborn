--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---


IsUsingBinoculars = false
if Config.BinocularsEnabled then
    RegisterCommand("binoculars", function()
        UseBinocular()
    end)
    TriggerEvent('chat:addSuggestion', '/binoculars', 'Use binoculars', {})


    local fov_max = 70.0
    local fov_min = 10.0 -- max zoom level (smaller fov is more zoom)
    local zoomspeed = 10.0 -- camera zoom speed
    local speed_lr = 8.0 -- speed by which the camera pans left-right
    local speed_ud = 8.0 -- speed by which the camera pans up-down
    local fov = (fov_max + fov_min) * 0.5
    local index = 0
    prop_binoc = nil
    local instructions = true

    -- INSTRUCTIONAL BUTTONS

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
            AddTextComponentScaleform(Config.Languages[lang][btn.text])
            EndTextCommandScaleformString()
            PopScaleformMovieFunctionVoid()
        end

        PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
        PopScaleformMovieFunctionVoid()

        return scaleform
    end


    -- MAIN FUNCTION
    function UseBinocular()
        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            return
        end
        if isInActionWithErrorMessage({ ['IsUsingBinoculars'] = true }) then
          return
        end
        IsUsingBinoculars = not IsUsingBinoculars

        if IsUsingBinoculars then
            Citizen.CreateThread(function()

                DestroyAllProps()
                ClearPedTasks(PlayerPedId())
                RequestAnimDict("amb@world_human_binoculars@male@idle_a")
                while not HasAnimDictLoaded("amb@world_human_binoculars@male@idle_a") do
                    Citizen.Wait(5)
                end

                -- attach the prop to the player
                local boneIndex = GetPedBoneIndex(PlayerPedId(), 28422)
                local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
                if not HasModelLoaded("prop_binoc_01") then
                    LoadPropDict("prop_binoc_01")
                end
                prop_binoc = CreateObject(GetHashKey("prop_binoc_01"), x, y, z + 0.2 , true, true, true)
                AttachEntityToEntity(prop_binoc, PlayerPedId(), boneIndex, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)

                TaskPlayAnim(PlayerPedId(), "amb@world_human_binoculars@male@idle_a", "idle_c", 5.0, 5.0, -1, 51, 0, 0, 0, 0)
                PlayAmbientSpeech1(PlayerPedId(), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
                SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

                RemoveAnimDict("amb@world_human_binoculars@male@idle_a")
                SetModelAsNoLongerNeeded("prop_binoc_01")

            end)
            Wait(200)
            SetTimecycleModifier("default")
            SetTimecycleModifierStrength(0.3)
            local scaleform_bin = RequestScaleformMovie("BINOCULARS")
            while not HasScaleformMovieLoaded(scaleform_bin) do
                Wait(10)
            end

            local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

            AttachCamToEntity(cam, PlayerPedId(), 0.0, 0.0, 1.2, true)
            SetCamRot(cam, 0.0, 0.0, GetEntityHeading(PlayerPedId()))
            SetCamFov(cam, fov)
            RenderScriptCams(true, false, 0, 1, 0)
            PushScaleformMovieFunction(scaleform_bin, "SET_CAM_LOGO")
            PushScaleformMovieFunctionParameterInt(0) -- 0 for nothing, 1 for LSPD logo
            PopScaleformMovieFunctionVoid()

            local keyList = nil
            if Config.AllowVisionsToggling then
                keyList = {
                    { key = 177, text = 'exit_binoculars' },
                    { key = 19,  text = 'toggle_binoculars_vision' },
                    { key = 47,  text = 'toggle_instructions' }
                }
            else
                keyList = {
                    { key = 177, text = 'exit_binoculars' },
                    { key = 47,  text = 'toggle_instructions' }
                }
            end
            local scaleform_instructions = SetupButtons(keyList)
            -- MAIN LOOP
            while IsUsingBinoculars and not IsEntityDead(PlayerPedId()) and not IsPedSittingInAnyVehicle(PlayerPedId()) do
                if IsControlJustPressed(0, 177) then
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    IsUsingBinoculars = false
                end

                local zoomvalue = (1.0 / (fov_max - fov_min)) * (fov - fov_min)
                CheckInputRotation(cam, zoomvalue)

                HandleZoom(cam)
                HideHUDThisFrame()
                DisableControlAction(0,25,true) -- disable aim
                DisableControlAction(0, 44,  true) -- INPUT_COVER
                DisableControlAction(0, 37,  true) -- INPUT_SELECT_WEAPON
                DisableControlAction(0, 24,  true) -- Attack
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
                    if not instructions then
                        instructions = true
                        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    else
                        instructions = false
                        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    end
                end

                DrawScaleformMovieFullscreen(scaleform_bin, 255, 255, 255, 255)
                if instructions then
                    DrawScaleformMovieFullscreen(scaleform_instructions, 255, 255, 255, 255)
                end
                Wait(1)
            end
        end

        -- RESET EVERYTHING
        IsUsingBinoculars = false
        index = 0
        ClearPedTasks(PlayerPedId())
        ClearTimecycleModifier()
        fov = (fov_max + fov_min) * 0.5
        RenderScriptCams(false, false, 0, 1, 0)
        SetScaleformMovieAsNoLongerNeeded(scaleform)
        DestroyCam(cam, false)
        DeleteEntity(prop_binoc)
        SetNightvision(false)
        SetSeethrough(false)
    end

    -- UTILS
    function HideHUDThisFrame()
        HideHelpTextThisFrame()
        HideHudAndRadarThisFrame()
        HideHudComponentThisFrame(19) -- weapon wheel
        HideHudComponentThisFrame(1) -- Wanted Stars
        HideHudComponentThisFrame(2) -- Weapon icon
        HideHudComponentThisFrame(3) -- Cash
        HideHudComponentThisFrame(4) -- MP CASH
        HideHudComponentThisFrame(13) -- Cash Change
        HideHudComponentThisFrame(11) -- Floating Help Text
        HideHudComponentThisFrame(12) -- more floating help text
        HideHudComponentThisFrame(15) -- Subtitle Text
        HideHudComponentThisFrame(18) -- Game Stream
    end

    function CheckInputRotation(cam, zoomvalue)
        local rightAxisX = GetDisabledControlNormal(0, 220)
        local rightAxisY = GetDisabledControlNormal(0, 221)
        local rotation = GetCamRot(cam, 2)
        if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
            local new_z = rotation.z + rightAxisX * -1.0 * (speed_ud) * (zoomvalue + 0.1)
            local new_x = math.max(math.min(20.0, rotation.x + rightAxisY * -1.0 * (speed_lr) * (zoomvalue + 0.1)), -29.5)
            SetCamRot(cam, new_x, 0.0, new_z, 2)
        end
    end


    function HandleZoom(cam)
        local lPed = PlayerPedId()
        if not (IsPedSittingInAnyVehicle(lPed)) then
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
    end

    AddEventHandler('onResourceStop', function(resource)
        if resource == GetCurrentResourceName() then
            if IsUsingBinoculars then
                ClearPedTasks(PlayerPedId())
                ClearTimecycleModifier()
                RenderScriptCams(false, false, 0, 1, 0)
                SetScaleformMovieAsNoLongerNeeded(scaleform_bin)
                SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
                DestroyCam(cam, false)
                DeleteEntity(prop_binoc)
                SetNightvision(false)
                SetSeethrough(false)
            end
        end
    end)

    -- add export
    exports('toggleBinoculars', function()
        UseBinocular()
    end)
end
