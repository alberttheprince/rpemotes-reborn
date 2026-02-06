IsUsingNewscam = false
if not Config.NewscamEnabled then return end

local fov = 40.0
local index = 0
local scaleform_instructions
local scaleform_news
local breaking_news
local prop_newscam
local msg = "YOUR TEXT HERE"
local bottom = "YOUR TEXT HERE"
local title = "YOUR TEXT HERE"
local instructions = true
local cam

local function CleanupNewscam()
    ClearPedTasks(PlayerPedId())
    ClearTimecycleModifier()
    RenderScriptCams(false, false, 0, true, false)
    SetScaleformMovieAsNoLongerNeeded(breaking_news)
    SetScaleformMovieAsNoLongerNeeded(scaleform_instructions)
    DestroyCam(cam, false)
    if prop_newscam then
        DeleteEntity(prop_newscam)
    end
    if Config.UseOldPropSpawning then
        ClearEmoteProps()
    else
        LocalPlayer.state:set("rpemotes:props", {}, true)
    end
end

function UseNewscam()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then return end
    if IsInActionWithErrorMessage({IsUsingNewscam = true }) then return end
    IsUsingNewscam = not IsUsingNewscam

    if IsUsingNewscam then
        CreateThread(function()
            DestroyAllProps()
            ClearPedTasks(PlayerPedId())
            LoadAnim("missfinale_c2mcs_1")

            -- attach the prop to the player
            local boneIndex = GetPedBoneIndex(PlayerPedId(), 28422)
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
            LoadPropDict("prop_v_cam_01")

            -- prop_newscam = CreateObject(`prop_v_cam_01`, x, y, z + 0.2, true, true, true)
            -- AttachEntityToEntity(prop_newscam, PlayerPedId(), boneIndex, 0.0, 0.03, 0.01, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
            OnEmotePlay("newscam")

            TaskPlayAnim(PlayerPedId(), "missfinale_c2mcs_1", "fin_c2_mcs_1_camman", 5.0, 5.0, -1, 51, 0, false, false, false)
            PlayAmbientSpeech1(PlayerPedId(), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
            SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)

            RemoveAnimDict("missfinale_c2mcs_1")
            SetModelAsNoLongerNeeded("prop_v_cam_01")
        end)

        Wait(200)
        SetTimecycleModifier("default")
        SetTimecycleModifierStrength(0.3)
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

        scaleform_news = breaking_news

        cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

        AttachCamToEntity(cam, PlayerPedId(), 0.0, 0.0, 1.2, true)
        SetCamRot(cam, 0.0, 0.0, GetEntityHeading(PlayerPedId()))
        SetCamFov(cam, fov)
        RenderScriptCams(true, false, 0, true, false)

        scaleform_instructions = SetupButtons({
            { key = 177, text = 'exit_news' },
            { key = 19,  text = 'toggle_news_vision' },
            { key = 74,  text = "edit_values_newscam" },
            { key = 47,  text = 'toggle_instructions' }
        })

        while IsUsingNewscam and not IsEntityDead(PlayerPedId()) and not IsPedSittingInAnyVehicle(PlayerPedId()) do
            if IsControlJustPressed(0, 177) then
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                IsUsingNewscam = false
            end

            fov = HandleZoomAndCheckRotation(cam, fov)

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
                            Wait(0)
                        end
                    end)
                else
                    index = 0
                    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                    scaleform_news = breaking_news
                end
            end

            if IsControlJustPressed(0, 74) then
                SetMsgBottomTitle()
            end

            if IsControlJustPressed(0, 47) then
                instructions = not instructions
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
            end

            DrawScaleformMovieFullscreen(scaleform_news, 255, 255, 255, 255)
            if instructions then
                DrawScaleformMovieFullscreen(scaleform_instructions, 255, 255, 255, 255)
            end
            Wait(0)
        end
    end

    -- RESET EVERYTHING
    IsUsingNewscam = false
    index = 0

    CleanupNewscam()
end

function SetMsgBottomTitle()
    -- keyboard input to set the message and bottom title
    AddTextEntry("top", "Enter the top message of the news")
    DisplayOnscreenKeyboard(1, "top", "", "", "", "", "", 200)
    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        title = tostring(GetOnscreenKeyboardResult())
    end

    AddTextEntry("bottom", "Enter the bottom title of the news")
    DisplayOnscreenKeyboard(1, "bottom", "", "", "", "", "", 200)
    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
        bottom = tostring(GetOnscreenKeyboardResult())
    end

    AddTextEntry("title", "Enter the title of the news")
    DisplayOnscreenKeyboard(1, "title", "", "", "", "", "", 200)
    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(0)
    end
    if GetOnscreenKeyboardResult() then
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

RegisterCommand("newscam", UseNewscam, false)
TriggerEvent('chat:addSuggestion', '/newscam', 'Use newscam', {})

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    CleanupNewscam()
end)

CreateExport('toggleNewscam', function()
    UseNewscam()
end)
