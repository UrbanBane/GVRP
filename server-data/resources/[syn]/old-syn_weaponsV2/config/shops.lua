Config5 = {}

Config5.weaponshops = { -- money for houses bought goes here. sellers have it to collected from here. 
    Valentine = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-281.37, y=780.72, z=119.52}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Melee"] = {
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
            },
            ["Revolvers"] = {
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Shotguns"] = {
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                },
            },
			["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
            },
            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {                   
                    price = 16, 
                    item = "ammorevolvernormal",                    
                },
            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {                    
                    price = 25, 
                    item = "ammoriflenormal",
                },
            },
            ["Shotgun"] = {
                ["Shotgun Ammo Normal"] = {                   
                    price = 12, 
                    item = "ammoshotgunnormal",                    
                },
			},
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {                   
                    price = 16, 
                    item = "ammopistolnormal",                    
                },
            },
            ["Arrow"] = {
                ["Arrow Normal"] = {                   
                    price = 2, 
                    item = "ammoarrmownormal",
                },
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {                   
                    price = 2, 
                    item = "ammovarmint",                    
                },
            },
        },

    },	
    Strawberry = {
		Pos = {x=-1770.07, y=-383.18, z=157.71},
		blipsprite = 202506373,
		showblip = false,
		Name = 'Weapons Shop',
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

	},
    Blackwater = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-834.10, y=-1206.52, z=43.56}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

	},
    Rhodes = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=1328.54, y=-1317.83, z=77.94}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

	},
    SaintD = {	  
        Pos = {x=2715.53, y=-1281.09, z=49.63}, 
        blipsprite = 202506373,
        showblip = true,
        Name = 'Weapons Shop', 
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

   },

    Annesburg = {	  
        Pos = {x=2944.70, y=1318.51, z=44.82}, 
        blipsprite = 202506373,
        showblip = false,
        Name = 'Weapons Shop',
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

   },
    Tumbleweed = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-5507.40, y=-2961.63, z=-0.63}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = false, -- show blip or not 
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

    },

    Armadillo = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-3681.89, y=-2598.50, z=-13.73}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = false, -- show blip or not 
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Melee"] = {
               --[[  ["Horror Knife"] = {	
                    hashname = "weapon_melee_knife_horror",
                    price = 25,    
                
                },
                ["Rustic Knife"] = {	
                    hashname = "weapon_melee_knife_rustic",
                    price = 25,    
                
                },
                ["Tradders Knife"] = {	
                    hashname = "weapon_melee_knife_trader",
                    price = 25,    
                
                }, ]]
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 6,      
                
                },
                ["JawBone Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 10, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 10,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 10,  
                },
                ["Collector Machete"] = {	
                    hashname = "weapon_melee_machete_collector",   
                    price = 350,  
                },
            },
            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 6, 
                
                },
               --[[  ["Improved Bow"] = {	
                    hashname = "weapon_bow_improved",   
                    price = 15,  
                
                }, ]]
            },
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "weapon_rifle_elephant",  
                    price = 1000,   
                
                },
                ["Varmint Rifle"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 30,  
                
                },
                ["Rollingblock Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 3000, 
                
                },
                ["Carcano Rifle"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 3000,   
                
                },
                ["Springfield Rifle"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 3000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 1000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 210,  
                
                },
                ["Henry Repeater"] = {	
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 300, 
                
                },
                ["Evans Repeater"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 500, 
                
                },
                ["Carbine Repeater"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 100, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 120, 
                
                },
                ["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 1000, 
                
                },
               --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
             --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 ]]

            },
            ["Revolvers"] = {
               --[[  ["Navy Revolver Crossover"] = {	
                    hashname = "weapon_revolver_navy_crossover",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 300, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 200, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "weapon_revolver_navy",    
                    price = 1000, 
                
                }, 
            },
            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
               --[[  ["Bolas Hawkmoth"] = {	
                    hashname = "weapon_thrown_bolas_hawkmoth",    
                    price = 100, 
                
                },
                ["Bolas Iron-Spiked"] = {	
                    hashname = "weapon_thrown_bolas_ironspiked",    
                    price = 100, 
                
                },
                ["Bolas Intertwined"] = {	
                    hashname = "weapon_thrown_bolas_intertwined",    
                    price = 100, 
                
                },
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 10, 
                
                }, ]]
                --[[  ["Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 4, 
                
                }, ]]
                --[[ ["Poison Bottle"] = {	
                    hashname = "weapon_thrown_poisonbottle",    
                    price = 15, 
                
                },
                ["Bolas"] = {	
                    hashname = "weapon_thrown_bolas",    
                    price = 4, 
                
                }, ]]
               --[[  ["Dynamite"] = {	
                    hashname = "weapon_thrown_dynamite",    
                    price = 100, 
                
                },
                ["Molotov"] = {	
                    hashname = "weapon_thrown_molotov",    
                    price = 100, 
                
                }, ]]

            },
            ["Shotguns"] = {
                --[[ ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 100, 
                
                }, ]]
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 250, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 600, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 450, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 350, 
                
                },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 20, 
                
                },
                ["Binoculars"] = {	
                    hashname = "weapon_kit_binoculars",    
                    price = 10, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 10, 
                
                },
                ["Lantern"] = {	
                    hashname = "weapon_melee_lantern",    
                    price = 5, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 50, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                --[[ ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },
                ["Repeater Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammorevolvernormal",
                    
                },
               --[[  ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },
                ["Revolver Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 25, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 25, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 50, 
                    item = "ammoelephant",
                    
                },
                --[[ ["Rifle Ammo Express"] = {
                   
                    price = 25, 
                    item = "ammorifleexpress",
                    
                },
                ["Rifle Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammorifleexplosive",
                    
                },
                ["Rifle Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammoriflevelocity",
                   
                },
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 25, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 25, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 12, 
                    item = "ammoshotgunnormal",
                    
                },
               --[[  ["Shotgun Ammo Slug"] = {
                   
                    price = 2, 
                    item = "ammoshotgunslug",
                   
                }, ]]
            },
            ["Pistol"] = {
               ["Pistol Ammo Normal"] = {
                   
                    price = 16, 
                    item = "ammopistolnormal",
                    
                },
                --[[  ["Pistol Ammo Express"] = {
                   
                    price = 2, 
                    item = "ammopistolexpress",
                    
                },
                ["Pistol Ammo Explosive"] = {
                    
                    price = 25, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 25, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 2, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 25, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
               --[[  ["Arrow Fire"] = {
                   
                    price = 2, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 16, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Arrow Small Game"] = {
                   
                    price = 2, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 25, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                --[[ ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 25, 
                    item = "ammovarminttranq",
                    
                }, ]]

            },
            --[[  ["Throwing"] = {
                ["Knives ammo"] = {
                    
                    price = 2, 
                    item = "ammoknives",
                    
                },  ]]
               --[[  ["Tomahawk Ammo"] = {
                   
                    price = 2, 
                    item = "ammotomahawk",
                   
                },
                ["Poison Bottle Ammo"] = {
                   
                    price = 25, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                --[[  ["Bolla Ammo"] = {
                   
                    price = 1, 
                    item = "ammobolla",
                    
                },  ]]
               --[[  ["Hawkmoth Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolahawk",
                    
                },
                ["Interwired Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolainterwired",
                   
                },
                ["Iron-Spiked Bolla Ammo"] = {
                    price = 1, 
                    item = "ammobolaironspiked",
                    
                },
                ["Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammodynamite",
                    
                },
                ["Volatile Dynamite Ammo"] = {
                   
                    price = 25, 
                    item = "ammovoldynamite",
                    
                },
                ["Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammomolotov",
                   
                },
                ["Volatile Molotov Ammo"] = {
                   
                    price = 25, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },


   },
   
}