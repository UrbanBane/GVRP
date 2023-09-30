Config = {
    --add your language
    defaultlang = "en_lang",

    Key = 0x446258B6, --PGUP open menu

    CanOpenMenuWhenDead = true, -- if true any staff can open menu when dead, !WARNING! staff can abuse this to get revived

    ---------------------- NO CLIP ----------------------
    ShowControls = true,
    Controls = {

        goUp = 0xDE794E3E, -- Q
        goDown = 0x26E9DC00, -- Z
        turnLeft = 0x7065027D, -- A
        turnRight = 0xB4E465B4, -- D
        goForward = 0x8FD015D8, -- W
        goBackward = 0xD27782E3, -- S
        changeSpeed = 0x8FFC75D6, -- L-Shift
        camMode = 0x24978A28, -- H
        ShowControls = 0x8AAA0AD4 -- left alt
    },

    Speeds = {
        -- You can add or edit existing speeds with relative label
        { label = 'Very Slow', speed = 0 },
        { label = 'Slow', speed = 0.5 },
        { label = 'Normal', speed = 2 },
        { label = 'Fast', speed = 10 },
        { label = 'Very Fast', speed = 15 },
        { label = 'Max', speed = 29 },
    },

    Offsets = {
        y = 0.2, -- Forward and backward movement speed multiplier
        z = 0.1, -- Upward and downward movement speed multiplier
        h = 1, -- Rotation movement speed multiplier
    },

    FrozenPosition = true,


    -----------------------------------------------------
    -- Users scoreboard
    -- only one can be added
    -- choose what info should show to all users
    showUsersInfo = "showAll", -- showAll --showJob --showGroup -- showID

    --------------------------------------------------------
    -- WEBHOOKS/LOGS
    ReportLogs   = {
        Reports = "", -- for reports
        RequestStaff = "", -- for request staff
        BugReport = "", -- for bug report
        RulesBroken = "", -- for rules broken report
        Cheating = "" -- for cheating report
    },
    AlertCooldown = 60, -- cooldown for request staff to request again (seconds)
    webhookColor = 16711680, --EMBED COLOR RED
    name         = "VORP", --NAME OF EMBED
    logo         = "https://via.placeholder.com/30x30", --HEAD LOGO
    footerLogo   = "https://via.placeholder.com/30x30", --FOOTER LOGO
    Avatar       = "https://via.placeholder.com/30x30", -- AVATAR LOGO
    -- delete the ones you dont want to LOG into your discord.
    BoosterLogs  = {
        NoClip = "",
        InfiniteAmmo = "",
        GoldenCores = "",
        GodMode = "",
        SelfHeal = "",
        SelfRevive = "",
        SelfSpawnHorse = "",
        SelfSpawnWagon = "",
    },
    -- delete the ones you dont want to LOG into your discord.
    AdminLogs    = {
        --simple actions
        Freezed = "",
        Bring = "",
        Goto = "",
        Revive = "",
        Heal = "",
        Warned = "",
        Unwarned = "",
        Spectate = "",
        --advanced actions
        Respawn = "",
        Kick = "",
        Ban = "",
        Unban = "",
        Whitelist = "",
        Unwhitelist = "",
        Setgroup = "",
        Setjob = "",
        Announce = ""

    },
    -- delete the ones you dont want to LOG into your discord.
    TeleportLogs = {
        Tpm = "",
        Tptocoords = "",
        Tptoplayer = "",
        Bringplayer = "",
    },
    -- delete the ones you dont want to LOG into your discord.
    DatabaseLogs = {
        Giveitem = "",
        Giveweapon = "",
        Givecurrency = "",
        Givehorse = "",
        Givewagon = "",
        Clearmoney = "",
        Cleargold = "",
        Clearitems = "",
        Clearweapons = "",
    },

    -- Configurable controls
    ToggleControl        = `INPUT_PHOTO_MODE_PC`,                     -- F6
    IncreaseSpeedControl = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`}, -- Page Up, Middle Wheel Up
    DecreaseSpeedControl = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`}, -- Page Down, Middle Wheel Down
    UpControl            = `INPUT_JUMP`,                             -- Spacebar
    DownControl          = `INPUT_SPRINT`,                            -- Shift
    ForwardControl       = `INPUT_MOVE_UP_ONLY`,                      -- W
    BackwardControl      = `INPUT_MOVE_DOWN_ONLY`,                    -- S
    LeftControl          = `INPUT_MOVE_LEFT_ONLY`,                    -- A
    RightControl         = `INPUT_MOVE_RIGHT_ONLY`,                   -- D
    ToggleModeControl    = `INPUT_COVER`,                             -- Q
    FollowCamControl     = `INPUT_MULTIPLAYER_PREDATOR_ABILITY`,      -- H

    -- Maximum speed
    MaxSpeed = 10.0,

    -- Minimum speed
    MinSpeed = 0.1,

    -- How much speed increases by when speed up/down controls are pressed
    SpeedIncrement = 0.1,

    -- Default speed
    Speed = 0.1,

    -- Whether to enable relative mode by default.
    --
    -- false: Movement is based on the cardinal directions.
    -- 	W = North
    -- 	S = South
    -- 	A = East
    -- 	D = West
    --
    -- true: Movement is based on the current heading.
    -- 	W = forward
    -- 	S = backwards
    -- 	A = rotate left
    -- 	D = rotate right
    --
    RelativeMode = true,

    -- Whether to enable follow cam mode by default.
    FollowCam = false,



    AttackTypes = {
        {
            models = {
                `A_C_Alligator_01`,
                `A_C_Alligator_02`,
                `A_C_Alligator_03`,
                `MP_A_C_Alligator_01`
            },
            animation = {
                dict = "creatures_reptile@alligator@melee@streamed_core",
                name = "attack"
            },
            radius = 2.5,
            force = 2.0,
            damage = 25
        },
        {
            models = {
                `A_C_Badger_01`
            },
            animation = {
                dict = "creatures_mammal@badger@melee",
                name = "nip_attack"
            },
            radius = 2.0,
            force = 1.0,
            damage = 15
        },
        {
            models = {
                `A_C_Bear_01`,
                `A_C_BearBlack_01`,
                `MP_A_C_Bear_01`
            },
            animation = {
                dict = "creatures_mammal@bear@melee@streamed_core",
                name = "attack"
            },
            radius = 3.0,
            force = 5.0,
            damage = 30
        },
        {
            models = {
                `A_C_Beaver_01`,
                `MP_A_C_Beaver_01`
            },
            animation = {
                dict = "creatures_mammal@beaver@melee",
                name = "nip_attack"
            },
            radius = 2.0,
            force = 1.0,
            damage = 15
        },
        {
            models = {
                `A_C_Cougar_01`,
                `A_C_Panther_01`,
                `MP_A_C_Cougar_01`,
                `MP_A_C_Panther_01`
            },
            animation = {
                dict = "creatures_mammal@cougar@melee@streamed_core",
                name = "attack"
            },
            radius = 2.0,
            force = 3.0,
            damage = 20
        },
        {
            models = {
                `A_C_Coyote_01`,
                `MP_A_C_Coyote_01`
            },
            animation = {
                dict = "creatures_mammal@coyote@melee@streamed_core",
                name = "attack"
            },
            radius = 2.5,
            force = 2.0,
            damage = 25
        },
        {
            models = {
                `A_C_DogAmericanFoxhound_01`,
                `A_C_DogAustralianShepherd_01`,
                `A_C_DogBluetickCoonhound_01`,
                `A_C_DogCatahoulaCur_01`,
                `A_C_DogChesBayRetriever_01`,
                `A_C_DogCollie_01`,
                `A_C_DogHobo_01`,
                `A_C_DogHound_01`,
                `A_C_DogHusky_01`,
                `A_C_DogLab_01`,
                `A_C_DogLion_01`,
                `A_C_DogPoodle_01`,
                `A_C_DogRufus_01`,
                `A_C_DogStreet_01`,
                `MP_A_C_DogAmericanFoxhound_01`
            },
            animation = {
                dict = "creatures_mammal@dog_pers@melee@streamed_core",
                name = "attack"
            },
            radius = 2.5,
            force = 2.0,
            damage = 20
        },
        {
            models = {
                `A_C_Wolf`,
                `MP_A_C_Wolf_01`,
                `A_C_LionMangy_01`
            },
            animation = {
                dict = "creatures_mammal@wolf@melee@attacks@streamed_core",
                name = "attack"
            },
            radius = 3.0,
            force = 3.0,
            damage = 30
        },
        {
            models = {
                `A_C_Wolf_Medium`
            },
            animation = {
                dict = "creatures_mammal@wolf_medium@melee@attacks@streamed_core",
                name = "attack"
            },
            radius = 3.0,
            force = 3.0,
            damage = 25
        },
        {
            models = {
                `A_C_Wolf_Small`
            },
            animation = {
                dict = "creatures_mammal@wolf_small@melee@attacks@streamed_core",
                name = "attack"
            },
            radius = 3.0,
            force = 3.0,
            damage = 20
        }
    },
    AttackCooldown = 5000,

    GangInfo = {
        ['addler_ranch'] = {
            pedspool = {
                's_m_m_army_01',
                's_m_y_army_01',
                'u_m_m_armytrn4_01',
            },
            pedinfo= {
                {x = -529.3, y = 2704.3, z = 318.0, style = 1, weapon ="WEAPON_RIFLE_SPRINGFIELD"}, -- Behind farther outhouse
                {x = -528.9, y = 2672.1, z = 318.1, style = 1, weapon ="WEAPON_SNIPERRIFLE_CARCANO"}, -- Behind barn
                {x = -529.4, y = 2668.2, z = 318.4, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- Also behind barn
                {x = -529.3, y = 2666.2, z = 318.5, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- Third behind barn
                {x = -552.1, y = 2692.5, z = 318.4, style = 1, weapon ="WEAPON_RIFLE_SPRINGFIELD"}, -- Behind the house
                {x = -552.8, y = 2697.4, z = 318.6, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- Behind outhouse near cabin
                --{x = -518.0, y = 2809.3, z = 346.3, style = 0, weapon ="WEAPON_SNIPERRIFLE_CARCANO"}, -- Sniper on N. hilll overlooking camp
                --{x = -594.0, y = 2622.8, z = 326.1, style = 0, weapon ="WEAPON_SNIPERRIFLE_CARCANO"}, -- Sniper on S. hilll overlooking camp by dead tree
                {x = -484.9, y = 2689.6, z = 319.6, style = 1, weapon ="WEAPON_RIFLE_SPRINGFIELD"}, -- Behind rocks at back of property
                {x = -632.9, y = 2717.5, z = 327.3, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- Guy in woods behind
                --{x = -632.9, y = 2713.3, z = 328.9, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- guy in woods behind
            }
        },
        ['gaptooth'] = {
            pedspool = {
                's_m_m_army_01',
                's_m_y_army_01',
                'u_m_m_armytrn4_01',
            },
            pedinfo= {
                {x = -5981.3, y = -3220.0, z = -22.2, style = 1, weapon ="WEAPON_RIFLE_SPRINGFIELD"}, -- by the mine entrance
                {x = -5962.2, y = -3218.8, z = -22.3, style = 1, weapon ="WEAPON_SNIPERRIFLE_CARCANO"}, -- by the mine entrance
                {x = -5966.2, y = -3210.8, z = -22.5, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- by the mine entrance
                {x = -5970.3, y = -3203.4, z = -20.5, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- by the mine entrance
            }
        },
        ['rhodes'] = {
            pedspool = {
                's_m_m_army_01',
                's_m_y_army_01',
                'u_m_m_armytrn4_01',
            },
            pedinfo= {
                {x = 1348.9, y = -1334.0, z = 76.7, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                {x = 1342.4, y = -1330.8, z = 76.6, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                {x = 1393.3, y = -1333.2, z = 76.9, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                {x = 1388.3, y = -1282.9, z = 76.4, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                {x = 1364.6, y = -1264.8, z = 77.3, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                {x = 1348.7, y = -1275.3, z = 76.3, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office
                --{x = 1335.9, y = -1300.2, z = 75.6, style = 1, weapon ="WEAPON_REPEATER_WINCHESTER"}, -- attacking the office

            }
        },
        ['horseshoe_overlook'] = {
            pedspool = {
                'A_C_Wolf',
            },
            pedinfo= {
                {x = -62.39, y = 0.2,    z = 95.54, style = 1, weapon =""}, -- Attacking the campsite
                {x = -60.03, y = -7.03,  z = 96.0, style = 1, weapon =""}, -- Attacking the campsite
                {x = -56.35, y = -0.51,  z = 96.18, style = 1, weapon =""}, -- Attacking the campsite
                {x = -68.02, y = -24.65, z = 95.92, style = 1, weapon =""}, -- Attacking the campsite
                {x = -73.25, y = 13.96,  z = 92.9, style = 1, weapon =""}, -- Attacking the campsite
                {x = -64.61, y = 14.79,  z = 93.43, style = 1, weapon =""}, -- Attacking the campsite
                {x = -53.13, y = 16.34,  z = 93.85, style = 1, weapon =""}, -- Attacking the campsite
            }
        },
        ['ewing_mine'] = {
            pedspool = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLSLEEPING',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
                'CS_ColmODriscoll',
            },
            pedinfo= {
                {x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1898.66, y = 1333.65,z = 200.18, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1875.97, y = 1361.87,z = 211.50, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1872.34, y = 1359.36,z = 211.52, style = 1,weapon ="WEAPON_RIFLE_BOLTACTION"},
                {x = -1891.81, y = 1371.41,z = 206.44, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1898.66, y = 1333.65,z = 200.18, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
                {x = -1875.97, y = 1361.87,z = 211.50, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1872.34, y = 1359.36,z = 211.52, style = 1,weapon ="WEAPON_RIFLE_BOLTACTION"},
                {x = -1891.81, y = 1371.41,z = 206.44, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1898.66, y = 1333.65,z = 200.18, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
                {x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
                {x = -1875.97, y = 1361.87,z = 211.50, style = 1,weapon ="WEAPON_RIFLE_BOLTACTION"},
                {x = -1901.09, y = 1362.89,z = 202.62, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1898.94, y = 1361.98,z = 202.37, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1897.36, y = 1362.03,z = 202.41, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1898.04, y = 1358.23,z = 202.48, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
            }
        },
        ['ewing_ambush'] = {
            pedspool = {
                'U_M_M_ODriscollBrawler_01',
                'U_M_M_BHT_ODRISCOLLSLEEPING',
                'U_M_M_BHT_ODRISCOLLMAULED',
                'U_M_M_BHT_ODRISCOLLDRUNK',
                'CS_ColmODriscoll',
            },
            pedinfo= {
                {x = -1994.92, y = 1167.56,z = 175.20, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1908.51, y = 1199.52,z = 183.61, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1950.16, y = 1163.50,z = 176.22, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
                {x = -1952.93, y = 1198.80,z = 188.81, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
                {x = -1957.03, y = 1199.73,z = 190.31, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
            }
        },
    }
}
