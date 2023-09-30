Config = {}
Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["G"] = 0x760A9C6F,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["3"] = 0x4F49CC4C,
    ["4"] = 0x8F9F9E58,
}
Config.updatedinventoryammo = true -- set to false if ur using an out of date inventory NEW LINE

Config.removescope = true -- set to true if you want scoped rifles to come with no scopes and players need to add the scope


Config.craftingtakeitems = true -- if mini game fails take items from player
Config.adminwebhook = ""
Config.jobonly = true -- only players with mentioned jobs below can access crafting/customization station
Config.jobrankcustomization = 0
Config.jobrankcrafting = 0

Config.checkguncommand = "checkgun"

Config.weaponshops = true -- endable or disable weapon shops

Config.craftinganimations = "WORLD_HUMAN_CROUCH_INSPECT" -- animation for crafting
Config.customizationanimation = "WORLD_HUMAN_WRITE_NOTEBOOK" -- animations for customizations

Config.customizationLocations = { 
    Valentine = {	   
        Pos = {x= -277.22, y=778.922, z=119.50}, -- location weapon customization station
        Pos2 = {x= -276.47, y=778.922, z=119.80}, -- location spawned weapon 3d model
        job = {"gunsmith"},
    },
    Rhodes = {	   
        Pos = {x= 1327.05, y=-1322.05, z=78.05}, -- location weapon customization station
        Pos2 = {x= 1326.35, y=-1322.05, z=78.08}, -- location spawned weapon 3d model
        job = {"gunsmith"},

    },
    SaintDenis = {	   
        Pos = {x= 2712.148, y=-1283.020, z=49.636}, -- location weapon customization station
        Pos2 = {x= 2712.649, y=-1282.320, z=49.86}, -- location spawned weapon 3d model
        job = {"gunsmith"},

    },
    Annesburg = {	   
        Pos = {x= 2950.90, y=1316.09, z=44.82}, -- location weapon customization station
        Pos2 = {x= 2949.80, y=1316.81, z=45.01}, -- location spawned weapon 3d model
        job = {"gunsmith"},

    },
    Blackwater = {	   
        Pos = {x= -837.1, y= -1278.73, z= 43.68}, -- location weapon customization station
        Pos2 = {x= -837.24, y=-1277.83, z=43.88}, -- location spawned weapon 3d model
        job = {"gunsmith"},

    },
    Tumbleweed = {	   
        Pos = {x= -5505.88, y= -2966.16, z= -0.72}, -- location weapon customization station
        Pos2 = {x= -5506.70, y= -2966.54, z= -0.75}, -- location spawned weapon 3d model
        job = {"gunsmith"},
    },
    --Armadillo = {	   
        --Pos = {x= -3676.54, y= -2590.73, z= -13.86}, -- location weapon customization station
        --Pos2 = {x= -3676.59, y= -2591.23, z= -13.90}, -- location spawned weapon 3d model
        --job = {"gunsmith"},
    --},
    -- Strawberry = {	   
    --     Pos = {x= -1766.17, y=-380.322, z=157.73}, -- location weapon customization station
    --     Pos2 = {x= -1767.07, y=-380.52, z=158.33}, -- location spawned weapon 3d model
    --     job = {"gunsmith"},
    -- },
}

Config.craftinglocation = { 
--[[     Valentine = {	   
        Pos = {x= -277.0, y=780.689, z=119.68}, -- location weapon crafting station
        job = {"gunsmith"},
    },
    Bounty = {	   
        Pos = {x= 2956.87, y=1377.67, z=56.30}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Shaman = {	   
        Pos = {x= 898.06, y=268.31, z=116.18}, -- location weapon crafting station
        job = {"gunsmith"},
    },
    Wapiti = {	   
        Pos = {x= 445.90, y=2245.26, z=248.80}, -- location weapon crafting station
        job = {"gunsmith"},
    },
    Rhodes = {	   
        Pos = {x= 1330.15, y=-1321.06, z=77.88}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    SaintDenis = {	   
        Pos = {x= 2708.766, y=-1284.148, z=49.63}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Annesburg = {	   
        Pos = {x= 2951.28, y=1314.52, z=44.82}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    cumberlandguild = {	   
        Pos = {x= -30.09, y=1234.70, z=172.95}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    omenbounty = {	   
        Pos = {x= -2185.77, y=723.40, z=122.44}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    grimfellows = {	   
        Pos = {x=-1799.81,y=-385.16,z=160.29}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Blackwater = {	   
        Pos = {x=-876.09,y=-1389.2,z=44.81}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Tumbleweed = {	   
        Pos = {x= -5508.79, y=-2968.97, z=-0.63}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Armadillo = {	   
        Pos = {x= -3676.43, y=-2601.06, z=-13.32}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    Strawberry = {	   
        Pos = {x= -1761.88, y=-382.47, z=157.74}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    bigvalleynative = {	   
        Pos = {x= -1842.61, y=426.53, z=114.68}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    blacksmith = {	   
        Pos = {x= -1828.47, y=-568.41, z=156.00}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    armablacksmith = {	   
        Pos = {x= -3693.01, y=-2565.36, z=-13.61}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    macfarlansmith = {	   
        Pos = {x= -2401.61, y=-2381.74, z=61.19}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    blacksmokeshaman = {	   
        Pos = {x= -2604.66, y=-29.90, z=160.62}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    bubbablacksmith = {	   
        Pos = {x= -4828.58, y=-2675.14, z=-12.57}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    sdblacksmith = {	   
        Pos = {x= 2500.40, y=-1447.87, z=46.31}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    bwblacksmith = {	   
        Pos = {x= -870.12, y=-1393.34, z=43.51}, -- location weapon crafting station
        job = {"gunsmith"},
    },
    valwahyashaman = {	   
        Pos = {x= 2546.8 , y=804.07, z=76.3}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    regulators = {	   
        Pos = {x= -861.12, y=-733.33, z=59.71}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    beanbounty = {	   
        Pos = {x= 1763.27, y=-466.42, z=45.73}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    rhodesblacksmith = {	   
        Pos = {x= 1306.51, y=-1358.78, z=77.87}, -- location weapon crafting station
        job = {"gunsmith"},

    },
    pinkerton = {	   
        Pos = {x= 2700.36, y=-1196.93, z=60.28}, -- location weapon crafting station
        job = {"gunsmith"},

    }, ]]
}


