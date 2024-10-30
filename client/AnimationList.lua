-- ALL custom animations added to this repository were added with express permission from the creators and do not contain any paid content --
-- If an emote does not work, you may be on an older gamebuild --
-- To get a higher gamebuild, see ReadMe on github repository --

RP = {}

-- EXPRESSIONS --

RP.Expressions = { ---- MOODS ----
    ["Aiming"] = {
        "mood_aiming_1"
    },
    ["Angry"] = {
        "mood_angry_1"
    },
    ["Burning"] = {
        "burning_1"
    },
    ["Crying"] = {
        "console_wasnt_fun_end_loop_floyd_facial"
    },
    ["Dead"] = {
        "dead_1"
    },
    ["Drunk"] = {
        "mood_drunk_1"
    },
    ["Dumb"] = {
        "pose_injured_1"
    },
    ["Electrocuted"] = {
        "electrocuted_1"
    },
    ["Excited"] = {
        "mood_excited_1"
    },
    ["Frustrated"] = {
        "mood_frustrated_1"
    },
    ["Grumpy"] = {
        "effort_1"
    },
    ["Grumpy2"] = {
        "mood_drivefast_1",
        "Grumpy 2"
    },
    ["Grumpy3"] = {
        "pose_angry_1",
        "Grumpy 3"
    },
    ["Happy"] = {
        "mood_happy_1"
    },
    ["Injured"] = {
        "mood_injured_1"
    },
    ["Joyful"] = {
        "mood_dancing_low_1"
    },
    ["Joyful2"] = {
        "mood_dancing_low_2",
        "Joyful 2"
    },
    ["Mouthbreather"] = {
        "smoking_hold_1"
    },
    ["Mouthbreather2"] = {
        "smoking_inhale_1",
        "Mouthbreather 2"
    },
    ["Neverblink"] = {
        "pose_normal_1",
        "Never Blink"
    },
    ["Oneeye"] = {
        "pose_aiming_1",
        "One Eye"
    },
    ["Scheme"] = {
        "mood_dancing_high_2"
    },
    ["Shocked"] = {
        "shocked_1"
    },
    ["Shocked2"] = {
        "shocked_2",
        "Shocked 2"
    },
    ["Sleeping"] = {
        "mood_sleeping_1"
    },
    ["Sleeping2"] = {
        "dead_1",
        "Sleeping 2"
    },
    ["Sleeping3"] = {
        "dead_2",
        "Sleeping 3"
    },
    ["Smug"] = {
        "mood_smug_1"
    },
    ["Speculative"] = {
        "mood_aiming_1"
    },
    ["Stressed"] = {
        "mood_stressed_1"
    },
    ["Sulking"] = {
        "mood_sulk_1"
    },
    ["Weird"] = {
        "effort_2"
    },
    ["Weird2"] = {
        "effort_3",
        "Weird 2"
    },
    ["Weird3"] = {
        "melee_effort_1",
        "Weird 3"
    },
}


--- WALKSTYLES ---

RP.Walks = {
    -- The key shouldn't have any other uppercase letter than the first one!
    -- The first letter HAS to be uppercase!
    -- First element of array is the walk animation
    -- Second element is the label, this is optional
    ["Alien"] = {
        "move_m@alien"
    },
    ["Armored"] = {
        "anim_group_move_ballistic"
    },
    ["Arrogant"] = {
        "move_f@arrogant@a"
    },
    ["Butch"] = {
        "move_m@hurry_butch@a"
    },
    ["Butch2"] = {
        "move_m@hurry_butch@b",
        "Butch 2"
    },
    ["Butch3"] = {
        "move_m@hurry_butch@c",
        "Butch 3"
    },
    ["Bigfoot"] = {
        "move_characters@orleans@core@"
    },
    ["Buzzed"] = {
        "move_m@buzzed"
    },
    ["Brave"] = {
        "move_m@brave"
    },
    ["Brave2"] = {
        "move_m@brave@a",
        "Brave 2"
    },
    ["Casey"] = {
        "move_casey"
    },
    ["Casual"] = {
        "move_m@casual@a"
    },
    ["Casual2"] = {
        "move_m@casual@b",
        "Casual 2"
    },
    ["Casual3"] = {
        "move_m@casual@c",
        "Casual 3"
    },
    ["Casual4"] = {
        "move_m@casual@d",
        "Casual 4"
    },
    ["Casual5"] = {
        "move_m@casual@e",
        "Casual 5"
    },
    ["Casual6"] = {
        "move_m@casual@f",
        "Casual 6"
    },
    ["Chichi"] = {
        "move_f@chichi"
    },
    ["Confident"] = {
        "move_m@confident"
    },
    ["Cop"] = {
        "move_m@business@a"
    },
    ["Cop2"] = {
        "move_m@business@b",
        "Cop 2"
    },
    ["Cop3"] = {
        "move_m@business@c",
        "Cop 3"
    },
    ["Coward"] = {
        "move_m@coward"
    },
    ["Chubbymale"] = {
        "move_chubby",
        "Chubby Male"
    },
    ["Chubbyfemale"] = {
        "move_f@chubby@a",
        "Chubby Female"
    },
    ["Dave"] = {
        "move_characters@dave_n"
    },
    ["Defaultfemale"] = {
        "move_f@multiplayer",
        "Default Female"
    },
    ["Defaultmale"] = {
        "move_m@multiplayer",
        "Default Male"
    },
    ["Depressed"] = {
        "move_m@depressed@a"
    },
    ["Depressed2"] = {
        "move_m@depressed@b",
        "Depressed 2"
    },
    ["Depressed3"] = {
        "move_f@depressed@a",
        "Depressed 3"
    },
    ["Depressed4"] = {
        "move_f@depressed@c",
        "Depressed 4"
    },
    ["Dreyfuss"] = {
        "move_dreyfuss"
    },
    ["Drunk"] = {
        "move_m@drunk@a"
    },
    ["Drunk2"] = {
        "move_m@buzzed",
        "Drunk 2 - Buzzed"
    },
    ["Drunk3"] = {
        "move_m@drunk@moderatedrunk",
        "Drunk 3 - Moderate"
    },
    ["Drunk4"] = {
        "move_m@drunk@moderatedrunk_head_up",
        "Drunk 4 - Moderate 2"
    },
    ["Drunk5"] = {
        "move_m@drunk@slightlydrunk",
        "Drunk 5 - Slightly Drunk"
    },
    ["Drunk6"] = {
        "move_m@drunk@verydrunk",
        "Drunk 6 - Very Drunk"
    },
    ["Fat"] = {
        "move_m@fat@a",
        "Fat Male"
    },
    ["Fat2"] = {
        "move_f@fat@a",
        "Fat Female"
    },
    ["Fat3"] = {
        "move_m@fat@bulky",
        "Fat & Bulky"
    },
    ["Fat4"] = {
        "move_f@fat@a_no_add",
        "Fat Female 2"
    },
    ["Femme"] = {
        "move_f@femme@"
    },
    ["Femme2"] = {
        "move_m@femme@",
        "Femme 2"
    },
    ["Fire"] = {
        "move_characters@franklin@fire"
    },
    ["Fire2"] = {
        "move_characters@michael@fire",
        "Fire 2"
    },
    ["Fire3"] = {
        "move_m@fire",
        "Fire 3"
    },
    ["Flee"] = {
        "move_f@flee@a"
    },
    ["Flee2"] = {
        "move_f@flee@c",
        "Flee 2"
    },
    ["Flee3"] = {
        "move_m@flee@a",
        "Flee 3"
    },
    ["Flee4"] = {
        "move_m@flee@b",
        "Flee 4"
    },
    ["Flee5"] = {
        "move_m@flee@c",
        "Flee 5"
    },
    ["Floyd"] = {
        "move_characters@floyd"
    },
    ["Franklin"] = {
        "move_p_m_one"
    },
    ["Gangster"] = {
        "move_m@gangster@generic"
    },
    ["Gangsterb"] = {
        "move_gangster",
        "Gangster 2"
    },
    ["Gangsterc"] = {
        "move_m@gangster@ng",
        "Gangster 3"
    },
    ["Gangsterd"] = {
        "move_m@gangster@var_a",
        "Gangster 4"
    },
    ["Gangstere"] = {
        "move_m@gangster@var_b",
        "Gangster 5"
    },
    ["Gangsterf"] = {
        "move_m@gangster@var_c",
        "Gangster 6"
    },
    ["Gangsterg"] = {
        "move_m@gangster@var_d",
        "Gangster 7"
    },
    ["Gangsterh"] = {
        "move_m@gangster@var_e",
        "Gangster 8"
    },
    ["Gangsteri"] = {
        "move_m@gangster@var_f",
        "Gangster 9"
    },
    ["Gangsterj"] = {
        "move_m@gangster@var_g",
        "Gangster 10"
    },
    ["Gangsterk"] = {
        "move_m@gangster@var_h",
        "Gangster 11"
    },
    ["Gangsterl"] = {
        "move_m@gangster@var_i",
        "Gangster 12"
    },
    ["Gangsterm"] = {
        "move_m@gangster@var_j",
        "Gangster 13"
    },
    ["Gangstern"] = {
        "move_m@gangster@var_k",
        "Gangster 14"
    },
    ["Generic"] = {
        "move_m@generic",
        "Generic Male"
    },
    ["Generic2"] = {
        "move_f@generic",
        "Generic Female"
    },
    ["Grooving"] = {
        "anim@move_m@grooving@",
        "Grooving Male"
    },
    ["Grooving2"] = {
        "anim@move_f@grooving@",
        "Grooving Female"
    },
    ["Guard"] = {
        "move_m@prison_gaurd"
    },
    ["Handcuffs"] = {
        "move_m@prisoner_cuffed"
    },
    ["Heels"] = {
        "move_f@heels@c"
    },
    ["Heels2"] = {
        "move_f@heels@d",
        "Heels 2"
    },
    ["Hiking"] = {
        "move_m@hiking"
    },
    ["Hiking2"] = {
        "move_f@hiking",
        "Hiking 2"
    },
    ["Hipster"] = {
        "move_m@hipster@a"
    },
    ["Hobo"] = {
        "move_m@hobo@a",
        "Hobo"
    },
    ["Hobo2"] = {
        "move_m@hobo@b",
        "Hobo 2"
    },
    ["Hurry"] = {
        "move_m@hurry@a",
        "Hurry Male"
    },
    ["Hurry2"] = {
        "move_f@hurry@a",
        "Hurry Female"
    },
    ["Hurry3"] = {
        "move_f@hurry@b",
        "Hurry Female 2"
    },
    ["Injured2"] = {
        "move_f@injured",
        "Injured 2 - Female"
    },
    ["Intimidation"] = {
        "move_m@intimidation@1h",
        "Intimidation"
    },
    ["Intimidation2"] = {
        "move_m@intimidation@cop@unarmed",
        "Intimidation 2"
    },
    ["Intimidation3"] = {
        "move_m@intimidation@unarmed",
        "Intimidation 3"
    },
    ["Janitor"] = {
        "move_p_m_zero_janitor"
    },
    ["Janitor2"] = {
        "move_p_m_zero_slow",
        "Janitor 2"
    },
    ["Jimmy"] = {
        "move_characters@jimmy"
    },
    ["Jog"] = {
        "move_m@jog@"
    },
    ["Lamar"] = {
        "move_characters@lamar"
    },
    ["Lamar2"] = {
        "anim_group_move_lemar_alley",
        "Lamar 2"
    },
    ["Lester"] = {
        "move_heist_lester"
    },
    ["Lester2"] = {
        "move_lester_caneup",
        "Lester 2"
    },
    ["Maneater"] = {
        "move_f@maneater"
    },
    ["Michael"] = {
        "move_ped_bucket"
    },
    ["Money"] = {
        "move_m@money"
    },
    ["Muscle"] = {
        "move_m@muscle@a"
    },
    ["Nervous"] = {
        "move_characters@jimmy@nervous@"
    },
    ["Patricia"] = {
        "move_characters@patricia"
    },
    ["Paramedic"] = {
        "move_paramedic"
    },
    ["Posh"] = {
        "move_m@posh@"
    },
    ["Posh2"] = {
        "move_f@posh@",
        "Posh 2"
    },
    ["Quick"] = {
        "move_m@quick"
    },
    ["Ron"] = {
        "move_characters@ron"
    },
    ["Runner"] = {
        "female_fast_runner"
    },
    ["Sad"] = {
        "move_m@sad@a",
        "Sad Male"
    },
    ["Sad2"] = {
        "move_m@sad@b",
        "Sad Male 2"
    },
    ["Sad3"] = {
        "move_m@sad@c",
        "Sad Male 3"
    },
    ["Sad4"] = {
        "move_f@sad@a",
        "Sad Female"
    },
    ["Sad5"] = {
        "move_f@sad@b",
        "Sad Female 2"
    },
    ["Sassy"] = {
        "move_m@sassy"
    },
    ["Sassy2"] = {
        "move_f@sassy",
        "Sassy 2"
    },
    ["Scared"] = {
        "move_f@scared"
    },
    ["Sexy"] = {
        "move_f@sexy@a"
    },
    ["Shady"] = {
        "move_m@shadyped@a"
    },
    ["Slow"] = {
        "move_characters@jimmy@slow@"
    },
    ["Stripper"] = {
        "move_f@stripper@a"
    },
    ["Swagger"] = {
        "move_m@swagger"
    },
    ["Swagger2"] = {
        "move_m@swagger@b",
        "Swagger 2"
    },
    ["Tough"] = {
        "move_m@tough_guy@"
    },
    ["Tough2"] = {
        "move_f@tough_guy@",
        "Tough 2"
    },
    ["Toolbelt"] = {
        "move_m@tool_belt@a",
        "Toolbelt Male"

    },
    ["Toolbelt2"] = {
        "move_f@tool_belt@a",
        "Toolbelt Female"
    },
    ["Trash"] = {
        "clipset@move@trash_fast_turn"
    },
    ["Trash2"] = {
        "missfbi4prepp1_garbageman",
        "Trash 2"
    },
    ["Tracey"] = {
        "move_characters@tracey"
    },
    ["Trevor"] = {
        "move_p_m_two"
    },
    ["Veryslow"] = {
        "move_m@leaf_blower",
        "Very Slow"
    },
    ["Wide"] = {
        "move_m@bag"
    },
}


--- SHARED EMOTES ---

RP.Shared = {

    --[emotename] = {dictionary, animation, displayname, targetemotename, additionalanimationoptions} --
    -- You don't have to specify targetemotename; If you don't, it will just play the same animation on both.--
    -- targetemote is used for animations that have a corresponding animation to the other player, ie Carry and Be Carried --
    -- Emotes will work with either SyncOffset or Attachto. We can attach players either in front of us, to a specific bone, or either side of us. --


    ["handshake"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "Handshake",
        "handshake2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000,
            SyncOffsetFront = 0.9
        }
    },
    ["handshake2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "Handshake 2",
        "handshake",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["hug"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Hug",
        "hug2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.05
        }
    },
    ["hug2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Hug 2",
        "hug",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.18
        }
    },
    ["hugr"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_chad",
        "Hug Romantic 1",
        "hugr2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["hugr2"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_girl",
        "Hug Romantic 2",
        "hugr",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["bro"] = {
        "mp_ped_interaction",
        "hugs_guy_a",
        "Bro",
        "bro2",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["bro2"] = {
        "mp_ped_interaction",
        "hugs_guy_b",
        "Bro 2",
        "bro",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["give"] = {
        "mp_common",
        "givetake1_a",
        "Give",
        "give2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["give2"] = {
        "mp_common",
        "givetake1_b",
        "Give 2",
        "give",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["baseball"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_a",
        "Baseball",
        "baseballthrow"
    },
    ["baseballthrow"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_b",
        "Baseball Throw",
        "baseball"
    },
    ["stickup"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Stick Up",
        "stickupscared",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stickupscared"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Stickup Scared",
        "stickup",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["punch"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_rear_lefthook",
        "Punch",
        "punched"
    },
    ["punched"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_cross_r",
        "Punched",
        "punch"
    },
    ["headbutt"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Headbutt",
        "headbutted"
    },
    ["headbutted"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_headbutt",
        "Headbutted",
        "headbutt"
    },
    ["slap2"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_backslap",
        "Slap 2",
        "slapped2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        "slapped",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["slapped"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_slap",
        "Slapped",
        "slap"
    },
    ["slapped2"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_backslap",
        "Slapped 2",
        "slap2"
    },
    ["receiveblowjob"] = {
        "misscarsteal2pimpsex",
        "pimpsex_punter",
        "Receive Blowjob",
        "giveblowjob",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 30000,
            SyncOffsetFront = 0.63
        },
        AdultAnimation = true
    },
    ["giveblowjob"] = {
        "misscarsteal2pimpsex",
        "pimpsex_hooker",
        "Give Blowjob",
        "receiveblowjob",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 30000,
            SyncOffsetFront = 0.63
        },
        AdultAnimation = true
    },
    ["streetsexmale"] = {
        "misscarsteal2pimpsex",
        "shagloop_pimp",
        "Street Sex Male",
        "streetsexfemale",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.50
        },
        AdultAnimation = true
    },
    ["streetsexfemale"] = {
        "misscarsteal2pimpsex",
        "shagloop_hooker",
        "Street Sex Female",
        "streetsexmale",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.50
        },
        AdultAnimation = true
    },
    ["carry"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "Carry",
        "carry2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carry2"] = {
        "nm",
        "firemans_carry",
        "Be carried",
        "carry",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 40269,
            xPos = -0.14,
            yPos = 0.15,
            zPos = 0.14,
            xRot = 0.0,
            yRot = -59.0,
            zRot = -4.5
        }
    },
    ["carry3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry 2",
        "carry4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carry4"] = {
        "amb@code_human_in_car_idles@generic@ps@base",
        "base",
        "Be carried 2",
        "carry3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 28252,
            xPos = 0.350,
            yPos = 0.15,
            zPos = -0.15,
            xRot = -42.50,
            yRot = -22.50,
            zRot = 22.50
        }
    },
    ["carrymecute"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_002",
        "Carry Me Cute",
        "carrymecute2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["carrymecute2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_002",
        "Carry Me Cute 2",
        "carrymecute",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0000,
            yPos = 0.0000,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["carrycmg"] = { -- Male Custom emote by CMG Mods
        "couplepose1cmg@animation",
        "couplepose1cmg_clip",
        "Carry Me Cute 3",
        "carrycmg2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["carrycmg2"] = { -- Female Custom emote by CMG Mods
        "couplepose2cmg@animation",
        "couplepose2cmg_clip",
        "Carry Me Cute 4",
        "carrycmg",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.3440,
            zPos = -0.0100,
            xRot = 180.0000,
            yRot = 180.0000,
            zRot = -1.9999
        }
    },
    ["bestfriends"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female01",
    "mrwitt",
    "Best Friends 1",
    "bestfriends2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
        }
    },
    ["bestfriends2"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female02",
    "mrwitt",
    "Best Friends 2",
    "bestfriends",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.2500,
        yPos = 0.1400,
        zPos = 0.0200,
        xRot = 0.0000,
        yRot = 0.0000,
        zRot = -0.0000
        },
    },
    ["bff"] = {
        "anim@male_couple_03_b",
        "m_couple_03_b_clip",
        "BFF Pose",
        "bffb",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
    },
    ["bffb"] = {
        "anim@female_couple_03_b",
        "f_couple_03_b_clip",
        "BFF Pose 2",
        "bff",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.1300,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 76.0000
        },
    },
    ["sitwithmepose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_003",
        "Sit With Me",
        "sitwithmepose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["sitwithmepose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_003",
        "Sit With Me Please?",
        "sitwithmepose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.3540,
            yPos = 0.5110,
            zPos = 0.8310,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = -2.8000
        }
    },
    ["hugpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_001",
        "Hug Pose",
        "hugpose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["hugpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_001",
        "Hug Pose With Me?",
        "hugpose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.1400,
            yPos = 0.2500,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["hugtip"] = { -- Male Custom emote by Little Spoon
        "littlespoon@friendship007",
        "friendship007",
        "Hug Pose Tippy Toes",
        "hugtip2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["hugtip2"] = { -- Female Custom emote by Little Spoon
        "littlespoon@friendship008",
        "friendship008",
        "Hug Pose Tippy Toes 2",
        "hugtip",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.2700,
            zPos = 0.0,
            xRot = -180.0000,
            yRot = -180.0000,
            zRot = 10.0000
        }
    },
    ["cutepicpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_004",
        "Cute Pic Pose",
        "cutepicpose2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["cutepicpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_004",
        "Cute Pic Pose 2",
        "cutepicpose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.2700,
            yPos = 0.1200,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["couplehhands"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_005",
        "Couple Heart Hands",
        "couplehhands2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplehhands2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_005",
        "Couple Heart Hands 2",
        "couplehhands",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.1230,
            yPos = 0.4740,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 94.0000
        }
    },
    ["couplewed1a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1a",
        "wedding1a",
        "Couple Wedding Pose 1A",
        "couplewed1b",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplewed1b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1b",
        "wedding1b",
        "Couple Wedding Pose 1B",
        "couplewed1a",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0300,
            yPos = 1.0000,
            zPos = 0.0200,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 130.0000
        }
    },
    ["couplewed2a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2b",
        "wedding2b",
        "Couple Wedding Pose 2A",
        "couplewed2b",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["couplewed2b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2a",
        "wedding2a",
        "Couple Wedding Pose 2B",
        "couplewed2a",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.2500,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -88.9000
        }
    },
    ["liftme"] = { -- Male Custom emote by -Moses-
        "couplepose1pack1anim2@animation",
        "couplepose1pack1anim2_clip",
        "Lift Me",
        "liftme2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["liftme2"] = { -- Female Custom emote by -Moses-
        "couplepose1pack1anim1@animation",
        "couplepose1pack1anim1_clip",
        "Lift Me 2",
        "liftme",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0020,
            yPos = 0.2870,
            zPos = 0.2500,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
    ["liftme3"] = { -- Male Custom emote by -Moses-
        "couplepose2pack1anim2@animation",
        "couplepose2pack1anim2_clip",
        "Lift Me 3",
        "liftme4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["liftme4"] = { -- Female Custom emote by -Moses-
        "couplepose2pack1anim1@animation",
        "couplepose2pack1anim1_clip",
        "Lift Me 4",
        "liftme3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.4800,
            zPos = 0.5300,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
    ["liftme5"] = { -- Male Custom emote by -Moses-
        "couplepose3pack1anim2@animation",
        "couplepose3pack1anim2_clip",
        "Lift Me 5",
        "liftme6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["liftme6"] = { -- Female Custom emote by -Moses-
        "couplepose3pack1anim1@animation",
        "couplepose3pack1anim1_clip",
        "Lift Me 6",
        "liftme5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.2120,
            yPos = -0.5400,
            zPos = -0.1000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["csdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Small Dog",
        "csdog2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["csdog2"] = { -- Emote by MissSnowie
        "misssnowie@little_doggy_lying_down",
        "base",
        "Small Dog Carried",
        "csdog",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.040,
            yPos = 0.330,
            zPos = 0.280,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 80.0,
        },
        AnimalEmote = true
    },
    ["csdog3"] = { -- Custom Emote by MissSnowie
        "hooman@hugging_little_doggy",
        "base",
        "Carry Small Dog 2",
        "csdog4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["csdog4"] = { -- Custom Emote by MissSnowie
        "little_doggy@hugging_hooman",
        "base",
        "Small Dog Carried 2",
        "csdog3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 24818,
            xPos = -0.95,
            yPos = 0.16,
            zPos = -0.15,
            xRot = 3.70,
            yRot = 75.00,
            zRot = -161.90,
        },
        AnimalEmote = true
    },
    ["cbdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Big Dog",
        "cbdog2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AnimalEmote = true
    },
    ["cbdog2"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Big Dog Carried",
        "cbdog",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.100,
            yPos = 0.650,
            zPos = 0.430,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -100.00,
        },
        AnimalEmote = true
    },
    ["pback"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_a",
        "mxclip_a",
        "Offer Piggy Back",
        "pback2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pback2"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_b",
        "mxanim_b",
        "Be Piggy Backed",
        "pback",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0200,
            yPos = -0.4399,
            zPos = 0.4200,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["cprs"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "Give CPR",
        "cprs2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 250
        }
    },
    ["cprs2"] = {
        "mini@cpr@char_b@cpr_str",
        "cpr_pumpchest",
        "Get CPR",
        "cprs",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.35,
            yPos = 0.8,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 270.0
        }
    },
    ["cprs3"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_paramedic",
        "Give CPR 2",
        "cprs4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 250
        }
    },
    ["cprs4"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_victim",
        "Get CPR 2",
        "cprs3",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.35,
            yPos = 0.65,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 270.0
        }
    },
    ["hostage"] = {
        "anim@gangops@hostage@",
        "perp_idle",
        "Take hostage",
        "hostage2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["hostage2"] = {
        "anim@gangops@hostage@",
        "victim_idle",
        "Be hostage",
        "hostage",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.3,
            yPos = 0.1,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["search"] = { -- Custom Emote By ultrahacx
        "custom@police",
        "police",
        "Search",
        "search2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700
        }
    },
    ["search2"] = {
        "missfam5_yoga",
        "a2_pose",
        "Be searched",
        "search",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.5,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        }
    },
    ["followa"] = { -- Custom Ped In Front Emote By Dollie Mods
        "dollie_mods@follow_me_001",
        "follow_me_001",
        "Follow A (Front)",
        "followb",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            -- We can set this to true for lols, however it messes up if you walk through doors. Either player can press X to cancel the shared emotes
        }
    },
    ["followb"] = { -- Custom Ped At Back Emote by Dollie Mods
        "dollie_mods@follow_me_002",
        "follow_me_002",
        "Follow B (Back)",
        "followa",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.078,
            yPos = 0.018,
            zPos = 0.00,
            xRot = 0.00,
            yRot = 0.00,
            zRot = 0.00
        }
    },
    ["kiss"] = {
        "hs3_ext-20",
        "cs_lestercrest_3_dual-20",
        "Kiss",
        "kiss2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss2"] = {
        "hs3_ext-20",
        "csb_georginacheng_dual-20",
        "Kiss 2",
        "kiss",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss3"] = {
        "hs3_ext-19",
        "cs_lestercrest_3_dual-19",
        "Kiss 3",
        "kiss4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kiss4"] = {
        "hs3_ext-19",
        "csb_georginacheng_dual-19",
        "Kiss 4",
        "kiss3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["kisscuteneck"] = {
        "genesismods_kissme@kissmale8",
        "kissmale8",
        "Kiss Cute - Neck (Male)",
        "kisscuteneck2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = -0.56,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisscuteneck2"] = {
        "genesismods_kissme@kissfemale8",
        "kissfemale8",
        "Kiss Cute - Neck (Female)",
        "kisscuteneck",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutecheek"] = {
        "genesismods_kissme@kissmale9",
        "kissmale9",
        "Kiss Cute Cheek (Male)",
        "kisscutecheek2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.35,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisscutecheek2"] = {
        "genesismods_kissme@kissfemale9",
        "kissfemale9",
        "Kiss Cute Cheek (Female)",
        "kisscutecheek",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutefh"] = {
        "genesismods_kissme@kissmale10",
        "kissmale10",
        "Kiss Forehead (Male)",
        "kisscutefh2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.38,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,

        }
    },
    ["kisslips"] = {
        "chocoholic@couple13",
        "couple13_clip",
        "Kiss Cute Lips (Female)",
        "kisslips2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.1600,
            yPos = 0.2700,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 130.0,

        }
    },
    ["kisslips2"] = {
        "chocoholic@couple14",
        "couple14_clip",
        "Kiss Cute Lips (Male)",
        "kisslips",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,

        }
    },
    ["kisscutefh2"] = {
        "genesismods_kissme@kissfemale10",
        "kissfemale10",
        "Kiss Forehead (Female)",
        "kisscutefh",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,

        }
    },
    ["coupleanim"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_bank_manager",
        "Couple Drinking (Wine Glasses)",
        "coupleanim2",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 60309,
            PropPlacement = {
                -0.0500,
                -0.0100,
                -0.1700,
                0.0,
                0.0,
                0.0,
            },
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["coupleanim2"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_female",
        "Couple Drinking F (Wine Glasses)",
        "coupleanim",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
            },
            SyncOffsetSide = -0.04125,
            SyncOffsetFront = 0.11,
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["holdme"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_a",
        "mx_couple5_1_a_clip",
        "Hold Me",
        "holdmeb",
        AnimationOptions = {
            EmoteLoop = true
        },
    },
    ["holdmeb"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_b",
        "mx_couple5_1_b_clip",
        "Be Held",
        "holdme",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.0200,
            yPos =  0.2400,
            zPos = -0.0100,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        },
    },
    ["holdmec"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_a",
        "mx_couple5_2_a_clip",
        "Hold Me 2",
        "holdmed",
        AnimationOptions = {
            EmoteLoop = true
        },
    },
    ["holdmed"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_b",
        "mx_couple5_2_b_clip",
        "Be Held 2",
        "holdmec",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.1200,
            yPos =  0.3600,
            zPos = -0.0100,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -180.0
        },
    },
    ["holdmee"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_a",
        "mx_couple5_3_a_clip",
        "Hold Me 3",
        "holdmef",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["holdmef"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_b",
        "mx_couple5_3_b_clip",
        "Be Held 3",
        "holdmee",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos =  0.0400,
            yPos =  0.2100,
            zPos = -0.0300,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0
        },
    },
    ["bdoghumping"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_chop",
        "Dogs Humping (Male)",
        "bdoghumping2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.0,
            SyncOffsetSide = -0.028,
            SyncOffsetHeading = 0.0
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdoghumping2"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_ladydog",
        "Dogs Humping (Female)",
        "bdoghumping",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.0,
            SyncOffsetSide = -0.028,
            SyncOffsetHeading = 0.0
        },
        AdultAnimation = true,
        AnimalEmote = true
    }
}

