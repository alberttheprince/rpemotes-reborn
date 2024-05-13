-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

--- RPEmotes by TayMcKenzieNZ, Mathu_lmn and MadsL, maintained by TayMcKenzieNZ ---
--- Download OFFICIAL version and updates ONLY at https://github.com/TayMcKenzieNZ/rpemotes ---
--- RPEmotes is FREE and ALWAYS will be. STOP PAYING SCAMMERS OR SOMEONE ELSE'S WORK!!! ---
--- Remove the } from the = {} then enter your own animation code ---
--- Don't forget to close the tables. See https://docs.rpemotes.com/for-developers/important-note/custom-emotes-and-props ---

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Exits = {}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {}

-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

function LoadAddonEmotes()
    for arrayName, array in pairs(CustomDP) do
        if RP[arrayName] then
            for emoteName, emoteData in pairs(array) do
                RP[arrayName][emoteName] = emoteData
            end
        end
        -- Free memory
        CustomDP[arrayName] = nil
    end
    -- Free memory
    CustomDP = nil
end
