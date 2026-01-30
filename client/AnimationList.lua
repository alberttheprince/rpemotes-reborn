-- ALL custom animations added to this repository were added with express permission from the creators and do not contain any paid content --
-- If an emote does not work, you may be on an older gamebuild --
-- To get a higher gamebuild, see ReadMe on github repository --

---@type AnimationListConfig
---@diagnostic disable-next-line: missing-fields
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
    ["High"] = {
        "mood_dancing_high_1",
        "High"
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
    ["Smug2"] = {
        "mood_dancing_medium_4",
        "Smug 2"
    },
    ["Speculative"] = {
        "mood_aiming_1"
    },
    ["Stressed"] = {
        "mood_stressed_1"
    },
    ["Suggestive"] = {
        "console_wasnt_fun_end_loop_floyd_facial"
    },
    ["Talking"] = {
        "mood_talking_1",
        "Talking"
    },
    ["Twitch"] = {
        "mood_skydive_1",
        "Twitch"
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
        "move_characters@orleans@core@",
        abusable = true,
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
    ["Brave3"] = {
        "move_m@brave@b",
        "Brave 3"
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
        "move_f@flee@a",
        abusable = true,
    },
    ["Flee2"] = {
        "move_f@flee@c",
        "Flee 2",
        abusable = true,
    },
    ["Flee3"] = {
        "move_m@flee@a",
        "Flee 3",
        abusable = true,
    },
    ["Flee4"] = {
        "move_m@flee@b",
        "Flee 4",
        abusable = true,
    },
    ["Flee5"] = {
        "move_m@flee@c",
        "Flee 5",
        abusable = true,
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
        "Hurry Male",
        abusable = true,
    },
    ["Hurry2"] = {
        "move_f@hurry@a",
        "Hurry Female",
        abusable = true,
    },
    ["Hurry3"] = {
        "move_f@hurry@b",
        "Hurry Female 2",
        abusable = true,
    },
    ["Hurry4"] = {
    "move_m@hurry@b",
    "Hurry 4"
    },
    ["Hurry5"] = {
    "move_m@hurry@c",
    "Hurry 5"
    },
    ["Injured"] = {
        "move_m@injured",
        "Injured"
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
    ["Tense"] = {
        "move_action@generic@core"
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
    ["Zombie"] = {
        "clipset@anim@ingame@move_m@zombie@core"
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["hug"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Hug",
        "hug2",
        AnimationOptions = {
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2000
        }
    },
    ["give2"] = {
        "mp_common",
        "givetake1_b",
        "Give 2",
        "give",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["stickupscared"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Stickup Scared",
        "stickup",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2000
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        "slapped",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
    ["carry"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "Carry",
        "carry2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["carry2"] = {
        "nm",
        "firemans_carry",
        "Be carried",
        "carry",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 40269,
            pos = vector3(-0.14, 0.15, 0.14),
            rot = vector3(0.0, -59.0, -4.5),
        }
    },
    ["carry3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry 2",
        "carry4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["carry4"] = {
        "amb@code_human_in_car_idles@generic@ps@base",
        "base",
        "Be carried 2",
        "carry3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 28252,
            pos = vector3(0.350, 0.15, -0.15),
            rot = vector3(-42.50, -22.50, 22.50),
        }
    },
    ["carrymecute"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_002",
        "Carry Me Cute",
        "carrymecute2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["carrymecute2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_002",
        "Carry Me Cute 2",
        "carrymecute",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0000, 0.0000, 0.0000),
            rot = vector3(0.0000, 0.0000, 0.0000),
        }
    },
    ["carrycmg"] = { -- Male Custom emote by CMG Mods
        "couplepose1cmg@animation",
        "couplepose1cmg_clip",
        "Carry Me Cute 3",
        "carrycmg2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["carrycmg2"] = { -- Female Custom emote by CMG Mods
        "couplepose2cmg@animation",
        "couplepose2cmg_clip",
        "Carry Me Cute 4",
        "carrycmg",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0100, 0.3440, -0.0100),
            rot = vector3(180.0000, 180.0000, -1.9999),
        }
    },
    ["bestfriends"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female01",
    "mrwitt",
    "Best Friends 1",
    "bestfriends2",
    AnimationOptions = {
        onFootFlag = AnimFlag.LOOP
        }
    },
    ["bestfriends2"] = { -- Female Custom emote by MrWitt
    "mrwitt@casual_composure_female02",
    "mrwitt",
    "Best Friends 2",
    "bestfriends",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(-0.2500, 0.1400, 0.0200),
            rot = vector3(0.0000, 0.0000, -0.0000),
        },
    },
    ["bff"] = {
        "anim@male_couple_03_b",
        "m_couple_03_b_clip",
        "BFF Pose",
        "bffb",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
    },
    ["bffb"] = {
        "anim@female_couple_03_b",
        "f_couple_03_b_clip",
        "BFF Pose 2",
        "bff",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0100, 0.1300, 0.0),
            rot = vector3(0.0, 0.0, 76.0000),
        },
    },
    ["sitwithmepose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_003",
        "Sit With Me",
        "sitwithmepose2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["sitwithmepose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_003",
        "Sit With Me Please?",
        "sitwithmepose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.3540, 0.5110, 0.8310),
            rot = vector3(0.0000, 0.0000, -2.8000),
        }
    },
    ["hugpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_001",
        "Hug Pose",
        "hugpose2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["hugpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_001",
        "Hug Pose With Me?",
        "hugpose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.1400, 0.2500, 0.0000),
            rot = vector3(0.0000, 0.0000, 0.0000),
        }
    },
    ["hugtip"] = { -- Male Custom emote by Little Spoon
        "littlespoon@friendship007",
        "friendship007",
        "Hug Pose Tippy Toes",
        "hugtip2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["hugtip2"] = { -- Female Custom emote by Little Spoon
        "littlespoon@friendship008",
        "friendship008",
        "Hug Pose Tippy Toes 2",
        "hugtip",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0100, 0.2700, 0.0),
            rot = vector3(-180.0000, -180.0000, 10.0000),
        }
    },
    ["cutepicpose"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_004",
        "Cute Pic Pose",
        "cutepicpose2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["cutepicpose2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_004",
        "Cute Pic Pose 2",
        "cutepicpose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.2700, 0.1200, 0.0000),
            rot = vector3(0.0000, 0.0000, 0.0000),
        }
    },
    ["couplehhands"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_005",
        "Couple Heart Hands",
        "couplehhands2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["couplehhands2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_005",
        "Couple Heart Hands 2",
        "couplehhands",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(-0.1230, 0.4740, 0.0000),
            rot = vector3(0.0000, 0.0000, 94.0000),
        }
    },
    ["couplewed1a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1a",
        "wedding1a",
        "Couple Wedding Pose 1A",
        "couplewed1b",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["couplewed1b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding1b",
        "wedding1b",
        "Couple Wedding Pose 1B",
        "couplewed1a",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0300, 1.0000, 0.0200),
            rot = vector3(0.0000, 0.0000, 130.0000),
        }
    },
    ["couplewed2a"] = { -- Male Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2b",
        "wedding2b",
        "Couple Wedding Pose 2A",
        "couplewed2b",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["couplewed2b"] = { -- Female Custom emote by EnchantedBrwny
        "EnchantedBrwny@wedding2a",
        "wedding2a",
        "Couple Wedding Pose 2B",
        "couplewed2a",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0100, 0.2500, 0.0),
            rot = vector3(0.0, 0.0, -88.9000),
        }
    },
    ["liftme"] = { -- Male Custom emote by -Moses-
        "couplepose1pack1anim2@animation",
        "couplepose1pack1anim2_clip",
        "Lift Me",
        "liftme2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["liftme2"] = { -- Female Custom emote by -Moses-
        "couplepose1pack1anim1@animation",
        "couplepose1pack1anim1_clip",
        "Lift Me 2",
        "liftme",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0020, 0.2870, 0.2500),
            rot = vector3(0.0000, 0.0000, 180.0000),
        }
    },
    ["liftme3"] = { -- Male Custom emote by -Moses-
        "couplepose2pack1anim2@animation",
        "couplepose2pack1anim2_clip",
        "Lift Me 3",
        "liftme4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["liftme4"] = { -- Female Custom emote by -Moses-
        "couplepose2pack1anim1@animation",
        "couplepose2pack1anim1_clip",
        "Lift Me 4",
        "liftme3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0100, 0.4800, 0.5300),
            rot = vector3(0.0000, 0.0000, 180.0000),
        }
    },
    ["liftme5"] = { -- Male Custom emote by -Moses-
        "couplepose3pack1anim2@animation",
        "couplepose3pack1anim2_clip",
        "Lift Me 5",
        "liftme6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["liftme6"] = { -- Female Custom emote by -Moses-
        "couplepose3pack1anim1@animation",
        "couplepose3pack1anim1_clip",
        "Lift Me 6",
        "liftme5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(-0.2120, -0.5400, -0.1000),
            rot = vector3(0.0000, 0.0000, 0.0000),
        }
    },
    ["csdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Small Dog",
        "csdog2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AnimalEmote = true
    },
    ["csdog2"] = { -- Emote by MissSnowie
        "misssnowie@little_doggy_lying_down",
        "base",
        "Small Dog Carried",
        "csdog",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(-0.040, 0.330, 0.280),
            rot = vector3(0.0, 0.0, 80.0),
        },
        AnimalEmote = true
    },
    ["csdog3"] = { -- Custom Emote by MissSnowie
        "hooman@hugging_little_doggy",
        "base",
        "Carry Small Dog 2",
        "csdog4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AnimalEmote = true
    },
    ["csdog4"] = { -- Custom Emote by MissSnowie
        "little_doggy@hugging_hooman",
        "base",
        "Small Dog Carried 2",
        "csdog3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 24818,
            pos = vector3(-0.95, 0.16, -0.15),
            rot = vector3(3.70, 75.00, -161.90),
        },
        AnimalEmote = true
    },
	["ccat"] = {
        "anim@scripted@freemode@ig1_pickup_cat@male@",
        "idle_player",
        "Carry Cat",
        "ccat",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,

        },
        AnimalEmote = true
    },
    ["ccat2"] = {
        "anim@scripted@freemode@ig1_pickup_cat@cat@",
        "idle_cat",
        "Be Carried - Cat",
        "ccat2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 28422,
            xPos = -0.09,
            yPos = -0.08,
            zPos = -0.08,
            xRot = -180.0,
            yRot = 0.0,
            zRot = 130.0,
        },
        AnimalEmote = true
    },
    ["cbdog"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Big Dog",
        "cbdog2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AnimalEmote = true
    },
    ["cbdog2"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Big Dog Carried",
        "cbdog",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(-0.100, 0.650, 0.430),
            rot = vector3(0.0, 0.0, -100.00),
        },
        AnimalEmote = true
    },
    ["pback"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_a",
        "mxclip_a",
        "Offer Piggy Back",
        "pback2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pback2"] = { -- Custom Animation By SapphireMods
        "mx@piggypack_b",
        "mxanim_b",
        "Be Piggy Backed",
        "pback",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0200, -0.4399, 0.4200),
            rot = vector3(0.0, 0.0, 0.0),
        }
    },
    ["cprs"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "Give CPR",
        "cprs2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 250
        }
    },
    ["cprs2"] = {
        "mini@cpr@char_b@cpr_str",
        "cpr_pumpchest",
        "Get CPR",
        "cprs",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(0.35, 0.8, 0.0),
            rot = vector3(0.0, 0.0, 270.0),
        }
    },
    ["cprs3"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_paramedic",
        "Give CPR 2",
        "cprs4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 250
        }
    },
    ["cprs4"] = {
        "missheistfbi3b_ig8_2",
        "cpr_loop_victim",
        "Get CPR 2",
        "cprs3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(0.35, 0.65, 0.0),
            rot = vector3(0.0, 0.0, 270.0),
        }
    },
    ["hostage"] = {
        "anim@gangops@hostage@",
        "perp_idle",
        "Take hostage",
        "hostage2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["hostage2"] = {
        "anim@gangops@hostage@",
        "victim_idle",
        "Be hostage",
        "hostage",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(-0.3, 0.1, 0.0),
            rot = vector3(0.0, 0.0, 0.0),
        }
    },
    ["search"] = { -- Custom Emote By ultrahacx
        "custom@police",
        "police",
        "Search",
        "search2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            -- EmoteDuration = 9700
        }
    },
    ["search2"] = {
        "missfam5_yoga",
        "a2_pose",
        "Be searched",
        "search",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            -- EmoteDuration = 9700,
            Attachto = true,
            pos = vector3(0.0, 0.5, 0.0),
            rot = vector3(0.0, 0.0, 0.0),
        }
    },
    ["followa"] = { -- Custom Ped In Front Emote By Dollie Mods
        "dollie_mods@follow_me_001",
        "follow_me_001",
        "Follow A (Front)",
        "followb",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            -- We can set this to true for lols, however it messes up if you walk through doors. Either player can press X to cancel the shared emotes
        }
    },
    ["followb"] = { -- Custom Ped At Back Emote by Dollie Mods
        "dollie_mods@follow_me_002",
        "follow_me_002",
        "Follow B (Back)",
        "followa",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            pos = vector3(0.078, 0.018, 0.00),
            rot = vector3(0.00, 0.00, 0.00),
        }
    },
    ["kiss"] = {
        "hs3_ext-20",
        "cs_lestercrest_3_dual-20",
        "Kiss",
        "kiss2",
        AnimationOptions = {
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
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            pos = vector3(-0.56, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0),

        }
    },
    ["kisscuteneck2"] = {
        "genesismods_kissme@kissfemale8",
        "kissfemale8",
        "Kiss Cute - Neck (Female)",
        "kisscuteneck",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutecheek"] = {
        "genesismods_kissme@kissmale9",
        "kissmale9",
        "Kiss Cute Cheek (Male)",
        "kisscutecheek2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            pos = vector3(0.35, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0),

        }
    },
    ["kisscutecheek2"] = {
        "genesismods_kissme@kissfemale9",
        "kissfemale9",
        "Kiss Cute Cheek (Female)",
        "kisscutecheek",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            --SyncOffsetFront = 0.05,

        }
    },
    ["kisscutefh"] = {
        "genesismods_kissme@kissmale10",
        "kissmale10",
        "Kiss Forehead (Male)",
        "kisscutefh2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            pos = vector3(0.38, 0.0, 0.0),
            rot = vector3(0.0, 0.0, 0.0),

        }
    },
    ["kisslips"] = {
        "chocoholic@couple13",
        "couple13_clip",
        "Kiss Cute Lips (Female)",
        "kisslips2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.1600, 0.2700, 0.0),
            rot = vector3(0.0, 0.0, 130.0),

        }
    },
    ["kisslips2"] = {
        "chocoholic@couple14",
        "couple14_clip",
        "Kiss Cute Lips (Male)",
        "kisslips",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,

        }
    },
    ["kisscutefh2"] = {
        "genesismods_kissme@kissfemale10",
        "kissfemale10",
        "Kiss Forehead (Female)",
        "kisscutefh",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["holdme"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_a",
        "mx_couple5_1_a_clip",
        "Hold Me",
        "holdmeb",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
    },
    ["holdmeb"] = { -- Custom Animation By SapphireMods
        "mx_couple5_1_b",
        "mx_couple5_1_b_clip",
        "Be Held",
        "holdme",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(-0.0200, 0.2400, -0.0100),
            rot = vector3(0.0, 0.0, 0.0),
        },
    },
    ["holdmec"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_a",
        "mx_couple5_2_a_clip",
        "Hold Me 2",
        "holdmed",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
    },
    ["holdmed"] = { -- Custom Animation By SapphireMods
        "mx_couple5_2_b",
        "mx_couple5_2_b_clip",
        "Be Held 2",
        "holdmec",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(-0.1200, 0.3600, -0.0100),
            rot = vector3(0.0, 0.0, -180.0),
        },
    },
    ["holdmee"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_a",
        "mx_couple5_3_a_clip",
        "Hold Me 3",
        "holdmef",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["holdmef"] = { -- Custom Animation By SapphireMods
        "mx_couple5_3_b",
        "mx_couple5_3_b_clip",
        "Be Held 3",
        "holdmee",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            Attachto = true,
            bone = 0,
            pos = vector3(0.0400, 0.2100, -0.0300),
            rot = vector3(0.0, 0.0, 0.0),
        },
    }
}

