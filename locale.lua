Locales = {}

--- Lazy loads a locale if not already loaded
local function LoadLocale(language)
    if Locales[language] then return end -- Already loaded

    local status, result = pcall(function()
        local path = ('locales/%s.lua'):format(language)
        local chunk = LoadResourceFile(GetCurrentResourceName(), path)
        if chunk then
            local localeTable = assert(load(chunk, ('=@%s'):format(path)))()
            if type(localeTable) == "table" then
                Locales[language] = localeTable
            else
                print(("^1ERROR^7: Locale file ^5%s^7 did not return a table!"):format(path))
            end
        else
            print(("^3WARNING^7: Could not find locale file ^5%s^7."):format(path))
        end
    end)

    if not status then
        print(("^1ERROR^7: Failed to load locale ^5%s^7: %s"):format(language, result))
    end
end

function Translate(str, ...)
    if not str then
        print(("[^1ERROR^7] Resource ^5%s^7 You did not specify a parameter for the Translate function or the value is nil!"):format(GetInvokingResource() or GetCurrentResourceName()))
        return "Unknown"
    end

    -- Lazy load the primary language if not yet loaded
    LoadLocale(Config.MenuLanguage)

    if Locales[Config.MenuLanguage] and Locales[Config.MenuLanguage][str] then
        return string.format(Locales[Config.MenuLanguage][str], ...)
    end

    -- Fallback to English
    if Config.MenuLanguage ~= "en" then
        LoadLocale("en")
        if Locales["en"] and Locales["en"][str] then
            return string.format(Locales["en"][str], ...)
        end
    end

    return ("Translation [%s][%s] does not exist"):format(Config.MenuLanguage, str)
end

function TranslateCap(str, ...)
    return _(str, ...):gsub("^%l", string.upper)
end

_ = Translate
_U = TranslateCap
