Config5 = {}

Config5.weaponshops = { -- money for houses bought goes here. sellers have it to collected from here. 

------------------------------------------------------------- GUNSTORES -------------------------------------------------------------

    ValentineGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-281.37, y=780.72, z=119.52}, -- location of wep market 
        job = {},   
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Gunsmith', -- blip name 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
                },
                --[[  ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, ]]
                --[[    ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },]]
                

            },
            ["Revolvers"] = {
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {

                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5,
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        },
    },
    StrawberryGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-1770.07, y=-383.18, z=157.71}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Gunsmith', -- blip name 
            weapons = {
                ["Rifles"] = {
                    ["Elephant Rifle"] = {	
                        hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                        price = 2000,    
                    
                    },
                    ["Boltaction Rifle"] = {	
                        hashname = "WEAPON_RIFLE_BOLTACTION",    
                        price = 2000, 
                    
                    },
                },
                ["Repeaters"] = {
                    ["Winchester Repeater"] = {	
                        hashname = "WEAPON_REPEATER_WINCHESTER",   
                        price = 500,  
                    
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
                        price = 200, 
                    
                    },
                },
                ["Pistols"] = {
                    ["Volcanic Pistol "] = {	
                        hashname = "WEAPON_PISTOL_VOLCANIC",    
                        price = 250, 
                    
                    },
                    --[["M1899 Pistol "] = {	
                        hashname = "WEAPON_PISTOL_M1899",    
                        price = 10000, 
                    
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
                    --[["Navy Revolver Crossover"] = {	
                        hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                        price = 50, 
                    
                    }, ]]
                    ["Schofield Revolver"] = {	
                        hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                        price = 250, 
                    
                    },
                    ["Lemat Revolver"] = {	
                        hashname = "WEAPON_REVOLVER_LEMAT",    
                        price = 300, 
                    
                    },
                    ["Double Action Revolver"] = {	
                        hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                        price = 50, 
                    
                    },
                    ["Cattleman Revolver"] = {	
                        hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                        price = 20, 
                    
                    },
                    ["Navy Revolver"] = {	
                        hashname = "WEAPON_REVOLVER_NAVY",    
                        price = 200, 
                    
                    },
                },
                ["Shotguns"] = {
                    ["Semiauto Shotgun"] = {	
                        hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                        price = 800, 
                    
                    },
                    ["Sawedoff Shotgun"] = {	
                        hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                        price = 350, 
                    
                    },
                    ["Repeating Shotgun"] = {	
                        hashname = "WEAPON_SHOTGUN_REPEATING",    
                        price = 750, 
                    
                    },
                    ["Pump Shotgun"] = {	
                        hashname = "WEAPON_SHOTGUN_PUMP",    
                        price = 750, 
                    
                    },
                    ["Doublebarrel Shotgun"] = {	
                        hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                        price = 500, 
                    
                    },
                },
            }, 
            ammo = {
                ["Repeater"] = {
                    ["Repeater Ammo Normal"] = {
                        price = 12, 
                        item = "ammorepeaternormal",
                    },
                    ["Repeater Ammo Express"] = {
                        price = 25, 
                        item = "ammorepeaterexpress",
                        
                    },
                    ["Repeater Ammo Velocity"] = {
                        
                        price = 20, 
                        item = "ammorepeatervelocity",
                        
                    },
                    --[[ ["Repeater Ammo Explosive"] = {
                        
                        price = 5, 
                        item = "ammorepeaterexplosive",
                        
                    },
                    ["Repeater Ammo Splitpoint"] = {
                        
                        price = 8, 
                        item = "ammorepeatersplitpoint",
                    
                    }, ]]
                },

                ["Revolver"] = {
                    ["Revolver Ammo Normal"] = {
                    
                        price = 10, 
                        item = "ammorevolvernormal",
                        
                    },
                    ["Revolver Ammo Express"] = {
                        
                        price = 20, 
                        item = "ammorevolverexpress",
                        
                    },
                    --[[  ["Revolver Ammo Explosive"] = {
                    
                        price = 5, 
                        item = "ammorevolverexplosive",
                        
                    },
                    ["Revolver Ammo Velocity"] = {
                        
                        price = 5, 
                        item = "ammorevolvervelocity",
                        
                    },
                    ["Revolver Ammo Splitpoint"] = {
                    
                        price = 8, 
                        item = "ammorevolversplitpoint",
                    
                    }, ]]

                },
                ["Rifle"] = {
                    ["Rifle Ammo Normal"] = {
                        
                        price = 20, 
                        item = "ammoriflenormal",
                        
                    },
                    ["Elephant Rifle Ammo"] = {
                        
                        price = 100, 
                        item = "ammoelephant",
                        
                    },
                    ["Rifle Ammo Express"] = {
                    
                        price = 50, 
                        item = "ammorifleexpress",
                        
                    },
                    ["Rifle Ammo Velocity"] = {
                    
                        price = 45, 
                        item = "ammoriflevelocity",
                    
                    },
                    --[[ ["Rifle Ammo Explosive"] = {
                        
                        price = 5, 
                        item = "ammorifleexplosive",
                        
                    },                
                    ["Rifle Ammo Splitpoint"] = {
                        
                        price = 8, 
                        item = "ammoriflesplitpoint",
                    
                    }, ]]

                },
                ["Shotgun"] = {
                --[[  ["Shotgun Ammo Incendiary"] = {
                    
                        price = 5, 
                        item = "ammoshotgunincendiary",
                    
                    }, ]]
                    --[[ ["Shotgun Ammo Explosive"] = {
                    
                        price = 5, 
                        item = "ammoshotgunexplosive",
                        
                    }, ]]
                    ["Shotgun Ammo Normal"] = {
                    
                        price = 15, 
                        item = "ammoshotgunnormal",
                        
                    },
                    ["Shotgun Ammo Slug"] = {
                    
                        price = 15, 
                        item = "ammoshotgunslug",
                    
                    },
                },
                ["Pistol"] = {
                    ["Pistol Ammo Normal"] = {
                    
                        price = 15, 
                        item = "ammopistolnormal",
                        
                    },
                    ["Pistol Ammo Express"] = {
                    
                        price = 20, 
                        item = "ammopistolexpress",
                        
                    },
                    --[[  ["Pistol Ammo Explosive"] = {
                        
                        price = 5, 
                        item = "ammopistolexplosive",
                        
                    },
                    ["Pistol Ammo Velocity"] = {
                    
                        price = 5, 
                        item = "ammopistolvelocity",
                        
                    },
                    ["Pistol Ammo Splitpoint"] = {
                    
                        price = 8, 
                        item = "ammopistolsplitpoint",
                    
                    }, ]]

                },
                ["Varmint Ammo"] = {
                    ["Varmint ammo"] = {
                    
                        price = 2, 
                        item = "ammovarmint",
                        
                    },
                    ["Varmint Tranquilizer Ammo"] = {
                        
                        price = 10, 
                        item = "ammovarminttranq",
                        
                    },

                },

            }
    },
    BlackwaterGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-832.73, y=-1275.17, z=43.68}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Gunsmith', -- blip name 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        }
    },
    RhodesGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=1322.27, y=-1321.17, z=77.89}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Gunsmith', -- blip name 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        },
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint Ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        }
    },
    ---------------------------
    SaintDGunstore = {	  
        Pos = {x=2715.53, y=-1281.09, z=49.63}, 
        blipsprite = 202506373,
        showblip = true,
        job = {},
        Name = 'Gunsmith', 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        }
    },

    AnnesburgGunstore = {	  
        Pos = {x=2944.70, y=1318.51, z=44.82}, 
        blipsprite = 202506373,
        showblip = true,
        job = {},
        Name = 'Gunsmith', 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        }
    },
    TumbleweedGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-5508.61,y=-2961.96,z=-0.64,}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },

        }
    },

    ArmadilloGunstore = {	   -- you can add more wep markets by copy pasting this 
        Pos = {x=-3681.89, y=-2598.50, z=-13.73}, -- location of wep market 
        blipsprite = 202506373, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Weapons Shop', -- blip name 
        weapons = {
            ["Rifles"] = {
                ["Elephant Rifle"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
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
                    price = 2000,    
                
                },
                ["Boltaction Rifle"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 2000, 
                
                },
            },
            ["Repeaters"] = {
                ["Winchester Repeater"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 500,  
                
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
                    price = 200, 
                
                },
            },
            ["Pistols"] = {
                ["Volcanic Pistol "] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 250, 
                
                },
                --[["M1899 Pistol "] = {	
                    hashname = "WEAPON_PISTOL_M1899",    
                    price = 10000, 
                
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
                --[["Navy Revolver Crossover"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
                    price = 50, 
                
                }, ]]
                ["Schofield Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 250, 
                
                },
                ["Lemat Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 50, 
                
                },
                ["Cattleman Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 20, 
                
                },
                ["Navy Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 200, 
                
                },
            },
            ["Shotguns"] = {
                ["Semiauto Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Sawedoff Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 350, 
                
                },
                ["Repeating Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 750, 
                
                },
                ["Pump Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 750, 
                
                },
                ["Doublebarrel Shotgun"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
        }, 
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 12, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 25, 
                    item = "ammorepeaterexpress",
                    
                },
				["Repeater Ammo Velocity"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                --[[ ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                },
                ["Repeater Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammorepeatersplitpoint",
                   
                }, ]]
            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 20, 
                    item = "ammorevolverexpress",
                    
                },
                --[[  ["Revolver Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                },
                ["Revolver Ammo Velocity"] = {
                    
                    price = 5, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Revolver Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammorevolversplitpoint",
                   
                }, ]]

            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 20, 
                    item = "ammoriflenormal",
                    
                },
                ["Elephant Rifle Ammo"] = {
                    
                    price = 100, 
                    item = "ammoelephant",
                    
                },
                ["Rifle Ammo Express"] = {
                   
                    price = 50, 
                    item = "ammorifleexpress",
                    
                },
				["Rifle Ammo Velocity"] = {
                   
                    price = 45, 
                    item = "ammoriflevelocity",
                   
                },
                --[[ ["Rifle Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorifleexplosive",
                    
                },                
                ["Rifle Ammo Splitpoint"] = {
                    
                    price = 8, 
                    item = "ammoriflesplitpoint",
                   
                }, ]]

            },
            ["Shotgun"] = {
               --[[  ["Shotgun Ammo Incendiary"] = {
                   
                    price = 5, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Shotgun Ammo Explosive"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Shotgun Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 15, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 20, 
                    item = "ammopistolexpress",
                    
                },
                --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                },
                ["Pistol Ammo Velocity"] = {
                   
                    price = 5, 
                    item = "ammopistolvelocity",
                    
                },
                ["Pistol Ammo Splitpoint"] = {
                   
                    price = 8, 
                    item = "ammopistolsplitpoint",
                   
                }, ]]

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 2, 
                    item = "ammovarmint",
                    
                },
                ["Varmint Tranquilizer Ammo"] = {
                    
                    price = 10, 
                    item = "ammovarminttranq",
                    
                },

            },
        }
    },

