Config3 = {}
Config3.ammo = { -- both crafting and shops
    ["Repeater"] = {
        ["Repeater Ammo Normal"] = {
            key = "AMMO_REPEATER",-- DO NOT CHANGE THESE  
            item = "ammorepeaternormal",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200, -- max ammo allowed by game 
            guncheck = 0xDDB2578E95EF7138,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "nitrite",label = "nitrite", amount = 1},
            }, 
        },
        ["Repeater Ammo Express"] = {
            key = "AMMO_REPEATER_EXPRESS", 
            item = "ammorepeaterexpress",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0xDDB2578E95EF7138,
            qt = 10, -- number of bullets in box    
            expadd = 1,
            expreq = 50,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 3},
                item3 = {name = "nitrite",label = "nitrite", amount = 3},
            }, 
        },
        ["Repeater Ammo Explosive"] = {
            key = "AMMO_REPEATER_EXPRESS_EXPLOSIVE", 
            item = "ammorepeaterexplosive",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 20,
            guncheck = 0xDDB2578E95EF7138,
            qt = 10, -- number of bullets in box
            expadd = 1,
            expreq = 50,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 5},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 5},
            }, 
        },
        ["Repeater Ammo Velocity"] = {
            key = "AMMO_REPEATER_HIGH_VELOCITY", 
            item = "ammorepeatervelocity",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0xDDB2578E95EF7138,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 10,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 2},
            }, 
        },
        ["Repeater Ammo Splitpoint"] = {
            key = "AMMO_REPEATER_SPLIT_POINT", 
            item = "ammorepeatersplitpoint",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 100,
            guncheck = 0xDDB2578E95EF7138,
            qt = 105, -- number of bullets in box	    
            expadd = 1,
            expreq = 30,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 2},
            }, 
        },
    },

    ["Revolver"] = {
        ["Revolver Ammo Normal"] = {
            key = "AMMO_REVOLVER",-- DO NOT CHANGE THESE  
            item = "ammorevolvernormal",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 200, -- max ammo allowed by game 
            guncheck = 0xC212F1D05A8232BB ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "nitrite",label = "nitrite", amount = 1},
            }, 
        },
        ["Revolver Ammo Express"] = {
            key = "AMMO_REVOLVER_EXPRESS", 
            item = "ammorevolverexpress",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 200,
            guncheck = 0xC212F1D05A8232BB ,
            qt = 10, -- number of bullets in box    
            expadd = 1,
            expreq = 50,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 3},
                item3 = {name = "nitrite",label = "nitrite", amount = 3},
            }, 
        },
        ["Revolver Ammo Explosive"] = {
            key = "AMMO_REVOLVER_EXPRESS_EXPLOSIVE", 
            item = "ammorevolverexplosive",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 30,
            guncheck = 0xC212F1D05A8232BB ,
            qt = 10, -- number of bullets in box
            expadd = 1,
            expreq = 30,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 5},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 5},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 5},
            }, 
        },
        ["Revolver Ammo Velocity"] = {
            key = "AMMO_REVOLVER_HIGH_VELOCITY", 
            item = "ammorevolvervelocity",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 200,
            guncheck = 0xC212F1D05A8232BB ,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 10,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 2},
            }, 
        },
        ["Revolver Ammo Splitpoint"] = {
            key = "AMMO_REVOLVER_SPLIT_POINT", 
            item = "ammorevolversplitpoint",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 100,
            guncheck = 0xC212F1D05A8232BB ,
            qt = 25, -- number of bullets in box	    
            expadd = 1,
            expreq = 30,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 8},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 8},
                item3 = {name = "nitrite",label = "nitrite", amount = 8},
            }, 
        },

    },
    ["Rifle"] = {
        ["Rifle Ammo Normal"] = {
            key = "AMMO_RIFLE",-- DO NOT CHANGE THESE  
            item = "ammoriflenormal",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 200, -- max ammo allowed by game 
            guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
            guncheck2 = 0x6AD66548840472E5,
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "nitrite",label = "nitrite", amount = 1},
            }, 
        },
        ["Elephant Rifle Ammo"] = {
            key = "AMMO_RIFLE_ELEPHANT",-- DO NOT CHANGE THESE  
            item = "ammoelephant",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 20, -- max ammo allowed by game 
            guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
            guncheck2 = 0x6AD66548840472E5,
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 100,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "nitrite",label = "nitrite", amount = 1},
            }, 
        },
        ["Rifle Ammo Express"] = {
            key = "AMMO_RIFLE_EXPRESS", 
            item = "ammorifleexpress",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0x0A82317B7EBFC420 ,
            guncheck2 = 0x6AD66548840472E5,
            qt = 10, -- number of bullets in box    
            expadd = 1,
            expreq = 200,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 3},
                item3 = {name = "nitrite",label = "nitrite", amount = 3},
            }, 
        },
        ["Rifle Ammo Explosive"] = {
            key = "AMMO_RIFLE_EXPRESS_EXPLOSIVE", 
            item = "ammorifleexplosive",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 10,
            guncheck = 0x0A82317B7EBFC420 ,
            guncheck2 = 0x6AD66548840472E5,
            qt = 10, -- number of bullets in box
            expadd = 1,
            expreq = 500,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 5},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 5},
            }, 
        },
        ["Rifle Ammo Velocity"] = {
            key = "AMMO_RIFLE_HIGH_VELOCITY", 
            item = "ammoriflevelocity",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0x0A82317B7EBFC420 ,
            guncheck2 = 0x6AD66548840472E5,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 100,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 2},
            }, 
        },
        ["Rifle Ammo Splitpoint"] = {
            key = "AMMO_RIFLE_SPLIT_POINT", 
            item = "ammoriflesplitpoint",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 100,
            guncheck = 0x0A82317B7EBFC420 ,
            guncheck2 = 0x6AD66548840472E5,
            qt = 25, -- number of bullets in box	    
            expadd = 1,
            expreq = 250,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 3},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 3},
                item3 = {name = "nitrite",label = "nitrite", amount = 3},
            }, 
        },

    },
    ["Shotgun"] = {
        ["Shotgun Ammo Incendiary"] = {
            key = "AMMO_SHOTGUN_BUCKSHOT_INCENDIARY",-- DO NOT CHANGE THESE  
            item = "ammoshotgunincendiary",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 50, -- max ammo allowed by game 
            guncheck = 0xC75386174ECE95D5  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 500,
            diff = 2000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["Shotgun Ammo Explosive"] = {
            key = "AMMO_SHOTGUN_EXPRESS_EXPLOSIVE", 
            item = "ammoshotgunexplosive",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 50,
            guncheck = 0xC75386174ECE95D5  ,
            qt = 10, -- number of bullets in box    
            expadd = 1,
            expreq = 1000,
            diff = 2000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "rubber",label = "Rubber", amount = 5},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 2},
            }, 
        },
        ["Shotgun Ammo Normal"] = {
            key = "AMMO_SHOTGUN", 
            item = "ammoshotgunnormal",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 50,
            guncheck = 0xC75386174ECE95D5  ,
            qt = 25, -- number of bullets in box
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "rubber",label = "Rubber", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 2},
            }, 
        },
        ["Shotgun Ammo Slug"] = {
            key = "AMMO_SHOTGUN_SLUG", 
            item = "ammoshotgunslug",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            maxammo = 50,
            guncheck = 0xC75386174ECE95D5  ,
            qt = 25, -- number of bullets in box	    
            expadd = 1,
            expreq = 20,
            diff = 3000,
            materials = {
                item1 = {name = "rubber",label = "Rubber", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "nitrite", amount = 3},
            }, 
        },
    },
    ["Pistol"] = {
        ["Pistol Ammo Normal"] = {
            key = "AMMO_PISTOL",-- DO NOT CHANGE THESE  
            item = "ammopistolnormal",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200, -- max ammo allowed by game 
            guncheck = 0xDDC64F5E31EEDAB6  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 500,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 1},
                item3 = {name = "nitrite",label = "Nitrite", amount = 1},
            }, 
        },
        ["Pistol Ammo Express"] = {
            key = "AMMO_PISTOL_EXPRESS", 
            item = "ammopistolexpress",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0xDDC64F5E31EEDAB6  ,
            qt = 10, -- number of bullets in box    
            expadd = 10,
            expreq = 1000,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 5},
                item3 = {name = "nitrite",label = "Nitrite", amount = 3},
            }, 
        },
        ["Pistol Ammo Explosive"] = {
            key = "AMMO_PISTOL_EXPRESS_EXPLOSIVE", 
            item = "ammopistolexplosive",
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 10,
            guncheck = 0xDDC64F5E31EEDAB6  ,
            qt = 10, -- number of bullets in box
            expadd = 1,
            expreq = 100,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "nitrite",label = "Nitrite", amount = 1},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 1},
            }, 
        },
        ["Pistol Ammo Velocity"] = {
            key = "AMMO_PISTOL_HIGH_VELOCITY", 
            item = "ammopistolvelocity",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200,
            guncheck = 0xDDC64F5E31EEDAB6  ,
            qt = 10, -- number of bullets in box	    
            expadd = 10,
            expreq = 1200,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "nitrite",label = "Nitrite", amount = 2},
            }, 
        },
        ["Pistol Ammo Splitpoint"] = {
            key = "AMMO_PISTOL_SPLIT_POINT", 
            item = "ammopistolsplitpoint",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 100,
            guncheck = 0xDDC64F5E31EEDAB6  ,
            qt = 25, -- number of bullets in box	    
            expadd = 10,
            expreq = 1500,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 3},
                item3 = {name = "nitrite",label = "Nitrite", amount = 1},
            }, 
        },

    },
    ["Arrow"] = {
        ["Arrow Normal"] = {
            key = "AMMO_ARROW",-- DO NOT CHANGE THESE  
            item = "ammoarrmownormal",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 40, -- max ammo allowed by game 
            guncheck = 0 ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 5000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "eaglef",label = "Eagle feather", amount = 2},
            }, 
        },
        ["Arrow Dynamite"] = {
            key = "AMMO_ARROW_DYNAMITE", 
            item = "ammoarrowdynamite",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 8,
            guncheck = 0  ,
            qt = 10, -- number of bullets in box    
            expadd = 1,
            expreq = 50,
            diff = 2500,
            materials = {
                item1 = {name = "hawkf",label = "Hawk feather", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "dynamite",label = "Pipe charge dynamite", amount = 2},
            }, 
        },
        ["Arrow Fire"] = {
            key = "AMMO_ARROW_FIRE", 
            item = "ammoarrowfire",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 10,
            guncheck = 0  ,
            qt = 10, -- number of bullets in box
            expadd = 1,
            expreq = 20,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "rabbits",label = "Rabbitskin", amount = 2},
            }, 
        },
        ["Arrow Improved"] = { --Dont reccommend making craftable item is unstable
            key = "AMMO_ARROW_IMPROVED", 
            item = "ammoarrowimproved",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 40,
            guncheck = 0  ,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["Arrow Small Game"] = {
            key = "AMMO_ARROW_SMALL_GAME", 
            item = "ammoarrowsmallgame",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 40,
            guncheck = 0  ,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 0,
            diff = 5000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "quailf",label = "Quail feather", amount = 1},
            }, 
        },
        ["Arrow Poison"] = {
            key = "AMMO_ARROW_POISON", 
            item = "ammoarrowpoison",
            playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 20,
            guncheck = 0  ,
            qt = 10, -- number of bullets in box	    
            expadd = 1,
            expreq = 25,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "Snake_Poison",label = "Snake_Poison", amount = 2},
            }, 
        },

    },
    ["Varmint Ammo"] = {
        ["Varmint ammo"] = {
            key = "AMMO_22",-- DO NOT CHANGE THESE  
            item = "ammovarmint",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 100, -- max ammo allowed by game 
            guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
            qt = 25, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 5},
                item3 = {name = "nitrite",label = "Nitrite", amount = 5},
            }, 
        },
        ["Varmint Tranquilizer Ammo"] = {
            key = "AMMO_22_TRANQUILIZER",-- DO NOT CHANGE THESE  
            item = "ammovarminttranq",
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            maxammo = 200, -- max ammo allowed by game 
            guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 100,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "shellcasing",label = "Shell Casing", amount = 2},
                item3 = {name = "Snake_Poison",label = "Snake Poison", amount = 1},
            }, 
        },

    },
    ["Throwing"] = {
        ["Knives ammo"] = {
            key = "AMMO_THROWING_KNIVES",-- DO NOT CHANGE THESE  
            item = "ammoknives",
            playeritem = {"WEAPON_THROWN_THROWING_KNIVES"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 5,
            diff = 5000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "clay",label = "Clay", amount = 1},
            }, 
        },
        ["Tomahawk Ammo"] = {
            key = "AMMO_TOMAHAWK",-- DO NOT CHANGE THESE  
            item = "ammotomahawk",
            playeritem = {"WEAPON_THROWN_TOMAHAWK"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"}, 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 5,
            diff = 5000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "fibers",label = "Fibers", amount = 1},
            }, 
        },
        ["Poison Bottle Ammo"] = {
            key = "AMMO_POISONBOTTLE",-- DO NOT CHANGE THESE  
            item = "ammopoisonbottle",
            playeritem = {"WEAPON_THROWN_POISONBOTTLE"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 50,
            diff = 3000,
            materials = {
                item1 = {name = "glassbottle",label = "glassbottle", amount = 5},
                item2 = {name = "Snake_Poison",label = "Snake_Poison", amount = 2},
                item3 = {name = "acid",label = "acid", amount = 2},
            }, 
        },
        ["Bolla Ammo"] = {
            key = "AMMO_BOLAS",-- DO NOT CHANGE THESE  
            item = "ammobolla",
            playeritem = {"WEAPON_THROWN_BOLAS"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 5000,
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["Hawkmoth Bolla Ammo"] = {
            key = "AMMO_BOLAS_HAWKMOTH",-- DO NOT CHANGE THESE  
            item = "ammobolahawk",
            playeritem = {"WEAPON_THROWN_BOLAS_HAWKMOTH"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"bountyhunter","pinkerton","cumberlandguild","omenbounty","grimfellows"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 25,
            diff = 3500,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "hawkt",label = "Hawk claws", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["Interwired Bolla Ammo"] = {
            key = "AMMO_BOLAS_INTERTWINED",-- DO NOT CHANGE THESE  
            item = "ammobolainterwired",
            playeritem = {"WEAPON_THROWN_BOLAS_INTERTWINED"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"bountyhunter","pinkerton","cumberlandguild","omenbounty","grimfellows"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 10,
            diff = 4000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "fibers",label = "Fibers", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["ironbar-Spiked Bolla Ammo"] = {
            key = "AMMO_BOLAS_IRONSPIKED",-- DO NOT CHANGE THESE  
            item = "ammobolaironspiked",
            playeritem = {"WEAPON_THROWN_BOLAS_IRONSPIKED"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"bountyhunter","pinkerton","cumberlandguild","omenbounty","grimfellows"}, -- jobs that can craft this weapon is job only is true 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 50,
            diff = 3000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "clay",label = "Clay", amount = 1},
            }, 
        },
        ["Dynamite Ammo"] = {
            key = "AMMO_DYNAMITE",-- DO NOT CHANGE THESE  
            item = "ammodynamite",
            playeritem = {"WEAPON_THROWN_DYNAMITE"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            maxammo = 5, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 10, -- number of bullets in box 
            expadd = 1,
            expreq = 0,
            diff = 3000,
            materials = {
                item1 = {name = "clay",label = "clay", amount = 3},
                item2 = {name = "dynamite",label = "Pipe charge dynamite", amount = 3},
                item3 = {name = "rabbits",label = "Rabbitskin", amount = 3},
            }, 
        },
        ["Volatile Dynamite Ammo"] = {
            key = "AMMO_DYNAMITE_VOLATILE",-- DO NOT CHANGE THESE  
            item = "ammovoldynamite",
            playeritem = {"WEAPON_THROWN_DYNAMITE"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsnroses"}, 
            maxammo = 3, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 1, -- number of bullets in box 
            expadd = 1,
            expreq = 1000,
            diff = 2000,
            materials = {
                item1 = {name = "ironbar",label = "ironbar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "rock",label = "rock", amount = 1},
            }, 
        },
        ["Molotov Ammo"] = {
            key = "AMMO_MOLOTOV",-- DO NOT CHANGE THESE  
            item = "ammomolotov",
            playeritem = {"WEAPON_THROWN_MOLOTOV"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bountyhunter","pinkerton","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            maxammo = 3, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 1, -- number of bullets in box 
            expadd = 1,
            expreq = 20,
            diff = 3000,
            materials = {
                item1 = {name = "glassbottle",label = "glassbottle", amount = 3},
                item2 = {name = "rabbits",label = "Rabbitskin", amount = 3},
                item3 = {name = "alcohol",label = "alcohol", amount = 3},
            }, 
        },
        ["Volatile Molotov Ammo"] = {
            key = "AMMO_MOLOTOV_VOLATILE",-- DO NOT CHANGE THESE  
            item = "ammovolmolotov",
            playeritem = {"WEAPON_THROWN_MOLOTOV"},
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsnroses"}, 
            maxammo = 3, -- max ammo allowed by game 
            guncheck = 0  ,-- DO NOT CHANGE THESE 
            qt = 1, -- number of bullets in box 
            expadd = 1,
            expreq = 100,
            diff = 3000,
            materials = {
                item1 = {name = "glassbottle",label = "glassbottle", amount = 3},
                item2 = {name = "rabbits",label = "Rabbit skin", amount = 3},
                item3 = {name = "alcohol",label = "alcohol", amount = 10},
            }, 
        },

    },
    
    
    
}