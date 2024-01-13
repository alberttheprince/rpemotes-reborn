--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMY FUCKERS FOR SOMEONE ELSE'S WORK!!! ---


IsUsingNewscam = false

if Config.NewscamEnabled then
    RegisterCommand("newscam", function()
        UseNewscam()
    end)

    TriggerEvent('chat:addSuggestion', '/newscam', 'Use newscam', {})

    local fov_max = 70.0
    local fov_min = 10.0   -- max zoom level (smaller fov is more zoom)
    local zoomspeed = 10.0 -- camera zoom speed
    local speed_lr = 8.0   -- speed by which the camera pans left-right
    local speed_ud = 8.0   -- speed by which the camera pans up-down
    local fov = (fov_max + fov_min) * 0.5
    local index = 0
    prop_newscam = nil
    local msg = "YOUR TEXT HERE"
    local bottom = "YOUR TEXT HERE"
    local title = "YOUR TEXT HERE"
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
    function UseNewscam()
        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            return
        end
        if isInActionWithErrorMessage({ ['IsUsingNewscam'] = true }) then
            return
        end
        IsUsingNewscam = not IsUsingNewscam

        if IsUsingNewscam then
            Citizen.CreateThread(function()
                DestroyAllProps()
                ClearPedTasks(PlayerPedId())
                RequestAnimDict("missfinale_c2mcs_1")
                while not HasAnimDictLoaded("missfinale_c2mcs_1") do
                    Citizen.Wait(5)
                end

                -- attach the prop to the player
                local boneIndex = GetPedBoneIndex(PlayerPedId(), 28422)
                local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
                if not HasModelLoaded("prop_v_cam_01") then
                    LoadPropDict("prop_v_cam_01")
                end
                prop_newscam = CreateObject(GetHashKey("prop_v_cam_01"), x, y, z + 0.2, true, true, true)
                AttachEntityToEntity(prop_newscam, PlayerPedId(), boneIndex, 0.0, 0.03, 0.01, 0.0, 0.0, 0.0, true, true,
                    false, true, 1, true)

                TaskPlayAnim(PlayerPedId(), "missfinale_c2mcs_1", "fin_c2_mcs_1_camman", 5.0, 5.0, -1, 51, 0, 0, 0, 0)
                PlayAmbientSpeech1(PlayerPedId(), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
                SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

                RemoveAnimDict("missfinale_c2mcs_1")
                SetModelAsNoLongerNeeded("prop_v_cam_01")
            end)
            Wait(200)
            SetTimecycleModifier("default")
            SetTimecycleModifierStrength(0.3)
            local breaking_news = RequestScaleformMovie("breaking_news")
            while not HasScaleformMovieLoaded(breaking_news) do
                Wait(10)
            end


            PushScaleformMovieFunction(breaking_news, "breaking_news")
            PopScaleformMovieFunctionVoid()

            BeginScaleformMovieMethod(breaking_news, 'SET_TEXT')
            PushScaleformMovieMethodParameterString(msg)
            PushScaleformMovieMethodParameterString(bottom)
            EndScaleformMovieMethod()

            BeginScaleformMovieMethod(breaking_news, 'SET_SCROLL_TEXT')
            PushScaleformMovieMethodParameterInt(0) -- top ticker
            PushScaleformMovieMethodParameterInt(0) -- Since this is the first string, start at 0
            PushScaleformMovieMethodParameterString(title)

            EndScaleformMovieMethod()

            BeginScaleformMovieMethod(breaking_news, 'DISPLAY_SCROLL_TEXT')
            PushScaleformMovieMethodParameterInt(0) -- Top ticker
            PushScaleformMovieMethodParameterInt(0) -- Index of string

            EndScaleformMovieMethod()

            local scaleform_news = breaking_news

            local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

            AttachCamToEntity(cam, PlayerPedId(), 0.0, 0.0, 1.2, true)
            SetCamRot(cam, 0.0, 0.0, GetEntityHeading(PlayerPedId()))
            SetCamFov(cam, fov)
            RenderScriptCams(true, false, 0, 1, 0)

            local scaleform_instructions = SetupButtons({
                { key = 177, text = 'exit_news' },
                { key = 19,  text = 'toggle_news_vision' },
                { key = 74,  text = "edit_values_newscam" },
                { key = 47,  text = 'toggle_instructions' }
            })

            -- MAIN LOOP
            while IsUsingNewscam and not IsEntityDead(PlayerPedId()) and not IsPedSittingInAnyVehicle(PlayerPedId()) do
                if IsControlJustPressed(0, 177) then
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    IsUsingNewscam = false
                end

                local zoomvalue = (1.0 / (fov_max - fov_min)) * (fov - fov_min)
                CheckInputRotation(cam, zoomvalue)

                HandleZoom(cam)
                HideHUDThisFrame()
                DisableControlAction(0, 25, true)        -- disable aim
                DisableControlAction(0, 44, true)        -- INPUT_COVER
                DisableControlAction(0, 37, true)        -- INPUT_SELECT_WEAPON
                DisableControlAction(0, 24, true)        -- Attack
                DisablePlayerFiring(PlayerPedId(), true) -- Disable weapon firing


                if IsControlJustPressed(0, 19) then
                    -- if index = 0, show the "security_camera" scaleform, if index = 1, show the "breaking_news" scaleform and reset the index to 0
                    if index == 0 then
                        index = 1
                        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                        scaleform_news = nil
                        CreateThread(function()
                            while index == 1 do
                                DrawRect(0.0, 0.0, 2.0, 0.2, 0, 0, 0, 255)
                                DrawRect(0.0, 1.0, 2.0, 0.2, 0, 0, 0, 255)
                                Wait(1)
                            end
                        end)
                    else
                        index = 0
                        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                        scaleform_news = breaking_news
                    end
                end

                -- if players presses H, call SetMsgBottomTitle()
                if IsControlJustPressed(0, 74) then
                    SetMsgBottomTitle()
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

                DrawScaleformMovieFullscreen(scaleform_news, 255, 255, 255, 255)
                if instructions then
                    DrawScaleformMovieFullscreen(scaleform_instructions, 255, 255, 255, 255)
                end
                Wait(1)
            end
        end

        -- RESET EVERYTHING
        IsUsingNewscam = false
        index = 0
        ClearPedTasks(PlayerPedId())
        ClearTimecycleModifier()
        fov = (fov_max + fov_min) * 0.5
        RenderScriptCams(false, false, 0, 1, 0)
        SetScaleformMovieAsNoLongerNeeded(scaleform)
        DestroyCam(cam, false)
        DeleteEntity(prop_newscam)
        SetNightvision(false)
        SetSeethrough(false)
    end

    function SetMsgBottomTitle()
        -- keyboard input to set the message and bottom title
        AddTextEntry("top", "Enter the top message of the news")
        DisplayOnscreenKeyboard(1, "top", "", "", "", "", "", 200)
        while (UpdateOnscreenKeyboard() == 0) do
            DisableAllControlActions(0);
            Wait(0);
        end
        if (GetOnscreenKeyboardResult()) then
            title = tostring(GetOnscreenKeyboardResult())
        end

        AddTextEntry("bottom", "Enter the bottom title of the news")
        DisplayOnscreenKeyboard(1, "bottom", "", "", "", "", "", 200)
        while (UpdateOnscreenKeyboard() == 0) do
            DisableAllControlActions(0);
            Wait(0);
        end
        if (GetOnscreenKeyboardResult()) then
            bottom = tostring(GetOnscreenKeyboardResult())
        end

        AddTextEntry("title", "Enter the title of the news")
        DisplayOnscreenKeyboard(1, "title", "", "", "", "", "", 200)
        while (UpdateOnscreenKeyboard() == 0) do
            DisableAllControlActions(0);
            Wait(0);
        end
        if (GetOnscreenKeyboardResult()) then
            msg = tostring(GetOnscreenKeyboardResult())
        end


        -- reset the scaleform and set the new values
        SetScaleformMovieAsNoLongerNeeded(breaking_news)
        breaking_news = RequestScaleformMovie("breaking_news")
        while not HasScaleformMovieLoaded(breaking_news) do
            Wait(10)
        end

        PushScaleformMovieFunction(breaking_news, "breaking_news")
        PopScaleformMovieFunctionVoid()

        BeginScaleformMovieMethod(breaking_news, 'SET_TEXT')
        PushScaleformMovieMethodParameterString(msg)
        PushScaleformMovieMethodParameterString(bottom)
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(breaking_news, 'SET_SCROLL_TEXT')
        PushScaleformMovieMethodParameterInt(0) -- top ticker
        PushScaleformMovieMethodParameterInt(0) -- Since this is the first string, start at 0
        PushScaleformMovieMethodParameterString(title)
        EndScaleformMovieMethod()

        BeginScaleformMovieMethod(breaking_news, 'DISPLAY_SCROLL_TEXT')
        PushScaleformMovieMethodParameterInt(0) -- Top ticker
        PushScaleformMovieMethodParameterInt(0) -- Index of string
        EndScaleformMovieMethod()
    end

    -- UTILS
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
            if IsUsingNewscam then
                ClearPedTasks(PlayerPedId())
                ClearTimecycleModifier()
                RenderScriptCams(false, false, 0, 1, 0)
                SetScaleformMovieAsNoLongerNeeded(scaleform_news)
                SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
                DestroyCam(cam, false)
                DeleteEntity(prop_newscam)
                SetNightvision(false)
                SetSeethrough(false)
            end
        end
    end)

    -- add export
    exports('toggleNewscam', function()
        UseNewscam()
    end)
end
