Config = {}
Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["G"] = 0x760A9C6F,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["3"] = 0x4F49CC4C,
    ["4"] = 0x8F9F9E58,
}
Config.craftingtakeitems = true -- if mini game fails take items from player
Config.adminwebhook = ""
Config.jobonly = true -- only players with mentioned jobs below can access crafting/customization station
Config.job ={"gunsmith"}
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
    },
    Rhodes = {	   
        Pos = {x= 1327.05, y=-1322.05, z=78.05}, -- location weapon customization station
        Pos2 = {x= 1326.35, y=-1322.05, z=78.08}, -- location spawned weapon 3d model
    },
    SaintDenis = {	   
        Pos = {x= 2712.148, y=-1283.020, z=49.636}, -- location weapon customization station
        Pos2 = {x= 2712.649, y=-1282.320, z=49.86}, -- location spawned weapon 3d model
    },
    Annesburg = {	   
        Pos = {x= 2950.90, y=1316.09, z=44.82}, -- location weapon customization station
        Pos2 = {x= 2949.80, y=1316.81, z=45.01}, -- location spawned weapon 3d model
    },
    Blackwater = {	   
        Pos = {x= -843.09, y=-1208.65, z=44.10}, -- location weapon customization station
        Pos2 = {x= -843.09, y=-1208.82, z=44.10}, -- location spawned weapon 3d model
    },
    Tumbleweed = {	   
        Pos = {x= -5507.00, y=-2963.76, z=-0.63}, -- location weapon customization station
        Pos2 = {x= -5507.40, y=-2963.46, z=-0.30}, -- location spawned weapon 3d model
    },
    Armadillo = {	   
        Pos = {x= -3676.70, y=-2605.13, z=-13.72}, -- location weapon customization station
        Pos2 = {x= -3676.70, y=-2604.63, z=-13.50}, -- location spawned weapon 3d model
    },
    Strawberry = {	   
        Pos = {x= -1766.17, y=-380.322, z=157.73}, -- location weapon customization station
        Pos2 = {x= -1767.07, y=-380.52, z=158.33}, -- location spawned weapon 3d model
    },
}

Config.craftinglocation = { 
    Valentine = {	   
        Pos = {x= -277.0, y=780.689, z=119.68}, -- location weapon crafting station
    },
    Bounty = {	   
        Pos = {x= 2956.87, y=1377.67, z=56.30}, -- location weapon crafting station
    },
    Shaman = {	   
        Pos = {x= 898.06, y=268.31, z=116.18}, -- location weapon crafting station
    },
    Wapiti = {	   
        Pos = {x= 442.77, y=2218.68, z=247.52}, -- location weapon crafting station
    },
    Rhodes = {	   
        Pos = {x= 1330.15, y=-1321.06, z=77.88}, -- location weapon crafting station
    },
    SaintDenis = {	   
        Pos = {x= 2708.766, y=-1284.148, z=49.63}, -- location weapon crafting station
    },
    Annesburg = {	   
        Pos = {x= 2951.28, y=1314.52, z=44.82}, -- location weapon crafting station
    },
    cumberlandguild = {	   
        Pos = {x= -30.09, y=1234.70, z=172.95}, -- location weapon crafting station
    },
    omenbounty = {	   
        Pos = {x= -1411.72, y=-2334.10, z=43.10}, -- location weapon crafting station
    },
    Blackwater = {	   
        Pos = {x= -848.74, y=-1214.47, z=43.53}, -- location weapon crafting station
    },
    Tumbleweed = {	   
        Pos = {x= -5508.79, y=-2968.97, z=-0.63}, -- location weapon crafting station
    },
    Armadillo = {	   
        Pos = {x= -3676.43, y=-2601.06, z=-13.32}, -- location weapon crafting station
    },
    Strawberry = {	   
        Pos = {x= -1761.88, y=-382.47, z=157.74}, -- location weapon crafting station
    },
    bigvalleynative = {	   
        Pos = {x= -1842.61, y=426.53, z=114.68}, -- location weapon crafting station
    },
    blacksmith = {	   
        Pos = {x= -1828.47, y=-568.41, z=156.00}, -- location weapon crafting station
    },
    armablacksmith = {	   
        Pos = {x= -3693.01, y=-2565.36, z=-13.61}, -- location weapon crafting station
    },
}


