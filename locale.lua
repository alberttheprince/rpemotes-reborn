Locales = {}

function Translate(str, ...)
    if not str then
        print(("[^1ERROR^7] Resource ^5%s^7 You did not specify a parameter for the Translate function or the value is nil!"):format(GetInvokingResource() or GetCurrentResourceName()))
        return "Unknown"
    end
    if Locales[Config.MenuLanguage] then
        if Locales[Config.MenuLanguage][str] then
            return string.format(Locales[Config.MenuLanguage][str], ...)
        elseif Config.MenuLanguage ~= "en" and Locales["en"] and Locales["en"][str] then
            return string.format(Locales["en"][str], ...)
        else
            return "Translation [" .. Config.MenuLanguage .. "][" .. str .. "] does not exist"
        end
    elseif Config.MenuLanguage ~= "en" and Locales["en"] and Locales["en"][str] then
        return string.format(Locales["en"][str], ...)
    else
        return "Locale [" .. Config.MenuLanguage .. "] does not exist"
    end
end

function TranslateCap(str, ...)
    return _(str, ...):gsub("^%l", string.upper)
end

_ = Translate
_U = TranslateCap