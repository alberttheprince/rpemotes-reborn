if Config.CheckForUpdates then
    local function VersionLog(_type, log)
        local color = _type == 'success' and '^2' or '^1'
        print(('%s%s^7'):format(color, log))
    end

    local function versionCheck()
        local currentVersion = GetResourceMetadata(GetInvokingResource() or GetCurrentResourceName(), 'version', 0)

        if currentVersion then
            currentVersion = currentVersion:match('%d+%.%d+%.%d+')
        end

        if not currentVersion then
            VersionLog('error', 'Currently unable to run a version check.')
            return
        end

        SetTimeout(1000, function()
            PerformHttpRequest('https://api.github.com/repos/alberttheprince/rpemotes-reborn/releases/latest', function(statusCode, responseBody)
                if statusCode ~= 200 then return end

                local releaseInfo = json.decode(responseBody)
                if releaseInfo.prerelease then return end

                local latestVersion = releaseInfo.tag_name:match('%d+%.%d+%.%d+')
                if not latestVersion or latestVersion == currentVersion then return end

                local currentVerParts = {string.match(currentVersion, '(%d+)%.(%d+)%.(%d+)')}
                local latestVerParts = {string.match(latestVersion, '(%d+)%.(%d+)%.(%d+)')}

                for i = 1, #currentVerParts do
                    local currPart = tonumber(currentVerParts[i])
                    local latestPart = tonumber(latestVerParts[i])

                    if currPart < latestPart then
                        VersionLog('info', ('Currently running an outdated version (%s)\r\nUpdate: %s^0'):format(currentVersion, releaseInfo.html_url))
                        return
                    elseif currPart > latestPart then
                        break
                    end
                end
            end, 'GET')
        end)
    end

    versionCheck()
end