--- DANCING EMOTES, SOME WITH PROPS ---

RP.Dances = {
    ["dance"] = {
        "anim@amb@nightclub@dancers@podium_dancers@",
        "hi_dance_facedj_17_v2_male^5",
        "Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_down",
        "Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "high_center",
        "Dance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_up",
        "Dance 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance5"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_a@",
        "med_center",
        "Dance 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance6"] = {
        "misschinese2_crystalmazemcs1_cs",
        "dance_loop_tao",
        "Dance 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance7"] = {
        "misschinese2_crystalmazemcs1_ig",
        "dance_loop_tao",
        "Dance 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance8"] = {
        "missfbi3_sniping",
        "dance_m_default",
        "Dance 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dance9"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "med_center_up",
        "Dance 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef"] = {
        "anim@amb@nightclub@dancers@solomun_entourage@",
        "mi_dance_facedj_17_v1_female^1",
        "Dance F",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center",
        "Dance F2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance F3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef4"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^1",
        "Dance F4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef5"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^3",
        "Dance F5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancef6"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance F6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclub"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m03",
        "Dance Club",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubb"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m05",
        "Dance Club 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubc"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m02",
        "Dance Club 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubd"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_b_f01",
        "Dance Club 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclube"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_a_f02",
        "Dance Club 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubf"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_b_m03",
        "Dance Club 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubg"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_d_f01",
        "Dance Club 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubh"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_17_v2_male^4",
        "Dance Club 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubi"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "mi_dance_prop_13_v1_male^3",
        "Dance Club 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubj"] = {
        "anim@amb@nightclub_island@dancers@crowddance_groups@groupd@",
        "mi_dance_crowd_13_v2_male^1",
        "Dance Club 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubk"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_15_v2_male^4",
        "Dance Club 11",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubl"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Dance Club 12",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubm"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_15_v2_male^5",
        "Dance Club 13",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubn"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_17_male^5",
        "Dance Club 14",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubo"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_center",
        "Dance Club 15",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubp"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_left_down",
        "Dance Club 16",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceclubq"] = {
        "fix_stu_ext-25",
        "a_f_y_studioparty_01_dual-25",
        "Dance Club 17",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["danceslow2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center",
        "Dance Slow 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceslow3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center_down",
        "Dance Slow 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceslow4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center",
        "Dance Slow 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceupper"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Dance Upper",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["danceupper2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center_up",
        "Dance Upper 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["danceshy"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "low_center",
        "Dance Shy",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceshy2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center_down",
        "Dance Shy 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceshy3"] = {
        "anim@amb@nightclub@mini@drinking@bar@player_bartender@idle_a",
        "idle_a",
        "Dance Shy 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceslow"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "low_center",
        "Dance Slow",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly1"] = {
        "rcmnigel1bnmt_1b",
        "dance_loop_tyler",
        "Dance Silly 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly"] = {
        "special_ped@mountain_dancer@monologue_3@monologue_3a",
        "mnt_dnc_buttwag",
        "Dance Silly",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly2"] = {
        "move_clown@p_m_zero_idles@",
        "fidget_short_dance",
        "Dance Silly 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly3"] = {
        "move_clown@p_m_two_idles@",
        "fidget_short_dance",
        "Dance Silly 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly4"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_11_buttwiggle_b_laz",
        "Dance Silly 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly5"] = {
        "timetable@tracy@ig_5@idle_a",
        "idle_a",
        "Dance Silly 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly6"] = {
        "timetable@tracy@ig_8@idle_b",
        "idle_d",
        "Dance Silly 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly7"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "med_center",
        "Dance Silly 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly8"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Dance Silly 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly9"] = {
        "anim@mp_player_intcelebrationfemale@the_woogie",
        "the_woogie",
        "Dance Silly 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly10"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_17_spiderman_laz",
        "Dance Silly 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly11"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_mi_11_pointthrust_laz",
        "Dance Silly 11",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancesilly12"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_17_smackthat_laz",
        "Dance Silly 12",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["danceold"] = {
        "anim@mp_player_intupperuncle_disco",
        "idle_a",
        "Dance Old",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            --			onFootFlag = AnimFlag.MOVING,-- Removing the comment will allow for you to mix and match dance emotes, ie /e danceold and /e dance to control the bottom half of the body.
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
                20.0,
                0.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0,
                0.0
            },
            onFootFlag = AnimFlag.MOVING,
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
                20.0,
                0.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
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
                20.0,
                0.0
            },
            SecondProp = 'ba_prop_battle_glowstick_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0700,
                0.0900,
                0.0,
                -120.0,
                -20.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_1",
        "Wave Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave02"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_2",
        "Wave Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave03"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_3",
        "Wave Dance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave04"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "wave_dance_4",
        "Wave Dance 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave05"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "tutankhamun_dance_1",
        "Wave Dance 5 - Tutankhamen",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave06"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "tutankhamun_dance_2",
        "Wave Dance 6 - Tutankhamen 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave07"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "snake_dance_1",
        "Wave Dance 7 - Snake Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave08"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "slide_dance",
        "Wave Dance 8 - Slide Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave09"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "slide_dance_2",
        "Wave Dance 9 - Slide Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave10"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "robot_dance",
        "Wave Dance 10 - Robot Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave11"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "locking_dance",
        "Wave Dance 11 - Locking Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancewave12"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "headspin",
        "Wave Dance 12 - Headspin",
    },
    ["dancewave13"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "flaire_dance",
        "Wave Dance 13 - Flaire Dance",
    },
    ["dancewave14"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "crowd_girl_dance",
        "Wave Dance 14 - Female Crowd Dance",
    },
    ["dancewave15"] = { -- Custom Emote By BoringNeptune
        "dancing_wave_part_one@anim",
        "uprock_dance_1",
        "Wave Dance 15 - Rock Up Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zompopdance"] = { -- Custom Emote By BoringNeptune
        "zompop@danceanim",
        "zompop_clip",
        "Dance - Zombie",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dj"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_dance_cntr_open_dix",
        "DJ",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dj2"] = {
        "anim@amb@nightclub@djs@solomun@",
        "sol_idle_ctr_mid_a_sol",
        "DJ 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj3"] = {
        "anim@amb@nightclub@djs@solomun@",
        "sol_dance_l_sol",
        "DJ 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj4"] = {
        "anim@amb@nightclub@djs@black_madonna@",
        "dance_b_idle_a_blamadon",
        "DJ 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj1"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_end_dix",
        "DJ 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj5"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_a_dix",
        "DJ 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj6"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_b_dix",
        "DJ 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj7"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_g_dix",
        "DJ 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj8"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_idle_cntr_gb_dix",
        "DJ 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj9"] = {
        "anim@amb@nightclub@djs@dixon@",
        "dixn_sync_cntr_j_dix",
        "DJ 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj10"] = {
        "mini@strip_club@idles@dj@base",
        "base",
        "DJ 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj11"] = {
        "mini@strip_club@idles@dj@idle_04",
        "idle_04",
        "DJ 11",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dj12"] = {
        "mini@strip_club@idles@dj@idle_02",
        "idle_02",
        "DJ 12",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["twerk"] = {
        "switch@trevor@mocks_lapdance",
        "001443_01_trvs_28_idle_stripper",
        "Twerk",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdance3"] = {
        "mini@strip_club@private_dance@part1",
        "priv_dance_p1",
        "Lapdance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdance4"] = {
        "mini@strip_club@private_dance@part2",
        "priv_dance_p2",
        "Lapdance 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdance5"] = {
        "mini@strip_club@private_dance@part3",
        "priv_dance_p3",
        "Lapdance 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdance6"] = {
        "oddjobs@assassinate@multi@yachttarget@lapdance",
        "yacht_ld_f",
        "Lapdance 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdancewith"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p3",
        "ld_2g_p3_s2",
        "Lapdance With",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdancewith2"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p2",
        "ld_2g_p2_s2",
        "Lapdance With2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapdancewith3"] = {
        "mini@strip_club@lap_dance_2g@ld_2g_p1",
        "ld_2g_p1_s2",
        "Lapdance With3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapchair"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p1",
        "ld_girl_a_song_a_p1_f",
        "Lap Chair",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapchair2"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",
        "ld_girl_a_song_a_p2_f",
        "Lap Chair2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lapchair3"] = {
        "mini@strip_club@lap_dance@ld_girl_a_song_a_p3",
        "ld_girl_a_song_a_p3_f",
        "Lap Chair3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["salsa"] = {
        "anim@mp_player_intuppersalsa_roll",
        "idle_a",
        "Salso Roll",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancecrankdat"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_right_up",
        "Dance Crank Dat",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancecrankdat2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_right_down",
        "Dance Crank Dat 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancemonkey"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "high_center",
        "Monkey Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancemonkey2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "high_center_down",
        "Monkey Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancemonkey3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
        "med_center_down",
        "Monkey Dance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["boxdance"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@",
        "med_right_down",
        "Boxing Dance Solo",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancehiphop"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_d@",
        "ped_a_dance_idle",
        "Hip Hop Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancehiphop2"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_b@",
        "ped_a_dance_idle",
        "Hip Hop Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancehiphop3"] = {
        "anim@amb@nightclub@mini@dance@dance_paired@dance_a@",
        "ped_a_dance_idle",
        "Hip Hop Dance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dancedrill"] = {
        "sdrill@animation",
        "sdrill_clip",
        "Drill Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["dancepride"] = {
        "anim@amb@nightclub@lazlow@hi_railing@",
        "ambclub_09_mi_hi_bellydancer_laz",
        "Dance Pride A",
        AnimationOptions = {
            Prop = 'lilprideflag1', -- Rainbow
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["technodance"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_left_up",
        "Techno Dance",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["technodance2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_center_up",
        "Techno Dance 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["technodance3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_left",
        "Techno Dance 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["technodance4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_right_up",
        "Techno Dance 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogbark2"] = { -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work
        "creatures@retriever@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (big dog - retriever)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogindicateahead"] = {
        "creatures@rottweiler@indication@",
        "indicate_ahead",
        "Indicate Ahead (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogindicatehigh"] = {
        "creatures@rottweiler@indication@",
        "indicate_high",
        "Indicate High (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogindicatelow"] = {
        "creatures@rottweiler@indication@",
        "indicate_low",
        "Indicate Low (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogbeg"] = {
        "creatures@rottweiler@tricks@",
        "beg_loop",
        "Beg (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogbeg2"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop",
        "Beg 2 (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogeat"] = { -- Money Front Required
        "anim@scripted@tycoon@bt1@ig6_dog_eat@dog@",
        "loop_dog",
        "Beg 2 (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdoglayright"] = {
        "creatures@rottweiler@move",
        "dead_right",
        "Lay Right (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdoglayleft"] = {
        "creatures@rottweiler@move",
        "dead_left",
        "Lay Left (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogexcited"] = { -- Retrievers use different anims/skeletons from Rottweilers, so we need to use them specifically for retriever-based peds to work
        "creatures@retriever@amb@world_dog_barking@idle_a",
        "idle_c",
        "Excited (big dog - retriever)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["bdogsitcar"] = {
        "creatures@rottweiler@incar@",
        "sit",
        "Sit in car (big dog)",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            FullBody = true
        }
    },
    ["bdogfhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_ladydog",
        "Female Hump (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogmhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_chop",
        "Male Hump (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
        AdultAnimation = true,
        AnimalEmote = true
    },
    ["bdogshit"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "Shit (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogupk",
        }
    },
    ["bdogsit"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
        }
    },
    ["bdogpee"] = {
        "creatures@rottweiler@move",
        "pee_left_idle",
        "Pee (big dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "bdogup",
        }
    },
    ["bdogfw"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Firework - Big Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },

    ---- ANIMAL EMOTES ----
    ----   SMALL DOG   ----

    ["sdogbark"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["sdogitch"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
        }
    },
    ["sdoglay"] = {
        "creatures@pug@move",
        "dead_left",
        "Lay Down (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
        }
    },
    ["sdogsit"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sit (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
        }
    },
    ["sdogld"] = {
        "misssnowie@little_doggy_lying_down",
        "base",
        "Lay Down (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
        }
    },
    ["sdogshake"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_c",
        "Shake (small dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "sdogup",
        }
    },
    ["sdogpee"] = {
        "creatures@pug@move",
        "nill",
        "Pee (Small Dog)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ---- ANIMAL EMOTES ----
    ----     CATS      ----

    ["catsleep"] = {
        "amb@lo_res_idles@",
        "creatures_world_cat_ground_sleep_lo_res_base",
        "Sleep (Cat)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "catexit",
        }
    },
    ["catsleep2"] = {
        "creatures@cat@amb@world_cat_sleeping_ground@base",
        "base",
        "Sleep 2 (Cat)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "catexit",
        }
    },
    ["catlayobserve"] = {
        "creatures@cat@amb@world_cat_sleeping_ledge@idle_a",
        "idle_a",
        "Lay and Watch (Cat)",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["catlaywatch"] = {
        "amb@lo_res_idles@",
        "creatures_world_cat_ledge_sleep_lo_res_base",
        "Lay and Watch 2 (Cat)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["catstretch"] = {
        "creatures@cat@amb@world_cat_sleeping_ledge@exit",
        "exit_r",
        "Stretch (Cat)",
        AnimationOptions = {
            EmoteDuration = 800,
            EmoteLoop = false
        }
    },
    ["catpanic"] = {
        "creatures@cat@amb@world_cat_sleeping_ground@exit",
        "exit_panic",
        "Panic (Cat)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["catplaydead"] = {
        "creatures@cat@move",
        "dead_left",
        "Play Dead (Cat)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "catexit",
        }
    },
    ["catplaydead2"] = {
        "creatures@cat@move",
        "dying",
        "Play Dead 2 (Cat)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "catexit",
        }
    },
    ["catpensive"] = {
        "creatures@cat@move",
        "idle_dwn",
        "Pensive (Cat)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["catshuffleright"] = {
        "creatures@cat@step",
        "step_rgt",
        "Shuffle Right (Cat)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["catshuffleleft"] = {
        "creatures@cat@step",
        "step_lft",
        "Shuffle Left (Cat)",
        AnimationOptions = {
            EmoteLoop = true
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["breakfreefont"] = {
        "mp_arresting",
        "a_uncuff",
        "Break Free Front",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["breakfreeback"] = {
        "mp_arresting",
        "b_uncuff",
        "Break Free Back",
        AnimationOptions = {
            EmoteDuration = 6099,
            StartDelay = 450,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["shakeitoffhuman"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off The Rain",
        AnimationOptions = {
            EmoteDuration = 2899,
            StartDelay = 850,
            onFootFlag = AnimFlag.MOVING
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
    },
    ["catexit"] = {
        "creatures@cat@amb@world_cat_sleeping_ground@exit",
        "exit",
        "Cat Get Up",
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
        ScenarioType.SCENARIO,
        "PROP_HUMAN_ATM",
        "ATM"
    },
    ["bbq"] = {
        ScenarioType.MALE,
        "PROP_HUMAN_BBQ",
        "BBQ"
    },
    ["bumbin"] = {
        ScenarioType.SCENARIO,
        "PROP_HUMAN_BUM_BIN",
        "Bum Bin"
    },
    ["cheer"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_CHEERING",
        "Cheer"
    },
    ["chinup"] = {
        ScenarioType.SCENARIO,
        "PROP_HUMAN_MUSCLE_CHIN_UPS",
        "Chinup"
    },
    ["clipboard2"] = {
        ScenarioType.MALE,
        "WORLD_HUMAN_CLIPBOARD",
        "Clipboard 2"
    },
    ["cop"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_COP_IDLES",
        "Cop"
    },
    ["drill"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_CONST_DRILL",
        "Construction Drilling"
    },
    ["filmshocking"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Film Shocking"
    },
    ["flex"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_MUSCLE_FLEX",
        "Flex"
    },
     ["guard"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_GUARD_STAND",
        "Guard"
    },
    ["garden"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_GARDENER_PLANT",
        "Gardening"
    },
    ["hammer"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_HAMMERING",
        "Hammer"
    },
    ["hangout"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_HANG_OUT_STREET",
        "Hangout"
    },
    ["impatient"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_STAND_IMPATIENT",
        "Impatient"
    },
    ["janitor"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_JANITOR",
        "Janitor"
    },
    ["jog"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_JOG_STANDING",
        "Jog"
    },
    ["kneel"] = {
        ScenarioType.SCENARIO,
        "CODE_HUMAN_MEDIC_KNEEL",
        "Kneel"
    },
    ["lean"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_LEANING",
        "Lean"
    },
    ["leanbar"] = {
        ScenarioType.SCENARIO,
        "PROP_HUMAN_BUM_SHOPPING_CART",
        "Lean Bar"
    },
    ["lookout"] = {
        ScenarioType.SCENARIO,
        "CODE_HUMAN_CROSS_ROAD_WAIT",
        "Lookout"
    },
    ["maid"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_MAID_CLEAN",
        "Maid"
    },
    ["medic"] = {
        ScenarioType.SCENARIO,
        "CODE_HUMAN_MEDIC_TEND_TO_DEAD",
        "Medic"
    },
    ["musician"] = {
        ScenarioType.MALE,
        "WORLD_HUMAN_MUSICIAN",
        "Musician"
    },
    -- Ambient Music Doesn't Seem To Work For Female, Hence It's Male Only
    ["notepad2"] = {
        ScenarioType.SCENARIO,
        "CODE_HUMAN_MEDIC_TIME_OF_DEATH",
        "Notepad 2"
    },
    ["parkingmeter"] = {
        ScenarioType.SCENARIO,
        "PROP_HUMAN_PARKING_METER",
        "Parking Meter"
    },
    ["party"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_PARTYING",
        "Party"
    },
    ["texting"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_STAND_MOBILE",
        "Texting"
    },
    ["prosthigh"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
        "Prostitue High"
    },
    ["prostlow"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
        "Prostitue Low"
    },
    ["puddle"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_BUM_WASH",
        "Puddle"
    },
    ["record"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Record"
    },
    ["smoke"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_SMOKING",
        "Smoke"
    },
    ["smokeweed"] = {
        ScenarioType.MALE,
        "WORLD_HUMAN_DRUG_DEALER",
        "Smoke Weed (Male)"
    },
    -- Female
    ["smokeweed2"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_SMOKING_POT",
        "Smoke Weed (Female)"
    },
    -- Female
    ["statue"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_HUMAN_STATUE",
        "Statue"
    },
    ["weld"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_WELDING",
        "Weld"
    },
    ["windowshop"] = {
        ScenarioType.SCENARIO,
        "WORLD_HUMAN_WINDOW_SHOP_BROWSE",
        "Window Shop"
    },
    ["yoga"] = {
        ScenarioType.SCENARIO,
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dispenser"] = {
        "mini@sprunk",
        "plyr_buy_drink_pt1",
        "Dispenser",
        AnimationOptions =
        {
        }
    },
    ["cuffedfront"] = {
        "anim@move_m@prisoner_cuffed",
        "idle",
        "Handcuffed - Front",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "breakfreefont",
        }
    },
    ["cuffedback"] = {
        "mp_arresting",
        "idle",
        "Handcuffed - Back",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "breakfreeback",
        }
    },
    ["dazzle1"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose1_clip",
        "Dazzle Me Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle2"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose2_clip",
        "Dazzle Me Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle3"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose3_clip",
        "Dazzle Me Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle4"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose4_clip",
        "Dazzle Me Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle5"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose5_clip",
        "Dazzle Me Pose 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle6"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose6_clip",
        "Dazzle Me Pose 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["dazzle7"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@dazzleme",
        "pose7_clip",
        "Dazzle Me Pose 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["dead2"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "enter",
        "Play Dead Act",
        AnimationOptions = {
        }
    },
    ["femalestandcute"] = {
        "stand_cute_6@dark",
        "stand_cute_6_clip",
        "Female Stand Cute Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalestandcute1"] = {
        "stand_fem_1@darksj",
        "stand_fem_1_clip",
        "Female Stand Cute Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalestandcute2"] = {
        "feet_stand_w@darksj",
        "feet_stand_w_clip",
        "Female Stand Cute Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalestandcute3"] = {
        "anim@female_model_14",
        "f_model_14_clip",
        "Female Stand Cute Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalestandcutefinger"] = {
        "anim@female_model_15",
        "f_model_15_clip",
        "Female Stand Cute Pose Finger",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalestandcute4"] = {
        "anim@female_model_17",
        "f_model_17_clip",
        "Female Stand Cute Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malestandpose"] = {
        "anim@male_model_11",
        "m_model_11_clip",
        "Male Stand Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femalesitcute"] = {
        "sit_cute_1@dark",
        "sit_cute_1_clip",
        "Female Sit Cute",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["femalesitcute1"] = {
        "mrwitt@chin_support_on_floor",
        "mrwitt",
        "Female Sit Cute 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["femalesitcute2"] = {
        "beach_1@janina234",
        "beach_1_clip",
        "Female Sit Cute 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["femaleonknees"] = {
        "beach_4@janina234",
        "beach_4_clip",
        "Female On Knees Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "standup",
        }
    },
    ["femaleonknees1"] = {
        "on_the_knees@darksj",
        "on_the_knees_clip",
        "Female On Knees Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "standup",
        }
    },
    ["femaleonknees2"] = {
        "anim@female_model_21",
        "f_model_21_clip",
        "Female On Knees Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["fashionpose1"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "chic",
        "Fashion Pose Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose2"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "deathdrop",
        "Fashion Pose Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "standup",
        }
    },
	["fashionpose3"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "magica",
        "Fashion Pose Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose4"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose5",
        "Fashion Pose Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose5"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose8",
        "Fashion Pose Pose 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose6"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose20",
        "Fashion Pose Pose 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose7"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "pose28",
        "Fashion Pose Pose 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose8"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "runoutofposes",
        "Fashion Pose Pose 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["fashionpose9"] = { -- Custom Emote Provided To RpEmotes By Prue颜
        "lunyxco@dresstoimpress",
        "split",
        "Fashion Pose Pose 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "standup",
        }
    },
    ["beast"] = {
        "anim@mp_fm_event@intro",
        "beast_transform",
        "Beast",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 5000
        }
    },
    ["chill"] = {
        "switch@trevor@scares_tramp",
        "trev_scares_tramp_idle_tramp",
        "Chill",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 200,
            ExitEmote = "getup",
        }
    },
    ["cloudgaze"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_girl",
        "Cloudgaze",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["cloudgaze2"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_guy",
        "Cloudgaze 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["crouchreach"] = {
        "anim@veh@van@mule5@rds",
        "lean_back_idle",
        "Crouch & Reach",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
        }
    },
    ["crouchreach2"] = {
        "anim@scripted@npc@mission@pln_ig4_cargo@",
        "line_5_dax",
        "Crouch & Reach 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
        }
    },
    ["daydream"] = { -- Custom Emote By Darks Animations
        "girl_groupe_d@darksj",
        "girl_groupe_d_clip",
        "Daydream In The Clouds",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
	["uwu2"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_shy",
        "UwU 2",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
        }
    },
    ["rawr"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_rawr",
        "Rawr",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stop"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_stop",
        "Stop",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["sassy"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sass",
        "Sassy",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
        }
    },
    ["sitsad3"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf000",
        "Sit Sad 3",
        AnimationOptions = {
			onFootFlag = AnimFlag.LOOP,
			ExitEmote = "getup",
        }
    },
    ["sitsad4"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_pack000",
        "ebrwny_sitf001",
        "Sit Sad 4",
        AnimationOptions = {
			StartDelay = 600,
			onFootFlag = AnimFlag.LOOP,
			ExitEmote = "getup",
        }
    },
    ["bend"] = {
        "ebrwny_pack000",
        "ebrwny_bend",
        "Bend over",
        AnimationOptions = {
			StartDelay = 600,
            onFootFlag = AnimFlag.MOVING,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["prone"] = {
        "missfbi3_sniping",
        "prone_dave",
        "Prone",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["pullover"] = {
        "misscarsteal3pullover",
        "pull_over_right",
        "Pullover",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1300
        }
    },
    ["idle"] = {
        "anim@heists@heist_corona@team_idles@male_a",
        "idle",
        "Idle",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle10"] = {
        "mp_move@prostitute@m@french",
        "idle",
        "Idle 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["idle11"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 11",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle12"] = {
        "mp_corona_idles@female_b@base",
        "base",
        "Idle 12",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle13"] = {
        "mp_corona_idles@female_c@base",
        "base",
        "Idle 13",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle14"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Idle 14",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle15"] = {
        "anim_heist@arcade_combined@",
        "female_hold_arm@_base_base",
        "Idle 15",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle16"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_02a@_base_base",
        "Idle 16",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle17"] = {
        "anim_heist@arcade_combined@",
        "amb_world_human_hang_out_street_female_hold_arm_idle_b",
        "Idle 17",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle18"] = {
        "mp_move@prostitute@m@hooker",
        "idle",
        "Idle 18",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle19"] = {
        "missdocksshowoffcar@base",
        "base_4",
        "Idle 19",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle2"] = {
        "anim@heists@heist_corona@team_idles@female_a",
        "idle",
        "Idle 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle3"] = {
        "anim@heists@humane_labs@finale@strip_club",
        "ped_b_celebrate_loop",
        "Idle 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle4"] = {
        "anim@mp_celebration@idles@female",
        "celebration_idle_f_a",
        "Idle 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle5"] = {
        "anim@mp_corona_idles@female_b@idle_a",
        "idle_a",
        "Idle 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle6"] = {
        "anim@mp_corona_idles@male_c@idle_a",
        "idle_a",
        "Idle 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idle7"] = {
        "anim@mp_corona_idles@male_d@idle_a",
        "idle_a",
        "Idle 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idledrunk"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd1",
        "Idle Drunk",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idledrunk2"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd2",
        "Idle Drunk 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["idledrunk3"] = {
        "missarmenian2",
        "standing_idle_loop_drunk",
        "Idle Drunk 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["impatient2"] = {
        "oddjobs@taxi@gyn@cc@intro",
        "f_impatient_b",
        "impatient 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue2"] = {
        "oddjobs@assassinate@vice@hooker",
        "argue_a",
        "Argue 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue3"] = {
        "missheistdockssetup1leadinoutig_1",
        "lsdh_ig_1_argue_wade",
        "Argue 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue4"] = {
        "car_2_mcs_1-6",
        "cs_devin_dual-6",
        "Argue 4",
        AnimationOptions = {
            EmoteDuration = 6000,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["argue5"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_01",
        "Argue Angry 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue6"] = {
        "anim@amb@casino@brawl@fights@argue@",
        "arguement_loop_mp_m_brawler_02",
        "Argue Angry 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue7"] = {
        "mini@prostitutestalk",
        "street_argue_f_a",
        "Argue 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue8"] = {
        "rcmnigel1cnmt_1c",
        "price_tag",
        "Argue 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["argue9"] = {
        "mini@hookers_sp",
        "idle_reject",
        "Argue 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bartender"] = {
        "anim@amb@clubhouse@bar@drink@idle_a",
        "idle_a_bartender",
        "Bartender",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["comeatmebro"] = {
        "mini@triathlon",
        "want_some_of_this",
        "Come at me bro",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2000
        }
    },
    ["cop2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Cop 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["cop3"] = {
        "amb@code_human_police_investigate@idle_a",
        "idle_b",
        "Cop 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["crossarms"] = {
        "amb@world_human_hang_out_street@female_arms_crossed@idle_a",
        "idle_a",
        "Crossarms",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms2"] = {
        "amb@world_human_hang_out_street@male_c@idle_a",
        "idle_b",
        "Crossarms 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["crossarms3"] = {
        "anim@heists@heist_corona@single_team",
        "single_team_loop_boss",
        "Crossarms 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms4"] = {
        "random@street_race",
        "_car_b_lookout",
        "Crossarms 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms5"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Crossarms 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms6"] = {
        "random@shop_gunstore",
        "_idle",
        "Crossarms 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms7"] = {
        "anim_heist@arcade_combined@",
        "female_arms_crossed@_base_base",
        "Crossarms 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms8"] = {
        "anim_heist@arcade_combined@",
        "ped_female@_stand@_03b@_base_base",
        "Crossarms 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarms9"] = {
        "fix_trip3_ext-4",
        "a_f_y_vinewood_02_dual-4",
        "Crossarms 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["foldarms"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "stand_phone_phoneputdown_idle_nowork",
        "Fold Arms",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["foldarms2"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Fold Arms 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarmsside"] = {
        "rcmnigel1a_band_groupies",
        "base_m2",
        "Crossarms Side",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["crossarmsside2"] = {
        "amb@world_human_hang_out_street@female_hold_arm@base",
        "base",
        "Crossarms Side 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["damn"] = {
        "gestures@m@standing@casual",
        "gesture_damn",
        "Damn",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["damn2"] = {
        "anim@am_hold_up@male",
        "shoplift_mid",
        "Damn 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["devestated"] = {
        "misscarsteal2car_stolen",
        "chad_car_stolen_reaction",
        "Devestated"
    },
    ["pointdown"] = {
        "gestures@f@standing@casual",
        "gesture_hand_down",
        "Point Down",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["pointpose"] = {
        "tun_meet_int-47",
        "a_m_y_carclub_01^3_dual-47",
        "Point Down",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["surrender"] = {
        "random@arrests@busted",
        "idle_a",
        "Surrender",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "surrender_exit",
        }
    },
    ["surrender2"] = {
        "mp_bank_heist_1",
        "f_cower_02",
        "Surrender 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["surrender3"] = {
        "mp_bank_heist_1",
        "m_cower_01",
        "Surrender 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["surrender4"] = {
        "mp_bank_heist_1",
        "m_cower_02",
        "Surrender 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["surrender5"] = {
        "random@arrests",
        "kneeling_arrest_idle",
        "Surrender 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "surrender_exit",
        }
    },
    ["surrender6"] = {
        "rcmbarry",
        "m_cower_01",
        "Surrender 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["surrender7"] = {
        "anim@scripted@bty4@ig2_bounty_kneel@male@",
        "on_knee_idle_a",
        "Surrender 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["surrender8"] = {
        "anim@scripted@npc@bounty_ig_surrender@male@",
        "surrender_idle_bounty",
        "Surrender 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["facepalm2"] = {
        "anim@mp_player_intcelebrationfemale@face_palm",
        "face_palm",
        "Facepalm 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 8000
        }
    },
    ["facepalm"] = {
        "random@car_thief@agitated@idle_a",
        "agitated_idle_a",
        "Facepalm",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 8000
        }
    },
    ["facepalm3"] = {
        "missminuteman_1ig_2",
        "tasered_2",
        "Facepalm 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 8000
        }
    },
    ["facepalm4"] = {
        "anim@mp_player_intupperface_palm",
        "idle_a",
        "Facepalm 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["fallasleep2"] = {
        "mp_sleep",
        "sleep_loopfemale",
        "Fall Asleep 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["finger2"] = {
        "anim@mp_player_intupperfinger",
        "idle_a_fp",
        "Finger 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["handshake"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "Handshake",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["handshake2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "Handshake 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["wait"] = {
        "random@shop_tattoo",
        "_idle_a",
        "Wait",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait2"] = {
        "missbigscore2aig_3",
        "wait_for_van_c",
        "Wait 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait3"] = {
        "amb@world_human_hang_out_street@female_hold_arm@idle_a",
        "idle_a",
        "Wait 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait4"] = {
        "amb@world_human_hang_out_street@Female_arm_side@idle_a",
        "idle_a",
        "Wait 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait5"] = {
        "missclothing",
        "idle_storeclerk",
        "Wait 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait6"] = {
        "timetable@amanda@ig_2",
        "ig_2_base_amanda",
        "Wait 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait7"] = {
        "rcmnigel1cnmt_1c",
        "base",
        "Wait 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait8"] = {
        "rcmjosh1",
        "idle",
        "Wait 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait9"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Wait 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait10"] = {
        "timetable@amanda@ig_3",
        "ig_3_base_tracy",
        "Wait 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait11"] = {
        "misshair_shop@hair_dressers",
        "keeper_base",
        "Wait 11",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait12"] = {
        "rcmjosh1",
        "keeper_base",
        "Wait 12",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wait13"] = {
        "rcmnigel1a",
        "base",
        "Wait 13",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["hiking"] = {
        "move_m@hiking",
        "idle",
        "Hiking",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 6000
        }
    },
    ["jog2"] = {
        "amb@world_human_jog_standing@male@idle_a",
        "idle_a",
        "Jog 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["jog3"] = {
        "amb@world_human_jog_standing@female@idle_a",
        "idle_a",
        "Jog 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["jog4"] = {
        "amb@world_human_power_walker@female@idle_a",
        "idle_a",
        "Jog 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["jog5"] = {
        "move_m@joy@a",
        "walk",
        "Jog 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["jumpingjacks"] = {
        "timetable@reunited@ig_2",
        "jimmy_getknocked",
        "Jumping Jacks",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneel2"] = {
        "rcmextreme3",
        "idle",
        "Kneel 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneel3"] = {
        "amb@world_human_bum_wash@male@low@idle_a",
        "idle_a",
        "Kneel 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneel4"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_03@lockbox_03@male@",
        "rest",
        "Kneel 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneel5"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_02@male@",
        "rest",
        "Kneel 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneelhide"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_kneel",
        "Kneel Hide",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneelcry"] = {
        "random@robbery",
        "f_cower_01",
        "Kneel And Cry",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kneelthot"] = {
        "anim@model_kylie_insta",
        "kylie_insta_clip",
        "Kneel Thot Instagram",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 200,
            ExitEmote = "standup",
        }
    },
    ["kneelbored"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@duo17",
        "duo17_clip",
        "Kneel Bored Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 200,
            ExitEmote = "standup",
        }
    },
    ["kneelpeace"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@duo18",
        "duo18_clip",
        "Kneel Peace Sign Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 200,
            ExitEmote = "standup",
        }
    },
    ["shoepose"] = { -- Custom Emote By Darks Animations
        "male_duo_a@darksj",
        "male_duo_a_clip",
        "Shoe Kick Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 240
        }
   },
    ["rap"] = { -- Custom Emote By Darks Animations
        "couple_singing_m@darks37",
        "couple_singing_m_clip",
        "Rap / Sing",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["squatgunpose"] = { -- Custom Emote By Darks Animations
        "ganggirls_pose1@darks37",
        "ganggirls_pose1_clip",
        "Squat Gun Pose - Left",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["squatgunpose3"] = { -- Custom Emote By Darks Animations
        "gun_prime_2@darksj",
        "gun_prime_2_clip",
        "Squat Gun Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["knock"] = {
        "timetable@jimmy@doorknock@",
        "knockdoor_idle",
        "Knock",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["knock2"] = {
        "missheistfbi3b_ig7",
        "lift_fibagent_loop",
        "Knock 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["knucklecrunch"] = {
        "anim@mp_player_intcelebrationfemale@knuckle_crunch",
        "knuckle_crunch",
        "Knuckle Crunch",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["lean2"] = {
        "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        "idle_a",
        "Lean 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lean3"] = {
        "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a",
        "idle_a",
        "Lean 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lean4"] = {
        "amb@world_human_leaning@male@wall@back@foot_up@idle_a",
        "idle_a",
        "Lean 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lean5"] = {
        "amb@world_human_leaning@male@wall@back@hands_together@idle_b",
        "idle_e",
        "Lean 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lean6"] = {
        "anim@scripted@freemode_npc@fix_agy_ig4_lamar@",
        "lean_wall_idle_03_lamar",
        "Lean 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["leanflirt"] = {
        "random@street_race",
        "_car_a_flirt_girl",
        "Lean Flirt",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["leanbar2"] = {
        "amb@prop_human_bum_shopping_cart@male@idle_a",
        "idle_c",
        "Lean Bar 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["leanbar3"] = {
        "anim@amb@nightclub@lazlow@ig1_vip@",
        "clubvip_base_laz",
        "Lean Bar 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["leanbar4"] = {
        "anim@heists@prison_heist",
        "ped_b_loop_a",
        "Lean Bar 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["leanhigh"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_one",
        "Lean High",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanhigh2"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_two",
        "Lean High 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanside"] = {
        "timetable@mime@01_gc",
        "idle_a",
        "Leanside",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanside2"] = {
        "misscarstealfinale",
        "packer_idle_1_trevor",
        "Leanside 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanside3"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanside4"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Leanside 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["leanside5"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Leanside 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["leanplan"] = {
        "anim@amb@board_room@diagram_blueprints@",
        "idle_01_amy_skater_01",
        "Lean On Table",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 200,
            ExitEmote = "offtable",
        }
    },
    ["me"] = {
        "gestures@f@standing@casual",
        "gesture_me_hard",
        "Me",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["mechanic"] = {
        "mini@repair",
        "fixing_a_ped",
        "Mechanic",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["mechanic2"] = {
        "mini@repair",
        "fixing_a_player",
        "Mechanic 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["mechanic3"] = {
        "amb@world_human_vehicle_mechanic@male@base",
        "base",
        "Mechanic 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["mechanic4"] = {
        "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        "machinic_loop_mechandplayer",
        "Mechanic 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["mechanic5"] = {
        "amb@prop_human_movie_bulb@idle_a",
        "idle_b",
        "Mechanic 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["medic2"] = {
        "amb@medic@standing@tendtodead@base",
        "base",
        "Medic 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["meditate"] = {
        "rcmcollect_paperleadinout@",
        "meditiate_idle",
        "Meditate",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 300,
            ExitEmote = "meditateup",
        }
    },
    ["meditate2"] = {
        "rcmepsilonism3",
        "ep_3_rcm_marnie_meditating",
        "Meditate 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 300,
            ExitEmote = "meditateup",
        }
    },
    ["meditate3"] = {
        "rcmepsilonism3",
        "base_loop",
        "Meditate 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 300,
            ExitEmote = "meditateup",
        }
    },
    ["metal"] = {
        "anim@mp_player_intincarrockstd@ps@",
        "idle_a",
        "Metal",
        AnimationOptions = {
            -- CHANGE ME
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["no"] = {
        "anim@heists@ornate_bank@chat_manager",
        "fail",
        "No",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["no2"] = {
        "mp_player_int_upper_nod",
        "mp_player_int_nod_no",
        "No 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["nosepick"] = {
        "anim@mp_player_intcelebrationfemale@nose_pick",
        "nose_pick",
        "Nose Pick",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["noway"] = {
        "gestures@m@standing@casual",
        "gesture_no_way",
        "No Way",
        AnimationOptions = {
            EmoteDuration = 1500,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["ok"] = {
        "anim@mp_player_intselfiedock",
        "idle_a",
        "OK",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dock"] = {
        "anim@mp_player_intincardockstd@rds@",
        "idle_a",
        "Dock",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["push2"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_m",
        "Push 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["point"] = {
        "gestures@f@standing@casual",
        "gesture_point",
        "Point",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pushup"] = {
        "amb@world_human_push_ups@male@idle_a",
        "idle_d",
        "Pushup",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["countdown"] = {
        "random@street_race",
        "grid_girl_race_start",
        "Countdown",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pointright"] = {
        "mp_gun_shop_tut",
        "indicate_right",
        "Point Right",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["salute"] = {
        "anim@mp_player_intincarsalutestd@ds@",
        "idle_a",
        "Salute",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["salute2"] = {
        "anim@mp_player_intincarsalutestd@ps@",
        "idle_a",
        "Salute 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["salute3"] = {
        "anim@mp_player_intuppersalute",
        "idle_a",
        "Salute 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["scared"] = {
        "random@domestic",
        "f_distressed_loop",
        "Scared",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["scared2"] = {
        "random@homelandsecurity",
        "knees_loop_girl",
        "Scared 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["scared3"] = {
        "xm3_drg2_cook_int-5",
        "csb_labrat_dual-5",
        "Scared 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["screwyou"] = {
        "misscommon@response",
        "screw_you",
        "Screw You",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["shakeoff"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Shake Off",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3500
        }
    },
    ["shot"] = {
        "random@dealgonewrong",
        "idle_a",
        "Shot",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sleep"] = {
        "timetable@tracy@sleep@",
        "base",
        "Sleep",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["bumsleep"] = {
        "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",
        "idle_b",
        "Bum Sleep",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["shrug"] = {
        "gestures@f@standing@casual",
        "gesture_shrug_hard",
        "Shrug",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["shrug2"] = {
        "gestures@m@standing@casual",
        "gesture_shrug_hard",
        "Shrug 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["sit"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_idle_nowork",
        "Sit",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit2"] = {
        "rcm_barry3",
        "barry_3_sit_loop",
        "Sit 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit3"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_male_lo_res_base",
        "Sit 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit4"] = {
        "amb@lo_res_idles@",
        "world_human_picnic_female_lo_res_base",
        "Sit 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit5"] = {
        "anim@heists@fleeca_bank@ig_7_jetski_owner",
        "owner_idle",
        "Sit 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit6"] = {
        "timetable@jimmy@mics3_ig_15@",
        "idle_a_jimmy",
        "Sit 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit7"] = {
        "anim@amb@nightclub@lazlow@lo_alone@",
        "lowalone_base_laz",
        "Sit 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            ExitEmote = "getup",
        }
    },
    ["sit8"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_jimmy",
        "Sit 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit9"] = {
        "amb@world_human_stupor@male@idle_a",
        "idle_a",
        "Sit 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sit10"] = {
        "anim@scripted@bty2@ig1_hiding_target@male@",
        "hiding_sit",
        "Sit 10",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitfu"] = {
        "chocoholic@single80",
        "single80_clip",
        "Sit Middle Finger",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["welcomeback"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "you're_back",
        "Welcome Back",
        AnimationOptions = {
        }
    },
    ["wallpose"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose1",
        "pose",
        "Wall Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["wallpose2"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose2",
        "pose",
        "Wall Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["wallpose3"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose3",
        "pose",
        "Wall Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["wallpose4"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose4",
        "pose",
        "Wall Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["wallpose5"] = { -- Credit to LadyyShamrockk for this custom emote
        "shamrock@wallpose5",
        "pose",
        "Wall Pose 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["elbow"] = {
        "anim@veh@lowrider@std@ds@arm@base",
        "sit_low_lowdoor",
        "Window Elbow",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["elbow2"] = { -- Custom Emote By Chocoholic Animations
        "chocoholic@single47",
        "single47_clip",
        "Window Elbow 2",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["sitlean"] = {
        "timetable@tracy@ig_14@",
        "ig_14_base_tracy",
        "Sit Lean",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitlean2"] = {
        "anim@scripted@player@fix_astu_ig8_weed_smoke_v1@male@",
        "male_pos_a_p2_base",
        "Sit Lean 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
        }
    },
    ["sitlean3"] = {
        "anim@scripted@freemode@ig7_office_cell_floor@heeled@",
        "base_pose_01",
        "Sit Lean 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitsad"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_sleeping-noworkfemale",
        "Sit Sad",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitsad2"] = {
        "anim@female_sit_01",
        "f_sit_01_clip",
        "Sit Sad 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitscared"] = {
        "anim@heists@ornate_bank@hostages@hit",
        "hit_loop_ped_b",
        "Sit Scared",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["sitscared2"] = {
        "anim@heists@ornate_bank@hostages@ped_c@",
        "flinch_loop",
        "Sit Scared 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["sitscared3"] = {
        "anim@heists@ornate_bank@hostages@ped_e@",
        "flinch_loop",
        "Sit Scared 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["sitdrunk"] = {
        "timetable@amanda@drunk@base",
        "base",
        "Sit Drunk",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["sitchair"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Sit Chair",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair2"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Sit Chair 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair3"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Sit Chair 3 (Female)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(-2.8, -1.0, 0.0, 90.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair4"] = {
        "timetable@ron@ron_ig_2_alt1",
        "ig_2_alt1_base",
        "Sit Chair 4 - Side",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair5"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_tracy",
        "Sit Chair Legs Crossed",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(1.0, 0.0, 0.0, 30.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair6"] = {
        "timetable@maid@couch@",
        "base",
        "Sit Chair Lean Back",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair7"] = {
        "anim@scripted@freemode_npc@fix_astu_ig3_pooh_jimmy@jimmy@",
        "sit_base_jimmy",
        "Sit Chair Attentive",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(1.0, 0.0, -1.0, 0.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sitchair8"] = {
        "anim@scripted@freemode_npc@fix_dre_studio_entourage@",
        "lonely_ballas",
        "Sit Chair Lonely",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(0, 0, -1.0, 0.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sittoilet"] = {
        "anim@scripted@freemode@ig5_office_cell_seat@heeled@",
        "base_pose_01",
        "Sit toilet",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(0.0, 0.0, -1.0, 0.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sittoilet2"] = {
        "anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_04@male@",
        "idle",
        "Sit Toilet 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOffset = vector4(-0.6, 0.8, -1.0, 30.0), -- Prevents floating during placement
            PlacementOverridesPhysics = true,
        }
    },
    ["sitcute"] = { -- Custom Emote By QueenSistersAnimations
        "sitkylie@queensisters",
        "kylie_clip",
        "Sit Cute",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "offchair",
            PlacementOverridesPhysics = true,
        }
    },
    ["situp"] = {
        "amb@world_human_sit_ups@male@idle_a",
        "idle_a",
        "Sit Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP,
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
    ['smokendrink'] = { -- Custom Emote By Darks Animations
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["slowclap3"] = {
        "anim@mp_player_intupperslow_clap",
        "idle_a",
        "Slow Clap 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["clap"] = {
        "amb@world_human_cheering@male_a",
        "base",
        "Clap",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["slowclap"] = {
        "anim@mp_player_intcelebrationfemale@slow_clap",
        "slow_clap",
        "Slow Clap",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["slowclap2"] = {
        "anim@mp_player_intcelebrationmale@slow_clap",
        "slow_clap",
        "Slow Clap 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["smell"] = {
        "move_p_m_two_idles@generic",
        "fidget_sniff_fingers",
        "Smell",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stickup"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Stick Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stumble"] = {
        "misscarsteal4@actor",
        "stumble",
        "Stumble",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["stunned"] = {
        "stungun@standing",
        "damage",
        "Stunned",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["sunbathe"] = {
        "amb@world_human_sunbathe@male@back@base",
        "base",
        "Sunbathe - Hand On Head",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe2"] = {
        "amb@world_human_sunbathe@female@back@base",
        "base",
        "Sunbathe 2 - Hand Over Face",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe3"] = {
        "amb@world_human_sunbathe@female@front@base",
        "base",
        "Sunbathe 3 - Lay On Stomach",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe4"] = {
        "amb@world_human_sunbathe@male@back@idle_a",
        "idle_a",
        "Sunbathe 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe5"] = {
        "amb@world_human_sunbathe@female@back@idle_a",
        "idle_a",
        "Sunbathe 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe6"] = {
        "amb@world_human_sunbathe@female@front@idle_a",
        "idle_c",
        "Sunbathe 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["sunbathe7"] = {
        "amb@world_human_sunbathe@male@front@base",
        "base",
        "Sunbathe 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["tpose"] = {
        "missfam5_yoga",
        "a2_pose",
        "T Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["tpose2"] = {
        "mp_sleep",
        "bind_pose_180",
        "T Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["think5"] = {
        "mp_cp_welcome_tutthink",
        "b_think",
        "Think 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2000
        }
    },
    ["think"] = {
        "misscarsteal4@aliens",
        "rehearsal_base_idle_director",
        "Think",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["think3"] = {
        "timetable@tracy@ig_8@base",
        "base",
        "Think 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["think2"] = {
        "missheist_jewelleadinout",
        "jh_int_outro_loop_a",
        "Think 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["thumbsup3"] = {
        "anim@mp_player_intincarthumbs_uplow@ds@",
        "enter",
        "Thumbs Up 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["thumbsup2"] = {
        "anim@mp_player_intselfiethumbs_up",
        "idle_a",
        "Thumbs Up 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["thumbsup"] = {
        "anim@mp_player_intupperthumbs_up",
        "idle_a",
        "Thumbs Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["type"] = {
        "anim@heists@prison_heiststation@cop_reactions",
        "cop_b_idle",
        "Type",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["type2"] = {
        "anim@heists@prison_heistig1_p1_guard_checks_bus",
        "loop",
        "Type 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["type3"] = {
        "mp_prison_break",
        "hack_loop",
        "Type 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["type4"] = {
        "mp_fbi_heist",
        "loop",
        "Type 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["type5"] = {
        "anim@scripted@freemode@ig12_use_computer@male@",
        "loop",
        "Type 5 - Stare",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["warmth"] = {
        "amb@world_human_stand_fire@male@idle_a",
        "idle_a",
        "Warmth",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave4"] = {
        "random@mugging5",
        "001445_01_gangintimidation_1_female_idle_b",
        "Wave 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["wave2"] = {
        "anim@mp_player_intcelebrationfemale@wave",
        "wave",
        "Wave 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave3"] = {
        "friends@fra@ig_1",
        "over_here_idle_a",
        "Wave 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave"] = {
        "friends@frj@ig_1",
        "wave_a",
        "Wave",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave5"] = {
        "friends@frj@ig_1",
        "wave_b",
        "Wave 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave6"] = {
        "friends@frj@ig_1",
        "wave_c",
        "Wave 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave7"] = {
        "friends@frj@ig_1",
        "wave_d",
        "Wave 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave8"] = {
        "friends@frj@ig_1",
        "wave_e",
        "Wave 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wave9"] = {
        "gestures@m@standing@casual",
        "gesture_hello",
        "Wave 9",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["whistle"] = {
        "taxi_hail",
        "hail_taxi",
        "Whistle",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1300
        }
    },
    ["whistle2"] = {
        "rcmnigel1c",
        "hailing_whistle_waive_a",
        "Whistle 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2000
        }
    },
    ["yeah"] = {
        "anim@mp_player_intupperair_shagging",
        "idle_a",
        "Yeah",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["yeah2"] = {
        "sum24_office_int-37",
        "csb_jenettee_dual-37",
        "Yeah Yeah",
        AnimationOptions = {
        }
    },
    ["yoga2"] = {
        "timetable@amanda@ig_4",
        "ig_4_idle",
        "Yoga 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["lift"] = {
        "random@hitch_lift",
        "idle_f",
        "Lift",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["lol"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "laugh_a_player_b",
        "LOL",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lol2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "giggle_a_player_b",
        "LOL 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["lostconfused"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6",
        "i_lost_it",
        "Lost & Confused",
        AnimationOptions = {
        }
    },
    ["statue2"] = {
        "fra_0_int-1",
        "cs_lamardavis_dual-1",
        "Statue 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["statue3"] = {
        "club_intro2-0",
        "csb_englishdave_dual-0",
        "Statue 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["gangsign"] = {
        "mp_player_int_uppergang_sign_a",
        "mp_player_int_gang_sign_a",
        "Gang Sign",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["gangsign2"] = {
        "mp_player_int_uppergang_sign_b",
        "mp_player_int_gang_sign_b",
        "Gang Sign 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["gangsign3"] = {
        "amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base",
        "idle_a",
        "Gang Sign 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["gangsign4"] = {
        "amb@code_human_in_car_mp_actions@v_sign@std@rds@base",
        "idle_a",
        "Gang Sign 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["passout"] = {
        "missarmenian2",
        "drunk_loop",
        "Passout",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout2"] = {
        "missarmenian2",
        "corpse_search_exit_ped",
        "Passout 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout3"] = {
        "anim@gangops@morgue@table@",
        "body_search",
        "Passout 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout4"] = {
        "mini@cpr@char_b@cpr_def",
        "cpr_pumpchest_idle",
        "Passout 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout5"] = {
        "random@mugging4",
        "flee_backward_loop_shopkeeper",
        "Passout 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout6"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_loop_ped",
        "Passout 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout7"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["passout8"] = {
        "anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@",
        "fix_bil_ig2_chopper_crawl_dead_loop_ped",
        "Passout 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 900,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup",
        }
    },
    ["petting"] = {
        "creatures@rottweiler@tricks@",
        "petting_franklin",
        "Petting",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["crawl"] = {
        "move_injured_ground",
        "front_loop",
        "Crawl",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "meditateup",
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
        "Slide",
        abusable = true,
    },
    ["slide2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_b_player_a",
        "Slide 2",
        abusable = true,
    },
    ["slide3"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_c_player_a",
        "Slide 3",
        abusable = true,
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["flipoff2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_c_1st",
        "Flip Off 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["bow"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_c_1st",
        "Bow",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bow2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_a_1st",
        "Bow 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["keyfob"] = {
        "anim@mp_player_intmenu@key_fob@",
        "fob_click",
        "Key Fob",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1000
        }
    },
    ["holster"] = {
        "move_m@intimidation@cop@unarmed",
        "idle",
        "Holster",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["holster2"] = { -- Custom Emote Provided To RpEmotes By Mads
        "mads@police_reaching_holster",
        "idle",
        "Holster 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["holster3"] = {
        "anim@hlstr_7360_walk",
        "holster_walk",
        "Holster 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
	["holster4"] = {
        "anim@hlstr_7360_hold",
        "holster_stop",
        "Holster 4 - Stop",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
	["holster5"] = {
        "anim@holster_hold_there",
        "holster_hold",
        "Holster 5 - Stop 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace"] = {
        "mp_player_int_upperpeace_sign",
        "mp_player_int_peace_sign",
        "Peace",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace2"] = {
        "anim@mp_player_intupperpeace",
        "idle_a",
        "Peace 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace3"] = {
        "anim@mp_player_intupperpeace",
        "idle_a_fp",
        "Peace 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace4"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a",
        "Peace 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace5"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a_fp",
        "Peace 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace6"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a",
        "Peace 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peace7"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a_fp",
        "Peace 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peacef"] = {
        "anim@mp_player_intcelebrationfemale@peace",
        "peace",
        "Peace Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["cpr"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["cpr2"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["ledge"] = {
        "missfbi1",
        "ledge_loop",
        "Ledge",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["airplane"] = {
        "missfbi1",
        "ledge_loop",
        "Air Plane",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["peek"] = {
        "random@paparazzi@peek",
        "left_peek_a",
        "Peek",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["cough"] = {
        "timetable@gardener@smoking_joint",
        "idle_cough",
        "Cough",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stretch"] = {
        "mini@triathlon",
        "idle_e",
        "Stretch",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["stretch2"] = {
        "mini@triathlon",
        "idle_f",
        "Stretch 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["stretch3"] = {
        "mini@triathlon",
        "idle_d",
        "Stretch 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["stretch4"] = {
        "rcmfanatic1maryann_stretchidle_b",
        "idle_e",
        "Stretch 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["celebrate"] = {
        "rcmfanatic1celebrate",
        "celebrate",
        "Celebrate",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["punching"] = {
        "rcmextreme2",
        "loop_punching",
        "Punching",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["punching2"] = {
        "anim@scripted@bty2@ig2_beat_target@male@",
        "standing_punch_v1_golfer",
        "Punching 2",
        AnimationOptions = {
        }
    },
    ["superhero"] = {
        "rcmbarry",
        "base",
        "Superhero",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["superhero2"] = {
        "rcmbarry",
        "base",
        "Superhero 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["mindcontrol"] = {
        "rcmbarry",
        "mind_control_b_loop",
        "Mind Control",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["mindcontrol2"] = {
        "rcmbarry",
        "bar_1_attack_idle_aln",
        "Mind Control 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["clown"] = {
        "rcm_barry2",
        "clown_idle_0",
        "Clown",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["clown2"] = {
        "rcm_barry2",
        "clown_idle_1",
        "Clown 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["clown3"] = {
        "rcm_barry2",
        "clown_idle_2",
        "Clown 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["clown4"] = {
        "rcm_barry2",
        "clown_idle_3",
        "Clown 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["clown5"] = {
        "rcm_barry2",
        "clown_idle_6",
        "Clown 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["tryclothes"] = {
        "mp_clothing@female@trousers",
        "try_trousers_neutral_a",
        "Try Clothes",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["tryclothes2"] = {
        "mp_clothing@female@shirt",
        "try_shirt_positive_a",
        "Try Clothes 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["tryclothes3"] = {
        "mp_clothing@female@shoes",
        "try_shoes_positive_a",
        "Try Clothes 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["tryclothes4"] = {
        "anim@scripted@ulp_missions@change_clothes@female@",
        "change_highroller",
        "Try Clothes 4",
        AnimationOptions = {
        }
    },
    ["tryclothes5"] = {
        "anim@scripted@ulp_missions@change_clothes@",
        "change_highroller_male",
        "Try Clothes 5",
        AnimationOptions = {
        }
    },
    ["nervous"] = {
        "amb@world_human_bum_standing@twitchy@idle_a",
        "idle_c",
        "Nervous",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["nervous2"] = {
        "mp_missheist_countrybank@nervous",
        "nervous_idle",
        "Nervous 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["nervous3"] = {
        "rcmme_tracey1",
        "nervous_loop",
        "Nervous 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["nervous4"] = {
        "fix_trip3_mcs1-9",
        "cs_marnie_dual-9",
        "Nervous 4",
        AnimationOptions = {
        }
    },
    ["namaste"] = {
        "timetable@amanda@ig_4",
        "ig_4_base",
        "Namaste",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["threaten"] = {
        "random@atmrobberygen",
        "b_atm_mugging",
        "Threaten",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["radio"] = {
        "random@arrests",
        "generic_radio_chatter",
        "Radio",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["earpiece"] = {
        "cellphone@",
        "cellphone_call_listen_base",
        "Earpiece",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pull"] = {
        "random@mugging4",
        "struggle_loop_b_thief",
        "Pull",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
    ["hunched"] = {
        "missexile3",
        "ex03_train_roof_idle",
        "Hunched",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            ExitEmote = "getup2",
        }
    },
    ["boi"] = {
        "special_ped@jane@monologue_5@monologue_5c",
        "brotheradrianhasshown_2",
        "BOI",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3000
        }
    },
    ["adjust"] = {
        "missmic4",
        "michael_tux_fidget",
        "Adjust",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["addict"] = {
        "anim@scripted@island@special_peds@dave@hs4_dave_stage3_ig7",
        "base",
        "Addict",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["handsup"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Hands Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["handsup2"] = {
        "anim@mp_player_intuppersurrender",
        "idle_a_fp",
        "Hands Up 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ['handsup3'] = {
        'anim@mp_rollarcoaster',
        'hands_up_idle_a_player_one',
        'Hands Up 3',
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ['handsup4'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'leaning_idle_bounty',
        'Hands Up 4',
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ['handsup5'] = {
        'anim@scripted@bty2@ig2_beat_target@male@',
        'standing_idle_bounty',
        'Hands Up 5',
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["valet"] = {
        "anim@amb@casino@valet_scenario@pose_a@",
        "base_a_m_y_vinewood_01",
        "Valet",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["valet2"] = {
        "anim@amb@casino@valet_scenario@pose_b@",
        "base_a_m_y_vinewood_01",
        "Valet 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["valet3"] = {
        "anim@amb@casino@valet_scenario@pose_d@",
        "base_a_m_y_vinewood_01",
        "Valet 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["tighten"] = {
        "timetable@denice@ig_1",
        "idle_b",
        "Tighten (Yoga)",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["fspose"] = {
        "missfam5_yoga",
        "c2_pose",
        "F Sex Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
        AdultAnimation = true
    },
    ["fspose2"] = {
        "missfam5_yoga",
        "c6_pose",
        "F Sex Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        },
        AdultAnimation = true
    },
    ["fspose3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_c_idle_d",
        "F Sex Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        },
        AdultAnimation = true
    },
    ["showerf"] = {
        "mp_safehouseshower@female@",
        "shower_enter_into_idle",
        "Shower Enter Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerf2"] = {
        "mp_safehouseshower@female@",
        "shower_idle_a",
        "Shower Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerf3"] = {
        "mp_safehouseshower@female@",
        "shower_idle_b",
        "Shower Female 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerm"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_a",
        "Shower Enter Male",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerm2"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_b",
        "Shower Male 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerm3"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_c",
        "Shower Male 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showerm4"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_d",
        "Shower Male 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["picklock"] = {
        "missheistfbisetup1",
        "hassle_intro_loop_f",
        "Picklock",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["cleanhands"] = {
        "missheist_agency3aig_23",
        "urinal_sink_loop",
        "Clean Them Filthy Hands",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["cleanface"] = {
        "switch@michael@wash_face",
        "loop_michael",
        "Clean Your Face",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["buzz"] = {
        "anim@apt_trans@buzzer",
        "buzz_reg",
        "Buzz Door",
        AnimationOptions = {
        }
    },
    ["grieve"] = {
        "anim@miss@low@fin@vagos@",
        "idle_ped05",
        "Grieve The Dead",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["respect"] = {
        "anim@mp_player_intcelebrationmale@respect",
        "respect",
        "Respect Male",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["respectf"] = {
        "anim@mp_player_intcelebrationfemale@respect",
        "respect",
        "Respect Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bang"] = {
        "anim@mp_player_intcelebrationfemale@bang_bang",
        "bang_bang",
        "Bang Bang",
        AnimationOptions = {
            EmoteDuration = 2500
        }
    },
    ["checkcar"] = {
        "anim@amb@carmeet@checkout_car@male_a@idles",
        "idle_b",
        "Check Out · Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["checkcar2"] = {
        "anim@amb@carmeet@checkout_car@male_c@idles",
        "idle_a",
        "Check Out 2 · Male",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["showboobs"] = {
        "mini@strip_club@backroom@",
        "stripper_b_backroom_idle_b",
        "Show Boobs",
        AnimationOptions = {
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["showboobs2"] = {
        "mini@strip_club@idles@stripper",
        "stripper_idle_05",
        "Show Boobs 2",
        AnimationOptions = {
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["watchstripper"] = {
        "amb@world_human_strip_watch_stand@male_c@idle_a",
        "idle_b",
        "Watch Stripper",
        AnimationOptions = {
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["hhands"] = {
        "misssnowie@hearthands",
        "base",
        "Heart Hands",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pockets"] = { -- Custom Emote By Dark Animations
        "hoodie_hands@dad",
        "hoodie_hands_clip",
        "Hands in pockets (Hoodie)",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["posecutef"] = { -- Custom Emote By Pupppy
        "pupppy@freepose01",
        "freepose01",
        "Cute Pose Female",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["posecutef2"] = { -- Custom Emote By Pupppy
        "pupppy@freepose03",
        "freepose03",
        "Cute Pose Female 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["posecutef3"] = { -- Custom Emote By Pupppy
        "pupppy@freepose04",
        "freepose04",
        "Cute Pose Female 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["posecutef4"] = { -- Custom Emote By QueenSistersAnimations
        "handkylie@queensisters",
        "kylie_clip",
        "Cute Pose Female 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["posecutem"] = { -- Custom Emote By Pupppy
        "pupppy@freepose02",
        "freepose02",
        "Cute Pose Male",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["checkwatch"] = { -- Custom Emote By MissSnowie
        "watch@looking_at",
        "base",
        "Check Watch",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pee"] = {
        "misscarsteal2peeing",
        "peeing_loop",
        "Pee (Male)",
        AnimationOptions = {
            onFootflag = AnimFlag.STUCK,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP
        },
        AdultAnimation = true
    },
    ["wank"] = {
        "anim@mp_player_intselfiewank",
        "idle_a",
        "Wank",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AdultAnimation = true
    },
    ["wank2"] = {
        "anim@mp_player_intupperwank",
        "idle_a",
        "Wank 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AdultAnimation = true
    },
    ["wank3"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02",
        "Wank 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AdultAnimation = true
    },
    ["wank4"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02_fp",
        "Wank 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        },
        AdultAnimation = true
    },
    ["wank5"] = {
        "mp_player_intwank",
        "mp_player_int_wank",
        "Wank 5",
        AnimationOptions = {
        },
        AdultAnimation = true
    },
    ["calldog"] = {
        "switch@franklin@plays_w_dog",
        "001916_01_fras_v2_9_plays_w_dog_idle",
        "Call Dog",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["calldogr"] = {
        "missfra0_chop_find",
        "call_chop_r",
        "Call Dog - Right",
        AnimationOptions = {
        }
    },
    ["calldogl"] = {
        "missfra0_chop_find",
        "call_chop_l",
        "Call Dog - Left",
        AnimationOptions = {
        }
    },
    ["block"] = {
        "missheist_agency3ashield_face",
        "idle",
        "Block Face",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["policecrowd"] = {
        "amb@code_human_police_crowd_control@idle_a",
        "idle_a",
        "Police Crowd",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["policecrowd2"] = {
        "amb@code_human_police_crowd_control@idle_b",
        "idle_d",
        "Police Crowd 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
	["k9pose"] = {
        "anim@k9_pose",
        "hug_dog",
        "Hug Dog",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["snot"] = {
        "move_p_m_two_idles@generic",
        "fidget_blow_snot",
        "Blow Snot",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4500
        }
    },
    ["scratch"] = {
        "move_p_m_two_idles@generic",
        "fidget_scratch_balls",
        "Scratch Balls",
        AnimationOptions = {
            EmoteDuration = 4000
        },
        AdultAnimation = true
    },
	["cartaunt"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonfrank",
        "Car Taunt",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntb"] = {
        "missarmenian1driving_taunts@lamar_1",
        "cmonmynigga",
        "Car Taunt 2",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntc"] = {
        "missarmenian1driving_taunts@lamar_1",
        "hahahakeepup",
        "Car Taunt 3",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntd"] = {
        "missarmenian1driving_taunts@lamar_1",
        "manthisismeanttobe",
        "Car Taunt 4",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartaunte"] = {
        "missarmenian1driving_taunts@lamar_1",
        "rememberthis",
        "Car Taunt 5",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 3000
        }
    },
	["cartauntf"] = {
        "missarmenian1driving_taunts@lamar_1",
        "skoolinyoass",
        "Car Taunt 6",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 3000
        }
    },
	["cartauntg"] = {
        "missarmenian1driving_taunts@lamar_1",
        "youaintfuckin",
        "Car Taunt 7",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartaunth"] = {
        "missarmenian1driving_taunts@franklin",
        "heyidontneedanybody",
        "Car Taunt 8",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartaunti"] = {
        "missarmenian1driving_taunts@franklin",
        "heymotherfuckayoudriveslowasfuck",
        "Car Taunt 9",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 3000
        }
    },
	["cartauntj"] = {
        "missarmenian1driving_taunts@franklin",
        "kids_on_bicycles",
        "Car Taunt 10",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntk"] = {
        "missarmenian1driving_taunts@franklin",
        "learnhowtouseastick",
        "Car Taunt 11",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntl"] = {
        "missarmenian1driving_taunts@franklin",
        "slowassshit",
        "Car Taunt 12",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 2000
        }
    },
	["cartauntm"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_female",
        "Car Taunt 13",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 5000
        }
    },
	["cartauntn"] = {
        "mp_intro_seq@mcs_7_race_taunt",
        "mcs_7_taunt_male",
        "Car Taunt 14",
        AnimationOptions = {
            vehicleRequirement = VehicleRequirement.REQUIRED,
            EmoteDuration = 5000
        }
    },
    ["flex2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_002",
        "Flex 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING, -- Allows us to flex while performing another animation
        }
    },
    ["gym"] = { -- Custom Female Emote By Souris
        "mouse@air_squat",
        "air_squat_clip",
        "Gym - Squats",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["gym2"] = { -- Custom Female Emote By Souris
        "mouse@byc_crunch",
        "byc_crunch_clip",
        "Gym - Crunches",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 400,
            ExitEmote = "getup",
        }
    },
    ["gym3"] = { -- Custom Female Emote By Souris
        "mouse@jump_exc",
        "jump_exc_clip",
        "Gym - Jumping",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["gym4"] = { -- Custom Female Emote By Souris
        "mouse@jump_jack",
        "jump_jack_clip",
        "Gym - Jumping Jacks",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["gym5"] = { -- Custom Female Emote By Souris
        "mouse@situp",
        "situp_clip",
        "Gym - Sit Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 550,
            ExitEmote = "getup",
        }
    },
    ["gympose"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_001",
        "Gym Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["gympose2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_005",
        "Gym Pose 2 - One Handed Push Up",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["gympose3"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_004",
        "Gym Pose 3 - Planking Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 550,
            ExitEmote = "standup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
        }
    },
    ["gympose4"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_005",
        "Gym Pose 4 - Sit Ups Pose",
         AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 510,
            ExitEmote = "getup",
            ExitEmoteType = "Exits",
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED
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
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["mindblown2"] = {
        "anim@mp_player_intcelebrationfemale@mind_blown",
        "mind_blown",
        "Mind Blown 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["boxing"] = {
        "anim@mp_player_intcelebrationmale@shadow_boxing",
        "shadow_boxing",
        "Boxing",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["boxing2"] = {
        "anim@mp_player_intcelebrationfemale@shadow_boxing",
        "shadow_boxing",
        "Boxing 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 4000
        }
    },
    ["boxing3"] = {
        "melee@unarmed@streamed_core_fps",
        "idle",
        "Boxing 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["capoeira"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "med_right",
        "Capoeira",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["capoeira2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@techno_karate@",
        "high_right_down",
        "Capoeira 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["stink"] = {
        "anim@mp_player_intcelebrationfemale@stinker",
        "stinker",
        "Stink",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["taichi"] = {
        "anim@veh@van@mule5@rps",
        "lean_forward_idle",
        "Tai chi",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["taichi2"] = {
        "switch@trevor@rand_temple",
        "tai_chi_trevor",
        "Tai chi - Awkward",
        AnimationOptions = {
        }
    },
    ["think4"] = {
        "anim@amb@casino@hangout@ped_male@stand@02b@idles",
        "idle_a",
        "Think 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["adjusttie"] = {
        "clothingtie",
        "try_tie_positive_a",
        "Adjust Tie",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 5000
        }
    },
    ["shaka"] = {
        "sign@hang_loose",
        "base",
        "Shaka 'Hang Loose'",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["shaka2"] = {
        "sign@hang_loose_casual",
        "base",
        "Shaka 'Hang Loose Casual'",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["relax"] = {
        "lying@on_grass",
        "base",
        "Relax",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            StartDelay = 800,
            ExitEmote = "getup",
        }
    },
    ["relax2"] = {
        "lying@on_couch_legs_crossed",
        "base",
        "Relax 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            vehicleRequirement = VehicleRequirement.NOT_ALLOWED,
            StartDelay = 800,
            ExitEmote = "getup",
        }
    },
    ["uwu"] = {
        "uwu@egirl",
        "base",
        "UwU",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dab"] = {
        "stand_dab@dark",
        "stand_dab_clip",
        "Dab",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["sexypose"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy003",
        "sexy003",
        "Sexy Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose2"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy004",
        "sexy004",
        "Sexy Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose3"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy005",
        "sexy005",
        "Sexy Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose4"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy006",
        "sexy006",
        "Sexy Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose5"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy009",
        "sexy009",
        "Sexy Pose 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose6"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy012",
        "sexy012",
        "Sexy Pose 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["sexypose7"] = { -- Custom Emote By Darks Animations
        "bad_girls_pose3@darks37",
        "bad_girls_pose3_clip",
        "Sexy Pose 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["laydownsexy"] = { -- Custom emote by Struggleville
        "anim@female_laying_sexy",
        "laying_sexy_clip",
        "Laying Down Sexy",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["model"] = { -- Custom emote by Struggleville
        "anim@female_model_showoff",
        "model_showoff_clip",
        "Model Pose Sexy",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["model2"] = { -- Custom Emote By QueenSistersAnimations
        "sitdownonknees@queensisters",
        "sitdown_clip",
        "Model Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["model3"] = { -- Custom emote by Struggleville
        "anim@female_model_photo_cute",
        "photo_cute_clip",
        "Model Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["layncry"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_fuckedup_laz",
        "Lay & Cry",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry2"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_base_laz",
        "Lay & Cry 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry3"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry4"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry5"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_shit2strong_laz",
        "Lay & Cry 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry6"] = {
        "misschinese2_crystalmaze",
        "2int_loop_a_taocheng",
        "Lay & Cry 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry7"] = {
        "anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@",
        "base",
        "Lay & Cry 7",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["layncry8"] = {
        "anim@scripted@data_leak@fix_golf_ig2_golfclub_intimidation@",
        "stage_3_base_golfer",
        "Lay & Cry 8",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["army1"] = {
        "bzzz@animation@army1", -- Custom Emote By BzZz
        "bz_army1",
        "Army 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["army1l"] = {
        "bzzz@animation@army1_left", -- Custom Emote By BzZz
        "bz_army1_left",
        "Army 1 Left",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["army1p"] = {
        "bzzz@animation@army1_right", -- Custom Emote By BzZz
        "bz_army1_right",
        "Army 1 Right",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["army2"] = {
        "bzzz@animation@army2", -- Custom Emote By BzZz
        "bz_army2",
        "Army 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["army2l"] = {
        "bzzz@animation@army2_left", -- Custom Emote By BzZz
        "bz_army2_left",
        "Army 2 Left",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["army2p"] = {
        "bzzz@animation@army2_right", -- Custom Emote By BzZz
        "bz_army2_right",
        "Army 2 Right",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["airforce01"] = { -- MissSnowie
        "airforce@at_ease",
        "base",
        "Airforce - At Ease", -- MissSnowie
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["airforce02"] = { -- MissSnowie
        "airforce@attention",
        "base",
        "Airforce - Attention",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["airforce03"] = { -- MissSnowie
        "airforce@parade_rest",
        "base",
        "Airforce - Parade Rest",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["airforce04"] = {
        "airforce@salute",
        "base",
        "Airforce - Salute",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["zombiewalk"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_01",
        "Zombie Walk",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["zombiewalk2"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_02",
        "Zombie Walk 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zombiewalk3"] = {
        "anim@ingame@move_m@zombie@core",
        "walk_up",
        "Zombie Walk 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zombiewalk4"] = {
        "anim@ingame@move_m@zombie@core",
        "run_turn_r3",
        "Zombie Run - Circle",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zombieagony"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "agony",
        "Zombie Agony",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zombiescream"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "scream",
        "Zombie Scream",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["zombiecrawl"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "crawl_01",
        "Zombie Crawl",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "meditateup",
        }
    },
    ["zombieswipe"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_-180_punch",
        "Zombie Swipe",
        AnimationOptions = {
        }
    },
    ["zombieswipe2"] = {
        "anim@ingame@melee@unarmed@streamed_variations_zombie",
        "heavy_punch_b_var_2",
        "Zombie Swipe 2",
        AnimationOptions = {
        }
    },
    ["zombieswipe3"] = {
        "anim@ingame@melee@unarmed@streamed_core_zombie",
        "short_90_punch",
        "Zombie Swipe 3",
        AnimationOptions = {
        }
    },
    ["laysexy"] = { -- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_004",
        "Lay Sexy",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            StartDelay = 700,
            ExitEmote = "getup",
        }
    },
    ["gungirl1"] = { -- Custom Emote By Struggleville
        "anim@female_gunbunny_rifle_photo",
        "rifle_photo_clip",
        "Rifle Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["vest"] = {
        "anim@male@holding_vest",
        "holding_vest_clip",
        "Hold Vest",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vest2"] = {
        "anim@holding_side_vest",
        "holding_side_vest_clip",
        "Hold Vest 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vest3"] = {
        "anim@holding_siege_vest_side",
        "holding_siege_vest_side_clip",
        "Hold Vest 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vest4"] = {
        "anim@male@holding_vest_2",
        "holding_vest_2_clip",
        "Hold Vest 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vest5"] = {
        "anim@male@holding_vest_siege",
        "holding_vest_siege_clip",
        "Hold Vest 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vest6"] = {
        "anim@male@holding_vest_siege_2",
        "holding_vest_siege_2_clip",
        "Hold Vest 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["kick"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard1",
        "Kick",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["kick2"] = {
        "missheistdockssetup1ig_13@kick_idle",
        "guard_beatup_kickidle_guard2",
        "Kick 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["aslyes"] = {
        "ebrwny_sign",
        "ebrwny_yes",
        "ASL Yes 🇺🇸",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1030
        }
    },
    ["aslno"] = {
        "ebrwny_sign",
        "ebrwny_no",
        "ASL No 🇺🇸",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 2080
        }
    },
    ["aslimgood"] = {
        "ebrwny_sign",
        "ebrwny_imgood",
        "ASL I Am Good 🇺🇸",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 3940
        }
    },
    ["aslcya"] = {
        "ebrwny_sign",
        "ebrwny_seeya",
        "ASL See Ya 🇺🇸",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1200
        }
    },
    ["aslwhat"] = {
        "ebrwny_sign",
        "ebrwny_what",
        "ASL What 🇺🇸",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
            EmoteDuration = 1480
        }
    },
    ["hidegun"] = { -- Credit to Darks Animations for this exclusive rpemotes animation
        "pistol_b_b@dark",
        "pistol_b_b_clip",
        "Hide a gun",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["femaleposea"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose A",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleadorable1"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable_style",
        "mrwitt",
        "Female Adorable 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleadorable2"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@adorable",
        "mrwitt",
        "Female Adorable 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposeb"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@characterful_poses",
        "mrwitt",
        "Female Pose B",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposec"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@elegant_floor_hock",
        "mrwitt",
        "Female Pose C",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposed"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_03",
        "mrwitt",
        "Female Pose D",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposee"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_04",
        "mrwitt",
        "Female Pose E",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposef"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_05",
        "mrwitt",
        "Female Pose F",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposeg"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_06",
        "mrwitt",
        "Female Pose G",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposeh"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_07",
        "mrwitt",
        "Female Pose H",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposei"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_09",
        "mrwitt",
        "Female Pose I",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposej"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_10",
        "mrwitt",
        "Female Pose J",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposek"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@femalepose_11",
        "mrwitt",
        "Female Pose K",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposel"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@finger_gun_pose",
        "mrwitt",
        "Female Pose L",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposem"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@models_in_action",
        "mrwitt",
        "Female Pose M",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposen"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@photo_session_posing",
        "mrwitt",
        "Female Pose N",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposeo"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@school_uniform_expression",
        "mrwitt",
        "Female Pose O",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposep"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@urban_posing",
        "mrwitt",
        "Female Pose P",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposer"] = { -- Custom Emote By DRX Animations
        "drx@femalestand14",
        "xrd",
        "Female Pose R",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposes"] = { -- Custom Emote By DRX Animations
        "drx@femalestand15",
        "xrd",
        "Female Pose S",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposet"] = { -- Custom Emote By DRX Animations
        "drx@femalestand16",
        "xrd",
        "Female Pose T",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposeu"] = { -- Custom Emote By DRX Animations
        "drx@f_sitcool",
        "drx",
        "Female Pose U",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["femaleposev"] = { -- Custom Emote By DRX Animations
        "drx@f_standcasual1",
        "drx",
        "Female Pose V",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposew"] = { -- Custom Emote By DRX Animations
        "drx@f_standcasual2",
        "drx",
        "Female Pose W",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposex"] = { -- Custom Emote By DRX Animations
    "drx@femalestand7",
    "xrd",
    "Female Pose X",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposey"] = { -- Custom Emote By DRX Animations
    "drx@femalestand8",
    "xrd",
    "Female Pose Y",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["femaleposez"] = { -- Custom Emote By DRX Animations
        "drx@femalestand9",
        "xrd",
        "Female Pose Z",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
	["maleposea"] = { -- Custom Emote By DRX Animations
        "drx@singlemale1",
        "drx",
        "Male Pose A",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
       }
    },
    ["maleposeb"] = { -- Custom Emote By DRX Animations
        "drx@singlemale2",
        "drx",
        "Male Pose B",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposec"] = { -- Custom Emote By DRX Animations
        "drx@singlemalestand1",
        "drx",
        "Male Pose C",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposed"] = { -- Custom Emote By DRX Animations
        "drx@singlemalestand2",
        "drx",
        "Male Pose D",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposee"] = { -- Custom Emote By DRX Animations
        "drx@m_doublehands",
        "drx",
        "Male Pose E",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposef"] = { -- Custom Emote By DRX Animations
        "drx@m_standhide",
        "drx",
        "Male Pose F",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposee1"] = { -- Custom Emote By DRX Animations
        "drx@malestand2",
        "xrd",
        "Male Pose E1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposef1"] = { -- Custom Emote By DRX Animations
        "drx@malestand3c",
        "xrd",
        "Male Pose F1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposeg"] = { -- Custom Emote By DRX Animations
        "drx@pose_male",
        "pose_male",
        "Male Pose G",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposeh"] = { -- Custom Emote By MrWitt
        "mrwitt@gentleman_style_male",
        "mrwitt",
        "Male Pose H",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposei"] = { -- Custom Emote By MrWitt
        "mrwitt@thoughtful_man_m",
        "mrwitt",
        "Male Pose I",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleposetie"] = { -- Custom Emotes By MrWhitt Provided To RPEmotes 01/08/2023
        "mrwitt@tie_perfection_in_suit_male",
        "mrwitt",
        "Male Pose Tie",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malecrossarms"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "cross_arms@dark",
        "cross_arms_clip",
        "Male Cross Arms",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malemiddlefinger"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "stand_middlefinger@dark",
        "stand_middlefinger_clip",
        "Male Middle Finger",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malefistface"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fist_face@darksj",
        "fist_face_clip",
        "Male Fist Face",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malepose4"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "fuckm@nxsty",
        "fuckm_clip",
        "Male Pose 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malegunpose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "gun_ink@darksj",
        "gun_ink_clip",
        "Male Gun Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malepose5"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "koko_male@darksj",
        "koko_male_clip",
        "Male Pose 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malepose3"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_1@darksj",
        "male_solo_1_clip",
        "Male Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malepose2"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_3@darksj",
        "male_solo_3_clip",
        "Male Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malepose1"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "male_solo_4@darksj",
        "male_solo_4_clip",
        "Male Pose 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["maleshoecheck"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "side_shoe_check@darksj",
        "side_shoe_check_clip",
        "Male Shoe Check Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["malegangpose"] = { -- Custom Emotes By Darks Animations Provided To RPEmotes 01/08/2023
        "westside_cap@darksj",
        "westside_cap_clip",
        "Male Gang Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["illuminati"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum003",
        "Illuminati Hand Sign",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["illuminati2"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum001",
        "Illuminati Hand Sign 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["illuminati3"] = { -- Custom Emote By EnchantedBrwny
        "ebrwny_illum",
        "ebrwny_illum002",
        "Illuminati Hand Sign 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["gunpoint"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
        "male_gun@vanessssi",
        "male_gun_clip",
        "Gun Point - Robbery",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["baddiepeace"] = { -- Custom Emote provided by 41anims
        "41animpeacebaddie@animation",
        "41animpeacebaddie_clip",
        "Baddie Peace Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["baddiebendova"] = { -- Custom Emote provided by 41anims
        "bendova@animation",
        "bendova_clip",
        "Baddie Bendova Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["baddienailpose"] = { -- Custom Emote provided by 41anims
        "nailpose@animation",
        "nailpose_clip",
        "Baddie Nail Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["aphroditepose"] = { -- Custom Emote provided by corbs
        "aphrodite1@corbs",
        "aphrodite1_clip",
        "Aphrodite Pose",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["aphroditepose2"] = { -- Custom Emote provided by corbs
        "aphrodite2@corbs",
        "aphrodite2_clip",
        "Aphrodite Pose 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["aphroditepose3"] = { -- Custom Emote provided by corbs
        "aphrodite3@corbs",
        "aphrodite3_clip",
        "Aphrodite Pose 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["pfootball1"] = { -- Custom Emote By Pazeee
        "pazeee@football1@animations",
        "pazeee@football1@clip",
        "Football Back Middle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["pfootball2"] = { -- Custom Emote By Pazeee
        "pazeee@football2@animations",
        "pazeee@football2@clip",
        "Football Back Right",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["pfootball3"] = { -- Custom Emote By Pazeee
        "pazeee@football3@animations",
        "pazeee@football3@clip",
        "Football Front Right",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["pfootball4"] = { -- Custom Emote By Pazeee
        "pazeee@football4@animations",
        "pazeee@football4@clip",
        "Football Front Middle",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["pfootball5"] = { -- Custom Emote By Pazeee
        "pazeee@football5@animations",
        "pazeee@football5@clip",
        "Football Front Left",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["pfootball6"] = { -- Custom Emote By Pazeee
        "pazeee@football6@animations",
        "pazeee@football6@clip",
        "Football Back Left",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["islampray1"] = { -- Made by Struggleville
        "smo@prayer_posepack_01",
        "prayer_posepack_01_clip",
        "Islam Pray - Qiyam Sadl",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray2"] = { -- Made by Struggleville
        "smo@prayer_posepack_02",
        "prayer_posepack_02_clip",
        "Islam Pray - Takbir",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray3"] = { -- Made by Struggleville
        "smo@prayer_posepack_03",
        "prayer_posepack_03_clip",
        "Islam Pray - Qiyam Qabd",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray4"] = { -- Made by Struggleville
        "smo@prayer_posepack_04",
        "prayer_posepack_04_clip",
        "Islam Pray - Ruku",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray5"] = { -- Made by Struggleville
        "smo@prayer_posepack_05",
        "prayer_posepack_05_clip",
        "Islam Pray - Sujud 1",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray6"] = { -- Made by Struggleville
        "smo@prayer_posepack_06",
        "prayer_posepack_06_clip",
        "Islam Pray - Julus",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray7"] = { -- Made by Struggleville
        "smo@prayer_posepack_07",
        "prayer_posepack_07_clip",
        "Islam Pray - Tasleem",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray8"] = { -- Made by Struggleville
        "smo@prayer_posepack_08",
        "prayer_posepack_08_clip",
        "Islam Pray - Tasleem 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray9"] = { -- Made by Struggleville
        "smo@prayer_posepack_09",
        "prayer_posepack_09_clip",
        "Islam Pray - tashahhud",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray10"] = { -- Made by Struggleville
        "smo@prayer_posepack_10",
        "prayer_posepack_10_clip",
        "Islam Pray - Tasleem 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },

    ["islampray11"] = { -- Made by Struggleville
        "smo@prayer_posepack_11",
        "prayer_posepack_11_clip",
        "Islam Pray - Julus 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray12"] = { -- Made by Struggleville
        "smo@prayer_posepack_12",
        "prayer_posepack_12_clip",
        "Islam Pray - Julus 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["islampray13"] = { -- Made by Struggleville
        "smo@prayer_posepack_13",
        "prayer_posepack_13_clip",
        "Islam Pray - Sujud 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["jewishpray"] = { -- Made by Struggleville
        "smo@prayer_posepack_14",
        "prayer_posepack_14_clip",
        "Jewish Pray",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["jewishpray2"] = { -- Made by Struggleville
        "smo@prayer_posepack_15",
        "prayer_posepack_15_clip",
        "Jewish Pray 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray"] = { -- Made by Struggleville
        "smo@prayer_posepack_16",
        "prayer_posepack_16_clip",
        "Christian Pray",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray2"] = { -- Made by Struggleville
        "smo@prayer_posepack_17",
        "prayer_posepack_17_clip",
        "Christian Pray 2",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray3"] = { -- Made by Struggleville
        "smo@prayer_posepack_18",
        "prayer_posepack_18_clip",
        "Christian Pray 3",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray4"] = { -- Made by Struggleville
        "smo@prayer_posepack_19",
        "prayer_posepack_19_clip",
        "Christian Pray 4",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray5"] = { -- Made by Struggleville
        "smo@prayer_posepack_20",
        "prayer_posepack_20_clip",
        "Christian Pray 5",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
        }

    },
    ["christianpray6"] = { -- Made by Struggleville
        "smo@prayer_posepack_21",
        "prayer_posepack_21_clip",
        "Christian Pray 6",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "shakeitoffhuman",
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
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "shakeitoffhuman",
        }
    },
    ['umbrella3'] = { -- Custom Emote Provided To RPEmotes By Mr Witt
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
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "shakeitoffhuman",
        }
    },
    ['umbrella4'] = { -- Custom Emote  By Mr ultrahacx
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
            onFootFlag = AnimFlag.MOVING,
            ExitEmote = "shakeitoffhuman",
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["gift"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["gift2"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["mallet"] = {
        "amb@world_human_hammering@male@base",
        "base",
        "Mallet",
        AnimationOptions = {
            Prop = 'prop_tool_mallet',
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.00,
                0.00,
                0.00,
                0.00
            },
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["cranialsaw"] = {
        "anim@heists@fleeca_bank@drilling",
        "drill_straight_end",
        "Cranial Saw",
        AnimationOptions = {
            Prop = 'prop_cranial_saw',
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.05,
                90.00,
                0.00,
                90.00
            },
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["nailgun"] = {
        "anim@heists@fleeca_bank@drilling",
        "drill_straight_end",
        "Nail Gun",
        AnimationOptions = {
            Prop = 'prop_tool_nailgun',
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.00,
                0.00,
                0.00,
                90.00
            },
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
	["maskup"] = {
        "anim@mp_helmets@on_foot",
        "visor_up",
        "Firefighter Unmask",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
        }
    },
	["maskdown"] = {
        "anim@mp_helmets@on_foot",
        "visor_down",
        "Firefighter Mask",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
        }
    },
    ["masktakeoff"] = {
        "anim@scripted@bty5@ig1_intimidate_actor@female_heeled@",
        "mask_action_b",
        "Take Off Mask",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
        }
    },
	["adjustbag"] = {
        "amb@world_human_hiker_standing@male@idle_a",
        "idle_b",
        "Firefighter Adjust Tank / Bag",
        AnimationOptions = {
			onFootFlag = AnimFlag.MOVING,
			EmoteDuration = 9500
        }
    },
	["adjustpanel"] = {
        "anim@scripted@heist@ig9_control_tower@male@",
        "loop",
        "Firefighter Pump PSI",
        AnimationOptions = {
            onFootFlag = AnimFlag.MOVING,
        }
    },
	["batontwirl"] = {
	        "anim@mp_player_intuppermale@baton_twirl",
	        "idle_a",
	        "Baton Twirl",
	        AnimationOptions = {
	            Prop = "w_me_nightstick",
	            PropBone = 28422,
	            PropPlacement = {
	                0.00,
	                0.00,
	                0.00,
	                0.00,
	                0.00,
	                0.00
	            },
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["syringe"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Syringe",
        AnimationOptions = {
            Prop = "prop_syringe_01",
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.03,
                0.01,
                90.0,
                0.0,
                -50.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["scalpel"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Scalpel",
        AnimationOptions = {
            Prop = "prop_scalpel",
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.03,
                0.01,
                0.0,
                180.0,
                -70.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bonesaw"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Bonesaw",
        AnimationOptions = {
            Prop = "prop_bonesaw",
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.03,
                0.01,
                0.0,
                180.0,
                -10.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["vulture"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Vulture",
        AnimationOptions = {
            Prop = "ch_prop_arcade_gun_bird_01a",
            PropBone = 18905,
            PropPlacement = {
                0.65,
                -1.65,
                0.55,
                -65.00,
                180.00,
                0.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stickbutterfly"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Stick Butterfly",
        AnimationOptions = {
            Prop = "prop_stickbfly",
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.01,
                0.01,
                -90.00,
                90.00,
                -25.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stickhummingbird"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Stick Hummingbird",
        AnimationOptions = {
            Prop = "prop_stickhbird",
            PropBone = 18905,
            PropPlacement = {
                0.11,
                0.01,
                0.01,
                -90.00,
                90.00,
                -25.0
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING,
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
    ["smoke5"] = { -- Custom Emote Provided To RPEmotes By Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            Prop = 'prop_bong_01',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            Prop = 'prop_bong_01',
            PropBone = 60309,
            PropPlacement = {
                0.0490,
               -0.2000,
                0.0800,
              -85.0199,
              102.3320,
              -15.0085
            },
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
    ["joint2"] = { -- Custom Emote Provided To RPEmotes By Sel of Darks Animations
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["whiskeybartender"] = {
        "mini@drinking",
        "shots_barman_a",
        "Pour Shot - Whiskey",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.05,
                -0.05,
                -0.05,
                -60.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["givedrink"] = {
        "anim@amb@nightclub@mini@drinking@bar@drink@beer",
        "intro_bartender",
        "Give Drink - Beer",
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
        }
    },
    ["givedrink2"] = {
        "anim@amb@nightclub@mini@drinking@bar@drink@beer",
        "intro_bartender",
        "Give Drink - Beer In Bag",
        AnimationOptions = {
             Prop = 'p_cs_bottle_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
        }
    },
    ["givedrink3"] = {
        "anim@amb@nightclub@mini@drinking@bar@drink@beer",
        "intro_bartender",
        "Give Drink - Beer Can",
        AnimationOptions = {
             Prop = 'v_res_tt_can01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
            --       PropPlacement = {-0.0, 0.03, -0.20, 5.0, 0.0, 0.0},
            --     F&B   L&R   U&D  R.F&B
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["xmassf"] = { -- Custom Prop by PataMods
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["xmascc"] = { -- Custom Prop by PataMods
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["xmascc2"] = { -- Custom Prop by PataMods
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["pizzaslice"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["pizzas"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["pizzas2"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["pizzas3"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["pizzas4"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["pizzas5"] = { -- Custom Prop by knjgh
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["bouquet"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bouquet2"] = {
        "hold_flowers@dad", -- Custom Animation By Darks Animations
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["doggy"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Doggy",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_toy_dog_01a',
            PropBone = 24817,
            PropPlacement = {
                -0.100000,
                0.460000,
                -0.016000,
                -180.000000,
                -90.000000,
                0.000000
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,

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
            onFootFlag = AnimFlag.MOVING,
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
                0.0000,
              -59.9999
				},
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["wt5"] = {
        "missfbi3_steve_phone",
        "steve_phone_idle_a",
        "Walkie Talkie 5",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 18905,
            PropPlacement = {
                0.1300,
                0.0500,
                0.0100,
             -113.0000,
                0.0000,
              -60.0000
				},
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["protest4"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 4 - LSPD",
        AnimationOptions = {
            Prop = "prop_protestsign_01_fh",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["protest5"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 5 - FIB",
        AnimationOptions = {
            Prop = "prop_protestsign_02_fh",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["protest6"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 6 - IAA",
        AnimationOptions = {
            Prop = "prop_protestsign_03_fh",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["protest7"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 7 - PIA",
        AnimationOptions = {
            Prop = "prop_protestsign_04_fh",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.914205,
                -13.957235
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 10KG",
        AnimationOptions = {
            Prop = 'prop_barbell_10kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell2"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 20KG",
        AnimationOptions = {
            Prop = 'prop_barbell_20kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell3"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 30KG",
        AnimationOptions = {
            Prop = 'prop_barbell_30kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell4"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 40KG",
        AnimationOptions = {
            Prop = 'prop_barbell_40kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell5"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 50KG",
        AnimationOptions = {
            Prop = 'prop_barbell_50kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell6"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 60KG",
        AnimationOptions = {
            Prop = 'prop_barbell_60kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell7"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 80KG",
        AnimationOptions = {
            Prop = 'prop_barbell_80kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["weightsbarbell8"] = {
        "amb@prop_human_seat_muscle_bench_press@idle_a",
        "idle_a",
        "Weights - Barbell 100KG",
        AnimationOptions = {
            Prop = 'prop_barbell_100kg',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.000,
                0.000,
                0.000,
                0.000,
                0.000,
                0.000
            },
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["mnc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Milk & Cookies",
        AnimationOptions = {
            Prop = "m23_2_prop_m32_milkncookies_01a",
            PropBone = 57005, -- Right Wrist
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microck"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckb"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckc"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckd"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microcke"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckf"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckg"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckh"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microcki"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["microckj"] = { -- Custom Emote Provided To RpEmotes By Prue颜
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        },
        AdultAnimation = true
    },
    ["hoe"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Hoe",
        AnimationOptions = {
            Prop = "prop_tool_shovel5",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.500,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["hoe2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Hoe 2",
        AnimationOptions = {
            Prop = "prop_tool_shovel5",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.500,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["hoe3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "idle_b",
        "Hoe 3",
        AnimationOptions = {
            Prop = "prop_tool_shovel5",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.500,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["hoe4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Hoe 4",
        AnimationOptions = {
            Prop = "prop_tool_shovel5",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.500,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
        }
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
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
                -0.500,
                -20.00,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["champw2"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter 2",
        AnimationOptions = {
            Prop = "h4_prop_h4_champ_tray_01b",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["champw3"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter 3",
        AnimationOptions = {
            Prop = "h4_prop_h4_champ_tray_01c",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.LOOP,
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
    onFootFlag = AnimFlag.LOOP,
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
        onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.LOOP,
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
        onFootFlag = AnimFlag.LOOP,
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
        onFootFlag = AnimFlag.LOOP,
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
        onFootFlag = AnimFlag.LOOP,
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
        onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
                -0.1,
                -0.04,
                78.0,
                -20.0,
                175.0
            },
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["medbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Bag 2",
        AnimationOptions = {
            Prop = "v_ret_ta_firstaid",
            PropBone = 57005,
            PropPlacement = {
                0.210000,
                0.00000,
                -0.030000,
                -100.000000,
                -180.000000,
                -78.000000
            },
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["beachbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beach Bag",
        AnimationOptions = {
            Prop = "prop_beachbag_05",
            PropBone = 28422,
            PropPlacement = {
                0.400000,
                0.030000,
                0.010000,
                0.000000,
                -90.000000,
                100.000000
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["beachbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beach Bag 2",
        AnimationOptions = {
            Prop = "prop_beachbag_06",
            PropBone = 28422,
            PropPlacement = {
                0.400000,
                0.030000,
                0.010000,
                0.000000,
                -90.000000,
                100.000000
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["beachbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beach Bag 3",
        AnimationOptions = {
            Prop = "prop_beachbag_01",
            PropBone = 28422,
            PropPlacement = {
                0.400000,
                0.030000,
                0.010000,
                0.000000,
                -90.000000,
                100.000000
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dufbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag",
        AnimationOptions = {
            Prop = "prop_big_bag_01",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dufbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag 2",
        AnimationOptions = {
            Prop = "v_ret_gc_bag02",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["dufbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag 3",
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
        ["handbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Hand Bag 2",
        AnimationOptions = {
            Prop = 'v_ret_ps_bag_02',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.52000,
                0.030000,
                0.00000,
                0.000000,
                -90.000000,
                100.000000
            },
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["idcard"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcardc"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcardd"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcarde"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcardf"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcardg"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
        }
    },
    ["idcardh"] = {
        "cop_badge_1@dad", -- Custom Animation by Darks Animations
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING,
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
            onFootflag = AnimFlag.STUCK,
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
    ["smssit"] = { -- Custom Emote Provided To RPEmotes By Mr. Witt
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["golfswing"] = {
        "rcmnigel1d",
        "swing_a_mark",
        "Golf Swing",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["leanphone"] = {
        "amb@world_human_leaning@male@wall@back@mobile@base",
        "base",
        "Leaning With Phone",
        AnimationOptions = {
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        },
    },
    ["gamer"] = { -- Custom Emote By MissSnowie
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["gamer2"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
        }
    },
    ["study"] = { -- Custom Emote By Dark Animations exclusive to RPEmotes
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["propose"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose",
        AnimationOptions = {
            Prop = 'ultra_ringcase', -- Custom prop by ultrahacx
            PropBone = 28422,
            PropPlacement = {
                0.0980,
                0.0200,
               -0.0540,
               -138.6571,
                4.4141,
               -79.3552
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["propose2"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 2 - Valentines Day",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday', -- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["propose3"] = { -- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose 3",
        AnimationOptions = {
            Prop = 'pata_freevalentinesday2', -- Custom prop by PataMods
            PropBone = 64064,
            PropPlacement = {
                0.0190,
                0.0480,
                0.0110,
               -9.0350,
                88.4373,
                -9.8783
            },
            onFootFlag = AnimFlag.LOOP
        }
    },
    ["holdfw"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Hold Firework",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', -- blue, green, red, purple pink, cyan, yellow, white
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
            onFootFlag = AnimFlag.MOVING,
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
    ["chillteq"] = { -- Custom Emote By Amnilka
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
            onFootFlag = AnimFlag.LOOP,
            ExitEmote = "getup",
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.LOOP
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["skatehold7"] = { -- Custom Emote By DRX Animations
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["skatehold8"] = { -- Custom Emote By DRX Animations
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
        abusable = true,
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["shield2"] = {
        "beachanims@molly",
        "beachanim_surf_clip",
        "Shield 2",
        abusable = true,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.MOVING,
        }
   },
   ["businessbag"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.MOVING,
        }
   },
   ["businessbag2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
        }
   },
   ["squatcash"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["squatmask"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
        }
   },
   ["squatmask1"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
        }
   },
   ["squatmask2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
        }
   },
   ["selfiesquat"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Mr Witt
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.MOVING,
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
        onFootFlag = AnimFlag.MOVING,
        },
    },
    ["squatgunpose2"] = { -- Custom Emote By Darks Animations
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
        onFootFlag = AnimFlag.LOOP,
        },
    },
    ["rap2"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_1@darksj",
       "mic_pose_1_clip",
        "Rap / Sing 2 - Microphone",
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["rap3"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_2@darksj",
       "mic_pose_2_clip",
        "Rap / Sing 3 - Microphone Rock Hand Sign",
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["rap4"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_3@darksj",
       "mic_pose_3_clip",
        "Rap / Sing 4 - Microphone Bend Back",
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["rap5"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_4@darksj",
       "mic_pose_4_clip",
        "Rap / Sing 5 - Microphone Kneel",
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
            onFootFlag = AnimFlag.LOOP,
			ExitEmote = "getup",
        }
    },
    ["rap6"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
       "mic_pose_5_a@darksj",
       "mic_pose_5_a_clip",
        "Rap / Sing 6 - Microphone",
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["bbat"] = { -- Custom Emote Provided To RPEmotes Courtesy Of Darks Animations
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
    ["stopsign"] = { -- Custom Prop By PNWParksFan
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stopsign2"] = { -- Custom Prop By PNWParksFan
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stopsign3"] = { -- Custom Prop By PNWParksFan
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
            onFootFlag = AnimFlag.MOVING,
        }
    },
    ["stopsign4"] = { -- Custom Prop By PNWParksFan
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
            onFootFlag = AnimFlag.MOVING,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
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
            onFootFlag = AnimFlag.LOOP,
        }
    },
}