--- DANCING EMOTES, SOME WITH PROPS ---

RP.Dances = {
    ["dance"] = {
        "anim@amb@nightclub@dancers@podium_dancers@",
        "hi_dance_facedj_17_v2_male^5",
        "Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_down",
        "Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "high_center",
        "Dance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_up",
        "Dance 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance5"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_a@",
        "med_center",
        "Dance 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance6"] = {
        "misschinese2_crystalmazemcs1_cs",
        "dance_loop_tao",
        "Dance 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance7"] = {
        "misschinese2_crystalmazemcs1_ig",
        "dance_loop_tao",
        "Dance 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance8"] = {
        "missfbi3_sniping",
        "dance_m_default",
        "Dance 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dance9"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "med_center_up",
        "Dance 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef"] = {
        "anim@amb@nightclub@dancers@solomun_entourage@",
        "mi_dance_facedj_17_v1_female^1",
        "Dance F",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center",
        "Dance F2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance F3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef4"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^1",
        "Dance F4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef5"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^3",
        "Dance F5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancef6"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance F6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclub"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m03",
        "Dance Club",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubb"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m05",
        "Dance Club 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubc"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m02",
        "Dance Club 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubd"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_b_f01",
        "Dance Club 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclube"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_a_f02",
        "Dance Club 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubf"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_b_m03",
        "Dance Club 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubg"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_d_f01",
        "Dance Club 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubh"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_17_v2_male^4",
        "Dance Club 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubi"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "mi_dance_prop_13_v1_male^3",
        "Dance Club 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubj"] = {
        "anim@amb@nightclub_island@dancers@crowddance_groups@groupd@",
        "mi_dance_crowd_13_v2_male^1",
        "Dance Club 10",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubk"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_15_v2_male^4",
        "Dance Club 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubl"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance Club 12",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubm"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_15_v2_male^5",
        "Dance Club 13",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubn"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_17_male^5",
        "Dance Club 14",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubo"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_center",
        "Dance Club 15",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubp"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_left_down",
        "Dance Club 16",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceclubq"] = {
        "fix_stu_ext-25",
        "a_f_y_studioparty_01_dual-25",
        "Dance Club 17",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancedrink"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_idle_c_m01",
        "Dance Drink (Beer)",
        AnimationOptions = {
            Prop = 'prop_beer_amopen',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.00,
                0.0,
                0.0,
                0.0,
                20.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink2"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_loop_f1",
        "Dance Drink 2 (Wine)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink3"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_loop_m04",
        "Dance Drink 3 (Whiskey)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_opaque_s',
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.00,
                0.0,
                0.0,
                0.0,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink4"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprops@male@",
        "mi_idle_b_m04",
        "Dance Drink 4 (Whiskey)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_opaque_s',
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.00,
                0.0,
                0.0,
                0.0,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink5"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_09_v1_female^3",
        "Dance Drink 5 (Wine)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink6"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_09_v1_male^3",
        "Dance Drink 6 (Beer)",
        AnimationOptions = {
            Prop = 'prop_beer_logopen',
            PropBone = 28422,
            PropPlacement = {
                0.0090,
                0.0010,
                -0.0310,
                180.0,
                180.0,
                -69.99
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink7"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_11_v1_female^3",
        "Dance Drink 7 (Wine)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink8"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_11_v1_female^1",
        "Dance Drink 8 (Wine)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancedrink9"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_right_down",
        "Dance Drink 9 (Beer)",
        AnimationOptions = {
            Prop = 'prop_beer_amopen',
            PropBone = 60309,
            PropPlacement = {
                0.09,
                -0.2,
                0.05,
                -100.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["danceslow2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center",
        "Dance Slow 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceslow3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center_down",
        "Dance Slow 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceslow4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center",
        "Dance Slow 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceupper"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Dance Upper",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["danceupper2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center_up",
        "Dance Upper 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["danceshy"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "low_center",
        "Dance Shy",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceshy2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center_down",
        "Dance Shy 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceslow"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "low_center",
        "Dance Slow",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly1"] = {
        "rcmnigel1bnmt_1b",
        "dance_loop_tyler",
        "Dance Silly 1",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly"] = {
        "special_ped@mountain_dancer@monologue_3@monologue_3a",
        "mnt_dnc_buttwag",
        "Dance Silly",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly2"] = {
        "move_clown@p_m_zero_idles@",
        "fidget_short_dance",
        "Dance Silly 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly3"] = {
        "move_clown@p_m_two_idles@",
        "fidget_short_dance",
        "Dance Silly 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly4"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_11_buttwiggle_b_laz",
        "Dance Silly 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly5"] = {
        "timetable@tracy@ig_5@idle_a",
        "idle_a",
        "Dance Silly 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly6"] = {
        "timetable@tracy@ig_8@idle_b",
        "idle_d",
        "Dance Silly 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly7"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "med_center",
        "Dance Silly 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly8"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Dance Silly 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly9"] = {
        "anim@mp_player_intcelebrationfemale@the_woogie",
        "the_woogie",
        "Dance Silly 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly10"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_17_spiderman_laz",
        "Dance Silly 10",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancesilly11"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_mi_11_pointthrust_laz",
        "Dance Silly 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["danceold"] = {
        "anim@mp_player_intupperuncle_disco",
        "idle_a",
        "Dance Old",
        AnimationOptions = {
            EmoteLoop = true,
            --			EmoteMoving = true,-- Removing the comment will allow for you to mix and match dance emotes, ie /e danceold and /e dance to control the bottom half of the body.
        }
    },
    ["danceglowstick"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_13_mi_hi_sexualgriding_laz",
        "Dance Glowsticks",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.1400,
                0.0,
                -80.0,
                20.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["danceglowstick2"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_12_mi_hi_bootyshake_laz",
        "Dance Glowsticks 2",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.1400,
                0.0,
                -80.0,
                20.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0
            },
            EmoteLoop = true
        }
    },
    ["danceglowstick3"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Glowsticks 3",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.1400,
                0.0,
                -80.0,
                20.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0
            },
            EmoteLoop = true
        }
    },
    ["dancehorse"] = {
        "anim@amb@nightclub@lazlow@hi_dancefloor@",
        "dancecrowd_li_15_handup_laz",
        "Dance Horse",
        AnimationOptions = {
            Prop = "ba_prop_battle_hobby_horse",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dancehorse2"] = {
        "anim@amb@nightclub@lazlow@hi_dancefloor@",
        "crowddance_hi_11_handup_laz",
        "Dance Horse 2",
        AnimationOptions = {
            Prop = "ba_prop_battle_hobby_horse",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["dancehorse3"] = {
        "anim@amb@nightclub@lazlow@hi_dancefloor@",
        "dancecrowd_li_11_hu_shimmy_laz",
        "Dance Horse 3",
        AnimationOptions = {
            Prop = "ba_prop_battle_hobby_horse",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["dancewave"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_1",
        "Wave Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave02"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_2",
        "Wave Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave03"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_3",
        "Wave Dance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave04"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_4",
        "Wave Dance 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave05"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "tutankhamun_dance_1",
        "Wave Dance 5 - Tutankhamen",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave06"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "tutankhamun_dance_2",
        "Wave Dance 6 - Tutankhamen 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave07"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "snake_dance_1",
        "Wave Dance 7 - Snake Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave08"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "slide_dance",
        "Wave Dance 8 - Slide Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave09"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "slide_dance_2",
        "Wave Dance 9 - Slide Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave10"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "robot_dance",
        "Wave Dance 10 - Robot Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave11"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "locking_dance",
        "Wave Dance 11 - Locking Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancewave12"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "headspin",
        "Wave Dance 12 - Headspin",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["dancewave13"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "flaire_dance",
        "Wave Dance 13 - Flaire Dance",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["dancewave14"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "crowd_girl_dance",
        "Wave Dance 14 - Female Crowd Dance",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["dancewave15"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "uprock_dance_1",
        "Wave Dance 15 - Uprock Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancethriller"] = { -- Custom Emote By BoringNeptune
        "mj_thriller",
        "mj_thriller_dance",
        "Dance - MJ Thriller",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dj"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_dance_cntr_open_dix",
        "DJ",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dj2"] = {
        "anim@amb@nightclub@djs@solomun@",
        "sol_idle_ctr_mid_a_sol",
        "DJ 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj3"] = {
        "anim@amb@nightclub@djs@solomun@",
        "sol_dance_l_sol",
        "DJ 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj4"] = {
        "anim@amb@nightclub@djs@black_madonna@",
        "dance_b_idle_a_blamadon",
        "DJ 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj1"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_end_dix",
        "DJ 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj5"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_a_dix",
        "DJ 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj6"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_b_dix",
        "DJ 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj7"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_g_dix",
        "DJ 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj8"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_gb_dix",
        "DJ 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dj9"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_sync_cntr_j_dix",
        "DJ 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["twerk"] = {
        "switch@trevor@mocks_lapdance",
        "001443_01_trvs_28_idle_stripper",
        "Twerk",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdance"] = {
        "mp_safehouse",
        "lap_dance_girl",
        "Lapdance"
    },
    ["lapdance2"] = {
        "mini@strip_club@private_dance@idle",
        "priv_dance_idle",
        "Lapdance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdance3"] = {
        "mini@strip_club@private_dance@part1",
        "priv_dance_p1",
        "Lapdance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdance4"] = {
        "mini@strip_club@private_dance@part2",
        "priv_dance_p2",
        "Lapdance 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdance5"] = {
        "mini@strip_club@private_dance@part3",
        "priv_dance_p3",
        "Lapdance 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdance6"] = {
        "oddjobs@assassinate@multi@yachttarget@lapdance",
        "yacht_ld_f",
        "Lapdance 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdancewith"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p3",
        "ld_2g_p3_s2",
        "Lapdance With",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdancewith2"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p2",
        "ld_2g_p2_s2",
        "Lapdance With2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapdancewith3"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p1",
        "ld_2g_p1_s2",
        "Lapdance With3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapchair"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p1",
        "ld_girl_a_song_a_p1_f",
        "Lap Chair",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapchair2"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",
        "ld_girl_a_song_a_p2_f",
        "Lap Chair2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lapchair3"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p3",
        "ld_girl_a_song_a_p3_f",
        "Lap Chair3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["salsa"] = {
        "anim@mp_player_intuppersalsa_roll",
        "idle_a",
        "Salso Roll",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancecrankdat"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_right_up",
        "Dance Crank Dat",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancecrankdat2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_right_down",
        "Dance Crank Dat 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancemonkey"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "high_center",
        "Monkey Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancemonkey2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "high_center_down",
        "Monkey Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancemonkey3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "med_center_down",
        "Monkey Dance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["boxdance"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@",
        "med_right_down",
        "Boxing Dance Solo",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancehiphop"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_d@",
        "ped_a_dance_idle",
        "Hip Hop Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancehiphop2"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_b@",
        "ped_a_dance_idle",
        "Hip Hop Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancehiphop3"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_a@",
        "ped_a_dance_idle",
        "Hip Hop Dance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dancedrill"] = {
        "sdrill@animation",
        "sdrill_clip",
        "Drill Dance",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = false
        }
    },
    ["dancepride"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride A",
        AnimationOptions = {
            Prop = 'lilprideflag1', --- Rainbow
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag1',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["danceprideb"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride B - LGBTQIA",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag2',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancepridea"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride A - Bisexual",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag3',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancepridec"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride C - Lesbian",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag4',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["danceprided"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride D - Pansexual",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag5',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancepridee"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride E - Transgender",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag6',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dancepridef"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride F - Non Binary",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Lesbian
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag7',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["danceprideg"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride G - Asexual",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag8',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["danceprideh"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride H - Straight Ally",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 18905,
            PropPlacement = {
                0.0900,
                0.0000,
                0.0300,
                -39.911,
                93.9166,
                -5.8062
            },
            SecondProp = 'lilprideflag9',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.0900,
                -0.0200,
                -0.0300,
                -90.2454,
                5.7068,
                -28.7797
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["technodance"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_left_up",
        "Techno Dance",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["technodance2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_center_up",
        "Techno Dance 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["technodance3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_left",
        "Techno Dance 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["technodance4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_right_up",
        "Techno Dance 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
}


---- ANIMAL EMOTES ----
----    BIG DOG    ----

RP.AnimalEmotes = {
    ["bdogbark"] = {
        "creatures@rottweiler@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicateahead"] = {
        "creatures@rottweiler@indication@",
        "indicate_ahead",
        "Indicate Ahead (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatehigh"] = {
        "creatures@rottweiler@indication@",
        "indicate_high",
        "Indicate High (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatelow"] = {
        "creatures@rottweiler@indication@",
        "indicate_low",
        "Indicate Low (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg"] = {
        "creatures@rottweiler@tricks@",
        "beg_loop",
        "Beg (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg2"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop",
        "Beg 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayright"] = {
        "creatures@rottweiler@move",
        "dead_right",
        "Lay Right (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayleft"] = {
        "creatures@rottweiler@move",
        "dead_left",
        "Lay Left (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogsitcar"] = {
        "creatures@rottweiler@incar@",
        "sit",
        "Sit in car (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogfhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_ladydog",
        "Female Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogmhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_chop",
        "Male Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogshit"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "Shit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.10,
                -0.08,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Translate('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogitch"] = {
        "creatures@rottweiler@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (big dog)",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["bdogsleep"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Sleep (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogupk",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogsit"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpee"] = {
        "creatures@rottweiler@move",
        "pee_left_idle",
        "Pee (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogpee2"] = {
        "creatures@rottweiler@move",
        "pee_right_idle",
        "Pee 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bdogglowa"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Glow Stick (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bdogglowb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Glow Stick Sitting (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridea"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride A (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1', -- Rainbow
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag1',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride B - LGBTQIA (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag2',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridec"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride C - Bisexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag3',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprided"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride D - Lesbian (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag4',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridee"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride E - Pansexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag5',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridef"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride F - Transgender  (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag6',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideg"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride G - Non Binary (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag7',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideh"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride H - Asexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag8',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridei"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride I - Straight Ally (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag9',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogfw"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Firework - Big Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
             PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1400,
                0.3300,
                -0.0800,
                -85.6060,
                -176.7400,
                -9.8767
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Translate('firework'),
            PtfxWait = 200
        }
    },
    ["bdogfris"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Frisbee (big dog)",
        AnimationOptions = {
            Prop = 'p_ld_frisbee_01',
            PropBone = 31086,
            PropPlacement = {
                0.2600,
                0.0200,
               -0.0600,
               -173.7526,
               -169.4149,
                21.4173
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },

    ---- ANIMAL EMOTES ----
    ----   SMALL DOG   ----

    ["sdogbark"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogitch"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsit"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sit (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogld"] = {
        "misssnowie@little_doggy_lying_down",
        "base",
        "Lay Down (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogshake"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_c",
        "Shake (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogdance"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdance2"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance 2 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridea"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideb"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridec"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprided"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridee"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridef"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideg"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideh"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride H - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridei"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride I - Straight Ally (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogbb"] = {
        "creatures@pug@move",
        "nill",
        "Baseball (small dog)",
        AnimationOptions = {
            Prop = 'w_am_baseball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogburger"] = {
        "creatures@pug@move",
        "nill",
        "Burger (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0400,
                0.0000,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogcontroller"] = {
        "creatures@pug@move",
        "nill",
        "Controller (small dog)",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0300,
                0.0000,
                -180.000,
                90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill (small dog)",
        AnimationOptions = {
            Prop = 'p_banknote_onedollar_s',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla2"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill Scrunched  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_scrunched_moneypage',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                0.000,
                0.0000,
                90.0000,
                00.0000,
                00.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla3"] = {
        "creatures@pug@move",
        "nill",
        "Money Stack  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_money_wrapped_01',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla4"] = {
        "creatures@pug@move",
        "nill",
        "Money Bag  (small dog)",
        AnimationOptions = {
            Prop = 'ch_prop_ch_moneybag_01a',
            PropBone = 31086,
            PropPlacement = {
                0.1200,
                -0.2000,
                0.0000,
                -79.9999997,
                90.00,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogmic"] = {
        "creatures@pug@move",
        "nill",
        "Microphone (small dog)",
        AnimationOptions = {
            Prop = 'p_ing_microphonel_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0170,
                0.0300,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy"] = {
        "creatures@pug@move",
        "nill",
        "Teddy (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Teddy 2 (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogtennis"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Ball (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_ball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0600,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogtennisr"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Racket (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_rack_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0200,
                0.00,
                0.000,
                0.0000,
                -28.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose"] = {
        "creatures@pug@move",
        "nill",
        "Rose (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Rose Sit (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogggun"] = {
        "creatures@pug@move",
        "nill",
        "Gun Gold (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggun2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Gun Gold Sit (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogstun"] = {
        "creatures@pug@move",
        "nill",
        "Stun Gun (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_stungun',
            PropBone = 12844,
            PropPlacement = {
                0.1400,
                -0.0100,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "core",
            PtfxName = "blood_stungun",
            PtfxPlacement = {
                0.208,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('stun'),
            PtfxWait = 200
        }
    },
    ["sdoggl1"] = {
        "creatures@pug@move",
        "nill",
        "Aviators (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Aviators Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoggl3"] = {
        "creatures@pug@move",
        "nill",
        "Sunglasses (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl4"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sunglasses Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghd1"] = {
        "creatures@pug@move",
        "nill",
        "Hot Dog (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghd2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hot Dog Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghlmt1"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 1 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_sports_helmet',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                -0.0200,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghlmt2"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 2 (small dog)",
        AnimationOptions = {
            Prop = 'prop_hard_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                0.1300,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat"] = {
        "creatures@pug@move",
        "nill",
        "Hat 1 (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hat 2 Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsteak"] = {
        "creatures@pug@move",
        "nill",
        "Steak (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogsteak2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_c",
        "Steak 2 Lay Down (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridea"] = {
        "creatures@pug@move",
        "nill",
        "Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideb"] = {
        "creatures@pug@move",
        "nill",
        "Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridec"] = {
        "creatures@pug@move",
        "nill",
        "Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprided"] = {
        "creatures@pug@move",
        "nill",
        "Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridee"] = {
        "creatures@pug@move",
        "nill",
        "Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridef"] = {
        "creatures@pug@move",
        "nill",
        "Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideg"] = {
        "creatures@pug@move",
        "nill",
        "Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideh"] = {
        "creatures@pug@move",
        "nill",
        "Pride H - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridei"] = {
        "creatures@pug@move",
        "nill",
        "Pride I - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridesita"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride A Sit (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitb"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride B Sit LGBTQIA  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitc"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride C Sit Bisexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitd"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride D Sit Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesite"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride E Sit Pansexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitf"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride F Sit Transgender   (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitg"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride G Sit Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesith"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride H Sit Asexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8',
            -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesiti"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride I Sit Straight Ally  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpee"] = {
        "creatures@pug@move",
        "nill",
        "Pee (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.01,
                -0.17,
                0.09,
                0.0,
                90.0,
                140.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["sdogshit"] = {
        "creatures@pug@move",
        "nill",
        "Shit (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
               -0.0330,
                0.0210,
               -0.0040,
                0.0,
                0.0,
                0.0,
                0.5
            },
            PtfxInfo = Translate('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["sdogfw"] = {
        "creatures@pug@move",
        "nill",
        "Firework - Small Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
             PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1330,
               -0.0210,
               -0.2760,
                0.0,
               -180.0,
                44.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Translate('firework'),
            PtfxWait = 200
        }
    },
    ["sdogfris"] = {
        "creatures@pug@move",
        "nill",
        "Frisbee (small dog)",
        AnimationOptions = {
            Prop = 'p_ld_frisbee_01',
            PropBone = 31086,
            PropPlacement = {
                0.1900,
               -0.0150,
                0.0000,
              -90.0000,
              120.0000,
                0.000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
}


--- EXIT EMOTES ---

RP.Exits = {

------ HUMAN EXIT EMOTES  ------

    ["getup"] = {
        "get_up@sat_on_floor@to_stand",
        "getup_0",
        "Get Up",
        AnimationOptions = {
            EmoteDuration = 2000,
            StartDelay = 600
        }
    },
    ["getup2"] = {
        "anim@scripted@aoa@ship_climb@male@",
        "getup_a",
        "Get Up 2",
        AnimationOptions = {
            StartDelay = 600
        }
    },
    ["meditateup"] = {
        "rcmcollect_paperleadinout@",
        "meditate_getup",
        "Meditate Get Up",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["standup"] = {
        "get_up@directional@movement@from_knees@injured",
        "getup_l_0",
        "Stand Up",
        AnimationOptions = {
            EmoteDuration = 2000,
            StartDelay = 600
        }
    },
    ["surrender_exit"] = {
        "random@arrests",
        "kneeling_arrest_get_up",
        "Surrender Exit",
        AnimationOptions = {
            EmoteDuration = 2200
        }
    },
    ["offchair"] = {
        "switch@michael@sitting",
        "exit_forward",
        "Off Chair",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["offtable"] = {
        "anim@amb@board_room@diagram_blueprints@",
        "look_around_01_amy_skater_01",
        "Off Tabble",
        AnimationOptions = {
            EmoteDuration = 5700
        }
    },
    ["phoneaway"] = {
        "amb@world_human_stand_mobile@male@text@exit",
        "exit",
        "Phone Away",
        AnimationOptions = {
            EmoteDuration = 1780,
            StartDelay = 1150,
            EmoteMoving = true
        }
    },
    ["breakfreefont"] = {
        "mp_arresting",
        "a_uncuff",
        "Break Free Front",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            EmoteMoving = true
        }
    },
    ["breakfreeback"] = {
        "mp_arresting",
        "b_uncuff",
        "Break Free Back",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            EmoteMoving = true
        }
    },
    ["shakeitoffhuman"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off The Rain",
        AnimationOptions = {
            EmoteDuration = 2899,
            StartDelay = 850,
            EmoteMoving = true
        }
    },
------ ANIMAL EXIT EMOTES  ------
    ["sdogup"] = {
        "creatures@pug@amb@world_dog_sitting@exit",
        "exit",
        "Small Dog Get Up",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["bdogup"] = {
        "creatures@rottweiler@amb@world_dog_sitting@exit",
        "exit",
        "Big Dog Get Up",
        AnimationOptions = {
            EmoteDuration = 1000
        }
    },
    ["bdogupk"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "exit_kennel",
        "Big Dog Get Up V2",
        AnimationOptions = {
            EmoteDuration = 5000
        }
    }
}


--- SCENARIOS ---
--- EMOTES NO PROPS ---

RP.Emotes = {

    -----------------------------------------------------------------------------------------------------------
    ------ The male and female 'interaction menu' emotes from GTA Online can be found under the following animation directories:
    ------
    ------ Male: anim@mp_player_intcelebrationmale
    ------
    ------ Female: anim@mp_player_intcelebrationfemale

    -----------------------------------------------------------------------------------------------------------
    ------ THESE ARE SCENARIOS, SOME OF THESE DON'T WORK ON WOMEN AND SOME OTHER ISSUES, BUT STILL GOOD TO HAVE    ------
    -----------------------------------------------------------------------------------------------------------
    ["atm"] = {
        "Scenario",
        "PROP_HUMAN_ATM",
        "ATM"
    },
    ["bbq"] = {
        "MaleScenario",
        "PROP_HUMAN_BBQ",
        "BBQ"
    },
    ["bumbin"] = {
        "Scenario",
        "PROP_HUMAN_BUM_BIN",
        "Bum Bin"
    },
    ["cheer"] = {
        "Scenario",
        "WORLD_HUMAN_CHEERING",
        "Cheer"
    },
    ["chinup"] = {
        "Scenario",
        "PROP_HUMAN_MUSCLE_CHIN_UPS",
        "Chinup"
    },
    ["clipboard2"] = {
        "MaleScenario",
        "WORLD_HUMAN_CLIPBOARD",
        "Clipboard 2"
    },
    ["cop"] = {
        "Scenario",
        "WORLD_HUMAN_COP_IDLES",
        "Cop"
    },
    ["drill"] = {
        "Scenario",
        "WORLD_HUMAN_CONST_DRILL",
        "Construction Drilling"
    },
    ["filmshocking"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Film Shocking"
    },
    ["flex"] = {
        "Scenario",
        "WORLD_HUMAN_MUSCLE_FLEX",
        "Flex"
    },
     ["guard"] = {
        "Scenario",
        "WORLD_HUMAN_GUARD_STAND",
        "Guard"
    },
    ["garden"] = {
        "Scenario",
        "WORLD_HUMAN_GARDENER_PLANT",
        "Gardening"
    },
    ["hammer"] = {
        "Scenario",
        "WORLD_HUMAN_HAMMERING",
        "Hammer"
    },
    ["hangout"] = {
        "Scenario",
        "WORLD_HUMAN_HANG_OUT_STREET",
        "Hangout"
    },
    ["impatient"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_IMPATIENT",
        "Impatient"
    },
    ["janitor"] = {
        "Scenario",
        "WORLD_HUMAN_JANITOR",
        "Janitor"
    },
    ["jog"] = {
        "Scenario",
        "WORLD_HUMAN_JOG_STANDING",
        "Jog"
    },
    ["kneel"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_KNEEL",
        "Kneel"
    },
    ["lean"] = {
        "Scenario",
        "WORLD_HUMAN_LEANING",
        "Lean"
    },
    ["leanbar"] = {
        "Scenario",
        "PROP_HUMAN_BUM_SHOPPING_CART",
        "Lean Bar"
    },
    ["lookout"] = {
        "Scenario",
        "CODE_HUMAN_CROSS_ROAD_WAIT",
        "Lookout"
    },
    ["maid"] = {
        "Scenario",
        "WORLD_HUMAN_MAID_CLEAN",
        "Maid"
    },
    ["medic"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TEND_TO_DEAD",
        "Medic"
    },
    ["musician"] = {
        "MaleScenario",
        "WORLD_HUMAN_MUSICIAN",
        "Musician"
    },
    -- Ambient Music Doesn't Seem To Work For Female, Hence It's Male Only
    ["notepad2"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TIME_OF_DEATH",
        "Notepad 2"
    },
    ["parkingmeter"] = {
        "Scenario",
        "PROP_HUMAN_PARKING_METER",
        "Parking Meter"
    },
    ["party"] = {
        "Scenario",
        "WORLD_HUMAN_PARTYING",
        "Party"
    },
    ["texting"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_MOBILE",
        "Texting"
    },
    ["prosthigh"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
        "Prostitue High"
    },
    ["prostlow"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
        "Prostitue Low"
    },
    ["puddle"] = {
        "Scenario",
        "WORLD_HUMAN_BUM_WASH",
        "Puddle"
    },
    ["record"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Record"
    },
    ["smoke"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING",
        "Smoke"
    },
    ["smokeweed"] = {
        "MaleScenario",
        "WORLD_HUMAN_DRUG_DEALER",
        "Smoke Weed (Male)"
    },
    -- Female
    ["smokeweed2"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING_POT",
        "Smoke Weed (Female)"
    },
    -- Female
    ["statue"] = {
        "Scenario",
        "WORLD_HUMAN_HUMAN_STATUE",
        "Statue"
    },
    ["weld"] = {
        "Scenario",
        "WORLD_HUMAN_WELDING",
        "Weld"
    },
    ["windowshop"] = {
        "Scenario",
        "WORLD_HUMAN_WINDOW_SHOP_BROWSE",
        "Window Shop"
    },
    ["yoga"] = {
        "Scenario",
        "WORLD_HUMAN_YOGA",
        "Yoga"
    },

---------- END OF SCENARIOS --------------

    ["annoyed"] = {
        "missdocksshowoffcar@idle_a",
        "idle_b_5",
        "Annoyed",
        AnimationOptions =
        {
            EmoteLoop = true
        }
    },
    ["dispenser"] = {
        "mini@sprunk",
        "plyr_buy_drink_pt1",
        "Dispenser",
        AnimationOptions =
        {
            EmoteLoop = false
        }
    },
    ["cuffedfront"] = {
        "anim@move_m@prisoner_cuffed",
        "idle",
        "Handcuffed - Front",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "breakfreefont",
            ExitEmoteType = "Exits"
        }
    },
    ["cuffedback"] = {
        "mp_arresting",
        "idle",
        "Handcuffed - Back",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "breakfreeback",
            ExitEmoteType = "Exits"
        }
    },
    ["dead2"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "enter",
        "Play Dead Act",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["femalestandcute"] = {
        "stand_cute_6@dark",
        "stand_cute_6_clip",
        "Female Stand Cute Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute1"] = {
        "stand_fem_1@darksj",
        "stand_fem_1_clip",
        "Female Stand Cute Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute2"] = {
        "feet_stand_w@darksj",
        "feet_stand_w_clip",
        "Female Stand Cute Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute3"] = {
        "anim@female_model_14",
        "f_model_14_clip",
        "Female Stand Cute Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcutefinger"] = {
        "anim@female_model_15",
        "f_model_15_clip",
        "Female Stand Cute Pose Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalestandcute4"] = {
        "anim@female_model_17",
        "f_model_17_clip",
        "Female Stand Cute Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["malestandpose"] = {
        "anim@male_model_11",
        "m_model_11_clip",
        "Male Stand Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femalesitcute"] = {
        "sit_cute_1@dark",
        "sit_cute_1_clip",
        "Female Sit Cute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femalesitcute1"] = {
        "mrwitt@chin_support_on_floor",
        "mrwitt",
        "Female Sit Cute 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femalesitcute2"] = {
        "beach_1@janina234",
        "beach_1_clip",
        "Female Sit Cute 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees"] = {
        "beach_4@janina234",
        "beach_4_clip",
        "Female On Knees Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees1"] = {
        "on_the_knees@darksj",
        "on_the_knees_clip",
        "Female On Knees Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleonknees2"] = {
        "anim@female_model_21",
        "f_model_21_clip",
        "Female On Knees Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["beast"] = {
        "anim@mp_fm_event@intro",
        "beast_transform",
        "Beast",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["chill"] = {
        "switch@trevor@scares_tramp",
        "trev_scares_tramp_idle_tramp",
        "Chill",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["cloudgaze"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_girl",
        "Cloudgaze",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["cloudgaze2"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_guy",
        "Cloudgaze 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["crouchreach"] = {
        "anim@veh@van@mule5@rds",
        "lean_back_idle",
        "Crouch & Reach",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
        }
    },
    ["crouchreach2"] = {
        "anim@scripted@npc@mission@pln_ig4_cargo@",
        "line_5_dax",
        "Crouch & Reach 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
        }
    },
    ["daydream"] = { --- Custom Emote By Darks Animations
        "girl_groupe_d@darksj",
        "girl_groupe_d_clip",
        "Daydream In The Clouds",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["khands"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_heart000",
        "ebrwny_hrt000",
        "Korean Hand Hearts 🇰🇷",
        AnimationOptions = {
			EmoteLoop = true,
			EmoteMoving = true,
        }
    },
	["uwu2"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_shy",
        "UwU 2",
        AnimationOptions = {
			EmoteLoop = true,
			EmoteMoving = true,
        }
    },
    ["rawr"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_rawr",
        "Rawr",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stop"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_stop",
        "Stop",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sassy"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sass",
        "Sassy",
        AnimationOptions = {
			EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sitsad3"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf000",
        "Sit Sad 3",
        AnimationOptions = {
			EmoteLoop = true,
			ExitEmote = "getup",
			ExitEmoteType = "Exits"
        }
    },
    ["sitsad4"] = { --- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf001",
        "Sit Sad 4",
        AnimationOptions = {
			StartDelay = 600,
			EmoteLoop = true,
			ExitEmote = "getup",
			ExitEmoteType = "Exits"
        }
    },
    ["bend"] = {
        "ebrwny_pack000",
        "ebrwny_bend",
        "Bend over",
        AnimationOptions = {
			StartDelay = 600,
            EmoteLoop = true,
            EmoteMoving = true,
            NotInVehicle = true
        }
    },
    ["prone"] = {
        "missfbi3_sniping",
        "prone_dave",
        "Prone",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["pullover"] = {
        "misscarsteal3pullover",
        "pull_over_right",
        "Pullover",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["idle"] = {
        "anim@heists@heist_corona@team_idles@male_a",
        "idle",
        "Idle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle8"] = {
        "amb@world_human_hang_out_street@male_b@idle_a",
        "idle_b",
        "Idle 8"
    },
    ["idle9"] = {
        "friends@fra@ig_1",
        "base_idle",
        "Idle 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle10"] = {
        "mp_move@prostitute@m@french",
        "idle",
        "Idle 10",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["idle11"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle12"] = {
        "mp_corona_idles@female_b@base",
        "base",
        "Idle 12",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle13"] = {
        "mp_corona_idles@female_c@base",
        "base",
        "Idle 13",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle14"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 14",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle15"] = {
        "anim_heist@arcade_combined@",
        "female_hold_arm@_base_base",
        "Idle 15",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle16"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_02a@_base_base",
        "Idle 16",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle17"] = {
        "anim_heist@arcade_combined@",
        "amb_world_human_hang_out_street_female_hold_arm_idle_b",
        "Idle 17",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle18"] = {
        "mp_move@prostitute@m@hooker",
        "idle",
        "Idle 18",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle19"] = {
        "missdocksshowoffcar@base",
        "base_4",
        "Idle 19",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle2"] = {
        "anim@heists@heist_corona@team_idles@female_a",
        "idle",
        "Idle 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle3"] = {
        "anim@heists@humane_labs@finale@strip_club",
        "ped_b_celebrate_loop",
        "Idle 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle4"] = {
        "anim@mp_celebration@idles@female",
        "celebration_idle_f_a",
        "Idle 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle5"] = {
        "anim@mp_corona_idles@female_b@idle_a",
        "idle_a",
        "Idle 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle6"] = {
        "anim@mp_corona_idles@male_c@idle_a",
        "idle_a",
        "Idle 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idle7"] = {
        "anim@mp_corona_idles@male_d@idle_a",
        "idle_a",
        "Idle 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd1",
        "Idle Drunk",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk2"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd2",
        "Idle Drunk 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["idledrunk3"] = {
        "missarmenian2",
        "standing_idle_loop_drunk",
        "Idle Drunk 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["impatient2"] = {
        "oddjobs@taxi@gyn@cc@intro",
        "f_impatient_b",
        "impatient 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["airguitar"] = {
        "anim@mp_player_intcelebrationfemale@air_guitar",
        "air_guitar",
        "Air Guitar"
    },
    ["airsynth"] = {
        "anim@mp_player_intcelebrationfemale@air_synth",
        "air_synth",
        "Air Synth"
    },
    ["argue"] = {
        "misscarsteal4@actor",
        "actor_berating_loop",
        "Argue",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue2"] = {
        "oddjobs@assassinate@vice@hooker",
        "argue_a",
        "Argue 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue3"] = {
        "missheistdockssetup1leadinoutig_1",
        "lsdh_ig_1_argue_wade",
        "Argue 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue4"] = {
        "car_2_mcs_1-6",
        "cs_devin_dual-6",
        "Argue 4",
        AnimationOptions = {
            EmoteDuration = 6000,
            EmoteMoving = true
        }
    },
    ["argue5"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_01",
        "Argue Angry 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["argue6"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_02",
        "Argue Angry 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bartender"] = {
        "anim@amb@clubhouse@bar@drink@idle_a",
        "idle_a_bartender",
        "Bartender",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["blowkiss"] = {
        "anim@mp_player_intcelebrationfemale@blow_kiss",
        "blow_kiss",
        "Blow Kiss"
    },
    ["blowkiss2"] = {
        "anim@mp_player_intselfieblow_kiss",
        "exit",
        "Blow Kiss 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["curtsy"] = {
        "anim@mp_player_intcelebrationpaired@f_f_sarcastic",
        "sarcastic_left",
        "Curtsy"
    },
    ["bringiton"] = {
        "misscommon@response",
        "bring_it_on",
        "Bring It On",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["comeatmebro"] = {
        "mini@triathlon",
        "want_some_of_this",
        "Come at me bro",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["cop2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Cop 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cop3"] = {
        "amb@code_human_police_investigate@idle_a",
        "idle_b",
        "Cop 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["crossarms"] = {
        "amb@world_human_hang_out_street@female_arms_crossed@idle_a",
        "idle_a",
        "Crossarms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms2"] = {
        "amb@world_human_hang_out_street@male_c@idle_a",
        "idle_b",
        "Crossarms 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["crossarms3"] = {
        "anim@heists@heist_corona@single_team",
        "single_team_loop_boss",
        "Crossarms 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms4"] = {
        "random@street_race",
        "_car_b_lookout",
        "Crossarms 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms5"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Crossarms 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms6"] = {
        "random@shop_gunstore",
        "_idle",
        "Crossarms 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms7"] = {
        "anim_heist@arcade_combined@",
        "female_arms_crossed@_base_base",
        "Crossarms 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms8"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_03b@_base_base",
        "Crossarms 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarms9"] = {
        "fix_trip3_ext-4",
        "a_f_y_vinewood_02_dual-4",
        "Crossarms 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["foldarms"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "stand_phone_phoneputdown_idle_nowork",
        "Fold Arms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foldarms2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Fold Arms 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarmsside"] = {
        "rcmnigel1a_band_groupies",
        "base_m2",
        "Crossarms Side",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["crossarmsside2"] = {
        "amb@world_human_hang_out_street@female_hold_arm@base",
        "base",
        "Crossarms Side 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["damn"] = {
        "gestures@m@standing@casual",
        "gesture_damn",
        "Damn",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["damn2"] = {
        "anim@am_hold_up@male",
        "shoplift_mid",
        "Damn 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["pointdown"] = {
        "gestures@f@standing@casual",
        "gesture_hand_down",
        "Point Down",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["pointpose"] = {
        "tun_meet_int-47",
        "a_m_y_carclub_01^3_dual-47",
        "Point Down",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["surrender"] = {
        "random@arrests@busted",
        "idle_a",
        "Surrender",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "surrender_exit",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender2"] = {
        "mp_bank_heist_1",
        "f_cower_02",
        "Surrender 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender3"] = {
        "mp_bank_heist_1",
        "m_cower_01",
        "Surrender 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender4"] = {
        "mp_bank_heist_1",
        "m_cower_02",
        "Surrender 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender5"] = {
        "random@arrests",
        "kneeling_arrest_idle",
        "Surrender 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "surrender_exit",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender6"] = {
        "rcmbarry",
        "m_cower_01",
        "Surrender 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["surrender7"] = {
        "anim@scripted@bty4@ig2_bounty_kneel@male@",
        "on_knee_idle_a",
        "Surrender 7",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["facepalm2"] = {
        "anim@mp_player_intcelebrationfemale@face_palm",
        "face_palm",
        "Facepalm 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm"] = {
        "random@car_thief@agitated@idle_a",
        "agitated_idle_a",
        "Facepalm",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm3"] = {
        "missminuteman_1ig_2",
        "tasered_2",
        "Facepalm 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["facepalm4"] = {
        "anim@mp_player_intupperface_palm",
        "idle_a",
        "Facepalm 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fallover"] = {
        "random@drunk_driver_1",
        "drunk_fall_over",
        "Fall Over"
    },
    ["fallover2"] = {
        "mp_suicide",
        "pistol",
        "Fall Over 2"
    },
    ["fallover3"] = {
        "mp_suicide",
        "pill",
        "Fall Over 3"
    },
    ["fallover4"] = {
        "friends@frf@ig_2",
        "knockout_plyr",
        "Fall Over 4"
    },
    ["fallover5"] = {
        "anim@gangops@hostage@",
        "victim_fail",
        "Fall Over 5"
    },
    ["fallasleep"] = {
        "mp_sleep",
        "sleep_loop",
        "Fall Asleep",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fallasleep2"] = {
        "mp_sleep",
        "sleep_loopfemale",
        "Fall Asleep 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["fightme"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_c",
        "Fight Me"
    },
    ["fightme2"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_e",
        "Fight Me 2"
    },
    ["finger"] = {
        "anim@mp_player_intselfiethe_bird",
        "idle_a",
        "Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["finger2"] = {
        "anim@mp_player_intupperfinger",
        "idle_a_fp",
        "Finger 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["handshake"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "Handshake",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["handshake2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "Handshake 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["wait"] = {
        "random@shop_tattoo",
        "_idle_a",
        "Wait",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait2"] = {
        "missbigscore2aig_3",
        "wait_for_van_c",
        "Wait 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait3"] = {
        "amb@world_human_hang_out_street@female_hold_arm@idle_a",
        "idle_a",
        "Wait 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait4"] = {
        "amb@world_human_hang_out_street@Female_arm_side@idle_a",
        "idle_a",
        "Wait 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait5"] = {
        "missclothing",
        "idle_storeclerk",
        "Wait 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait6"] = {
        "timetable@amanda@ig_2",
        "ig_2_base_amanda",
        "Wait 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait7"] = {
        "rcmnigel1cnmt_1c",
        "base",
        "Wait 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait8"] = {
        "rcmjosh1",
        "idle",
        "Wait 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait9"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Wait 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait10"] = {
        "timetable@amanda@ig_3",
        "ig_3_base_tracy",
        "Wait 10",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait11"] = {
        "misshair_shop@hair_dressers",
        "keeper_base",
        "Wait 11",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait12"] = {
        "rcmjosh1",
        "keeper_base",
        "Wait 12",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wait13"] = {
        "rcmnigel1a",
        "base",
        "Wait 13",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hiking"] = {
        "move_m@hiking",
        "idle",
        "Hiking",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hugme"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Hug Me"
    },
    ["hugme2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Hug Me 2"
    },
    ["inspect"] = {
        "random@train_tracks",
        "idle_e",
        "Inspect"
    },
    ["inspect2"] = {
        "anim@amb@carmeet@checkout_engine@",
        "female_c_idle_d",
        "Inspect 2"
    },
    ["inspect3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_b_idle_d",
        "Inspect 3"
    },
    ["jazzhands"] = {
        "anim@mp_player_intcelebrationfemale@jazz_hands",
        "jazz_hands",
        "Jazzhands",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 6000
        }
    },
    ["jog2"] = {
        "amb@world_human_jog_standing@male@idle_a",
        "idle_a",
        "Jog 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog3"] = {
        "amb@world_human_jog_standing@female@idle_a",
        "idle_a",
        "Jog 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog4"] = {
        "amb@world_human_power_walker@female@idle_a",
        "idle_a",
        "Jog 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jog5"] = {
        "move_m@joy@a",
        "walk",
        "Jog 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jumpingjacks"] = {
        "timetable@reunited@ig_2",
        "jimmy_getknocked",
        "Jumping Jacks",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel2"] = {
        "rcmextreme3",
        "idle",
        "Kneel 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel3"] = {
        "amb@world_human_bum_wash@male@low@idle_a",
        "idle_a",
        "Kneel 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel4"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_03@lockbox_03@male@",
        "rest",
        "Kneel 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneel5"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_02@male@",
        "rest",
        "Kneel 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneelhide"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_kneel",
        "Kneel Hide",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kneelthot"] = {
        "anim@model_kylie_insta",
        "kylie_insta_clip",
        "Kneel Thot Instagram",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["kneelbored"] = { --- Custom Emote By Chocoholic Animations
        "chocoholic@duo17",
        "duo17_clip",
        "Kneel Bored Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["kneelpeace"] = { --- Custom Emote By Chocoholic Animations
        "chocoholic@duo18",
        "duo18_clip",
        "Kneel Peace Sign Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "standup",
            ExitEmoteType = "Exits"
        }
    },
    ["shoepose"] = { --- Custom Emote By Darks Animations
        "male_duo_a@darksj",
        "male_duo_a_clip",
        "Shoe Kick Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 240
        }
   },
    ["rap"] = { --- Custom Emote By Darks Animations
        "couple_singing_m@darks37",
        "couple_singing_m_clip",
        "Rap / Sing",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["squatgunpose"] = { --- Custom Emote By Darks Animations
        "ganggirls_pose1@darks37",
        "ganggirls_pose1_clip",
        "Squat Gun Pose - Left",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["squatgunpose3"] = { --- Custom Emote By Darks Animations
        "gun_prime_2@darksj",
        "gun_prime_2_clip",
        "Squat Gun Pose 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["knock"] = {
        "timetable@jimmy@doorknock@",
        "knockdoor_idle",
        "Knock",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["knock2"] = {
        "missheistfbi3b_ig7",
        "lift_fibagent_loop",
        "Knock 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["knucklecrunch"] = {
        "anim@mp_player_intcelebrationfemale@knuckle_crunch",
        "knuckle_crunch",
        "Knuckle Crunch",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lean2"] = {
        "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        "idle_a",
        "Lean 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean3"] = {
        "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a",
        "idle_a",
        "Lean 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean4"] = {
        "amb@world_human_leaning@male@wall@back@foot_up@idle_a",
        "idle_a",
        "Lean 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean5"] = {
        "amb@world_human_leaning@male@wall@back@hands_together@idle_b",
        "idle_e",
        "Lean 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lean6"] = {
        "anim@scripted@freemode_npc@fix_agy_ig4_lamar@",
        "lean_wall_idle_03_lamar",
        "Lean 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanflirt"] = {
        "random@street_race",
        "_car_a_flirt_girl",
        "Lean Flirt",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar2"] = {
        "amb@prop_human_bum_shopping_cart@male@idle_a",
        "idle_c",
        "Lean Bar 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar3"] = {
        "anim@amb@nightclub@lazlow@ig1_vip@",
        "clubvip_base_laz",
        "Lean Bar 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanbar4"] = {
        "anim@heists@prison_heist",
        "ped_b_loop_a",
        "Lean Bar 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["leanhigh"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_one",
        "Lean High",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanhigh2"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_two",
        "Lean High 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside"] = {
        "timetable@mime@01_gc",
        "idle_a",
        "Leanside",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside2"] = {
        "misscarstealfinale",
        "packer_idle_1_trevor",
        "Leanside 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside3"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanside4"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["leanside5"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Leanside 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["leanplan"] = {
        "anim@amb@board_room@diagram_blueprints@",
        "idle_01_amy_skater_01",
        "Lean On Table",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 200,
            ExitEmote = "offtable",
            ExitEmoteType = "Exits"
        }
    },
    ["me"] = {
        "gestures@f@standing@casual",
        "gesture_me_hard",
        "Me",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["mechanic"] = {
        "mini@repair",
        "fixing_a_ped",
        "Mechanic",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic2"] = {
        "mini@repair",
        "fixing_a_player",
        "Mechanic 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic3"] = {
        "amb@world_human_vehicle_mechanic@male@base",
        "base",
        "Mechanic 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["mechanic4"] = {
        "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        "machinic_loop_mechandplayer",
        "Mechanic 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mechanic5"] = {
        "amb@prop_human_movie_bulb@idle_a",
        "idle_b",
        "Mechanic 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["medic2"] = {
        "amb@medic@standing@tendtodead@base",
        "base",
        "Medic 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["meditate"] = {
        "rcmcollect_paperleadinout@",
        "meditiate_idle",
        "Meditate",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditate2"] = {
        "rcmepsilonism3",
        "ep_3_rcm_marnie_meditating",
        "Meditate 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditate3"] = {
        "rcmepsilonism3",
        "base_loop",
        "Meditate 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 300,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["metal"] = {
        "anim@mp_player_intincarrockstd@ps@",
        "idle_a",
        "Metal",
        AnimationOptions = {
            -- CHANGE ME
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["no"] = {
        "anim@heists@ornate_bank@chat_manager",
        "fail",
        "No",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["no2"] = {
        "mp_player_int_upper_nod",
        "mp_player_int_nod_no",
        "No 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["nosepick"] = {
        "anim@mp_player_intcelebrationfemale@nose_pick",
        "nose_pick",
        "Nose Pick",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["noway"] = {
        "gestures@m@standing@casual",
        "gesture_no_way",
        "No Way",
        AnimationOptions = {
            EmoteDuration = 1500,
            EmoteMoving = true
        }
    },
    ["ok"] = {
        "anim@mp_player_intselfiedock",
        "idle_a",
        "OK",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dock"] = {
        "anim@mp_player_intincardockstd@rds@",
        "idle_a",
        "Dock",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["outofbreath"] = {
        "re@construction",
        "out_of_breath",
        "Out of Breath",
    },
    ["pickup"] = {
        "random@domestic",
        "pickup_low",
        "Pickup"
    },
    ["push"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_f",
        "Push",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["push2"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_m",
        "Push 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["point"] = {
        "gestures@f@standing@casual",
        "gesture_point",
        "Point",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pushup"] = {
        "amb@world_human_push_ups@male@idle_a",
        "idle_d",
        "Pushup",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["countdown"] = {
        "random@street_race",
        "grid_girl_race_start",
        "Countdown",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pointright"] = {
        "mp_gun_shop_tut",
        "indicate_right",
        "Point Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute"] = {
        "anim@mp_player_intincarsalutestd@ds@",
        "idle_a",
        "Salute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute2"] = {
        "anim@mp_player_intincarsalutestd@ps@",
        "idle_a",
        "Salute 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["salute3"] = {
        "anim@mp_player_intuppersalute",
        "idle_a",
        "Salute 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared"] = {
        "random@domestic",
        "f_distressed_loop",
        "Scared",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared2"] = {
        "random@homelandsecurity",
        "knees_loop_girl",
        "Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["scared3"] = {
        "xm3_drg2_cook_int-5",
        "csb_labrat_dual-5",
        "Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["screwyou"] = {
        "misscommon@response",
        "screw_you",
        "Screw You",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shakeoff"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3500
        }
    },
    ["shot"] = {
        "random@dealgonewrong",
        "idle_a",
        "Shot",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sleep"] = {
        "timetable@tracy@sleep@",
        "base",
        "Sleep",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["bumsleep"] = {
        "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",
        "idle_b",
        "Bum Sleep",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["shrug"] = {
        "gestures@f@standing@casual",
        "gesture_shrug_hard",
        "Shrug",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["shrug2"] = {
        "gestures@m@standing@casual",
        "gesture_shrug_hard",
        "Shrug 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["sit"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_idle_nowork",
        "Sit",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit2"] = {
        "rcm_barry3",
        "barry_3_sit_loop",
        "Sit 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit3"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_male_lo_res_base",
        "Sit 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit4"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_female_lo_res_base",
        "Sit 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit5"] = {
        "anim@heists@fleeca_bank@ig_7_jetski_owner",
        "owner_idle",
        "Sit 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit6"] = {
        "timetable@jimmy@mics3_ig_15@",
        "idle_a_jimmy",
        "Sit 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit7"] = {
        "anim@amb@nightclub@lazlow@lo_alone@",
        "lowalone_base_laz",
        "Sit 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit8"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_jimmy",
        "Sit 8",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit9"] = {
        "amb@world_human_stupor@male@idle_a",
        "idle_a",
        "Sit 9",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sit10"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_sit",
        "Sit 10",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitfu"] = {
        "chocoholic@single80",
        "single80_clip",
        "Sit Middle Finger",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["welcomeback"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "you're_back",
        "Welcome Back",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["wallpose"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose1",
        "pose",
        "Wall Pose",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose2"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose2",
        "pose",
        "Wall Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose3"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose3",
        "pose",
        "Wall Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose4"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose4",
        "pose",
        "Wall Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["wallpose5"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose5",
        "pose",
        "Wall Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["elbow"] = {
        "anim@veh@lowrider@std@ds@arm@base",
        "sit_low_lowdoor",
        "Window Elbow",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["elbow2"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single47",
        "single47_clip",
        "Window Elbow 2",
        AnimationOptions = {
            onlyInVehicle = true,
            EmoteLoop = true
        }
    },
    ["sitlean"] = {
        "timetable@tracy@ig_14@",
        "ig_14_base_tracy",
        "Sit Lean",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitlean2"] = {
        "anim@scripted@player@fix_astu_ig8_weed_smoke_v1@male@",
        "male_pos_a_p2_base",
        "Sit Lean 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitlean3"] = {
        "anim@scripted@freemode@ig7_office_cell_floor@heeled@",
        "base_pose_01",
        "Sit Lean 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitsad"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_sleeping-noworkfemale",
        "Sit Sad",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitsad2"] = {
        "anim@female_sit_01",
        "f_sit_01_clip",
        "Sit Sad 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitscared"] = {
        "anim@heists@ornate_bank@hostages@hit",
        "hit_loop_ped_b",
        "Sit Scared",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitscared2"] = {
        "anim@heists@ornate_bank@hostages@ped_c@",
        "flinch_loop",
        "Sit Scared 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitscared3"] = {
        "anim@heists@ornate_bank@hostages@ped_e@",
        "flinch_loop",
        "Sit Scared 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitdrunk"] = {
        "timetable@amanda@drunk@base",
        "base",
        "Sit Drunk",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Sit Chair",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair2"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Sit Chair 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair3"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Sit Chair 3 (Female)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair4"] = {
        "timetable@ron@ron_ig_2_alt1",
        "ig_2_alt1_base",
        "Sit Chair 4 - Side",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair5"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_tracy",
        "Sit Chair Legs Crossed",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair6"] = {
        "timetable@maid@couch@",
        "base",
        "Sit Chair Lean Back",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair7"] = {
        "anim@scripted@freemode_npc@fix_astu_ig3_pooh_jimmy@jimmy@",
        "sit_base_jimmy",
        "Sit Chair Attentive",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitchair8"] = {
        "anim@scripted@freemode_npc@fix_dre_studio_entourage@",
        "lonely_ballas",
        "Sit Chair Lonely",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sittoilet"] = {
        "anim@scripted@freemode@ig5_office_cell_seat@heeled@",
        "base_pose_01",
        "Sit toilet",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sittoilet2"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_04@male@",
        "idle",
        "Sit Toilet 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sitcute"] = { -- Custom Emote By QueenSistersAnimations
        "sitkylie@queensisters",
        "kylie_clip",
        "Sit Cute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["situp"] = {
        "amb@world_human_sit_ups@male@idle_a",
        "idle_a",
        "Sit Up",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["smokengun"] = {
        "smokingweapon@animation",
        "smokingweapon_clip",
        "Sitting Smoke & Gun",
        AnimationOptions = {
            Prop = "ng_proc_cigarette01a",
            PropBone = 4185,
            PropPlacement = {
                0.0300,
                0.0000,
                0.0200,
                1.7096,
              -43.1362,
              -27.9428
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ['smokendrink'] = { --- Custom Emote By Darks Animations
        "drx@male_smoke",
        "male_smoke",
        "Smoke And Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 26612,
            PropPlacement = {
                0.0500,
               -0.0700,
               -0.0500,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'ng_proc_cigarette01a',
            SecondPropBone = 64113,
            SecondPropPlacement = {
                0.0270,
                0.0080,
                0.0050,
              -11.6920,
              -78.3079,
                7.9470
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["clapangry"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "angry_clap_a_player_a",
        "Clap Angry",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["slowclap3"] = {
        "anim@mp_player_intupperslow_clap",
        "idle_a",
        "Slow Clap 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clap"] = {
        "amb@world_human_cheering@male_a",
        "base",
        "Clap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["slowclap"] = {
        "anim@mp_player_intcelebrationfemale@slow_clap",
        "slow_clap",
        "Slow Clap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["slowclap2"] = {
        "anim@mp_player_intcelebrationmale@slow_clap",
        "slow_clap",
        "Slow Clap 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smell"] = {
        "move_p_m_two_idles@generic",
        "fidget_sniff_fingers",
        "Smell",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stickup"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Stick Up",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stumble"] = {
        "misscarsteal4@actor",
        "stumble",
        "Stumble",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stunned"] = {
        "stungun@standing",
        "damage",
        "Stunned",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sunbathe"] = {
        "amb@world_human_sunbathe@male@back@base",
        "base",
        "Sunbathe - Hand On Head",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sunbathe2"] = {
        "amb@world_human_sunbathe@female@back@base",
        "base",
        "Sunbathe 2 - Hand Over Face",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sunbathe3"] = {
        "amb@world_human_sunbathe@female@front@base",
        "base",
        "Sunbathe 3 - Lay On Stomach",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["tpose"] = {
        "missfam5_yoga",
        "a2_pose",
        "T Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tpose2"] = {
        "mp_sleep",
        "bind_pose_180",
        "T Pose 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["think5"] = {
        "mp_cp_welcome_tutthink",
        "b_think",
        "Think 5",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["think"] = {
        "misscarsteal4@aliens",
        "rehearsal_base_idle_director",
        "Think",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["think3"] = {
        "timetable@tracy@ig_8@base",
        "base",
        "Think 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["think2"] = {
        "missheist_jewelleadinout",
        "jh_int_outro_loop_a",
        "Think 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["thumbsup3"] = {
        "anim@mp_player_intincarthumbs_uplow@ds@",
        "enter",
        "Thumbs Up 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["thumbsup2"] = {
        "anim@mp_player_intselfiethumbs_up",
        "idle_a",
        "Thumbs Up 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["thumbsup"] = {
        "anim@mp_player_intupperthumbs_up",
        "idle_a",
        "Thumbs Up",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type"] = {
        "anim@heists@prison_heiststation@cop_reactions",
        "cop_b_idle",
        "Type",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type2"] = {
        "anim@heists@prison_heistig1_p1_guard_checks_bus",
        "loop",
        "Type 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type3"] = {
        "mp_prison_break",
        "hack_loop",
        "Type 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["type4"] = {
        "mp_fbi_heist",
        "loop",
        "Type 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["type5"] = {
        "anim@scripted@freemode@ig12_use_computer@male@",
        "loop",
        "Type 5 - Stare",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["warmth"] = {
        "amb@world_human_stand_fire@male@idle_a",
        "idle_a",
        "Warmth",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave4"] = {
        "random@mugging5",
        "001445_01_gangintimidation_1_female_idle_b",
        "Wave 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["wave2"] = {
        "anim@mp_player_intcelebrationfemale@wave",
        "wave",
        "Wave 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave3"] = {
        "friends@fra@ig_1",
        "over_here_idle_a",
        "Wave 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave"] = {
        "friends@frj@ig_1",
        "wave_a",
        "Wave",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave5"] = {
        "friends@frj@ig_1",
        "wave_b",
        "Wave 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave6"] = {
        "friends@frj@ig_1",
        "wave_c",
        "Wave 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave7"] = {
        "friends@frj@ig_1",
        "wave_d",
        "Wave 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave8"] = {
        "friends@frj@ig_1",
        "wave_e",
        "Wave 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wave9"] = {
        "gestures@m@standing@casual",
        "gesture_hello",
        "Wave 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whistle"] = {
        "taxi_hail",
        "hail_taxi",
        "Whistle",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["whistle2"] = {
        "rcmnigel1c",
        "hailing_whistle_waive_a",
        "Whistle 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["yeah"] = {
        "anim@mp_player_intupperair_shagging",
        "idle_a",
        "Yeah",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yeah2"] = {
        "sum24_office_int-37",
        "csb_jenettee_dual-37",
        "Yeah Yeah",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["yoga2"] = {
        "timetable@amanda@ig_4",
        "ig_4_idle",
        "Yoga 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lift"] = {
        "random@hitch_lift",
        "idle_f",
        "Lift",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lol"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "laugh_a_player_b",
        "LOL",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lol2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "giggle_a_player_b",
        "LOL 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lostconfused"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "i_lost_it",    
        "Lost & Confused",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["statue2"] = {
        "fra_0_int-1",
        "cs_lamardavis_dual-1",
        "Statue 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["statue3"] = {
        "club_intro2-0",
        "csb_englishdave_dual-0",
        "Statue 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gangsign"] = {
        "mp_player_int_uppergang_sign_a",
        "mp_player_int_gang_sign_a",
        "Gang Sign",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign2"] = {
        "mp_player_int_uppergang_sign_b",
        "mp_player_int_gang_sign_b",
        "Gang Sign 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign3"] = {
        "amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base",
        "idle_a",
        "Gang Sign 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign4"] = {
        "amb@code_human_in_car_mp_actions@v_sign@std@rds@base",
        "idle_a",
        "Gang Sign 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["passout"] = {
        "missarmenian2",
        "drunk_loop",
        "Passout",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout2"] = {
        "missarmenian2",
        "corpse_search_exit_ped",
        "Passout 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout3"] = {
        "anim@gangops@morgue@table@",
        "body_search",
        "Passout 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout4"] = {
        "mini@cpr@char_b@cpr_def",
        "cpr_pumpchest_idle",
        "Passout 4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout5"] = {
        "random@mugging4",
        "flee_backward_loop_shopkeeper",
        "Passout 5",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout6"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_loop_ped",
        "Passout 6",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout7"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout8"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 8",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 900,
            NotInVehicle = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["petting"] = {
        "creatures@rottweiler@tricks@",
        "petting_franklin",
        "Petting",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["crawl"] = {
        "move_injured_ground",
        "front_loop",
        "Crawl",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["flip2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "cap_a_player_a",
        "Flip 2"
    },
    ["flip"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "flip_a_player_a",
        "Flip"
    },
    ["slide"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_a_player_a",
        "Slide"
    },
    ["slide2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_b_player_a",
        "Slide 2"
    },
    ["slide3"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_c_player_a",
        "Slide 3"
    },
    ["slugger"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slugger_a_player_a",
        "Slugger"
    },
    ["flipoff"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_a_1st",
        "Flip Off",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["flipoff2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_c_1st",
        "Flip Off 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["bow"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_c_1st",
        "Bow",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bow2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_a_1st",
        "Bow 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["keyfob"] = {
        "anim@mp_player_intmenu@key_fob@",
        "fob_click",
        "Key Fob",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["holster"] = {
        "move_m@intimidation@cop@unarmed",
        "idle",
        "Holster",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster2"] = { --- Custom Emote Provided To RpEmotes By Mads
        "mads@police_reaching_holster",
        "idle",
        "Holster 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster3"] = {
        "anim@hlstr_7360_walk",
        "holster_walk",
        "Holster 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["holster4"] = {
        "anim@hlstr_7360_hold",
        "holster_stop",
        "Holster 4 - Stop",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["holster5"] = {
        "anim@holster_hold_there",
        "holster_hold",
        "Holster 5 - Stop 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["headbutt"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Headbutt"
    },
    ["fishdance"] = {
        "anim@mp_player_intupperfind_the_fish",
        "idle_a",
        "Fish Dance",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace"] = {
        "mp_player_int_upperpeace_sign",
        "mp_player_int_peace_sign",
        "Peace",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace2"] = {
        "anim@mp_player_intupperpeace",
        "idle_a",
        "Peace 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace3"] = {
        "anim@mp_player_intupperpeace",
        "idle_a_fp",
        "Peace 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace4"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a",
        "Peace 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace5"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a_fp",
        "Peace 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace6"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a",
        "Peace 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace7"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a_fp",
        "Peace 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peacef"] = {
        "anim@mp_player_intcelebrationfemale@peace",
        "peace",
        "Peace Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cpr"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cpr2"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ledge"] = {
        "missfbi1",
        "ledge_loop",
        "Ledge",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["airplane"] = {
        "missfbi1",
        "ledge_loop",
        "Air Plane",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peek"] = {
        "random@paparazzi@peek",
        "left_peek_a",
        "Peek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cough"] = {
        "timetable@gardener@smoking_joint",
        "idle_cough",
        "Cough",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stretch"] = {
        "mini@triathlon",
        "idle_e",
        "Stretch",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch2"] = {
        "mini@triathlon",
        "idle_f",
        "Stretch 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch3"] = {
        "mini@triathlon",
        "idle_d",
        "Stretch 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch4"] = {
        "rcmfanatic1maryann_stretchidle_b",
        "idle_e",
        "Stretch 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["celebrate"] = {
        "rcmfanatic1celebrate",
        "celebrate",
        "Celebrate",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["punching"] = {
        "rcmextreme2",
        "loop_punching",
        "Punching",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["punching2"] = {
        "anim@scripted@bty2@ig2_beat_target@male@",
        "standing_punch_v1_golfer",
        "Punching 2",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["superhero"] = {
        "rcmbarry",
        "base",
        "Superhero",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["superhero2"] = {
        "rcmbarry",
        "base",
        "Superhero 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mindcontrol"] = {
        "rcmbarry",
        "mind_control_b_loop",
        "Mind Control",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mindcontrol2"] = {
        "rcmbarry",
        "bar_1_attack_idle_aln",
        "Mind Control 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown"] = {
        "rcm_barry2",
        "clown_idle_0",
        "Clown",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown2"] = {
        "rcm_barry2",
        "clown_idle_1",
        "Clown 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown3"] = {
        "rcm_barry2",
        "clown_idle_2",
        "Clown 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown4"] = {
        "rcm_barry2",
        "clown_idle_3",
        "Clown 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clown5"] = {
        "rcm_barry2",
        "clown_idle_6",
        "Clown 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes"] = {
        "mp_clothing@female@trousers",
        "try_trousers_neutral_a",
        "Try Clothes",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes2"] = {
        "mp_clothing@female@shirt",
        "try_shirt_positive_a",
        "Try Clothes 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes3"] = {
        "mp_clothing@female@shoes",
        "try_shoes_positive_a",
        "Try Clothes 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes4"] = {
        "anim@scripted@ulp_missions@change_clothes@female@",
        "change_highroller",
        "Try Clothes 4",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["tryclothes5"] = {
        "anim@scripted@ulp_missions@change_clothes@",
        "change_highroller_male",
        "Try Clothes 5",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["nervous"] = {
        "amb@world_human_bum_standing@twitchy@idle_a",
        "idle_c",
        "Nervous",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous2"] = {
        "mp_missheist_countrybank@nervous",
        "nervous_idle",
        "Nervous 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous3"] = {
        "rcmme_tracey1",
        "nervous_loop",
        "Nervous 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous4"] = {
        "fix_trip3_mcs1-9",
        "cs_marnie_dual-9",
        "Nervous 4",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["namaste"] = {
        "timetable@amanda@ig_4",
        "ig_4_base",
        "Namaste",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["threaten"] = {
        "random@atmrobberygen",
        "b_atm_mugging",
        "Threaten",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["radio"] = {
        "random@arrests",
        "generic_radio_chatter",
        "Radio",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pull"] = {
        "random@mugging4",
        "struggle_loop_b_thief",
        "Pull",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bird"] = {
        "random@peyote@bird",
        "wakeup",
        "Bird"
    },
    ["chicken"] = {
        "random@peyote@chicken",
        "wakeup",
        "Chicken",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bark"] = {
        "random@peyote@dog",
        "wakeup",
        "Bark"
    },
    ["rabbit"] = {
        "random@peyote@rabbit",
        "wakeup",
        "Rabbit"
    },
    ["spiderman"] = {
        "missexile3",
        "ex03_train_roof_idle",
        "Spider-Man",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true
        }
    },
    ["boi"] = {
        "special_ped@jane@monologue_5@monologue_5c",
        "brotheradrianhasshown_2",
        "BOI",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["adjust"] = {
        "missmic4",
        "michael_tux_fidget",
        "Adjust",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["addict"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage3_ig7",
        "base",
        "Addict",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["handsup"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Hands Up",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["handsup2"] = {
        "anim@mp_player_intuppersurrender",
        "idle_a_fp",
        "Hands Up 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup3'] = {
        'anim@mp_rollarcoaster',
        'hands_up_idle_a_player_one',
        'Hands Up 3',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup4'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'leaning_idle_bounty',
        'Hands Up 4',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup5'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'standing_idle_bounty',
        'Hands Up 5',
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["valet"] = {
        "anim@amb@casino@valet_scenario@pose_a@",
        "base_a_m_y_vinewood_01",
        "Valet",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet2"] = {
        "anim@amb@casino@valet_scenario@pose_b@",
        "base_a_m_y_vinewood_01",
        "Valet 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet3"] = {
        "anim@amb@casino@valet_scenario@pose_d@",
        "base_a_m_y_vinewood_01",
        "Valet 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tighten"] = {
        "timetable@denice@ig_1",
        "idle_b",
        "Tighten (Yoga)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["fspose"] = {
        "missfam5_yoga",
        "c2_pose",
        "F Sex Pose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["fspose2"] = {
        "missfam5_yoga",
        "c6_pose",
        "F Sex Pose 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            NotInVehicle = true
        },
        AdultAnimation = true
    },
    ["fspose3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_c_idle_d",
        "F Sex Pose 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["showerf"] = {
        "mp_safehouseshower@female@",
        "shower_enter_into_idle",
        "Shower Enter Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf2"] = {
        "mp_safehouseshower@female@",
        "shower_idle_a",
        "Shower Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf3"] = {
        "mp_safehouseshower@female@",
        "shower_idle_b",
        "Shower Female 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_a",
        "Shower Enter Male",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm2"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_b",
        "Shower Male 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm3"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_c",
        "Shower Male 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm4"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_d",
        "Shower Male 4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["picklock"] = {
        "missheistfbisetup1",
        "hassle_intro_loop_f",
        "Picklock",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanhands"] = {
        "missheist_agency3aig_23",
        "urinal_sink_loop",
        "Clean Them Filthy Hands",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanface"] = {
        "switch@michael@wash_face",
        "loop_michael",
        "Clean Your Face",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["buzz"] = {
        "anim@apt_trans@buzzer",
        "buzz_reg",
        "Buzz Door",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["grieve"] = {
        "anim@miss@low@fin@vagos@",
        "idle_ped05",
        "Grieve The Dead",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["respect"] = {
        "anim@mp_player_intcelebrationmale@respect",
        "respect",
        "Respect Male",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["respectf"] = {
        "anim@mp_player_intcelebrationfemale@respect",
        "respect",
        "Respect Female",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["bang"] = {
        "anim@mp_player_intcelebrationfemale@bang_bang",
        "bang_bang",
        "Bang Bang",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 2500
        }
    },
    ["checkcar"] = {
        "anim@amb@carmeet@checkout_car@male_a@idles",
        "idle_b",
        "Check Out · Female",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["checkcar2"] = {
        "anim@amb@carmeet@checkout_car@male_c@idles",
        "idle_a",
        "Check Out 2 · Male",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["showboobs"] = {
        "mini@strip_club@backroom@",
        "stripper_b_backroom_idle_b",
        "Show Boobs",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["showboobs2"] = {
        "mini@strip_club@idles@stripper",
        "stripper_idle_05",
        "Show Boobs 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["watchstripper"] = {
        "amb@world_human_strip_watch_stand@male_c@idle_a",
        "idle_b",
        "Watch Stripper",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["hhands"] = {
        "misssnowie@hearthands",
        "base",
        "Heart Hands",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pockets"] = { -- Custom Emote By Dark Animations
        "hoodie_hands@dad",
        "hoodie_hands_clip",
        "Hands in pockets (Hoodie)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["posecutef"] = { -- Custom Emote By Pupppy
        "pupppy@freepose01",
        "freepose01",
        "Cute Pose Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef2"] = { -- Custom Emote By Pupppy
        "pupppy@freepose03",
        "freepose03",
        "Cute Pose Female 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef3"] = { -- Custom Emote By Pupppy
        "pupppy@freepose04",
        "freepose04",
        "Cute Pose Female 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutef4"] = { -- Custom Emote By QueenSistersAnimations
        "handkylie@queensisters",
        "kylie_clip",
        "Cute Pose Female 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutem"] = { -- Custom Emote By Pupppy
        "pupppy@freepose02",
        "freepose02",
        "Cute Pose Male",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["checkwatch"] = { -- Custom Emote By MissSnowie
        "watch@looking_at",
        "base",
        "Check Watch",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pee"] = {
        "misscarsteal2peeing",
        "peeing_loop",
        "Pee (Male)",
        AnimationOptions = {
            EmoteStuck = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.05,
                0.3,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["pee2"] = {
        "missbigscore1switch_trevor_piss",
        "piss_loop",
        "Pee 2 (Male)",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.0130,
                0.1030,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["pee3"] = {
        "missbigscore1switch_trevor_piss",
        "piss_loop",
        "Pee 3 Static (Male)",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.0130,
                0.1030,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = Translate('pee'),
            PtfxWait = 0,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["hump"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank"] = {
        "anim@mp_player_intselfiewank",
        "idle_a",
        "Wank",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank2"] = {
        "anim@mp_player_intupperwank",
        "idle_a",
        "Wank 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank3"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02",
        "Wank 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank4"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02_fp",
        "Wank 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["wank5"] = {
        "mp_player_intwank",
        "mp_player_int_wank",
        "Wank 5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = false
        },
        AdultAnimation = true
    },
    ["calldog"] = {
        "switch@franklin@plays_w_dog",
        "001916_01_fras_v2_9_plays_w_dog_idle",
        "Call Dog",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["calldogr"] = {
        "missfra0_chop_find",
        "call_chop_r",
        "Call Dog - Right",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["calldogl"] = {
        "missfra0_chop_find",
        "call_chop_l",
        "Call Dog - Left",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["block"] = {
        "missheist_agency3ashield_face",
        "idle",
        "Block Face",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["policecrowd"] = {
        "amb@code_human_police_crowd_control@idle_a",
        "idle_a",
        "Police Crowd",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["policecrowd2"] = {
        "amb@code_human_police_crowd_control@idle_b",
        "idle_d",
        "Police Crowd 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["k9pose"] = {
        "anim@k9_pose",
        "hug_dog",
        "Hug Dog",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = false,
        }
    },
    ["snot"] = {
        "move_p_m_two_idles@generic",
        "fidget_blow_snot",
        "Blow Snot",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4500,
        }
    },
    ["scratch"] = {
        "move_p_m_two_idles@generic",
        "fidget_scratch_balls",
        "Scratch Balls",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 4000,
        },
        AdultAnimation = true
    },
	["cartaunt"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonfrank",
        "Car Taunt",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntb"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonmynigga",
        "Car Taunt 2",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntc"] = {
        "missarmenian1driving_taunts@lamar_1",
        "hahahakeepup",
        "Car Taunt 3",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntd"] = {
        "missarmenian1driving_taunts@lamar_1",
        "manthisismeanttobe",
        "Car Taunt 4",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartaunte"] = {
        "missarmenian1driving_taunts@lamar_1",
        "rememberthis",
        "Car Taunt 5",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000,
        }
    },
	["cartauntf"] = {
        "missarmenian1driving_taunts@lamar_1",
        "skoolinyoass",
        "Car Taunt 6",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000,
        }
    },
	["cartauntg"] = {
        "missarmenian1driving_taunts@lamar_1",
        "youaintfuckin",
        "Car Taunt 7",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartaunth"] = {
        "missarmenian1driving_taunts@franklin",
        "heyidontneedanybody",
        "Car Taunt 8",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartaunti"] = {
        "missarmenian1driving_taunts@franklin",
        "heymotherfuckayoudriveslowasfuck",
        "Car Taunt 9",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 3000,
        }
    },
	["cartauntj"] = {
        "missarmenian1driving_taunts@franklin",
        "kids_on_bicycles",
        "Car Taunt 10",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntk"] = {
        "missarmenian1driving_taunts@franklin",
        "learnhowtouseastick",
        "Car Taunt 11",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntl"] = {
        "missarmenian1driving_taunts@franklin",
        "slowassshit",
        "Car Taunt 12",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 2000,
        }
    },
	["cartauntm"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_female",
        "Car Taunt 13",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 5000,
        }
    },
	["cartauntn"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_male",
        "Car Taunt 14",
        AnimationOptions = {
            onlyInVehicle = true,
			EmoteMoving = false,
            EmoteDuration = 5000,
        }
    },
    ["flex2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_002",
        "Flex 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true, --- Allows us to flex while performing another animation
        }
    },
    ["gym"] = { -- Custom Female Emote By Souris
        "mouse@air_squat",
        "air_squat_clip",
        "Gym - Squats",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["gym2"] = { -- Custom Female Emote By Souris
        "mouse@byc_crunch",
        "byc_crunch_clip",
        "Gym - Crunches",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 400,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gym3"] = { -- Custom Female Emote By Souris
        "mouse@jump_exc",
        "jump_exc_clip",
        "Gym - Jumping",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["gym4"] = { -- Custom Female Emote By Souris
        "mouse@jump_jack",
        "jump_jack_clip",
        "Gym - Jumping Jacks",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["gym5"] = { -- Custom Female Emote By Souris
        "mouse@situp",
        "situp_clip",
        "Gym - Sit Up",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gympose"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_001",
        "Gym Pose",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true
        }
    },
    ["gympose2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_005",
        "Gym Pose 2 - One Handed Push Up",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["gympose3"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_004",
        "Gym Pose 3 - Planking Pose",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },
    ["gympose4"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_005",
        "Gym Pose 4 - Sit Ups Pose",
         AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 510,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            NotInVehicle = true
        }
    },


    -- CASINO DLC EMOTES (Requires gamebuild 2060 or higher)


    ["karate"] = {
        "anim@mp_player_intcelebrationfemale@karate_chops",
        "karate_chops",
        "Karate"
    },
    ["karate2"] = {
        "anim@mp_player_intcelebrationmale@karate_chops",
        "karate_chops",
        "Karate 2"
    },
    ["cutthroat"] = {
        "anim@mp_player_intcelebrationmale@cut_throat",
        "cut_throat",
        "Cut Throat"
    },
    ["cutthroat2"] = {
        "anim@mp_player_intcelebrationfemale@cut_throat",
        "cut_throat",
        "Cut Throat 2"
    },
    ["mindblown"] = {
        "anim@mp_player_intcelebrationmale@mind_blown",
        "mind_blown",
        "Mind Blown",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["mindblown2"] = {
        "anim@mp_player_intcelebrationfemale@mind_blown",
        "mind_blown",
        "Mind Blown 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing"] = {
        "anim@mp_player_intcelebrationmale@shadow_boxing",
        "shadow_boxing",
        "Boxing",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing2"] = {
        "anim@mp_player_intcelebrationfemale@shadow_boxing",
        "shadow_boxing",
        "Boxing 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing3"] = {
        "melee@unarmed@streamed_core_fps", 
        "idle",
        "Boxing 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["capoeira"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_right",
        "Capoeira",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["capoeira2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_right_down",
        "Capoeira 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stink"] = {
        "anim@mp_player_intcelebrationfemale@stinker",
        "stinker",
        "Stink",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["taichi"] = {
        "anim@veh@van@mule5@rps",
        "lean_forward_idle",
        "Tai chi",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["taichi2"] = {
        "switch@trevor@rand_temple",
        "tai_chi_trevor",
        "Tai chi - Awkward",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["think4"] = {
        "anim@amb@casino@hangout@ped_male@stand@02b@idles",
        "idle_a",
        "Think 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["adjusttie"] = {
        "clothingtie",
        "try_tie_positive_a",
        "Adjust Tie",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["shaka"] = {
        "sign@hang_loose",
        "base",
        "Shaka 'Hang Loose'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shaka2"] = {
        "sign@hang_loose_casual",
        "base",
        "Shaka 'Hang Loose Casual'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["relax"] = {
        "lying@on_grass",
        "base",
        "Relax",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true,
            StartDelay = 800,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["relax2"] = {
        "lying@on_couch_legs_crossed",
        "base",
        "Relax 2",
        AnimationOptions = {
            EmoteLoop = true,
            NotInVehicle = true,
            StartDelay = 800,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["uwu"] = {
        "uwu@egirl",
        "base",
        "UwU",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dab"] = {
        "stand_dab@dark",
        "stand_dab_clip",
        "Dab",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sexypose"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy003",
        "sexy003",
        "Sexy Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose2"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy004",
        "sexy004",
        "Sexy Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose3"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy005",
        "sexy005",
        "Sexy Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose4"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy006",
        "sexy006",
        "Sexy Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose5"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy009",
        "sexy009",
        "Sexy Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose6"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy012",
        "sexy012",
        "Sexy Pose 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose7"] = { -- Custom Emote By Darks Animations
        "bad_girls_pose3@darks37",
        "bad_girls_pose3_clip",
        "Sexy Pose 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["laydownsexy"] = { -- Custom emote by Struggleville
        "anim@female_laying_sexy",
        "laying_sexy_clip",
        "Laying Down Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["model"] = { -- Custom emote by Struggleville
        "anim@female_model_showoff",
        "model_showoff_clip",
        "Model Pose Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["model2"] = { -- Custom Emote By QueenSistersAnimations
        "sitdownonknees@queensisters",
        "sitdown_clip",
        "Model Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["model3"] = { -- Custom emote by Struggleville
        "anim@female_model_photo_cute",
        "photo_cute_clip",
        "Model Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["layncry"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_fuckedup_laz",
        "Lay & Cry",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry2"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_base_laz",
        "Lay & Cry 2",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry3"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 3",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry4"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 4",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry5"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_shit2strong_laz",
        "Lay & Cry 5",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry6"] = {
        "misschinese2_crystalmaze",
        "2int_loop_a_taocheng",
        "Lay & Cry 6",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry7"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "base",
        "Lay & Cry 7",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["layncry8"] = {
        "anim@scripted@data_leak@fix_golf_ig2_golfclub_intimidation@",
        "stage_3_base_golfer",
        "Lay & Cry 8",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["army1"] = {
        "bzzz@animation@army1", -- Custom Emote By BzZz
        "bz_army1",
        "Army 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army1l"] = {
        "bzzz@animation@army1_left", -- Custom Emote By BzZz
        "bz_army1_left",
        "Army 1 Left",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army1p"] = {
        "bzzz@animation@army1_right", -- Custom Emote By BzZz
        "bz_army1_right",
        "Army 1 Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2"] = {
        "bzzz@animation@army2", -- Custom Emote By BzZz
        "bz_army2",
        "Army 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2l"] = {
        "bzzz@animation@army2_left", -- Custom Emote By BzZz
        "bz_army2_left",
        "Army 2 Left",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["army2p"] = {
        "bzzz@animation@army2_right", -- Custom Emote By BzZz
        "bz_army2_right",
        "Army 2 Right",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["airforce01"] = { -- MissSnowie
        "airforce@at_ease",
        "base",
        "Airforce - At Ease", -- MissSnowie
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce02"] = { -- MissSnowie
        "airforce@attention",
        "base",
        "Airforce - Attention",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce03"] = { -- MissSnowie
        "airforce@parade_rest",
        "base",
        "Airforce - Parade Rest",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["airforce04"] = {
        "airforce@salute",
        "base",
        "Airforce - Salute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["zombiewalk"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_01",
        "Zombie Walk",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false -- true looks weird but the option is here
        }
    },
    ["zombiewalk2"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_02",
        "Zombie Walk 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiewalk3"] = {
        "anim@ingame@move_m@zombie@core",
        "walk_up",
        "Zombie Walk 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiewalk4"] = {
        "anim@ingame@move_m@zombie@core",
        "run_turn_r3",
        "Zombie Run - Circle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombieagony"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "agony",
        "Zombie Agony",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiescream"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "scream",
        "Zombie Scream",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["zombiecrawl"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "crawl_01",
        "Zombie Crawl",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "meditateup",
            ExitEmoteType = "Exits"
        }
    },
    ["zombieswipe"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_-180_punch",
        "Zombie Swipe",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["zombieswipe2"] = {
        "anim@ingame@melee@unarmed@streamed_variations_zombie",
        "heavy_punch_b_var_2",
        "Zombie Swipe 2",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["zombieswipe3"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_90_punch",
        "Zombie Swipe 3",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["laysexy"] = { -- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_004",
        "Lay Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gungirl1"] = { -- Custom Emote By Struggleville
        "anim@female_gunbunny_rifle_photo",
        "rifle_photo_clip",
        "Rifle Pose",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["vest"] = {
        "anim@male@holding_vest",
        "holding_vest_clip",
        "Hold Vest",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest2"] = {
        "anim@holding_side_vest",
        "holding_side_vest_clip",
        "Hold Vest 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest3"] = {
        "anim@holding_siege_vest_side",
        "holding_siege_vest_side_clip",
        "Hold Vest 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest4"] = {
        "anim@male@holding_vest_2",
        "holding_vest_2_clip",
        "Hold Vest 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest5"] = {
        "anim@male@holding_vest_siege",
        "holding_vest_siege_clip",
        "Hold Vest 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vest6"] = {
        "anim@male@holding_vest_siege_2",
        "holding_vest_siege_2_clip",
        "Hold Vest 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["kick"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard1",
        "Kick",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kick2"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard2",
        "Kick 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kick3"] = {
        "melee@unarmed@streamed_core",
        "kick_close_a",
        "Kick 3",
        AnimationOptions = {
            EmoteDuration = 1750
        }
    },
    ["crosshands"] = {
        "anim@amb@carmeet@checkout_car@",
        "male_e_base",
        "Cross hands",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["aslyes"] = {
        "ebrwny_sign",
        "ebrwny_yes",
        "ASL Yes 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1030
        }
    },
    ["aslno"] = {
        "ebrwny_sign",
        "ebrwny_no",
        "ASL No 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2080
        }
    },
    ["aslimgood"] = {
        "ebrwny_sign",
        "ebrwny_imgood",
        "ASL I Am Good 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3940
        }
    },
    ["aslcya"] = {
        "ebrwny_sign",
        "ebrwny_seeya",
        "ASL See Ya 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1200
        }
    },
    ["aslwhat"] = {
        "ebrwny_sign",
        "ebrwny_what",
        "ASL What 🇺🇸",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1480
        }
    },
    ["hidegun"] = { -- Credit to Darks Animations for this exclusive rpemotes animation
        "pistol_b_b@dark",
        "pistol_b_b_clip",
        "Hide a gun",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["femaleposea"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose A",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleadorable1"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable_style",
        "mrwitt",
        "Female Adorable 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleadorable2"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable",
        "mrwitt",
        "Female Adorable 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeb"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@characterful_poses",
        "mrwitt",
        "Female Pose B",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposec"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@elegant_floor_hock",
        "mrwitt",
        "Female Pose C",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposed"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_03",
        "mrwitt",
        "Female Pose D",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposee"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_04",
        "mrwitt",
        "Female Pose E",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposef"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_05",
        "mrwitt",
        "Female Pose F",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeg"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_06",
        "mrwitt",
        "Female Pose G",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeh"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_07",
        "mrwitt",
        "Female Pose H",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposei"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_09",
        "mrwitt",
        "Female Pose I",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposej"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose J",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposek"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_11",
        "mrwitt",
        "Female Pose K",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposel"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@finger_gun_pose",
        "mrwitt",
        "Female Pose L",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposem"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@models_in_action",
        "mrwitt",
        "Female Pose M",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposen"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@photo_session_posing",
        "mrwitt",
        "Female Pose N",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposeo"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@school_uniform_expression",
        "mrwitt",
        "Female Pose O",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["femaleposep"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@urban_posing",
        "mrwitt",
        "Female Pose P",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
	["femaleposeq"] = { --- Custom Emote By DRX Animations
        "drx@femalestand13",
        "xrd",
        "Female Pose Q",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposer"] = { --- Custom Emote By DRX Animations
        "drx@femalestand14",
        "xrd",
        "Female Pose R",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposes"] = { --- Custom Emote By DRX Animations
        "drx@femalestand15",
        "xrd",
        "Female Pose S",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposet"] = { --- Custom Emote By DRX Animations
        "drx@femalestand16",
        "xrd",
        "Female Pose T",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposeu"] = { --- Custom Emote By DRX Animations
        "drx@f_sitcool",
        "drx",
        "Female Pose U",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["femaleposev"] = { --- Custom Emote By DRX Animations
        "drx@f_standcasual1",
        "drx",
        "Female Pose V",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposew"] = { --- Custom Emote By DRX Animations
        "drx@f_standcasual2",
        "drx",
        "Female Pose W",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposex"] = { --- Custom Emote By DRX Animations
    "drx@femalestand7",
    "xrd",
    "Female Pose X",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposey"] = { --- Custom Emote By DRX Animations
    "drx@femalestand8",
    "xrd",
    "Female Pose Y",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["femaleposez"] = { --- Custom Emote By DRX Animations
        "drx@femalestand9",
        "xrd",
        "Female Pose Z",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["maleposea"] = { --- Custom Emote By DRX Animations
        "drx@singlemale1",
        "drx",
        "Male Pose A",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
       }
    },
    ["maleposeb"] = { --- Custom Emote By DRX Animations
        "drx@singlemale2",
        "drx",
        "Male Pose B",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposec"] = { --- Custom Emote By DRX Animations
        "drx@singlemalestand1",
        "drx",
        "Male Pose C",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposed"] = { --- Custom Emote By DRX Animations
        "drx@singlemalestand2",
        "drx",
        "Male Pose D",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposee"] = { --- Custom Emote By DRX Animations
        "drx@m_doublehands",
        "drx",
        "Male Pose E",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposef"] = { --- Custom Emote By DRX Animations
        "drx@m_standhide",
        "drx",
        "Male Pose F",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposee1"] = { --- Custom Emote By DRX Animations
        "drx@malestand2",
        "xrd",
        "Male Pose E1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposef1"] = { --- Custom Emote By DRX Animations
        "drx@malestand3c",
        "xrd",
        "Male Pose F1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposeg"] = { --- Custom Emote By DRX Animations
        "drx@pose_male",
        "pose_male",
        "Male Pose G",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposeh"] = { --- Custom Emote By MrWitt
        "mrwitt@gentleman_style_male",
        "mrwitt",
        "Male Pose H",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposei"] = { --- Custom Emote By MrWitt
        "mrwitt@thoughtful_man_m",
        "mrwitt",
        "Male Pose I",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["maleposetie"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@tie_perfection_in_suit_male",
        "mrwitt",
        "Male Pose Tie",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malecrossarms"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "cross_arms@dark",
        "cross_arms_clip",
        "Male Cross Arms",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malemiddlefinger"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "stand_middlefinger@dark",
        "stand_middlefinger_clip",
        "Male Middle Finger",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malefistface"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fist_face@darksj",
        "fist_face_clip",
        "Male Fist Face",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose4"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fuckm@nxsty",
        "fuckm_clip",
        "Male Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malegunpose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "gun_ink@darksj",
        "gun_ink_clip",
        "Male Gun Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose5"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "koko_male@darksj",
        "koko_male_clip",
        "Male Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose3"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_1@darksj",
        "male_solo_1_clip",
        "Male Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose2"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_3@darksj",
        "male_solo_3_clip",
        "Male Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malepose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_4@darksj",
        "male_solo_4_clip",
        "Male Pose 1",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["maleshoecheck"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "side_shoe_check@darksj",
        "side_shoe_check_clip",
        "Male Shoe Check Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["malegangpose"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "westside_cap@darksj",
        "westside_cap_clip",
        "Male Gang Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["illuminati"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum003",
        "Illuminati Hand Sign",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["illuminati2"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum001",
        "Illuminati Hand Sign 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["illuminati3"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum002",
        "Illuminati Hand Sign 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["gunpoint"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
        "male_gun@vanessssi",
        "male_gun_clip",
        "Gun Point - Robbery",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["baddiepeace"] = { -- Custom Emote provided by 41anims
        "41animpeacebaddie@animation",
        "41animpeacebaddie_clip",
        "Baddie Peace Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddiebendova"] = { -- Custom Emote provided by 41anims
        "bendova@animation",
        "bendova_clip",
        "Baddie Bendova Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddienailpose"] = { -- Custom Emote provided by 41anims
        "nailpose@animation",
        "nailpose_clip",
        "Baddie Nail Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose"] = { -- Custom Emote provided by corbs
        "aphrodite1@corbs",
        "aphrodite1_clip",
        "Aphrodite Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose2"] = { -- Custom Emote provided by corbs
        "aphrodite2@corbs",
        "aphrodite2_clip",
        "Aphrodite Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["aphroditepose3"] = { -- Custom Emote provided by corbs
        "aphrodite3@corbs",
        "aphrodite3_clip",
        "Aphrodite Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },

}

--- PROP EMOTES GO HERE. CURRENTLY SUPPORTS UP TO ONE OR TWO PROPS  ---
RP.PropEmotes = {
    ["umbrella"] = {
        "amb@world_human_drinking@coffee@male@base",
        "base",
        "Umbrella - Middle",
        AnimationOptions = {
            Prop = "p_amb_brolly_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0200,
               -0.0360,
                0.0,
                10.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Umbrella 2 - Right Shoulder',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0100,
                0.1100,
                2.3402393,
                -150.9605721,
                57.3374916
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella3'] = { --- Custom Emote Provided To RPEmotes By Mr Witt
        'mrwitt@rain_dreamy_pose',
        'mrwitt',
        'Umbrella 3 - Rain Check',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 58867,
            PropPlacement = {
                0.0150,
                0.0340,
               -0.0340,
               16.0040,
               -6.7284,
               -0.9319
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    ['umbrella4'] = { --- Custom Emote  By Mr ultrahacx
        'custom@hold_umbrella',
        'hold_left',
        'Umbrella 4 - Hold Left',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 60309,
            PropPlacement = {
                0.0600,
               -0.0100,
                0.0200,
              -94.3996,
               -1.7343,
                9.9656
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ExitEmote = "shakeitoffhuman",
            ExitEmoteType = "Exits"
        }
    },
    -----------------------------------------------------------------------------------------------------
    ------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
    -----------------------------------------------------------------------------------------------------
    ["notepad"] = {
        "missheistdockssetup1clipboard@base",
        "base",
        "Notepad",
        AnimationOptions = {
            Prop = 'prop_notepad_01',
            PropBone = 18905,
            PropPlacement = {
                0.1,
                0.02,
                0.05,
                10.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_pencil_01',
            SecondPropBone = 58866,
            SecondPropPlacement = {
                0.11,
                -0.02,
                0.001,
                -120.0,
                0.0,
                0.0
            },
            -- EmoteLoop is used for emotes that should loop, its as simple as that.
            -- Then EmoteMoving is used for emotes that should only play on the upperbody.
            -- The code then checks both values and sets the MovementType to the correct one
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["box"] = {
        "anim@heists@box_carry@",
        "idle",
        "Box",
        AnimationOptions = {
            Prop = "hei_prop_heist_box",
            PropBone = 60309,
            PropPlacement = {
                0.025,
                0.08,
                0.255,
                -145.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gift"] = {
        "hold_flowers@dad", --- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Gift",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_orange',
            PropBone = 60309,
            PropPlacement = {
                 0.0180,
                 0.0390,
                 0.1160,
               -82.4097,
              -157.5768,
               -27.6738
            },
            EmoteMoving = true
        }
    },
    ["gift2"] = {
        "hold_flowers@dad", --- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Gift 2",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_purple',
            PropBone = 60309,
            PropPlacement = {
                 0.0180,
                 0.0390,
                 0.1160,
               -82.4097,
              -157.5768,
               -27.6738
            },
            EmoteMoving = true
        }
    },
	["k12saw"] = {
        "anim@heists@fleeca_bank@drilling",
        "drill_straight_end",
        "Firefighter K12 Saw",
        AnimationOptions = {
            Prop = "prop_tool_consaw",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0900,
                0.0500,
                -70.3009797,
                71.0092017,
                83.759421
            },
            EmoteLoop = true,
            EmoteMoving = true,
			PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_paleto_box_sparks",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.20,
                0.88,
                0.25,
                0.0,
                90.0,
                180.0,
                1.1
            },
            PtfxInfo = Translate('cut'),
            PtfxWait = 0.8,
            PtfxCanHold = false -- we set this to false, but yet it allows us to hold
        }
    },
	["carryextinguisher"] = {
        "amb@lo_res_idles@",
        "world_human_musician_bongos_lo_res_base",
        "Firefighter Extinguisher",
        AnimationOptions = {
            Prop = "prop_fire_exting_1a",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                0.1400,
                -0.5200,
                179.7874004,
                -178.5954846,
                4.5961806
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
	["maskup"] = {
        "anim@mp_helmets@on_foot",
        "visor_up",
        "Firefighter Unmask",
        AnimationOptions = {
			EmoteDuration = 800, --- Even with EmoteLoop = false, this emote still loops, so we add a duration to force it to stop after a set amount of milliseconds.
			EmoteMoving = true,
        }
    },
	["maskdown"] = {
        "anim@mp_helmets@on_foot",
        "visor_down",
        "Firefighter Mask",
        AnimationOptions = {
			EmoteDuration = 800, --- Even with EmoteLoop = false, this emote still loops, so we add a duration to force it to stop after a set amount of milliseconds.
			EmoteMoving = true,
        }
    },
    ["masktakeoff"] = {
        "anim@scripted@bty5@ig1_intimidate_actor@female_heeled@",
        "mask_action_b",
        "Take Off Mask",
        AnimationOptions = {
			EmoteMoving = true,
        }
    },
	["adjustbag"] = {
        "amb@world_human_hiker_standing@male@idle_a",
        "idle_b",
        "Firefighter Adjust Tank / Bag",
        AnimationOptions = {
			EmoteMoving = true,
			EmoteDuration = 9500
        }
    },
	["adjustpanel"] = {
        "anim@scripted@heist@ig9_control_tower@male@",
        "loop",
        "Firefighter Pump PSI",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["cake"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Birthday Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_birthday_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -128.0,
               -245.0,
                2.0
            },
            EmoteMoving = true
        }
    },
    ["cake2"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Baby Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_baby_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -94.0,
               -162.0,
                -44.0
            },
            EmoteMoving = true
        }
    },
    ["cake3"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Casino Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_casino001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
                0.09,
                0.2,
               -54.0,
               -72.0,
                -6.0
            },
            EmoteMoving = true
        }
    },
    ["cake4"] = { -- Custom Prop & Emote By BzZz
        "anim@heists@box_carry@",
        "idle",
        "Love Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_love_001',
            PropBone = 18905,
            PropPlacement = {
                0.28,
                0.06,
                0.2,
               -54.0,
               -72.0,
                -6.0
            },
            EmoteMoving = true
        }
    },
    ["cake5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Unicorn Cake",
        AnimationOptions = { -- Custom Prop By PataMods
            Prop = 'pata_cake',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0700,
               -0.0400,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cake6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pride Cake",
        AnimationOptions = { -- Custom Prop By PataMods
            Prop = 'pata_cake2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0700,
               -0.0400,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cake7"] = { -- Custom Prop By PataMods
        "anim@heists@box_carry@",
        "idle",
        "Chocolate Mud Cake",
        AnimationOptions = {
            Prop = 'pata_cake3',
            PropBone = 28422,
            PropPlacement = {
               -0.0100,
               -0.0390,
               -0.0800,
               10.0000,
                0.0000,
                0.0000
            },
            EmoteMoving = true
        }
    },
    ["cakew"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Birthday",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_birthday_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew2"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Baby",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_baby_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew3"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Casino",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_casino001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
             -160.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew4"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Love",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_love_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
              180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew5"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Unicorn",
        AnimationOptions = {
            Prop = "pata_cake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1100,
                0.0,
                0.0,
               30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew6"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Pride",
        AnimationOptions = {
            Prop = "pata_cake2",
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
                0.1100,
                0.0,
                0.0,
               20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew7"] = { -- Custom Prop & Emote By BzZz
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Chocolate Mud",
        AnimationOptions = {
            Prop = "pata_cake3",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1100,
                0.0,
                0.0,
               30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rose"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Rose",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.15,
                0.0,
                -100.0,
                0.0,
                -20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["dollar"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Dollar",
        AnimationOptions = {
            Prop = "p_banknote_onedollar_s",
            PropBone = 60309,
            PropPlacement = {
               -0.0020,
               -0.0030,
                0.0320,
               82.2434,
             -106.9746,
                1.3733
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["balloon"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Balloon",
        AnimationOptions = {
            Prop = "heart_balloon",
            PropBone = 60309,
            PropPlacement = {
                0.25,
               -0.84,
                0.53,
             -157.2041,
             -101.1702,
              28.0243
            },
            EmoteStuck = true,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["balloon2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Balloon 2 - Pride",
        AnimationOptions = {
            Prop = "pride_heart_balloon",
            PropBone = 60309,
            PropPlacement = {
                1.0600,
                0.4900,
                0.0140,
               73.5103,
              -30.9638,
               19.3946
            },
            EmoteStuck = true,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smoke2"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_c",
        "Smoke 2",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke3"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_b",
        "Smoke 3",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke4"] = {
        "amb@world_human_smoking@female@idle_a",
        "idle_b",
        "Smoke 4",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke5"] = { --- Custom Emote Provided To RPEmotes By Mr Witt
        "mrwitt@composed_photo_moments",
        "mrwitt",
        "Smoke 5",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 64097,
            PropPlacement = {
                0.0020,
                0.0010,
               -0.0090,
                0.0,
                0.0,
                50.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["smoke6"] = {
        "anim@amb@carmeet@checkout_car@",
        "smoke_male_a_idle_b",
        "Smoke 6",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["vape"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
        "Vape",
        AnimationOptions = {
            Prop = 'ba_prop_battle_vape_01',
            PropBone = 28422,
            PropPlacement = {
                -0.0290,
                0.0070,
                -0.0050,
                91.0,
                270.0,
                -360.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["vape2"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
        "Vape 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_vape_01a',
            PropBone = 28422,
            PropPlacement = {
                -0.02,
                -0.02,
                0.02,
                58.0,
                110.0,
                10.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 1.8,
            PtfxCanHold = true
        }
    },
    ["bong"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong",
        AnimationOptions = {
            Prop = 'hei_heist_sh_bong_01',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong2"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_bong_01a',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong3"] = {
        "sit_bong@dark",
        "sit_bong_clip",
        "Bong 3 - Sit & Rip",
        AnimationOptions = {
            Prop = 'hei_heist_sh_bong_01',
            PropBone = 60309,
            PropPlacement = {
                0.0490,
               -0.2000,
                0.0800,
              -85.0199,
              102.3320,
              -15.0085
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["bong4"] = {
        "sit_bong@dark",
        "sit_bong_clip",
        "Bong 4 - Sit & Rip Purple",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_bong_01a',
            PropBone = 60309,
            PropPlacement = {
                0.0490,
               -0.2000,
                0.0800,
              -85.0199,
              102.3320,
              -15.0085
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_agencyheistb",
            PtfxName = "scr_agency3b_elec_box",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.170,
                0.0,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('vape'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["joint2"] = { --- Custom Emote Provided To RPEmotes By Sel of Darks Animations
        "smoke_m@sel",
        "smoke_m_clip",
        "Pass The Blunt",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 26612,
            PropPlacement = {
                0.0540,
               -0.0120,
			    0.0480,
              172.3040,
             -131.4506,
               45.1778
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.5,
            PtfxCanHold = true
        }
    },
    ["fishing1"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_a",
        "Fishing 1",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing2"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_b",
        "Fishing 2",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing3"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_c",
        "Fishing 3",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["icefishing"] = { -- Custom Emote By EP
        "timetable@ron@ig_3_couch",
        "base",
        "Ice Fishing",
        AnimationOptions = {
            Prop = 'pprp_icefishing_box_02',
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.63,
                7.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["icefishing2"] = { -- Custom Emote By EP
        "move_weapon@jerrycan@generic",
        "idle",
        "Ice Fishing 2",
        AnimationOptions = {
            Prop = 'pprp_icefishing_box_01',
            PropBone = 28422,
            PropPlacement = {
                0.8,
                0.03,
                0.04,
                0.0,
                -90.0,
                100.0
            },
            SecondProp = 'pprp_icefishing_augur',
            SecondPropBone = 24818,
            SecondPropPlacement = {
                -0.8,
                -0.2,
                0.0,
                0.0,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["suitcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase",
        AnimationOptions = {
            Prop = "prop_ld_suitcase_01",
            PropBone = 57005,
            PropPlacement = {
                0.35,
                0.0,
                0.0,
                0.0,
                266.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["suitcase2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase 2",
        AnimationOptions = {
            Prop = "prop_security_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.13,
                0.0,
                -0.01,
                0.0,
                280.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Boombox",
        AnimationOptions = {
            Prop = "prop_boombox_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                0.0,
                263.0,
                58.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox2"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Boombox 2",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'prop_ghettoblast_02',
            SecondPropBone = 10706,
            SecondPropPlacement = {
                -0.2310,
                -0.0770,
                0.2410,
                -179.7256,
                176.7406,
                23.0190
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox",
        AnimationOptions = {
            Prop = "prop_tool_box_04",
            PropBone = 28422,
            PropPlacement = {
                0.3960,
                0.0410,
                -0.0030,
                -90.00,
                0.0,
                90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 2",
        AnimationOptions = {
            Prop = "imp_prop_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 3",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 4",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_02a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
              -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["cashbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Box",
        AnimationOptions = {
            Prop = "m23_1_prop_m31_cashbox_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0550,
                0.0090,
               -0.0100,
                90.00,
                0.0,
              -81.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbag"] = {
        "missfbi4prepp1",
        "_idle_garbage_man",
        "Garbage Bag",
        AnimationOptions = {
            Prop = "prop_cs_street_binbag_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0400,
                -0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 1",
        AnimationOptions = {
            Prop = "v_ret_ml_beerdus",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beeram",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpride",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbar",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mugshot"] = {
        "mp_character_creation@customise@male_a",
        "loop",
        "Mugshot",
        AnimationOptions = {
            Prop = 'prop_police_id_board',
            PropBone = 58868,
            PropPlacement = {
                0.12,
                0.24,
                0.0,
                5.0,
                0.0,
                70.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["coffee"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Coffee",
        AnimationOptions = {
            Prop = 'p_amb_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["coffeecall"] = {
        "switch@michael@coffee_w_dave",
        "002291_02_fbi_3_coffee_w_dave_idle_dave",
        "Coffee Phone Call",
        AnimationOptions = {
            Prop = 'p_ing_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0140,
                0.0,
                0.0,
			   90.0
            },
            SecondProp = 'prop_phone_ing',
			PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskey"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 28422,
            PropPlacement = {
                0.01,
                -0.01,
                -0.06,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 2",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Beer 3",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer4"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_b",
        "Beer 4 - Pour One Out For The Homies",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["beer5"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 5",
        AnimationOptions = {
            Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 2",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 3",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can",
        AnimationOptions = {
            Prop = 'v_res_tt_can01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can 2",
        AnimationOptions = {
            Prop = 'v_res_tt_can02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
             -150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beercan3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Beer Can 3",
        AnimationOptions = {
            Prop = 'h4_prop_h4_can_beer_01a',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0700,
                0.0,
                0.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wine2"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 2 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ---       PropPlacement = {-0.0, 0.03, -0.20, 5.0, 0.0, 0.0},
            ---     F&B   L&R   U&D  R.F&B
        }
    },
    ["beerf3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female 3",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf4"] = {
        "fix_stu_ext-1",
        "a_f_y_studioparty_01^1_dual-1",
        "Beer Female 4",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.08,
                0.11,
                0.0,
                -74.0,
                0.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf5"] = {
        "anim@scripted@freemode_npc@fix_dre_studio_entourage_b@",
        "stand_drink_cup_female_a_base",
        "Beer Female 5",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["wine3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 3 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["cup"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Cup",
        AnimationOptions = {
            Prop = 'prop_plastic_cup_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["apple"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Apple",
        AnimationOptions = {
            Prop = 'sf_prop_sf_apple_01b',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0150,
                -0.0200,
                -124.6964,
                -166.5760,
                8.4572
            },
            EmoteMoving = true
        }
    },
    ["taco"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Taco",
        AnimationOptions = {
            Prop = 'prop_taco_01',
            PropBone = 60309,
            PropPlacement = {
                -0.0170,
                0.0070,
                -0.0210,
                107.9846,
                -105.0251,
                55.7779
            },
            EmoteMoving = true
        }
    },
    ["hotdog"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Hotdog",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_02',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0100,
                -0.0100,
                95.1071,
                94.7001,
                -66.9179
            },
            EmoteMoving = true
        }
    },
    ["bagel"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Bagel",
        AnimationOptions = {
            Prop = 'p_ing_bagel_01',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.05,
                0.03,
              145.3975,
              -53.8984,
                4.8412
            },
            EmoteMoving = true
        }
    },
    ["donut"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut",
        AnimationOptions = {
            Prop = 'prop_amb_donut',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["donut2"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut002',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["donut3"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["desert"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat dessert",
        AnimationOptions = {
            Prop = 'bzzz_food_dessert_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.03,
                0.03,
                -42.0,
                -36.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["croissant"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Croissant",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_croissant001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
                -0.0100,
                0.0000,
                0.0000,
                90.0000
            },
            EmoteMoving = true
        }
    },
    ["gingerbread"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Gingerbread Man",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_gingerbread_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.04,
                0.03,
                18.0,
                164.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycane"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Red",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaneb"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Green",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_b',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanec"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Purple",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_c',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaned"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Yellow",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_d',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanee"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Blue",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_e',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["meat"] = {
        "move_crouch_proto",
        "idle",
        "Meat On A Stick",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_kebab',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["meat2"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Meat On A Fork",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_kebab',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - White",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_marshmallow',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow2"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - Pink",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_mellopink',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow3"] = {
        "move_crouch_proto",
        "idle",
        "Marshmallow Stick - Burnt",
        AnimationOptions = {
            Prop = 'bzzz_camp_stick_melloburnt',
            PropBone = 64080,
            PropPlacement = {
               0.0600,
               0.0500,
              -0.1600,
              17.0651,
             -30.9089,
              60.0374
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow4"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - White",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_marshmallow',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow5"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - Pink",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_mellopink',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mallow6"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Marshmallow On A Fork - Burnt",
        AnimationOptions = {
            Prop = 'bzzz_camp_food_melloburnt',
            PropBone = 18905,
            PropPlacement = {
               0.14,
               0.02,
               0.01,
             -24.0,
             -80.0,
               9.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["macaroon"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Macaroon",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_macaroon_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.07,
                0.00,
                38.0,
                7.0,
                7.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Tea",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_a',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug2"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Coffee",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_b',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmaswine"] = { -- Custom Prop by BzZz
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mulled Wine",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mulled_wine_a',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.03,
                0.05,
               -110.0,
               -47.0,
                7.0
            },
            EmoteMoving = true
        }
    },
    ["cocoa"] = {
        "amb@world_human_aa_coffee@base",
        "base",
        "Xmas Cocoa",
        AnimationOptions = {
            Prop = 'pata_christmasfood1',
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1100,
                -0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["xmassf"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Snowflake Cookie",
        AnimationOptions = {
            Prop = 'pata_christmasfood2',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                -0.0500,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["xmascc"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake",
        AnimationOptions = {
            Prop = 'pata_christmasfood6',
            PropBone = 60309,
            PropPlacement = {
                0.0100,
                0.0200,
               -0.0100,
               -170.1788,
                87.6716,
                30.0540
            },
            EmoteMoving = true
        }
    },
    ["xmascc2"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake 2",
        AnimationOptions = {
            Prop = 'pata_christmasfood8',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                0.0,
               -0.0100,
                9.3608,
              -90.1809,
               66.3689
            },
            EmoteMoving = true
        }
    },
    ["xmasic"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Xmas Ice Cream",
        AnimationOptions = {
            Prop = "pata_christmasfood7",
            PropBone = 60309,
            PropPlacement = {
               -0.0460,
                0.0000,
               -0.0300,
                0.0,
                0.0,
               -50.0000
            },
            SecondProp = 'h4_prop_h4_coke_spoon_01',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
               20.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pizzaslice"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas2"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Tomato And Pesto",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice2',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas3"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Mushroom",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice3',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas4"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Margherita",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice4',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas5"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Double Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice5',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["eat"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0200,
               30.0000,
                0.0000,
                0.0000,
            },
            EmoteMoving = true
        }
    },
    ["burger"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Burger",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0200,
               30.0000,
                0.0000,
                0.0000,
            },
            EmoteMoving = true
        }
    },
    ["burgerpose"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes exclusive to RPEmotes
        "brugershot_dark_fixed@dark",
        "brugershot_dark_fixed_clip",
        "Burger - Pose",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 60309,
            PropPlacement = {
                0.0460,
                0.0140,
                0.0460,
                3.4346,
               20.1823,
              -10.000
            },
            SecondProp = 'ba_prop_battle_sports_helmet',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0400,
               -0.0100,
               -0.2000,
              176.3835,
             -169.3724,
               19.6834
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sandwich"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Sandwich",
        AnimationOptions = {
            Prop = 'prop_sandwich_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["soda"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda - eCola Can",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda 2 - Sprunk Can",
        AnimationOptions = {
            Prop = 'ng_proc_sodacan_01b',
            PropBone = 28422,
            PropPlacement = {
                0.0050,
               -0.0010,
               -0.0800,
                0.0,
                0.0,
                160.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["soda3"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 3 - P's & Q's Cup",
        AnimationOptions = {
            Prop = 'v_ret_fh_bscup',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda4"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 4 - Burger Shot Cup",
        AnimationOptions = {
            Prop = 'prop_cs_bs_cup',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
             -150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda5"] = {
       "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 5 - Hercules Power Fuel Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda03',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda6"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 6 - Orang-O-Tang Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda04',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda7"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 7- Junk Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda01',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["soda8"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda 8 - Junk Cup",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda02',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
                0.0010,
                0.0,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["soda9"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda 9 - Orange Flavoured Can",
        AnimationOptions = {
            Prop = 'prop_orang_can_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba",
        AnimationOptions = {
            Prop = 'scully_boba',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba 2",
        AnimationOptions = {
            Prop = 'scully_boba2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boba3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Boba 3",
        AnimationOptions = {
            Prop = 'scully_boba3',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsoda"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Junk",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda01',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodab"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Sprunk",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda02',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodac"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Hercules Power Fuel",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda03',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sipsodad"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Soda Cup - Orang-O-Tang",
        AnimationOptions = {
            Prop = 'rpemotesreborn_soda04',
            PropBone = 28422,
            PropPlacement = {
               0.0470,
               0.0040,
              -0.0600,
            -88.0263,
            -25.0367,
            -27.3898
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dbsoda"] = {
       "amb@code_human_wander_drinking@male@base",
        "static",
        "Soda - Dumb Bitch",
        AnimationOptions = {
            Prop = 'dumbbitchjuice',
            PropBone = 28422,
            PropPlacement = {
                0.0060,
               -0.0020,
               -0.0700,
              180.0000,
              180.0000,
              -10.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mojito"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Mojito",
        AnimationOptions = {
            Prop = 'prop_mojito',
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.0900,
                0.0000,
                0.0000,
              130.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe"] = {
        "amb@code_human_wander_drinking@male@base",
        "static",
        "Frappe",
        AnimationOptions = {
            Prop = 'brum_heartfrappe',
            PropBone = 28422,
            PropPlacement = {
                0.0,
               -0.0150,
               -0.0100,
                0.0,
               -3.9999,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe2"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 2",
        AnimationOptions = {
            Prop = 'beanmachine_cup',
            PropBone = 28422,
            PropPlacement = {
                0.0110,
                0.0,
                0.0300,
                0.0,
                0.0,
             -140.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe3"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 3",
        AnimationOptions = {
            Prop = 'beanmachine_cup2',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0600,
                0.0,
                0.0,
             -178.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["frappe4"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Frappe 4",
        AnimationOptions = {
            Prop = 'beanmachine_cup3',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
               -0.0600,
                0.0,
                0.0,
             -178.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["edrink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Energy Drink - Bottle",
        AnimationOptions =
        {
            Prop = "prop_energy_drink",
            PropBone = 60309,
            PropPlacement = {
                0.0080,
                0.0010,
                0.0160,
                3.5690,
                4.6611,
              -49.9065
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["edrink2"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Energy Drink - Can",
        AnimationOptions =
        {
            Prop = "sf_prop_sf_can_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
             -110.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["edrink3"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Energy Drink - XXL Can",
        AnimationOptions =
        {
            Prop = "sf_p_sf_grass_gls_s_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0000,
                0.0000,
               -0.1400,
                0.0000,
                0.0000,
                9.0000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["mshake"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Bubblegum",
        AnimationOptions = {
            Prop = 'brum_cherryshake_bubblegum',
            PropBone = 28422,
            PropPlacement = {
                0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeb"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Cherry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_cherry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakec"] = {
       "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_chocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshaked"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Coffee",
        AnimationOptions = {
            Prop = 'brum_cherryshake_coffee',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakee"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Double Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_doublechocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakef"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Frappe",
        AnimationOptions = {
            Prop = 'brum_cherryshake_frappe',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeg"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Lemon",
        AnimationOptions = {
            Prop = 'brum_cherryshake_lemon',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakeh"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Mint",
        AnimationOptions = {
            Prop = 'brum_cherryshake_mint',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakei"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Strawberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_strawberry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakej"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Raspberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakek"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Salted",
        AnimationOptions = {
            Prop = 'brum_cherryshake_salted',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["mshakel"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Milkshake - Vanilla",
        AnimationOptions = {
            Prop = 'brum_cherryshake_vanilla',
            PropBone = 28422,
            PropPlacement = {
               0.0030,
                0.0280,
                0.0800,
               -180.0,
               -180.0,
                 30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshake"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Bubblegum",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeb"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Cherry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_cherry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakec"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_chocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshaked"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Coffee",
        AnimationOptions = {
            Prop = 'brum_cherryshake_coffee',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakee"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Double Chocolate",
        AnimationOptions = {
            Prop = 'brum_cherryshake_doublechocolate',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakef"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Frappe",
        AnimationOptions = {
            Prop = 'brum_cherryshake_frappe',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeg"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Lemon",
        AnimationOptions = {
            Prop = 'brum_cherryshake_lemon',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakeh"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Mint",
        AnimationOptions = {
            Prop = 'brum_cherryshake_mint',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakei"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Strawberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_strawberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakej"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Raspberry",
        AnimationOptions = {
            Prop = 'brum_cherryshake_raspberry',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakek"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Salted",
        AnimationOptions = {
            Prop = 'brum_cherryshake_salted',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["sipshakel"] = {
        "smo@milkshake_idle",
        "milkshake_idle_clip",
        "Sip Milkshake - Vanilla",
        AnimationOptions = {
            Prop = 'brum_cherryshake_vanilla',
            PropBone = 28422,
            PropPlacement = {
               0.0850,
               0.0670,
              -0.0350,
            -115.0862,
            -165.7841,
              24.1318
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sodafu"] = {
        "anim@male_drinking_01",
        "m_drinking_01_clip",
        "Soda Middle Finger eCola",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 26613,
            PropPlacement = {
                0.0400,
               -0.0500,
                0.0390,
                0.0000,
                0.000,
              -69.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sodafu2"] = {
        "anim@male_drinking_01",
        "m_drinking_01_clip",
        "Soda Middle Finger Sprunk",
        AnimationOptions = {
            Prop = 'ng_proc_sodacan_01b',
            PropBone = 26613,
            PropPlacement = {
                0.0300,
               -0.0600,
               -0.0700,
                0.0000,
                0.000,
                0.000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["water"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Water Bottle",
        AnimationOptions =
        {
            Prop = "vw_prop_casino_water_bottle_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0080,
                0.0,
               -0.0500,
                0.0,
                0.0,
              -40.0000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["egobar"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ego Bar",
        AnimationOptions = {
            Prop = 'prop_choc_ego',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["candy"] = {
        "mp_player_inteat@pnq",
        "loop",
        "Candy",
        AnimationOptions = {
            Prop = 'prop_candy_pqs',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0180,
                0.0,
                180.0,
                180.0,
                -88.099
            },
            EmoteMoving = true
        }
    },
    ["lollipop1"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Red",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral01',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1b"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Pink",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral02',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1c"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Green",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral03',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1d"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Blue",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral04',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1e"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Yellow",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral05',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1f"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Purple",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral06',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop2a"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Red",
        AnimationOptions = {
            Prop = "natty_lollipop_spin01",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2b"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Pink",
        AnimationOptions = {
            Prop = "natty_lollipop_spin02",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2c"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Green",
        AnimationOptions = {
            Prop = "natty_lollipop_spin03",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2d"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin04",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2e"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Pink And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin05",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop3a"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Lollipop Suck",
        AnimationOptions = {
            Prop = 'natty_lollipop01',
            PropBone = 47419,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0100,
                -90.0000,
                10.0000,
                -10.0000
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["icecreama"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Cherry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_cherry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamb"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_icecream_chocolate',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamc"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Lemon",
        AnimationOptions = {
            Prop = 'bzzz_icecream_lemon',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamd"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Pistachio",
        AnimationOptions = {
            Prop = 'bzzz_icecream_pistachio',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreame"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_raspberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamf"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Stracciatella",
        AnimationOptions = {
            Prop = 'bzzz_icecream_stracciatella',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamg"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Strawberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_strawberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamh"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Walnut",
        AnimationOptions = {
            Prop = 'bzzz_icecream_walnut',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["wine"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Wine",
        AnimationOptions = {
            Prop = 'prop_drink_redwine',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["flute"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Flute",
        AnimationOptions = {
            Prop = 'prop_champ_flute',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["champagne"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Champagne",
        AnimationOptions = {
            Prop = 'prop_drink_champ',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cigar"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar",
        AnimationOptions = {
            Prop = 'prop_cigar_02',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0750,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["cigar2"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar 2",
        AnimationOptions = {
            Prop = 'prop_cigar_01',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
               -80.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.06,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["guitar"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar2"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 2",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar3"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar 3 - Pink",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_001',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar4"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 4 - Pink",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_001',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar5"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar - Pride",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_002',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar6"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar - Pride 2",
        AnimationOptions = {
            Prop = 'prop_rpemotesreborn_guitar_002',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric",
        AnimationOptions = {
            Prop = 'prop_el_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric2"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric 2",
        AnimationOptions = {
            Prop = 'prop_el_guitar_03',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarcarry"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Case Carry",
        AnimationOptions = {
            Prop = "sf_prop_sf_guitar_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2800,
                -0.2000,
                -0.0600,
                0.0,
                0.0,
                15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
    ["guitarcarry3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic - Pink",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_001",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic - Pride",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_002",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry5"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric",
        AnimationOptions = {
            Prop = "prop_el_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 2",
        AnimationOptions = {
            Prop = "prop_el_guitar_02",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry7"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 3",
        AnimationOptions = {
            Prop = "prop_el_guitar_03",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry8"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 4",
        AnimationOptions = {
            Prop = "vw_prop_casino_art_guitar_01a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry9"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 5",
        AnimationOptions = {
            Prop = "sf_prop_sf_el_guitar_02a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarsit"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["guitarsit2"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play 2 - Pink",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_001",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["guitarsit3"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play 2 - Pride",
        AnimationOptions = {
            Prop = "prop_rpemotesreborn_guitar_002",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["book"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Book",
        AnimationOptions = {
            Prop = 'prop_novel_01',
            PropBone = 6286,
            PropPlacement = {
                0.15,
                0.03,
                -0.065,
                0.0,
                180.0,
                90.0
            },
            -- This positioning isnt too great, was to much of a hassle
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bookb"] = {
        "holding_book_1@dark",
        "holding_book_1_clip",
        "Book 2",
        AnimationOptions = {
            Prop = 'prop_cs_book_01',
            PropBone = 57005,
            PropPlacement = {
                0.0900,
                0.0900,
               -0.0400,
               80.1585,
              158.5623,
               24.7080,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookc"] = {
        "holding_book_2@dark",
        "holding_book_2_clip",
        "Book 3",
        AnimationOptions = {
            Prop = "prop_michael_backpack",
            PropBone = 40269,
            PropPlacement = {
                0.0300,
               -0.1600,
               -0.0900,
              -170.7740,
               112.8415,
               -20.0836
            },
            SecondProp = 'prop_cs_book_01',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.0400,
                0.0400,
                0.0300,
              -69.0815,
              176.3905,
              19.3724
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookd"] = {
        "holding_book_3@dark",
        "holding_book_3_clip",
        "Book 4",
        AnimationOptions = {
            Prop = 'prop_cs_stock_book',
            PropBone = 18905,
            PropPlacement = {
                0.0700,
                0.0400,
                0.0700,
                0.0000,
                0.0000,
              -15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["booke"] = {
        "holding_book_4@dark",
        "holding_book_4_clip",
        "Book 5",
        AnimationOptions = {
            Prop = 'prop_cs_stock_book',
            PropBone = 57005,
            PropPlacement = {
                0.0100,
                0.0100,
               -0.0600,
               15.1511,
                3.1232,
              -21.2448
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bookf"] = {
        "holding_book_5@dark",
        "holding_book_5_clip",
        "Book 6",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 18905,
            PropPlacement = {
                0.2100,
                0.0600,
                0.0400,
              170.6161,
              -14.2960,
               28.8727
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["bouquet"] = {
        "hold_flowers@dad", --- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Bouquet",
        AnimationOptions = {
            Prop = 'prop_snow_flower_02',
            PropBone = 60309,
            PropPlacement = {
                0.1100,
               -0.1300,
                0.1200,
              -18.7186,
              121.0529,
              -11.7724
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bouquet2"] = {
        "hold_flowers@dad", --- Custom Animation By Darks Animations
        "hold_flowers_clip",
        "Bouquet 2",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday3',
            PropBone = 28422,
            PropPlacement = {
               -0.0100,
                0.0300,
               -0.1700,
               -6.0697,
               60.1852,
                3.4934
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["teddy"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Teddy",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 24817,
            PropPlacement = {
                -0.20,
                0.46,
                -0.016,
                -180.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["backpack"] = {
        "move_p_m_zero_rucksack",
        "nill",
        "Backpack",
        AnimationOptions = {
            Prop = 'p_michael_backpack_s',
            PropBone = 24818,
            PropPlacement = {
                0.07,
                -0.11,
                -0.05,
                0.0,
                90.0,
                175.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["clipboard"] = {
        "missfam4",
        "base",
        "Clipboard",
        AnimationOptions = {
            Prop = 'p_amb_clipboard_01',
            PropBone = 36029,
            PropPlacement = {
                0.16,
                0.08,
                0.1,
                -130.0,
                -50.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Map",
        AnimationOptions = {
            Prop = 'prop_tourist_map_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Map 2",
        AnimationOptions = {
            Prop = "prop_tourist_map_01",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_03',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg2"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 2",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg3"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 3",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg4"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg 4",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_04',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newspaper"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper",
        AnimationOptions = {
            Prop = 'prop_cliff_paper',
            PropBone = 60309,
            PropPlacement = {
                0.0970,
                -0.0280,
                -0.0170,
                107.4008,
                3.2712,
                -10.5080
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper2"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 2",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_quik',
            PropBone = 60309,
            PropPlacement = {
                0.1590,
                0.0290,
                -0.0100,
                90.9998,
                0.0087,
                0.5000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper3"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 3",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_rag',
            PropBone = 60309,
            PropPlacement = {
                0.1760,
                -0.00070,
                0.0200,
                99.8306,
                3.2841,
                -4.7185
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pornmag"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine",
        AnimationOptions = {
            Prop = 'prop_porn_mag_02',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0360,
                -0.0300,
                -86.9096,
                179.2527,
                13.8804
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag2"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 2",
        AnimationOptions = {
            Prop = 'prop_cs_magazine',
            PropBone = 60309,
            PropPlacement = {
                0.0800,
                -0.0490,
                -0.0500,
                87.9369,
                -0.4292,
                -14.3925
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag3"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 3",
        AnimationOptions = {
            Prop = 'prop_porn_mag_03',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0700,
                -0.0200,
                -90.0000,
                -180.0000,
                22.7007
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag4"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 4",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag01',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag5"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 5",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag02',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag6"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 6",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag03',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag7"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 7",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag04',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["makeitrain"] = {
        "anim@mp_player_intupperraining_cash",
        "idle_a",
        "Make It Rain",
        AnimationOptions = {
            Prop = 'prop_anim_cash_pile_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                180.0,
                0.0,
                70.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_xs_celebration",
            PtfxName = "scr_xs_money_rain",
            PtfxPlacement = {
                0.0,
                0.0,
                -0.09,
                -80.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('makeitrain'),
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["camera"] = {
        "stand_camera_1@dad",
        "stand_camera_1_clip",
        "Camera",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 57005,
            PropPlacement = {
                0.1040,
               -0.0060,
               -0.0600,
               -2.7280,
                33.0998,
                4.1917
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["camera2"] = {
        "amb@world_human_paparazzi@male@base",
        "base",
        "Camera 2",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["camera3"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "Camera 3",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0300,
                0.0520,
                -172.0487,
                -163.9389,
                -29.0221
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["camera4"] = {
        "chocoholic@single110a",
        "single110a_clip",
        "Camera 4",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0710,
                0.0150,
               -0.0420,
              -68.3220,
               99.6144,
                2.9027
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
     },
    ["camera5"] = {
        "chocoholic@single110b",
        "single110b_clip",
        "Camera 5",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 60309,
            PropPlacement = {
                0.0980,
                0.0560,
                0.1330,
              -15.8221,
              107.0825,
              -16.0159
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
     },
    ["camera6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Camera 6 - Carry News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.2100,
                0.0300,
               -0.0100,
               90.0000,
              176.0000,
               79.9999
            },
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["champagnespray"] = {
        "anim@mp_player_intupperspray_champagne",
        "idle_a",
        "Champagne Spray",
        AnimationOptions = {
            Prop = 'ba_prop_battle_champ_open',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_ba_club",
            PtfxName = "scr_ba_club_champagne_spray",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            PtfxInfo = Translate('spraychamp'),
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["joint"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Joint",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.097,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["cig"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cig",
        AnimationOptions = {
            Prop = 'ng_proc_cigarette01a',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteDuration = 2600,
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
               -0.07,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["brief"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Briefcase",
        AnimationOptions = {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.0,
                0.0,
                0.0,
                255.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["brief2"] = { -- Added for compatibility
        "missheistdocksprep1hold_cellphone",
        "static",
        "Briefcase 2",
        AnimationOptions =
        {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.0,
                0.0,
                0.0,
                280.0,
                53.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["brushteeth"] = {  
        "mp_player_inteat@pnq",
        "loop_fp",
        "Brush Teeth",
        AnimationOptions =
        {
            Prop = "prop_toothbrush_01",
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.04,
                -0.02,
                -93.0,
                -159.0,
                26.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guncase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guncase",
        AnimationOptions =
        {
            Prop = "prop_gun_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.02,
                -0.02,
                40.0,
                145.0,
                115.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Tablet",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.03,
                0.0,
                20.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Tablet 2",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall"] = {
        "cellphone@",
        "cellphone_call_listen_base",
        "Phone Call",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall2"] = {
        "random@kidnap_girl",
        "ig_1_girl_on_phone_loop",
        "Phone Call 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wt"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Walkie Talkie",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["wt2"] = {
        "anim@radio_pose_3",
        "radio_holding_gun",
        "Walkie Talkie 2",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 60309,
            PropPlacement = {
                0.0750,
                0.0470,
                0.0110,
              -97.9442,
                3.7058,
                -23.2367
				},
            EmoteLoop = true,

        }
    },
    ["wt3"] = {
        "anim@radio_left",
        "radio_left_clip",
        "Walkie Talkie 3 Left",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 60309,
            PropPlacement = {
                0.0750,
                0.0470,
                0.0110,
              -97.9442,
                3.7058,
                -23.2367
				},
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["wt4"] = {
        "anim@male@holding_radio",
        "holding_radio_clip",
        "Walkie Talkie 4",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0750,
                0.0230,
               -0.0230,
              -90.0000,
                0.0,
              -59.9999
				},
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["clean"] = {
        "timetable@floyd@clean_kitchen@base",
        "base",
        "Clean",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clean2"] = {
        "amb@world_human_maid_clean@",
        "base",
        "Clean 2",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest",
        AnimationOptions = {
            Prop = "prop_cs_protest_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            --
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 2 - Pride",
        AnimationOptions = {
            Prop = "pride_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 3 - BLM",
        AnimationOptions = {
            Prop = "scully_blm",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars"] = {
        "amb@world_human_binoculars@male@idle_b",
        "idle_f",
        "Binoculars",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars2"] = {
        "amb@world_human_binoculars@male@idle_a",
        "idle_c",
        "Binoculars 2",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tennisplay"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Tennis Play",
        AnimationOptions = {
            Prop = "prop_tennis_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                91.0,
                0.0,
                -82.9999951
            },
            SecondProp = 'prop_tennis_rack_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0800,
                0.0300,
                0.0,
                -130.2907295,
                3.8782324,
                6.588224
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights"] = {
        "amb@world_human_muscle_free_weights@male@barbell@base",
        "base",
        "Weights",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights2"] = {
        "amb@world_human_muscle_free_weights@male@barbell@idle_a",
        "idle_d",
        "Weights 2",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights3"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_004",
        "Weights 3 - Pose",
        AnimationOptions = {
            Prop = 'prop_barbell_01',
            PropBone = 28422,
            PropPlacement = {
                0.0660,
                0.0100,
                -0.0300,
                90.0000,
                90.0000,
                -79.9999
            },
            EmoteLoop = true,
        }
    },
    ["weights4"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_003",
        "Weights 4 - Pose",
        AnimationOptions = {
            Prop = 'prop_barbell_01', -- Left Wrist
            PropBone = 60309,
            PropPlacement = {
                0.0520,
                -0.0010,
                0.0131,
                21.5428,
                70.2098,
                74.5019
            },
            SecondProp = 'prop_barbell_01', -- Right Wrist
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0660,
                0.0100,
                -0.0300,
                90.0000,
                90.0000,
                -79.9999
            },
            EmoteLoop = true,
        }
    },
    ["weights5"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_001",
        "Weights 5 - Female Pose",
        AnimationOptions = {
            Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0580,
                -0.0060,
                0.0300,
                -11.8498,
                170.2644,
                7.8352
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0880,
                0.0000,
                0.0590,
                -29.1132,
                -128.5627,
                13.7517
            },
            EmoteLoop = true,
        }
    },
    ["weights6"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_002",
        "Weights 6 - Female Pose 2",
        AnimationOptions = {
            Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0700,
                0.0400,
                -0.0600,
                24.5966,
                6.4814,
                -13.9845
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0550,
                -0.0070,
                -0.0309,
                -20.5854,
                -15.0123,
                0.5710
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["weights7"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_003",
        "Weights 7 - Female Pose 3",
        AnimationOptions = {
            Prop = 'prop_freeweight_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0500,
                0.0100,
                -0.0200,
                88.6283,
                -51.8805,
                54.3903
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["fuel"] = {
        "weapons@misc@jerrycan@",
        "fire",
        "Fuel",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 57005,
            PropPlacement = {
                0.1800,
                0.1300,
                -0.2400,
                -165.8693883,
                -11.2122753,
                -32.9453021
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["fuel2"] = {
        "weapons@misc@jerrycan@franklin",
        "idle",
        "Fuel 2 (Carry)",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 28422,
            PropPlacement = {
                0.26,
                0.050,
                0.0300,
                80.00,
                180.000,
                79.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hitchhike"] = {
        "random@hitch_lift",
        "idle_f",
        "Hitchhike",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 18905,
            PropPlacement = {
                0.32,
                -0.0100,
                0.0,
                -162.423,
                74.83,
                58.79
            },
            SecondProp = 'prop_michael_backpack',
            SecondPropBone = 40269,
            SecondPropPlacement = {
                -0.07,
                -0.21,
                -0.11,
                -144.93,
                117.358,
                -6.16
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Yield Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_02a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Hospital Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_03d",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign4"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_04a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign5"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign 2",
        AnimationOptions = {
            Prop = "prop_sign_road_04w",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign6"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Pedestrian Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_05a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign7"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Street Sign",
        AnimationOptions = {
            Prop = "prop_sign_road_05t",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign8"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Freeway Sign",
        AnimationOptions = {
            Prop = "prop_sign_freewayentrance",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign9"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign Snow",
        AnimationOptions = {
            Prop = "prop_snow_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Steal Tire 1",
        AnimationOptions = {
            Prop = "prop_wheel_01",
            PropBone = 18905,
            PropPlacement = {
                0.02,
                0.2,
                0.31,
                130.0,
                -80.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stire2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Steal Tire 2",
        AnimationOptions = {
            Prop = "prop_wheel_02",
            PropBone = 18905,
            PropPlacement = {
                0.02,
                0.2,
                0.31,
                130.0,
                -80.0,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["conehead"] = {
        "move_m@drunk@verydrunk_idles@",
        "fidget_07",
        "Cone Head",
        AnimationOptions = {
            Prop = "prop_roadcone02b",
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0200,
                -0.000,
                30.0000004,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraya"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayb"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray B",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray C",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayd"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray D",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraye"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray E",
        AnimationOptions = {
            Prop = "prop_food_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayf"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray F",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_bs_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayg"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray G",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_cb_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayh"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray H",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayi"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray I",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayj"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray J",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayk"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray K",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayl"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray L",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraym"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray M",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayn"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray N",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayo"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray O",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["mnc"] = {
    "anim@heists@box_carry@",
    "idle",
    "Milk & Cookies",
    AnimationOptions = {
        Prop = "m23_2_prop_m32_milkncookies_01a",
        PropBone = 57005, --- Right Wrist
        PropPlacement = {
            0.2150,
            0.1140,
            0.0240,
          -81.9185,
         -176.2526,
          -28.4674
        },
        SecondProp = 'm23_2_prop_m32_milkncookies_01a',
        SecondPropBone = 18905, -- Left Wrist
        SecondPropPlacement = {
            0.2150,
            0.1140,
            0.0240,
          -95.9185,
         -176.2526,
          -28.4674
        },
        EmoteLoop = true,
        EmoteMoving = true
    }
},
    ["carrypizza"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Pizza Box",
        AnimationOptions = {
            Prop = "prop_pizza_box_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1000,
                -0.1590,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag",
        AnimationOptions = {
            Prop = "prop_food_bs_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3300,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 2",
        AnimationOptions = {
            Prop = "prop_food_cb_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 3",
        AnimationOptions = {
            Prop = "prop_food_bag1",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "shake_can_male",
        "Tagging Shake Can Male",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag2"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "shake_can_female",
        "Tagging Shake Can Female",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag3"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_01_male",
        "Tagging Male 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag4"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_02_male",
        "Tagging Male 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag5"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_01_female",
        "Tagging Female 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag6"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_02_female",
        "Tagging Female 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag7"] = {
        "anim@scripted@freemode@tagcoll_ig_postertag@heeled@",
        "postertag",
        "Tagging 7",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_spraycan_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beans"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Beans",
        AnimationOptions = {
            Prop = "h4_prop_h4_caviar_tin_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pho"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Pho",
        AnimationOptions = {
            Prop = "scully_pho",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'scully_spoon_pho',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dinner"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Dinner",
        AnimationOptions = {
            Prop = "prop_cs_plate_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newscam"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsmic"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "News Microphone",
        AnimationOptions = {
            Prop = "p_ing_microphonel_01",
            PropBone = 4154,
            PropPlacement = {
                -0.00,
                -0.0200,
                0.1100,
                0.00,
                0.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsbmic"] = {
        "missfra1",
        "mcs2_crew_idle_m_boom",
        "News Boom Microphone",
        AnimationOptions = {
            Prop = "prop_v_bmike_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microck"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p1",
        "mic@p1",
        "Microphone Rock",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckb"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p2",
        "mic@p2",
        "Microphone Rock 2",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309, -- Left Wrist
            PropPlacement = {
                0.0350,
                0.0180,
                0.0290,
             -180.0000,
              -13.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckc"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p3",
        "mic@p3",
        "Microphone Rock 3",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckd"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p4",
        "mic@p4",
        "Microphone Rock 4",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcke"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p5",
        "mic@p5",
        "Microphone Rock 5",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckf"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p6",
        "mic@p6",
        "Microphone Rock 6",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.4410,
                -1.0600,
                -0.4800,
                -57.7266,
                51.8164,
                3.0976
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckg"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p7",
        "mic@p7",
        "Microphone Rock 7",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.8210,
                -0.0900,
                -1.1900,
                -2.5478,
                36.3684,
                -11.7503
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckh"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p8",
        "mic@p8",
        "Microphone Rock 8",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcki"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p9",
        "mic@p9",
        "Microphone Rock 9",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckj"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p10",
        "mic@p10",
        "Microphone Rock 10",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leafblower"] = {
        "amb@world_human_gardener_leaf_blower@base",
        "base",
        "Leaf Blower",
        AnimationOptions = {
            Prop = "prop_leaf_blower_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_armenian3",
            PtfxName = "ent_anim_leaf_blower",
            PtfxPlacement = {
                1.0,
                0.0,
                -0.25,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('useleafblower'),
            PtfxWait = 2000,
            PtfxCanHold = true
        }
    },
    ["bbqf"] = {
        "amb@prop_human_bbq@male@idle_a",
        "idle_b",
        "BBQ (Female)",
        AnimationOptions = {
            Prop = "prop_fish_slice_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0600,
                -0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pumpkin 2",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.16000,
                -0.2100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump3"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 3",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump4"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 4",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01b",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump5"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 5",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01c",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
                0.0660,
                -0.0120,
                171.9169,
                179.8707,
                -39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop"] = {
        "missfbi4prepp1",
        "idle",
        "Mop",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0600,
                -0.2000,
                -13.377,
                10.3568,
                17.9681
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop2"] = {
        "move_mop",
        "idle_scrub_small_player",
        "Mop 2",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jerkf"] = {
        "switch@trevor@jerking_off",
        "trev_jerking_off_loop",
        "JerkOff! Female",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422,
            PropPlacement = {
                0.09,
                0.05,
                -0.03,
                90.0,
                80.0,
                30.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        },
        AdultAnimation = true
    },
    ["rake"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Rake",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Rake 2",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Rake 3",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Rake 4",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Broom",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Broom 2",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Broom 3",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["broom4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Broom 4",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["champw"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter",
        AnimationOptions = {
            Prop = "vw_prop_vw_tray_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_champ_cool',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.010,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shit"] = {
        "missfbi3ig_0",
        "shit_loop_trev",
        "Shit",
        AnimationOptions = {
            Prop = "prop_toilet_roll_01",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                -0.02000,
                -0.2100,
                0,
                0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
                0.0,
                0.0,
               -0.1,
                0.0,
                0.0,
                0.0,
                1.3
            },
            PtfxInfo = Translate('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["shit2"] = {
        "missfbi3ig_0",
        "nill",
        "Shit While Walking",
        AnimationOptions = {
            Prop = "prop_toilet_roll_01",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                -0.02000,
                -0.2100,
                0,
                0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxBone = 11816,
            PtfxPlacement = {
                0.0,
                0.0,
               -0.1,
                0.0,
                0.0,
                0.0,
                1.4
            },
            PtfxInfo = Translate('poop'),
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["puke"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
    "cross_arms@dark",
    "cross_arms_clip",
    "Puke",
    AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke2"] = {
        "missheistpaletoscore1leadinout",
        "trv_puking_leadout",
        "Puke 2",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke3"] = {
        "anim@scripted@ulp_missions@injured_agent@",
        "idle",
        "Puke 3",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["puke4"] = {
        "anim@scripted@freemode@throw_up_toilet@male@",
        "vomit",
        "Puke 4",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_paletoscore",
            PtfxName = "scr_trev_puke",
            PtfxNoProp = true,
            PtfxBone = 31086,
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('puke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        },
    },
    ["selfie"] = {
        "anim@mp_player_intuppertake_selfie",
        "idle_a",
        "Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie2"] = {
        "cellphone@self@franklin@",
        "peace",
        "Selfie 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie3"] = {
        "cellphone@self@franklin@",
        "west_coast",
        "Selfie 3 - West Side",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie4"] = {
        "cellphone@self@trevor@",
        "aggressive_finger",
        "Selfie 4 - Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie5"] = {
        "cellphone@self@trevor@",
        "proud_finger",
        "Selfie 5 - Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie6"] = {
        "cellphone@self@trevor@",
        "throat_slit",
        "Selfie 6 - Throat Slit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie7"] = {
        "cellphone@self@franklin@",
        "chest_bump",
        "Selfie 7 - Chest Bump",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie8"] = {
        "anim@amb@carmeet@take_photos@",
        "female_b_idle_d",
        "Selfie 8 - Bumper Pics",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfie9"] = {
        "anim@amb@carmeet@take_photos@",
        "female_b_idle_b",
        "Selfie 9 - Selfie Ceck",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiehigh"] = { -- Custom Emote By Darks Animations
        "girl_groupe_b@darksj",
        "girl_groupe_b_clip",
        "Selfie High",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26611,
            PropPlacement = {
                0.0620,
               -0.0400,
                0.0080,
              -17.1672,
                9.8904,
              -18.1951
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiepeace"] = { -- MissSnowie Custom Emote
        "mirror_selfie@peace_sign",
        "base",
        "Selfie Peace",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 57005,
            PropPlacement = {
                0.1700,
                0.0299,
                -0.0159,
                -126.2687,
                -139.9058,
                35.6203
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch"] = { -- MissSnowie Custom Emote
        "crouching@taking_selfie",
        "base",
        "Selfie Crouching",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch2"] = { -- Wolf's Square Custom Emote
        "eagle@girlphonepose13",
        "girl",
        "Selfie Crouching 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0670,
                0.0300,
                0.0300,
                -90.0000,
                0.0000,
                -25.9000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch3"] = { -- Custom Emote By Struggleville
        "anim@male_insta_selfie",
        "insta_selfie_clip",
        "Selfie Crouching 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0700,
                0.0100,
                0.0690,
                0.0,
                0.0,
                -150.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecrouch4"] = { -- Custom emote by Struggleville
        "anim@female_selfie_risque",
        "selfie_risque_clip",
        "Selfie Crouching 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfieegirl"] = { -- Custom emote by Struggleville
        "anim@female_egirl_cute_selfie",
        "cute_selfie_clip",
        "Selfie E Girl",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0760,
               -0.0220,
                0.0350,
               -22.0968,
                30.4351,
                -7.9339
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfieslut"] = { -- Custom Emote By Struggleville
        "anim@female_floor_slutarch_selfie",
        "slutarch_selfie_clip",
        "Selfie Slut Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58868, -- Right Finger 20
            PropPlacement = {
                0.0350,
                0.0140,
                0.0290,
              167.9999,
              180.0000,
               -8.8999
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200

        },
        AdultAnimation = true
    },
    ["selfiesit"] = { -- Emote by WhiskerValeMod. Need to configure camera flash and texture variants
        "mouse@female_sitting_selfie",
        "female_sitting_selfie_clip",
        "Selfie Sitting",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropBone = 57005,
            PropPlacement = {
                0.1380,
                0.0300,
                -0.0430,
                -111.0946,
                -117.8069,
                11.7386
            },
            SecondProp = 'apa_mp_h_stn_chairarm_23',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0100,
                -0.0800,
                -0.6800,
                -180.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["selfiesit2"] = { -- Emote by WolfSquareEmotes
        "eagle@boypose05",
        "boy",
        "Selfie Sitting 2",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4090, -- Left Finger 2
            PropPlacement = {
                0.0130,
                0.0120,
               -0.0070,
               -103.6673,
               -11.0026,
                18.2605
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit3"] = { -- Emote by Chocoholic Animations
        "chocoholic@single77",
        "single77_clip",
        "Selfie Sitting 3",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0130,
               -0.0190,
                0.0320,
                0.0,
                0.0000,
                0.0,
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit4"] = { -- Emote by Chocoholic Animations
        "chocoholic@single89",
        "single89_clip",
        "Selfie Sitting 4",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4169, -- Left Finger 11
            PropPlacement = {
                0.0100,
               -0.0330,
                0.000,
               -19.7197,
                 9.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesit5"] = { -- Emote by Chocoholic Animations
        "chocoholic@single83",
        "single83_clip",
        "Selfie Sitting 5",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64016,
            PropPlacement = {
                0.1080,
               -0.0160,
                0.0300,
               -171.4163,
               -117.2863,
                17.0148
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu"] = { -- Struggleville
        "anim@fuck_you_selfie",
        "fuck_you_selfie_clip",
        "Selfie Middle Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.1200,
                0.0220,
                -0.0210,
                98.6822,
                -4.9809,
                109.6216
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiethot"] = { -- Struggleville
        "anim@sitting_thot",
        "sitting_thot_clip",
        "Selfie Thot Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.1030,
                0.0440,
                -0.0270,
                -160.2802,
                -99.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor"] = { -- Custom Emote By Struggleville
        "anim@selfie_floor_cute",
        "floor_cute_clip",
        "Selfie Floor Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0930,
                0.0230,
                0.0260,
                -158.8271,
                -82.9040,
                -18.7472
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor2"] = { -- Custom Emote By Struggleville
        "anim@female_selfie_04",
        "f_selfie_04_clip",
        "Selfie Floor 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0170,
               -0.0100,
                0.0200,
              -27.3580,
               54.9374,
               -6.1611
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefloor3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single90",
        "single90_clip",
        "Selfie & Wine",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0800,
                0.0170,
                0.0810,
               -174.2748,
               -11.5083,
                29.4987
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 4186, -- Left Finger 22
            SecondPropPlacement = {
               -0.0100,
                0.0000,
                0.0200,
              -80.0000,
                0.0000,
              -20.0000
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["selfiesexy"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie001",
        "selfie001",
        "Selfie Sexy",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58870, -- Right Finger 40 Bone
            PropPlacement = {
                0.0150,
                0.0230,
                0.0700,
                0.0,
                0.0,
                170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy2"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie002",
        "selfie002",
        "Selfie Sexy 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy3"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie003",
        "selfie003",
        "Selfie Sexy 3 - Squat",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy4"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie004",
        "selfie004",
        "Selfie Sexy 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiesexy5"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie005",
        "selfie005",
        "Selfie Sexy 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie01",
        "freeselfie01",
        "Selfie Cute",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30 Bone
            PropPlacement = {
                0.0380,
                -0.0310,
                0.0590,
                0.0000,
                0.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute2"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie02",
        "freeselfie02",
        "Selfie Cute 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309, -- Left Wrist, worked better.
            PropPlacement = {
                0.0960,
                0.0160,
                0.0420,
                -155.3515,
                -84.4828,
                4.7551
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute3"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie03",
        "freeselfie03",
        "Selfie Cute 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26614, -- Left Finger 40, worked better.
            PropPlacement = {
                0.0310,
                -0.0430,
                0.0720,
                0.0000,
                3.9999,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute4"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@egirl_1foot_selfie",
        "1foot_selfie_clip",
        "Selfie Cute 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185, -- Left Finger 21
            PropPlacement = {
                0.0290,
               -0.0230,
                0.0190,
               -14.7860,
                67.8030,
                6.1827
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiecute5"] = { -- Custom Emote By Wolf's Square
        "eagle@girlphonepose21",
        "girl",
        "Selfie Cute 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4185,
            PropPlacement = {
                0.0210,
               -0.0150,
                0.0110,
               -45.8936,
                41.8372,
                -26.6415
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiebbum"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@female_beach_booty_selfie",
        "booty_selfie_clip",
        "Selfie Beach Bum",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0680,
               -0.0250,
                0.0340,
               -13.4299,
                47.2288,
               -14.9588
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ['selfiehb'] = { -- Custom prop by crowded1337
        'anim@female_selfie_cute',
        'selfie_cute_clip',
        'Selfie Hand Bag',
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.1700,
                0.0020,
                -0.1000,
                105.4525,
                -178.3549,
                69.1794
            },
            SecondProp = 'prop_phone_ing',-- Cell Phone Left Finger 21
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            SecondPropBone = 4185,
            SecondPropPlacement = {
                0.0200,
               -0.0250,
                0.0000,
               -8.5947,
                30.6141,
               -5.1311
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiehhands"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "heartselfiemirror@queensisters",
        "heartselfie_clip",
        "Selfie Heart Hands",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64096, -- Right Finger 11
            PropPlacement = {
                0.0390,
                0.0200,
                0.0330,
                90.0000,
                180.0000,
                13.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu2"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "fuckyouselfie@queensisters",
        "mirrorselfie_clip",
        "Selfie Middle Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 64097, -- Right Finger 12
            PropPlacement = {
               -0.0210,
                0.0300,
               -0.0030,
               -180.0000,
               -180.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiefu3"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "selfiekilye@queensisters",
        "kilye_clip",
        "Selfie Middle Finger Thot Pose",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0450,
                0.0050,
               -0.0150,
                92.0810,
                1.3049,
               -2.8863
            },
            SecondProp = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            SecondPropBone = 26613, -- Left Finger 30
            SecondPropPlacement = {
                0.0650,
                -0.0280,
                0.0440,
                10.6808,
                13.7526,
                2.6457
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200,
        },
        AdultAnimation = true
    },
    ["selfiemale"] = { -- Custom Emote By Wolf's Square
        "eagle@boypose04",
        "boy",
        "Selfie Male Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 60309,
            PropPlacement = {
                0.0730,
                0.0220,
                0.0460,
               -142.1374,
                -92.4142,
                33.1691
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiemeh"] = { -- Custom Animation By Chocoholic Animations
        "chocoholic@single81",
        "single81_clip",
        "Selfie Meh",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 58868,
            PropPlacement = {
                0.0450,
                0.0310,
                0.0280,
                165.3005,
               -174.8342,
                -8.4770
            },
            EmoteLoop = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["selfiewine"] = { -- Custom Emote By Wolf's Square
        "holding_wine@taking_selfie",
        "base",
        "Selfie Wine",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0420,
                -0.0700,
                -0.0440,
                -82.6657,
                 1.2898,
                -19.9222
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 4090,
            SecondPropPlacement = {
                0.0250,
                -0.0080,
                -0.0050,
                -140.5541,
                -24.7476,
                 13.7795
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["femalemirrorselfie"] = {
    "mirror_selfie_1@janina234",
    "mirror_selfie_1_clip",
    "Female Mirror Selfie",
    AnimationOptions = { -- Custom emote by Janina234
        Prop = "prop_phone_ing",
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4089,
        PropPlacement = {
            0.0890,
           -0.0350,
            0.0200,
           -161.7778308,
           -54.5014945,
           -12.0985177
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["femalemirrorselfie1"] = {
    "mirror_selfie_8@daj",
    "mirror_selfie_8_clip",
    "Female Mirror Selfie 1",
    AnimationOptions = { -- Custom emote by Dark
    Prop = "prop_phone_ing",
    PropTextureVariations = {
        {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
        {Name = "<font color=\"#1AA20E\">Green", Value = 1},
        {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
        {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
        {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
        {Name = "<font color=\"#a356fa\">Purple", Value = 5},
        {Name = "<font color=\"#FF0099\">Pink", Value = 6},
        {Name = "Black", Value = 7}
    },
    PropBone = 4153,
    PropPlacement = {
          0.0400,
          0.00000,
          0.0500,
         -37.4803963,
          33.2648588,
          18.6732448
    },
    EmoteLoop = true,
    EmoteMoving = false,
    PtfxAsset = "scr_tn_meet",
    PtfxName = "scr_tn_meet_phone_camera_flash",
    PtfxPlacement = {
        -0.015,
        0.0,
        0.041,
        0.0,
        0.0,
        0.0,
        1.0
    },
    PtfxInfo = Translate('camera'),
    PtfxWait = 200
        }
    },
    ["cameraphotography"] = { -- Custom emote by MrWitt
    "mrwitt@photographic_journey_f",
    "mrwitt",
    "Camera Photography",
    AnimationOptions = {
        Prop = 'prop_pap_camera_01',
        PropBone = 26613,
        PropPlacement = {
            0.0280,
            -0.1350,
            0.1120,
            -86.9428843,
            157.9882355,
            80.8053557
        },
        EmoteLoop = true,
        EmoteMoving = true,
        PtfxAsset = "scr_bike_business",
        PtfxName = "scr_bike_cfid_camera_flash",
        PtfxPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie"] = { -- Custom emote by Struggleville
    "anim@male_model_08",
    "m_model_08_clip",
    "Male Mirror Selfie",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0300,
            -0.0200,
            0.0200,
            -64.2080926,
            3.367247,
            0.0711684
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie1"] = { -- Custom emote by Struggleville
    "anim@male_selfie_08",
    "m_selfie_08_clip",
    "Male Mirror Selfie 1",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0100,
            -0.0400,
            0.0000,
            -32.8072134,
            11.7427793,
            32.5772863
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie2"] = { -- Custom emote by Struggleville
    "anim@male_selfie_06",
    "m_selfie_06_clip",
    "Male Mirror Selfie 2",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0200,
            -0.0200,
            0.0100,
            -69.7707963,
            3.10072,
            -8.4531301
        },
        EmoteLoop = true,
        EmoteMoving = false,
        ExitEmote = "getup",
        ExitEmoteType = "Exits",
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie4"] = { -- Custom emote by Struggleville
    "anim@male_model_03",
    "m_model_03_clip",
    "Male Mirror Selfie 4",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0100,
            -0.0600,
            -0.0100,
            -23.7215768,
            66.9464998,
            -62.7303262
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["malemirrorselfie3"] = { -- Custom emote by Struggleville
    "anim@male_selfie_09",
    "m_selfie_09_clip",
    "Male Mirror Selfie 3",
    AnimationOptions = {
        Prop = 'prop_phone_ing',
        PropTextureVariations = {
            {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
            {Name = "<font color=\"#1AA20E\">Green", Value = 1},
            {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
            {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
            {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
            {Name = "<font color=\"#a356fa\">Purple", Value = 5},
            {Name = "<font color=\"#FF0099\">Pink", Value = 6},
            {Name = "Black", Value = 7}
        },
        PropBone = 4169,
        PropPlacement = {
            0.0400,
            -0.0300,
            0.0000,
            -46.0563529,
            -0.6965831,
            -4.2803096
       },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_tn_meet",
        PtfxName = "scr_tn_meet_phone_camera_flash",
        PtfxPlacement = {
            -0.015,
            0.0,
            0.041,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Translate('camera'),
        PtfxWait = 200
        }
    },
    ["sittv"] = {
        "anim@heists@heist_safehouse_intro@variations@male@tv",
        "tv_part_one_loop",
        "Sit TV",
        AnimationOptions = {
            Prop = "v_res_tre_remote",
            PropBone = 57005,
            PropPlacement = {
                0.0990,
                0.0170,
                -0.0300,
                -64.760,
                -109.544,
                18.717
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf"] = { -- Emote by WhiskerValeMods
        "mouse@femalearmchair",
        "female_armchair_clip_01",
        "Sit Chair - Armchair",
        AnimationOptions = {
            Prop = "p_armchair_01_s",
            PropBone = 11816,
            PropPlacement = {
                0.5320,
                -0.3310,
                0.2000,
                -90.0000,
                -180.0000,
                -40.9999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf2"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_folded",
        "female_sitting_folded_clip",
        "Sit Chair - Arms Folded",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf3"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_forward",
        "female_sitting_forward_clip",
        "Sit Chair - Leaning Forward",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf4"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_smart_sitting",
        "female_smart_sitting_clip",
        "Sit Chair - Smart",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf5"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_smart_sitting_crossed",
        "female_smart_sitting_crossed_clip",
        "Sit Chair - Legs Crossed",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf6"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_sitting_laptop",
        "female_sitting_laptop_clip",
        "Sit Chair - Laptop",
        AnimationOptions = {
            Prop = 'ba_prop_club_laptop_dj_02',
            PropBone = 57005,
            PropPlacement = {
                0.0860,
                -0.1370,
                -0.1750,
                -79.9999,
                -90.0000,
                0.0000
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0400,
                -0.1900,
                0.0000,
                -180.0000,
                -180.0000,
                9.0999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf7"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Tablet",
        AnimationOptions = {
            Prop = 'hei_prop_dlc_tablet',
            PropBone = 28422,
            PropPlacement = {
                0.0870,
                0.1030,
                -0.1240,
                144.3540,
                157.8527,
                -4.6318
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf8"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Book",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 28422,
            PropPlacement = {
                0.1300,
                0.1100,
                -0.1200,
                120.3356,
                -15.9891,
                26.1497
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dig"] = {
        "random@burial",
        "a_burial",
        "Dig",
        AnimationOptions = {
            Prop = "prop_tool_shovel",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.24,
                0,
                0,
                0.0,
                0.0
            },
            SecondProp = 'prop_ld_shovel_dirt',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.24,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ['axe'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Axe',
        AnimationOptions = {
            Prop = 'prop_tool_fireaxe',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["axe2"] = {
        "melee@large_wpn@streamed_core",
        "ground_attack_on_spot",
        "Axe - Ground Impact",
        AnimationOptions = {
            Prop = "prop_tool_fireaxe",
            PropBone = 57005,
            PropPlacement = {
                0.0160,
               -0.3140,
               -0.0860,
              -97.1455,
              165.0749,
               13.9114,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ['axe3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Axe - Pickaxe',
        AnimationOptions = {
            Prop = 'prop_tool_pickaxe',
            PropBone = 57005,
            PropPlacement = {
                0.0400,
               -0.2550,
               -0.1380,
             -109.0238,
              163.6144,
               20.6091
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["axe4"] = {
        "melee@large_wpn@streamed_core",
        "ground_attack_on_spot",
        "Axe - Pickaxe Ground Impact",
        AnimationOptions = {
            Prop = "prop_tool_pickaxe",
            PropBone = 57005,
            PropPlacement = {
                0.08,
                -0.4,
                -0.10,
                80.0,
                -20.0,
                175.0,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["bongos"] = {
        "amb@world_human_musician@bongos@male@base",
        "base",
        "Bongo Drums",
        AnimationOptions = {
            Prop = "prop_bongos_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["medbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Bag",
        AnimationOptions = {
            Prop = "xm_prop_x17_bag_med_01a",
            PropBone = 57005,
            PropPlacement = {
                0.3900,
                -0.0600,
                -0.0600,
                -100.00,
                -180.00,
                -78.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["medbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Box",
        AnimationOptions = {
            Prop = "xm_prop_smug_crate_s_medical",
            PropBone = 28422,
            PropPlacement = {
                0.2500,
                0.0200,
               -0.0100,
               90.0000,
                0.0000,
              -81.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dufbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag",
        AnimationOptions = {
            Prop = "bkr_prop_duffel_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag",
        AnimationOptions = {
            Prop = "vw_prop_casino_shopping_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 2",
        AnimationOptions = {
            Prop = "prop_shopping_bags02",
            PropBone = 28422,
            PropPlacement = {
                0.05,
                0.02,
                0.00,
                178.80,
                91.19,
                9.97
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 3",
        AnimationOptions = {
            Prop = "prop_cs_shopping_bag",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['shopbag4'] = {
        'chocoholic@single54',
        'single54_clip',
        'Shopping Bag 4',
        AnimationOptions = {
            Prop = 'prop_carrier_bag_01',
            PropBone = 28422,
            PropPlacement = {
                0.2280,
                0.0070,
               -0.1230,
                1.2556,
               -53.8020,
               -34.4621
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 }
            },
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0910,
                0.0410,
               -0.0040,
               -129.2433,
               -18.1966,
               -41.2633
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["summon"] = {
        "anim@scripted@surv@ig3_plague_summon@male@",
        "summon_a",
        "Summon",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_zombiestaff_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["summon2"] = {
        "anim@scripted@surv@ig3_plague_summon@male@",
        "summon_b",
        "Summon2",
        AnimationOptions = {
            Prop = "m24_1_prop_m41_zombiestaff_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["handbag"] = { -- Custom prop by crowded1337
        "move_weapon@jerrycan@generic",
        "idle",
        "Hand Bag",
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.2000,
                0.0300,
                -0.0200,
                90.4294,
                -177.4267,
                83.0011
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["idcard"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 1",
        AnimationOptions = {
            Prop = "prop_franklin_dl",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardb"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 2 - FIB",
        AnimationOptions = {
            Prop = "prop_fib_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0210,
               -0.0400,
              -90.00,
             -180.00,
               78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardc"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 3",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardd"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 4",
        AnimationOptions = {
            Prop = "prop_trev_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcarde"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 5",
        AnimationOptions = {
            Prop = "prop_casey_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardf"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 6",
        AnimationOptions = {
            Prop = "prop_cs_r_business_card",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardg"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 7",
        AnimationOptions = {
            Prop = "p_ld_id_card_002",
            PropBone = 28422,
            PropPlacement = {
                0.0840,
                0.0200,
               -0.0260,
             -173.8514,
              -88.0171,
               63.0612
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardh"] = {
        "cop_badge_1@dad", --- Custom Animation by Darks Animations
        "cop_badge_1_clip",
        "ID Card 8 - Cop Badge",
        AnimationOptions = {
            Prop = "prop_cop_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0390,
               -0.0100,
               -0.0590,
             -103.1785,
             -176.6694,
               74.9000
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true,
        }
    },
    ["idcardi"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 9 - Drivers License",
        AnimationOptions = {
            Prop = "bkr_prop_fakeid_singledriverl",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0260,
               -0.0320,
               -10.8683,
              -177.8499,
                23.6377
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["phone"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Phone",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sms"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "SMS",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["sms2"] = {
        "cellphone@female",
        "cellphone_text_read_base",
        "SMS 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.0301,
                0.000,
                00.00,
                00.00
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["sms3"] = {
        "cellphone@female",
        "cellphone_email_read_base",
        "SMS 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0240,
                0.0300,
                18.99,
                -72.07,
                6.39
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["sms4"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "SMS 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0250,
                0.0400,
                19.17,
                -78.50,
                14.97
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["sms5"] = {
        "amb@code_human_wander_texting_fat@male@base",
        "static",
        "SMS 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0100,
                0.00,
                2.309,
                88.845,
                29.979
            },
            EmoteLoop = false,
            EmoteMoving = true,
            ExitEmote = "phoneaway",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["smssit"] = { --- Custom Emote Provided To RPEmotes By Mr. Witt
        "mrwitt@phone_time_on_floor",
        "mrwitt",
        "SMS Sit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 26611,
            PropPlacement = {
                 0.0560,
                -0.0270,
                 0.0170,
               -19.9298,
                -4.6998,
                 1.7081
            },
            EmoteLoop = true,
            EmoteMoving = false,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["tire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Tire",
        AnimationOptions = {
            Prop = "prop_wheel_tyre",
            PropBone = 60309,
            PropPlacement = {
                -0.05,
                0.16,
                0.32,
                -130.0,
                -55.0,
                150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["golfswing"] = {
        "rcmnigel1d",
        "swing_a_mark",
        "Golf Swing",
        AnimationOptions = {
            EmoteLoop = true,
            Prop = "prop_golf_wood_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["register"] = {
        "anim@heists@box_carry@",
        "idle",
        "Register",
        AnimationOptions = {
            Prop = "v_ret_gc_cashreg",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                0.2,
                0.2,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Weed Brick",
        AnimationOptions = {
            Prop = "prop_weed_block_01",
            PropBone = 60309,
            PropPlacement = {
                0.1,
                0.1,
                0.05,
                0.0,
                -90.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Brick BIG",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bigbag_01a",
            PropBone = 60309,
            PropPlacement = {
                0.158,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Small)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01c",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Medium)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Large)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_lrg_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbucket"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Bucket",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bucket_open_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.1000,
                -0.1800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lawnchair"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Lawnchair",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.2,
                -0.1,
                45.0,
                -5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair2"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Lawnchair 2",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.15,
                -0.1,
                45.0,
                5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair3"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Lawnchair 3",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.2,
                5.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["rose2"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 2 (Male)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1030,
                0.0620,
                -2.932,
                4.564,
                39.910
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["rose3"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 3 (Female)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1070,
                0.0720,
                0.00,
                0.00,
                2.99
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["cbbox"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box",
        AnimationOptions = {
            Prop = "v_ret_ml_beerben1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbla1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerjak1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerlog1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 5",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpis1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 6",
        AnimationOptions = {
            Prop = "prop_beer_box_01",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                -0.0600,
                -0.1200,
                -180.00,
                -180.00,
                1.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin",
        AnimationOptions = {
            Prop = "prop_bin_08open",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 2",
        AnimationOptions = {
            Prop = "prop_cs_bin_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 3",
        AnimationOptions = {
            Prop = "prop_cs_bin_03",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 4",
        AnimationOptions = {
            Prop = "prop_bin_08a",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 5",
        AnimationOptions = {
            Prop = "prop_bin_07d",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                -0.2200,
                -0.8600,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag - Rainbow',
        AnimationOptions = {
            Prop = 'prideflag1',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 2 - LGBTQ',
        AnimationOptions = {
            Prop = 'prideflag2',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 3 - Bisexual ',
        AnimationOptions = {
            Prop = 'prideflag3',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag4'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 4 - Lesbian ',
        AnimationOptions = {
            Prop = 'prideflag4',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag5'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 5 - Pansexual ',
        AnimationOptions = {
            Prop = 'prideflag5',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag6'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 6 - Transgender  ',
        AnimationOptions = {
            Prop = 'prideflag6',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag7'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 7 - Non Binary ',
        AnimationOptions = {
            Prop = 'prideflag7',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag8'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 8 - Asexual ',
        AnimationOptions = {
            Prop = 'prideflag8',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag9'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 9 - Straight Ally ',
        AnimationOptions = {
            Prop = 'prideflag9',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['old'] = {
        'missbigscore2aleadinout@bs_2a_2b_int',
        'lester_base_idle',
        'Old Man Walking Stick',
        AnimationOptions = {
            Prop = 'prop_cs_walking_stick',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0740,
                0.0410,
                0.0090,
             -127.9136,
              -10.6186,
                4.7536
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['old2'] = { -- Custom Animation By Darks Animations
        'zimmerframe_walk@dark',
        'zimmerframe_walk_clip',
        'Old Man Zimmerframe',
        AnimationOptions = {
            Prop = 'v_res_d_zimmerframe',
            PropBone = 28252,
            PropPlacement = {
                0.9500,
               -0.6640,
               -0.5470,
             -122.4053,
               85.0955,
               23.1787,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['lighter'] = {
        'ebrwny_pack000',
        'ebrwny_spark',
        'Lighter - Cigar',
        AnimationOptions = {
            Prop = 'lux_prop_lighter_luxe',
            PropBone = 26612,
            PropPlacement = {
                0.0300,
               -0.0360,
                0.0270,
             -168.0000,
             -180.0000,
                8.0000
           },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
       }
    },
    ['lighter2'] = {
        'ebrwny_pack000',
        'ebrwny_spark',
        'Lighter - Cigar Sit',
        AnimationOptions = {
            Prop = 'lux_prop_lighter_luxe',
            PropBone = 26612,
            PropPlacement = {
                0.0300,
               -0.0360,
                0.0270,
             -168.0000,
             -180.0000,
                8.0000
           },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
			ExitEmote = "getup",
			ExitEmoteType = "Exits",
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
       }
    },
    ["party_lighter"] = { -- Custom Prop & Emote By BzZz
        "samnick@lighter@wave",
        "waving_lighter",
        "Party lighter",
        AnimationOptions = {
            Prop = 'samnick_prop_lighter01',
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.01,
                0.02,
                -85.0,
                188.0,
                10.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan'] = {
        'weapons@misc@digi_scanner',
        'aim_med_loop',
        'Digiscan 1 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan2'] = {
        'weapons@misc@digi_scanner',
        'aim_low_loop',
        'Digiscan 2 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan3'] = {
        'weapons@misc@digi_scanner',
        'aim_high_loop',
        'Digiscan 3 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cop4"] = {
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop 4",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["copbeacon"] = { -- Added for compatibility
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop Beacon",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanphone"] = {
        "amb@world_human_leaning@male@wall@back@mobile@base",
        "base",
        "Leaning With Phone",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["hump2"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump (Bear)",
        AnimationOptions = {
            Prop = 'prop_mr_raspberry_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = false,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["drink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Drink",
        AnimationOptions =
        {
            Prop = "prop_ld_flow_bottle",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.008,
                0.03,
                240.0,
                -60.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["surfboard"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Surf Board",
        AnimationOptions =
        {
            Prop = "prop_surf_board_ldn_02",
            PropBone = 28252,
            PropPlacement = {
                0.1020,
                -0.1460,
                -0.1160,
                -85.5416,
                176.1446,
                -2.1500
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stealtv"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Steal TV",
        AnimationOptions =
        {
            Prop = "xs_prop_arena_screen_tv_01",
            PropBone = 28252,
            PropPlacement = {
                0.2600,
                0.1100,
                -0.1400,
                96.1620,
                168.9069,
                84.2402
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beachring"] = { -- Emote by Molly
        "beachanims@free",
        "beachanim_clip",
        "Beach Floatie Thingy",
        AnimationOptions = {

            Prop = "prop_beach_ring_01",
            PropBone = 0,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                -12.0,
                0.0,
                -2.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Briefcase",
        AnimationOptions = {
            Prop = "bkr_prop_biker_case_shut",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0100,
                0.0040,
                0.0,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 2",
        AnimationOptions = {
            Prop = "prop_cash_case_01",
            PropBone = 28422,
            PropPlacement = {
                -0.0050,
                -0.1870,
                -0.1400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 3",
        AnimationOptions = {
            Prop = "prop_cash_case_02",
            PropBone = 28422,
            PropPlacement = {
                0.0050,
                -0.1170,
                -0.1400,
                14.000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 4 - Diamonds",
        AnimationOptions = {
            Prop = "ch_prop_ch_security_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0900,
                -0.1800,
                14.4000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["airportbag"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Airport Bag",
        AnimationOptions = {
            Prop = "prop_suitcase_01c",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.2100,
                -0.4300,
                -11.8999,
                0.0,
                30.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["airportbag2"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
        "suitcase_phone@dark",
        "suitcase_phone_clip",
        "Airport Bag 2 - Phone",
        AnimationOptions = {
            Prop = 'prop_suitcase_03',
            PropBone = 60309,
            PropPlacement = {
                 0.4700,
                -0.0400,
                -0.3500,
              -120.0000,
              -180.0000,
               -79.9999
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.1040,
                0.0320,
               -0.0200,
             -108.6997,
             -150.5805,
               46.7080
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200
        }
    },
    ["airportbag3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single63",
        "single63_clip",
        "Airport Bag 3 - Pose",
        AnimationOptions = {
            Prop = "prop_suitcase_03",
            PropBone = 58869,
            PropPlacement = {
                0.2100,
                0.4100,
               -0.3600,
               56.9074,
               -6.1917,
              -24.3334
            },
            EmoteLoop = true,
        }
    },
    ["megaphone"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone",
        "megaphone_clip",
        "Megaphone",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["megaphone2"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone2",
        "megaphone_clip",
        "Megaphone 2",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["megaphone3"] = {
        "anim@rifle_megaphone",
        "rifle_holding_megaphone",
        "Megaphone 3",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 60309,
            PropPlacement = {
                0.0480,
                0.0190,
                0.0160,
              -94.8944,
               -2.3093,
              -10.9030
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["easter"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Easter Basket",
        AnimationOptions = {
            Prop = "bzzz_event_easter_basket_b",
            PropBone = 28422,
            PropPlacement = {
                0.0040,
                0.0400,
               -0.2420,
               19.9999,
                0.0,
              -10.0000
             },
            SecondProp = 'bzzz_event_easter_egg_d',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0790,
                0.0090,
                0.0190,
             -120.0000,
                0.0,
               0.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["easter2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Easter Bunny",
        AnimationOptions = {
            Prop = "bzzz_event_easter_bunny_a",
            PropBone = 60309,
            PropPlacement = {
               -0.0270,
               -0.0200,
                0.0100,
                62.9161,
                0.4622,
                10.8906
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_hold",
        "bskball_hold_clip",
        "Basketball Hold",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0400,
                -0.1200,
                0.0,
                0.0,
                40.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball2"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_photo_pose",
        "photo_pose_clip",
        "Basketball Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball3"] = { -- Custom Emote By Struggleville
        "anim@male_basketball_03",
        "m_basketball_03_clip",
        "Basketball Hold 2",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball4"] = { -- Custom Emote By SapphireMods
        "mx@pose2",
        "mx_clippose2",
        "Basketball Hold 3",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true
        }
    },
    ["bball5"] = {
        "cover@weapon@grenade",
        "hi_r_cook",
        "Basketball Drive Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["ftorch"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Fire Torch",
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop by BzZz Used With Permission
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.21,
                -0.08,
                -110.0,
                -1.0,
                -10.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['ftorch2'] = {
        'special_ped@griff@base',
        'base',
        'Fire Torch 2',
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop by BzZz Used With Permission
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0500,
                0.0000,
                0.0000,
                0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['candle'] = {
        'special_ped@griff@base',
        'base',
        'Candle',
        AnimationOptions = {
            Prop = "v_res_fa_candle04",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0100,
                0.0100,
                0.0000,
               10.0000,
                0.0000,
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "core",
            PtfxName = "ent_amb_candle_flame",
            PtfxNoProp = true,
            PtfxBone = 28422,
            PtfxPlacement = {
                0.0200,
                0.0100,
                0.0600,
                0.0000,
               10.0000,
                0.0000,
            },
            PtfxInfo = Translate('candle'),
            PtfxWait = 30000, -- ptfxwait is in ms, so 30000 = 30 seconds. This allows the effect to linger for 30 seconds.
            PtfxCanHold = true
        }
    },
    ["watchstripper2"] = {
        "amb@world_human_strip_watch_stand@male_c@base",
        "base",
        "Watch Stripper 2",
        AnimationOptions = {
            Prop = "prop_beer_am",
            PropBone = 60309,
            PropPlacement = {
                0.0880,
                -0.1360,
                0.1450,
                -102.9624,
                81.7098,
                -39.2734
            },
            EmoteLoop = true,
            EmoteMoving = true
        },
        AdultAnimation = true
    },
    ["candyapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Candy Apple",
        AnimationOptions = {
            Prop = "apple_1",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.15,
                0.0,
                -100.0,
                0.0,
                -12.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["gamer"] = { --- Custom Emote By MissSnowie
        "playing@with_controller",
        "base",
        "Gamer",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 18905,
            PropPlacement = {
                0.1450,
                0.0590,
                0.0850,
             -164.4546,
              -62.9570,
               17.5872
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["gamer2"] = { --- Custom Emote By Dark Animations exclusive to RPEmotes
        "lay_controller@dark",
        "lay_controller_clip",
        "Gamer Laying On Stomach",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 18905,
            PropPlacement = {
                0.1350,
                0.0360,
                0.0950,
             -180.0000,
              -72.9699,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["study"] = { --- Custom Emote By Dark Animations exclusive to RPEmotes
        "study_pc_finally_fixed@dark",
        "study_pc_finally_fixed_clip",
        "Study",
        AnimationOptions = {
            Prop = 'xm_prop_x17_laptop_lester_01',
            PropBone = 28422,
            PropPlacement = {
                0.1650,
                0.1010,
               -0.1470,
             -159.2533,
             -145.7418,
              -79.5760,
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["crackhead"] = {
        "special_ped@zombie@base",
        "base",
        "Crack Head",
        AnimationOptions = {
            Prop = 'prop_cs_bowie_knife', -- Knife
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                -0.1280,
                -0.0220,
                 0.0210,
                -150.0005,
                179.9989,
                -30.0105
            },
            SecondProp = 'ng_proc_cigpak01a',
            SecondPropBone = 26614,
            SecondPropPlacement = {
                0.010,
                -0.0190,
                0.0920,
                -82.4073,
                178.6009,
                29.9195
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["propose"] = { --- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose",
        AnimationOptions = {
            Prop = 'ultra_ringcase', --- Custom prop by ultrahacx
            PropBone = 28422,
            PropPlacement = {
                0.0980,
                0.0200,
               -0.0540,
               -138.6571,
                4.4141,
               -79.3552
            },
            EmoteLoop = true
        }
    },
    ["propose2"] = { --- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 2 - Valentines Day",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday', --- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            EmoteLoop = true
        }
    },
    ["propose3"] = { --- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 3",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday2', --- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            EmoteLoop = true
        }
    },
    ["holdfw"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Hold Firework",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
             PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 18905,
            PropPlacement = {
                0.1100,
                0.3200,
               -0.2400,
               -130.0688,
               -2.5736,
               -3.0631
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Translate('firework'),
            PtfxWait = 200
        }
    },
    ["chillteq"] = { --- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_003",
        "Chill Tequila",
        AnimationOptions = {
            Prop = 'prop_tequila',
            PropBone = 60309,
            PropPlacement = {
               0.0810,
              -0.0460,
               0.0430,
              -110.1784,
               2.9283,
              -12.5092
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["patrolf1"] = {
        "amb@world_human_security_shine_torch@male@base",
        "base",
        "Patrol - On Foot",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf2"] = {
        "amb@world_human_security_shine_torch@male@idle_b",
        "idle_e",
        "Patrol - On Foot 2",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf3"] = {
        "amb@world_human_security_shine_torch@male@idle_a",
        "idle_a",
        "Patrol - On Foot 3",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolf4"] = { -- Huge thanks to MadsLeander on GitHub
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol - On Foot 4 Over The Shoulder",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0,
               -0.00100,
                0.0,
                0.0,
                0.0,
                90.0
            },
            SecondProp = 'prop_cs_hand_radio',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0560,
                0.0470,
                0.0110,
              -43.82733,
              164.6747,
               -7.5569
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcar"] = {
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol Car - Front",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["pineapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Pineapple",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_pineapple_01a",
            PropBone = 18905,
            PropPlacement = {
                0.1,
                -0.11,
                0.05,
                -100.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["present"] = {
        "anim@heists@box_carry@",
        "idle",
        "Present",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_present_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.18,
                -0.16,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcarl"] = {
        "amb@incar@male@patrol@torch@idle_b",
        "idle_d",
        "Patrol Car - Left",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["patrolcarr"] = {
        "amb@incar@male@patrol@torch@idle_a",
        "idle_a",
        "Patrol Car - Right",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["papers"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Papers",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_papers_01a",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.0,
                0.04,
                -110.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["vlog"] = {
        "amb@world_human_mobile_film_shocking@male@base",
        "base",
        "Vlog",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 28422,
            PropPlacement = {
               -0.07,
               -0.01,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["vlog2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Vlog 2",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 18905,
            PropPlacement = {
               0.15,
               0.03,
               0.1,
             280.0,
             110.0,
             -11.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["skatesit"] = { -- Custom Emote By CMG Mods
        "skateboardposecmganimation",
        "skateboardposecmg_clip",
        "Skateboard - Sit",
        AnimationOptions = {
            Prop = 'rpemotesreborn_skateboard01',
            PropBone = 0,
            PropPlacement = {
               0.0,
               0.0400,
              -0.2300,
               0.0,
               0.0,
               0.0
            },
            EmoteLoop = true,
        }
    },
    ["skatesit2"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate2",
        "skate2_clip",
        "Skateboard - Sit 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 0,
            PropPlacement = {
                0.0,
               -0.0200,
               -0.2900,
               0.0,
               0.0,
               0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatekneel"] = { -- Custom Emote By DRX Animations
        "drx@skateboard3",
        "drx",
        "Skateboard Kneeling - Male",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 64064,
            PropPlacement = {
                0.2000,
               -0.0600,
                0.0,
              -61.0100,
                4.4024,
              -16.913
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
     },
    ["skatekneel2"] = { -- Custom Emote By DRX Animations
        "drx@skateboard3",
        "drx",
        "Skateboard Kneeling 2 - Female",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 64064,
            PropPlacement = {
                0.2000,
               -0.0600,
                0.0,
              -61.0100,
                4.4024,
              -16.913
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Skateboard - Hold Female",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'rpemotesreborn_skateboard01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
               -0.0050,
                0.0320,
                0.1640,
                44.6076,
               -112.2983,
                -86.1199
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold2"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Skateboard - Hold Female 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 28422,
            PropPlacement = {
               -0.1020,
                0.2240,
                0.0840,
                5.6655,
               175.3526,
               49.7964
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold3"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate4",
        "skate4_clip",
        "Skateboard - Hold Female 3",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 28422,
            PropPlacement = {
                0.2780,
               -0.0200,
               -0.0700,
               -180.0000,
                28.0000,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold4"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Skateboard - Hold Male",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'rpemotesreborn_skateboard02',
            SecondPropBone = 60309,
            SecondPropPlacement = {
               -0.0050,
                0.0320,
                0.1640,
                44.6076,
               -112.2983,
                -86.1199
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold5"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Skateboard - Hold Male 2",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 28422,
            PropPlacement = {
               -0.1020,
                0.2240,
                0.0840,
                5.6655,
               175.3526,
               49.7964
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold6"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@skate4",
        "skate4_clip",
        "Skateboard - Hold Male 3",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 28422,
            PropPlacement = {
                0.2780,
               -0.0200,
               -0.0700,
               -180.0000,
                28.0000,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["skatehold7"] = { --- Custom Emote By DRX Animations
        "drx@skateboard2",
        "drx",
        "Skateboard - Hold Male DRX",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard02",
            PropBone = 64080,
            PropPlacement = {
                0.2670,
               -0.0060,
                0.0560,
               -0.2472,
              -13.1506,
              -33.6511
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["skatehold8"] = { --- Custom Emote By DRX Animations
        "drx@skateboard2",
        "drx",
        "Skateboard - Hold Female DRX",
        AnimationOptions = {
            Prop = "rpemotesreborn_skateboard01",
            PropBone = 64080,
            PropPlacement = {
                0.2670,
               -0.0060,
                0.0560,
               -0.2472,
              -13.1506,
              -33.6511
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mafia"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single12",
        "single12_clip",
        "Mafia Boss - Gun Point",
        AnimationOptions = {
            Prop = "w_pi_revolver_b",
            PropBone = 28422,
            PropPlacement = {
                0.1150,
                0.0590,
               -0.0100,
               -69.7101,
                1.4074,
               -13.7554
            },
            SecondProp = 'prop_cigar_01',
            SecondPropBone = 17188,
            SecondPropPlacement = {
                0.0450,
                0.0130,
                0.0170,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_mp_cig",
            PtfxName = "ent_anim_cig_smoke",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.0615,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.5
            },
            PtfxInfo = Translate('smoke'),
            PtfxWait = 0.8,
            PtfxCanHold = true
        }
    },
    ["shield"] = {
        "beachanims@molly",
        "beachanim_surf_clip",
        "Shield",
        AnimationOptions = {
            Prop = "prop_riot_shield",
            PropBone = 18905,
            PropPlacement = {
                -0.04,
                -0.06,
                0.0,
                4.04,
                108.17,
                -17.48
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shield2"] = {
        "beachanims@molly",
        "beachanim_surf_clip",
        "Shield 2",
        AnimationOptions = {
            Prop = "prop_ballistic_shield",
            PropBone = 18905,
            PropPlacement = {
                0.01,
                -0.1,
                -0.07,
                1.83,
                105.38,
                -10.14
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cofpose"] = {
        "chocoholic@single23",
        "single23_clip",
        "Coffee & Burger Pose",
        AnimationOptions = {
            Prop = "prop_fib_coffee",
            PropBone = 28422,
            PropPlacement = {
                0.0720,
                0.0390,
               -0.0230,
             -125.8797,
             -168.4347,
               17.4518
            },
            SecondProp = 'prop_cs_burger_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0860,
                0.0030,
                0.0570,
              106.1459,
                8.0371,
              17.0945
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["holster6"] = {
        "anim@hlstr_7360_torch",
        "flsh_ps",
        "Holster 6 - Flash Light",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
                0.0550,
               -0.0200,
                0.0370,
              -29.6216,
               -8.6822,
                4.9809
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["holster8"] = {
        "anim@holster_walk_torch",
        "flash_ps",
        "Holster 8 Flashlight 2",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
                0.0600,
               -0.0100,
                0.0200,
              -20.0000,
               0.0000,
               3.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["heartprop"] = {
        "anim@heists@box_carry@",
        "idle",
        "Heart Prop",
        AnimationOptions = {
            Prop = 'brum_heart',
            PropBone = 28422,
            PropPlacement = {
               -0.5600,
                0.0240,
               -0.3690,
              -10.0000,
               0.0000,
              -0.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["popcorn"] = {
        "amb@code_human_wander_drinking@female@base",
        "static",
        "Popcorn",
        AnimationOptions = {
            Prop = 'xs_prop_trinket_cup_01a',
            PropBone = 28422,
            PropPlacement = {
               -0.0200,
               -0.0100,
               -0.0700,
             -179.3626,
              176.9331,
               11.9833
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sax"] = {
        "play_saxophone@dark",
        "play_saxophone_clip",
        "Saxophone 1",
        AnimationOptions = {
            Prop = 'p_ld_sax',
            PropBone = 57005,
            PropPlacement = {
               0.0700,
               0.0400,
               0.0300,
             -71.2242,
              29.3364,
               5.9514
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["poolcue"] = {
       "pool_pack_1@dark",
       "pool_pack_1_clip",
        "Play Pool",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.0900,
               0.2000,
               0.0800,
             -61.4338,
              -7.2194,
               3.1642
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["poolcue2"] = {
       "pool_pack_2@dark",
       "pool_pack_2_clip",
        "Play Pool 2 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.1200,
              -0.5200,
              -0.1200,
             -78.0400,
              -1.4526,
               1.8479
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue3"] = {
       "pool_pack_3@dark",
       "pool_pack_3_clip",
        "Play Pool 3 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.1200,
              -0.3500,
              -0.0200,
             -90.0000,
               0.0,
               0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue4"] = {
       "pool_pack_4@dark",
       "pool_pack_4_clip",
        "Play Pool 4 (Pose)",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 61163,
            PropPlacement = {
               0.2600,
              -0.1600,
              -0.3100,
             -31.8144,
              14.4214,
             -13.2854
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["poolcue5"] = {
       "pool_pack_5@dark",
       "pool_pack_5_clip",
        "Play Pool 5",
        AnimationOptions = {
            Prop = 'prop_pool_cue',
            PropBone = 57005,
            PropPlacement = {
               0.0700,
               0.5500,
               0.1000,
             -76.6157,
              -9.5838,
               2.9748,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["basket"] = {
       "missfbi4prepp1",
       "idle",
        "Basket",
        AnimationOptions = {
            Prop = 'bzzz_prop_shop_basket_a',
            PropBone = 57005,
            PropPlacement = {
               0.34,
              -0.25,
              -0.24,
             -146.0,
              115.0,
               19.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["basket2"] = {
       "missfbi4prepp1",
       "idle",
        "Basket 2",
        AnimationOptions = {
            Prop = 'bzzz_prop_shop_basket_b',
            PropBone = 57005,
            PropPlacement = {
               0.34,
              -0.25,
              -0.24,
             -146.0,
              115.0,
               19.0,
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["power"] = {
       "move_weapon@jerrycan@generic",
       "idle",
        "Power House",
        AnimationOptions = {
            Prop = 'prop_bzzz_elektro_powerhouse001',
            PropBone = 57005,
            PropPlacement = {
               0.11,
               0.06,
               0.0,
               98.0,
               12.0,
               -99.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["wlight"] = {
       "missfbi4prepp1",
       "idle",
        "Weed Light",
        AnimationOptions = {
            Prop = 'prop_bzzz_drugs_light001',
            PropBone = 57005,
            PropPlacement = {
               0.08,
               0.18,
              -0.02,
             -130.0,
                0.0,
              -90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["businessbag"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@dark_appearance_with_bag_male",
       "mrwitt",
        "Business Bag",
        AnimationOptions = {
            Prop = 'prop_med_bag_01b',
            PropBone = 60309,
            PropPlacement = {
               0.3050,
               0.0200,
               0.0790,
              43.8282,
             -54.1834,
             -88.4424
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
   },
   ["businessbag2"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@dark_appearance_with_bag_male",
       "mrwitt",
        "Business Bag - Pose",
        AnimationOptions = {
            Prop = 'prop_med_bag_01b',
            PropBone = 60309,
            PropPlacement = {
               0.3050,
               0.0200,
               0.0790,
              43.8282,
             -54.1834,
             -88.4424
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatcash"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
       "mrwitt@checked_shirt_squat_male",
       "mrwitt",
        "Squat Cash - Pose",
        AnimationOptions = {
            Prop = 'prop_cash_pile_02',
            PropBone = 28422,
            PropPlacement = {
               0.0880,
               0.0440,
               0.0030,
             149.6422,
            -164.7312,
              25.2203
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["squatmask"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask Red - Pose",
        AnimationOptions = {
            Prop = 'scarymask1',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatmask1"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask White - Pose",
        AnimationOptions = {
            Prop = 'scarymask2',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["squatmask2"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Squat Mask Black - Pose",
        AnimationOptions = {
            Prop = 'scarymask3',
            PropBone = 64065,
            PropPlacement = {
               0.0200,
               0.1700,
              -0.0210,
               0.0000,
               0.0000,
               0.0000,
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
   },
   ["selfiesquat"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
        "mrwitt@selfie02_male",
        "mrwitt",
        "Selfie Squat Male",
        AnimationOptions = {
            Prop = 'prop_cash_pile_02',
            PropBone = 26614,
            PropPlacement = {
                0.0300,
               -0.0300,
                0.0700,
              -90.0000,
             -180.0000,
                6.9999
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 64112,
            SecondPropPlacement = {
                0.0180,
                0.0380,
                0.0260,
              179.6474,
             -177.9691,
                9.9938
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Translate('camera'),
            PtfxWait = 200,
            EmoteLoop = true,
        }
   },
   ["femscaremask"] = { -- Animation by MrWitt
        "mrwitt@helloween4_f",
        "mrwitt",
        "Female Scary Mask Red - Pose",
        AnimationOptions = {
            Prop = 'scarymask1', -- Prop by Vedere
            PropBone = 64064,
            PropPlacement = {
                -0.0460,
                0.1170,
                0.0850,
                21.9542799,
                -81.9467213,
                9.0687101
            },
            EmoteLoop = true,
            EmoteMoving = true
            }
   },
   ["femscaremask2"] = { -- Animation by MrWitt
    "mrwitt@helloween4_f",
    "mrwitt",
    "Female Scary Mask Black - Pose",
        AnimationOptions = {
        Prop = 'scarymask2', -- Prop by Vedere
        PropBone = 64064,
        PropPlacement = {
        -0.0460,
        0.1170,
        0.0850,
        21.9542799,
        -81.9467213,
        9.0687101
        },
        EmoteLoop = true,
        EmoteMoving = true
        }
   },
   ["femscaremask3"] = { -- Animation by MrWitt
    "mrwitt@helloween4_f",
    "mrwitt",
    "Female Scary Mask White - Pose",
        AnimationOptions = {
        Prop = 'scarymask3', -- Prop by Vedere
        PropBone = 64064,
        PropPlacement = {
        -0.0460,
        0.1170,
        0.0850,
        21.9542799,
        -81.9467213,
        9.0687101
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
   },
   ["raiseglass"] = { -- Custom Animation by Chocoholic Animations
    "chocoholic@duo32",
    "duo32_clip",
    "Raise Your Glass",
        AnimationOptions = {
        Prop = 'p_champ_flute_s',
        PropBone = 64065,
        PropPlacement = {
        0.0140,
        0.0310,
       -0.0990,
        0.0000,
        0.0000,
        0.0000
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
    },
    ["raiseglass2"] = { -- Custom Animation by Chocoholic Animations
    "chocoholic@duo34",
    "duo34_clip",
    "Raise Your Glass 2",
        AnimationOptions = {
        Prop = 'p_champ_flute_s',
        PropBone = 64065,
        PropPlacement = {
        0.0260,
        0.0190,
       -0.1280,
      -14.9999,
        0.0000,
       -2.9999
        },
        EmoteLoop = true,
        EmoteMoving = true
        },
    },
    ["squatgunpose2"] = { --- Custom Emote By Darks Animations
        "ganggirls_pose2@darks37",
        "ganggirls_pose2_clip",
        "Squat Gun Pose 2 - Right",
        AnimationOptions = {
        Prop = 'w_pi_pistolsmg_m31',
        PropBone = 26614,
        PropPlacement = {
        0.0260,
       -0.0280,
        0.0980,
       -4.8222,
       -6.9836,
        23.6186
        },
        EmoteLoop = true,
        },
    },
    ["rap2"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_1@darksj",
       "mic_pose_1_clip",
        "Rap / Sing 2 - Microhpone",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rap3"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_2@darksj",
       "mic_pose_2_clip",
        "Rap / Sing 3 - Microhpone Rock Hand Sign",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rap4"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_3@darksj",
       "mic_pose_3_clip",
        "Rap / Sing 4 - Microhpone Bend Back",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["rap5"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_4@darksj",
       "mic_pose_4_clip",
        "Rap / Sing 5 - Microhpone Kneel",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
			ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["rap6"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_5_a@darksj",
       "mic_pose_5_a_clip",
        "Rap / Sing 6 - Microhpone",
        AnimationOptions = {
            Prop = 'sf_prop_sf_mic_01a',
            PropBone = 28422,
            PropPlacement = {
               0.0680,
               0.0190,
              -0.0220,
               0.0000,
               0.0000,
             170.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["bbat"] = { --- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "bat@sel",
       "bat_clip",
        "Baseball Bat Pose",
        AnimationOptions = {
            Prop = 'p_cs_bbbat_01',
            PropBone = 28422,
            PropPlacement = {
               0.0600,
               0.0700,
               0.0100,
             -73.8317,
               0.8479,
             -12.8826
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["stopsign"] = { --- Custom Prop By PNWParksFan
       "amb@world_human_janitor@male@base",
       "base",
        "Stop Sign",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_01',
            PropBone = 28422,
            PropPlacement = {
               0.0000,
               0.0000,
              -0.6800,
               0.0000,
               0.0000,
             -50.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign2"] = { --- Custom Prop By PNWParksFan
       "amb@world_human_janitor@male@base",
       "base",
        "Stop Sign 2 - Slow Down",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_01',
            PropBone = 28422,
            PropPlacement = {
               0.0000,
               0.0000,
              -0.6800,
               0.0000,
               0.0000,
             120.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign3"] = { --- Custom Prop By PNWParksFan
       "special_ped@griff@base",
       "base",
        "Stop Sign 3 - Stop",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_02',
            PropBone = 28422,
            PropPlacement = {
               0.0200,
               0.0200,
              -0.2600,
             169.9999,
            -180.0000,
              59.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stopsign4"] = { --- Custom Prop By PNWParksFan
       "special_ped@griff@base",
       "base",
        "Stop Sign 4 - Slow Down",
        AnimationOptions = {
            Prop = 'prop_flagger_sign_02',
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0200,
                -0.2600,
                10.0000,
                0.0000,
                -59.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["stonerbabepose"] = { -- Custom Emote provided by 41anims
        "stonerbabe@animation",
        "stonerbabe_clip",
        "Stoner Babe Pose",
        AnimationOptions = {
            Prop = 'p_cs_joint_01',
            PropBone = 57005,
            PropPlacement = {
                0.15,
                0.03,
                -0.04,
                -1.0,
                170.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["baddiegyat"] = { -- Custom Emote provided by 41anims
        "baddiegyat",
        "baddiegyat_clip",
        "Baddie Gyat Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7}
            },
            PropBone = 4169,
            PropPlacement = {
                0.0300,
                -0.0200,
                0.0200,
                -5.0,
                3.367247,
                0.0711684
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder1"] = {
        "dead",
        "dead_e",
        "Murder Axe",
        AnimationOptions = {
            Prop = "bzzz_murder_axe001",
            PropBone = 18905,
            PropPlacement = {
                -0.22,
                0.34,
                -0.3,
                -56.0,
                98.0,
                34.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                0.28,
                0.17,
                -0.12,
                -98.0,
                -51.0,
                237.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder2"] = {
        "dead",
        "dead_a",
        "Murder Pistol",
        AnimationOptions = {
            Prop = "w_pi_heavypistol",
            PropBone = 18905,
            PropPlacement = {
                0.27,
                0.35,
                0.05,
                -98.0,
                2.0,
                183.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                -0.8,
                0.41,
                0.0,
                -98.0,
                -7.0,
                237.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
    ["murder3"] = {
        "dead",
        "dead_b",
        "Murder Machete",
        AnimationOptions = {
            Prop = "bzzz_murder_machete001",
            PropBone = 18905,
            PropPlacement = {
                -0.22,
                0.18,
                -0.67,
                196.0,
                157.0,
                -35.0
            },
            SecondProp = 'p_bloodsplat_s',
            SecondPropBone = 57005,
            SecondPropPlacement = {
                -0.28,
                -0.15,
                0.00,
                266.2,
                182.3,
                -10.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
        }
    },
}