------------------------------------------------------------- BLACKSMITHS -------------------------------------------------------------

    ValentineBlacksmith = {	   -- you can add more wep markets by copy pasting this 
        Pos = { x = -368.23, y = 799.05, z = 116.2 }, -- location of wep market 
        blipsprite = -758970771, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Blacksmith', -- blip name 
        weapons = {
            ["Melee"] = {
                -- ["Horror Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_HORROR",
                --     price = 50,    
                
                -- }, 
                ["Rustic Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_RUSTIC",
                    price = 25,    
                
                },
                -- ["Traders Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_TRADER",
                --     price = 75,    
                
                -- }, 
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 15,      
                
                },
                -- ["JawBone Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                --     price = 15,   
                
                -- }, 
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 75, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 100,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 150,  
                },
                -- ["Collector Machete"] = {	
                --     hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",   
                --     price = 300,  
                -- }, 
            },

            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 15, 
                
                },
                ["Improved Bow"] = {	
                    hashname = "WEAPON_BOW_IMPROVED",   
                    price = 250,  
                
                },
            },

            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
                -- ["Bolas Hawkmoth"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_HAWKMOTH",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Iron-Spiked"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_IRONSPIKED",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Intertwined"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_INTERTWINED",    
                --     price = 100, 
                
                -- },
                ["Bolas"] = {	
                    hashname = "WEAPON_THROWN_BOLAS",    
                    price = 10, 
                
                }, 
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 15, 
                
                },
                ["Throwing Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 10, 
                
                },
                -- ["Poison Bottle"] = {	
                --     hashname = "WEAPON_THROWN_POISONBOTTLE",    
                --     price = 15, 
                
                -- },
				-- ["Dynamite"] = {	
                --     hashname = "WEAPON_THROWN_DYNAMITE",    
                --     price = 100, 
                
                -- },
                -- ["Fire Bottle"] = {	
                --     hashname = "WEAPON_THROWN_MOLOTOV",    
                --     price = 100, 
                
                -- }, 

            },

            ["Misc."] = {
                -- ["Metal Dectector"] = {	
                --     hashname = "WEAPON_KIT_METAL_DETECTOR",    
                --     price = 2, 
                
                -- },             
                -- ["Halloween Lantern"] = {	
                --     hashname = "WEAPON_MELEE_LANTERN_HALLOWEEN",    
                --     price = 20, 
                
                -- },
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 25, 
                
                },
                -- ["Reinforced Lasso"] = {	
                --     hashname = "WEAPON_LASSO_REINFORCED",    
                --     price = 10, 
                
                -- },
                -- ["Improved Binoculars"] = {	
                --     hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",    
                --     price = 200, 
                
                -- },
                ["Binoculars"] = {	
                    hashname = "WEAPON_KIT_BINOCULARS",    
                    price = 50, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 55, 
                
                },
                ["Lantern"] = {	
                    hashname = "WEAPON_MELEE_LANTERN",    
                    price = 15, 
                
                },
                -- ["Davy Lantern"] = {	
                --     hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                --     price = 15, 
                
                -- }, 
                -- ["Camera"] = {	
                --     hashname = "WEAPON_KIT_CAMERA",    
                --     price = 1000, 
                
                -- },
                -- ["Advanced Camera"] = {	
                --     hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                --     price = 2000, 
                
                -- },

            }, 
        }, 
        ammo = {
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 1, 
                    item = "ammoarrmownormal",
                    
                },
                -- ["Arrow Dynamite"] = {
                    
                --     price = 10, 
                --     item = "ammoarrowdynamite",
                    
                -- }, 
                -- ["Arrow Fire"] = {
                   
                --     price = 7, 
                --     item = "ammoarrowfire",
                    
                -- }, 
                -- ["Arrow Improved"] = {
                  
                --     price = 3, 
                --     item = "ammoarrowimproved",
                    
                -- },
                ["Arrow Small Game"] = {
                   
                    price = 0.5, 
                    item = "ammoarrowsmallgame",
                    
                },
                -- ["Arrow Poison"] = {
                   
                --     price = 5, 
                --     item = "ammoarrowpoison",
                    
                -- },

            },
            ["Throwing"] = {
                ["Throwing Knives Ammo"] = {
                    
                    price = 5, 
                    item = "ammoknives",
                    
                },
                ["Tomahawk Ammo"] = {
                   
                    price = 5, 
                    item = "ammotomahawk",
                   
                },
                -- ["Poison Bottle Ammo"] = {
                   
                --     price = 25, 
                --     item = "ammopoisonbottle",
                   
                -- },
                ["Bolas Ammo"] = {
                   
                    price = 5, 
                    item = "ammobolla",
                    
                },
                -- ["Hawkmoth Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolahawk",
                    
                -- },
                -- ["Interwired Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolainterwired",
                   
                -- },
                -- ["Iron-Spiked Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolaironspiked",
                    
                -- },
                -- ["Dynamite Ammo"] = {
                   
                --     price = 75, 
                --     item = "ammodynamite",
                    
                -- },
                -- ["Volatile Dynamite Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovoldynamite",
                    
                -- },
                -- ["Fire Bottle Ammo"] = {
                   
                --     price = 50, 
                --     item = "ammomolotov",
                   
                -- },
                -- ["Volatile Fire Bottle Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovolmolotov",
                   
                -- }, 
            },
        },
    },    

    RhodesBlacksmith = {	   -- you can add more wep markets by copy pasting this 
        Pos = { x = 1329.64, y = -1320.88, z = 77.89 }, -- location of wep market 
        blipsprite = -758970771, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Blacksmith', -- blip name 
        weapons = {
            ["Melee"] = {
                -- ["Horror Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_HORROR",
                --     price = 50,    
                
                -- }, 
                ["Rustic Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_RUSTIC",
                    price = 25,    
                
                },
                -- ["Traders Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_TRADER",
                --     price = 75,    
                
                -- }, 
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 15,      
                
                },
                -- ["JawBone Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                --     price = 15,   
                
                -- }, 
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 75, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 100,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 150,  
                },
                -- ["Collector Machete"] = {	
                --     hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",   
                --     price = 300,  
                -- }, 
            },

            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 15, 
                
                },
                ["Improved Bow"] = {	
                    hashname = "WEAPON_BOW_IMPROVED",   
                    price = 250,  
                
                },
            },

            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
                -- ["Bolas Hawkmoth"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_HAWKMOTH",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Iron-Spiked"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_IRONSPIKED",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Intertwined"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_INTERTWINED",    
                --     price = 100, 
                
                -- },
                ["Bolas"] = {	
                    hashname = "WEAPON_THROWN_BOLAS",    
                    price = 10, 
                
                }, 
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 15, 
                
                },
                ["Throwing Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 10, 
                
                },
                -- ["Poison Bottle"] = {	
                --     hashname = "WEAPON_THROWN_POISONBOTTLE",    
                --     price = 15, 
                
                -- },
				-- ["Dynamite"] = {	
                --     hashname = "WEAPON_THROWN_DYNAMITE",    
                --     price = 100, 
                
                -- },
                -- ["Fire Bottle"] = {	
                --     hashname = "WEAPON_THROWN_MOLOTOV",    
                --     price = 100, 
                
                -- }, 

            },

            ["Misc."] = {
                -- ["Metal Dectector"] = {	
                --     hashname = "WEAPON_KIT_METAL_DETECTOR",    
                --     price = 2, 
                
                -- },             
                -- ["Halloween Lantern"] = {	
                --     hashname = "WEAPON_MELEE_LANTERN_HALLOWEEN",    
                --     price = 20, 
                
                -- },
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 25, 
                
                },
                -- ["Reinforced Lasso"] = {	
                --     hashname = "WEAPON_LASSO_REINFORCED",    
                --     price = 10, 
                
                -- },
                -- ["Improved Binoculars"] = {	
                --     hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",    
                --     price = 200, 
                
                -- },
                ["Binoculars"] = {	
                    hashname = "WEAPON_KIT_BINOCULARS",    
                    price = 50, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 55, 
                
                },
                ["Lantern"] = {	
                    hashname = "WEAPON_MELEE_LANTERN",    
                    price = 15, 
                
                },
                -- ["Davy Lantern"] = {	
                --     hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                --     price = 15, 
                
                -- }, 
                -- ["Camera"] = {	
                --     hashname = "WEAPON_KIT_CAMERA",    
                --     price = 1000, 
                
                -- },
                -- ["Advanced Camera"] = {	
                --     hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                --     price = 2000, 
                
                -- },

            }, 
        }, 
        ammo = {
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 1, 
                    item = "ammoarrmownormal",
                    
                },
                -- ["Arrow Dynamite"] = {
                    
                --     price = 10, 
                --     item = "ammoarrowdynamite",
                    
                -- }, 
                -- ["Arrow Fire"] = {
                   
                --     price = 7, 
                --     item = "ammoarrowfire",
                    
                -- }, 
                -- ["Arrow Improved"] = {
                  
                --     price = 3, 
                --     item = "ammoarrowimproved",
                    
                -- },
                ["Arrow Small Game"] = {
                   
                    price = 0.5, 
                    item = "ammoarrowsmallgame",
                    
                },
                -- ["Arrow Poison"] = {
                   
                --     price = 5, 
                --     item = "ammoarrowpoison",
                    
                -- },

            },
            ["Throwing"] = {
                ["Throwing Knives Ammo"] = {
                    
                    price = 5, 
                    item = "ammoknives",
                    
                },
                ["Tomahawk Ammo"] = {
                   
                    price = 5, 
                    item = "ammotomahawk",
                   
                },
                -- ["Poison Bottle Ammo"] = {
                   
                --     price = 25, 
                --     item = "ammopoisonbottle",
                   
                -- },
                ["Bolas Ammo"] = {
                   
                    price = 5, 
                    item = "ammobolla",
                    
                },
                -- ["Hawkmoth Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolahawk",
                    
                -- },
                -- ["Interwired Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolainterwired",
                   
                -- },
                -- ["Iron-Spiked Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolaironspiked",
                    
                -- },
                -- ["Dynamite Ammo"] = {
                   
                --     price = 75, 
                --     item = "ammodynamite",
                    
                -- },
                -- ["Volatile Dynamite Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovoldynamite",
                    
                -- },
                -- ["Fire Bottle Ammo"] = {
                   
                --     price = 50, 
                --     item = "ammomolotov",
                   
                -- },
                -- ["Volatile Fire Bottle Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovolmolotov",
                   
                -- }, 
            },
        },
    },    

    SDBlacksmith = {	   -- you can add more wep markets by copy pasting this 
        Pos = { x = 2510.62, y = -1457.1, z = 46.31 }, -- location of wep market 
        blipsprite = -758970771, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        job = {},
        Name = 'Blacksmith', -- blip name 
        weapons = {
            ["Melee"] = {
                -- ["Horror Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_HORROR",
                --     price = 50,    
                
                -- }, 
                ["Rustic Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_RUSTIC",
                    price = 25,    
                
                },
                -- ["Traders Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_TRADER",
                --     price = 75,    
                
                -- }, 
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 15,      
                
                },
                -- ["JawBone Knife"] = {	
                --     hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                --     price = 15,   
                
                -- }, 
                ["Cleaver"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 75, 
                
                },
                ["Hunter Hatchet"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 100,   
                },
                ["Machete"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 150,  
                },
                -- ["Collector Machete"] = {	
                --     hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",   
                --     price = 300,  
                -- }, 
            },

            ["Bows"] = {
                ["Bow"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 15, 
                
                },
                ["Improved Bow"] = {	
                    hashname = "WEAPON_BOW_IMPROVED",   
                    price = 250,  
                
                },
            },

            ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
                -- ["Bolas Hawkmoth"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_HAWKMOTH",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Iron-Spiked"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_IRONSPIKED",    
                --     price = 100, 
                
                -- },
                -- ["Bolas Intertwined"] = {	
                --     hashname = "WEAPON_THROWN_BOLAS_INTERTWINED",    
                --     price = 100, 
                
                -- },
                ["Bolas"] = {	
                    hashname = "WEAPON_THROWN_BOLAS",    
                    price = 10, 
                
                }, 
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 15, 
                
                },
                ["Throwing Knives"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 10, 
                
                },
                -- ["Poison Bottle"] = {	
                --     hashname = "WEAPON_THROWN_POISONBOTTLE",    
                --     price = 15, 
                
                -- },
				-- ["Dynamite"] = {	
                --     hashname = "WEAPON_THROWN_DYNAMITE",    
                --     price = 100, 
                
                -- },
                -- ["Fire Bottle"] = {	
                --     hashname = "WEAPON_THROWN_MOLOTOV",    
                --     price = 100, 
                
                -- }, 

            },

            ["Misc."] = {
                -- ["Metal Dectector"] = {	
                --     hashname = "WEAPON_KIT_METAL_DETECTOR",    
                --     price = 2, 
                
                -- },             
                -- ["Halloween Lantern"] = {	
                --     hashname = "WEAPON_MELEE_LANTERN_HALLOWEEN",    
                --     price = 20, 
                
                -- },
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 25, 
                
                },
                -- ["Reinforced Lasso"] = {	
                --     hashname = "WEAPON_LASSO_REINFORCED",    
                --     price = 10, 
                
                -- },
                -- ["Improved Binoculars"] = {	
                --     hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",    
                --     price = 200, 
                
                -- },
                ["Binoculars"] = {	
                    hashname = "WEAPON_KIT_BINOCULARS",    
                    price = 50, 
                
                }, 
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 55, 
                
                },
                ["Lantern"] = {	
                    hashname = "WEAPON_MELEE_LANTERN",    
                    price = 15, 
                
                },
                -- ["Davy Lantern"] = {	
                --     hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                --     price = 15, 
                
                -- }, 
                -- ["Camera"] = {	
                --     hashname = "WEAPON_KIT_CAMERA",    
                --     price = 1000, 
                
                -- },
                -- ["Advanced Camera"] = {	
                --     hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                --     price = 2000, 
                
                -- },

            }, 
        }, 
        ammo = {
            ["Arrow"] = {
                ["Arrow Normal"] = {
                   
                    price = 1, 
                    item = "ammoarrmownormal",
                    
                },
                -- ["Arrow Dynamite"] = {
                    
                --     price = 10, 
                --     item = "ammoarrowdynamite",
                    
                -- }, 
                -- ["Arrow Fire"] = {
                   
                --     price = 7, 
                --     item = "ammoarrowfire",
                    
                -- }, 
                -- ["Arrow Improved"] = {
                  
                --     price = 3, 
                --     item = "ammoarrowimproved",
                    
                -- },
                ["Arrow Small Game"] = {
                   
                    price = 0.5, 
                    item = "ammoarrowsmallgame",
                    
                },
                -- ["Arrow Poison"] = {
                   
                --     price = 5, 
                --     item = "ammoarrowpoison",
                    
                -- },

            },
            ["Throwing"] = {
                ["Throwing Knives Ammo"] = {
                    
                    price = 5, 
                    item = "ammoknives",
                    
                },
                ["Tomahawk Ammo"] = {
                   
                    price = 5, 
                    item = "ammotomahawk",
                   
                },
                -- ["Poison Bottle Ammo"] = {
                   
                --     price = 25, 
                --     item = "ammopoisonbottle",
                   
                -- },
                ["Bolas Ammo"] = {
                   
                    price = 5, 
                    item = "ammobolla",
                    
                },
                -- ["Hawkmoth Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolahawk",
                    
                -- },
                -- ["Interwired Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolainterwired",
                   
                -- },
                -- ["Iron-Spiked Bolas Ammo"] = {
                --     price = 1, 
                --     item = "ammobolaironspiked",
                    
                -- },
                -- ["Dynamite Ammo"] = {
                   
                --     price = 75, 
                --     item = "ammodynamite",
                    
                -- },
                -- ["Volatile Dynamite Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovoldynamite",
                    
                -- },
                -- ["Fire Bottle Ammo"] = {
                   
                --     price = 50, 
                --     item = "ammomolotov",
                   
                -- },
                -- ["Volatile Fire Bottle Ammo"] = {
                   
                --     price = 5, 
                --     item = "ammovolmolotov",
                   
                -- }, 
            },
        },
    },    
} 