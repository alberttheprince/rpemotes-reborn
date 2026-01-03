local PlayerParticles = {}

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
    LocalPlayer.state:set('ptfx', nil, true)
end

AddStateBagChangeHandler('ptfx', '', function(bagName, key, value, _unused, replicated)
    local plyId = tonumber(bagName:gsub('player:', ''), 10)

    if (PlayerParticles[plyId] and value) or (not PlayerParticles[plyId] and not value) then return end

    local ply = GetPlayerFromServerId(plyId)
    if ply <= 0 then return end

    local plyPed = GetPlayerPed(ply)
    if not DoesEntityExist(plyPed) then return end

    local stateBag = Player(plyId).state

    if value then
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(plyPed, stateBag.ptfxBone) or GetEntityBoneIndexByName(stateBag.ptfxName, "VFX")
        local entityTarget = plyPed

        if stateBag.ptfxPropId then
            if ServerProps[plyPed] and DoesEntityExist(ServerProps[plyPed][stateBag.ptfxPropId]) then
                entityTarget = ServerProps[plyPed][stateBag.ptfxPropId]
            end
        end

        PtfxThis(stateBag.ptfxAsset)

        local offset = stateBag.ptfxOffset
        local rot = stateBag.ptfxRot
        PlayerParticles[plyId] = StartNetworkedParticleFxLoopedOnEntityBone(stateBag.ptfxName, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, (stateBag.ptfxScale or 1) + 0.0, false, false, false)

        local color = stateBag.ptfxColor
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