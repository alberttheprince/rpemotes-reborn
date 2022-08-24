-- Emotes you add in the file will automatically be added to AnimationList.lua
local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {}

-- Add the custom emotes
for arrayName, array in pairs(CustomDP) do
    if DP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            -- We don't add adult animations if not needed
            if not emoteData.AdultAnimation or not Config.AdultEmotesDisabled then
                DP[arrayName][emoteName] = emoteData
            end
        end
    end
    -- Free memory
    CustomDP[arrayName] = nil
end
-- Free memory
CustomDP = nil
