Config4 = {}
Config4.weapons = {  
    ["Melee"] = {
        ["Horror Knife"] = {	
            hashname = "WEAPON_MELEE_KNIFE_HORROR",
            expadd = 1,
            expreq = 10,
            diff = 3500,
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "legpanthers1",label = "Nightwalker Panther pelt", amount = 2},
            }, 
        
        },
        ["Rustic Knife"] = {	
            hashname = "WEAPON_MELEE_KNIFE_RUSTIC",
            expadd = 1,
            expreq = 0,
            diff = 2500,
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
            },   
        
        },
        ["Tradders Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_KNIFE_TRADER",   
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
            }, 
        },
        ["Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 2500,
            hashname = "WEAPON_MELEE_KNIFE",     
            letcraft = true, --show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "deerskin",label = "deerskin", amount = 1},
            }, 
        },
        ["JawBone Knife"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_KNIFE_JAWBONE",    
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            jobonly = true,
            jobs = {"gunsmith","shaman","pinkerton","cumberlandguild","omenbounty","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "deerskin",label = "deerskin", amount = 2},
            }, 
        },
        ["Cleaver"] = {	
            expadd = 1,
            expreq = 20,
            diff = 3000,
            hashname = "WEAPON_MELEE_CLEAVER", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 1},
            }, 
        },
        ["Hunter Hatchet"] = {	
            expadd = 1,
            expreq = 0,
            diff = 2500,
            hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
            jobonly = true,
            jobs = {"shaman","pinkerton","cumberlandguild","omenbounty","wapitishaman","blackhawkshaman","blacksmokeshaman"},
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
            }, 
        },
        ["Machete"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_MACHETE", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
            }, 
        },
        ["Collector Machete"] = {	
            expadd = 1,
            expreq = 50,
            diff = 2500,
            hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",    
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","blacksmith","bwblacksmith","creetsmith","emeraldsmith","valleysmith","rhodesblacksmith","macfarlansmith","valblacksmith","valleysmith","bpblacksmith","armablacksmith","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 4},
                item2 = {name = "wood",label = "wood", amount = 2},
                item3 = {name = "bucks",label = "Buck skin", amount = 2},
            }, 
        },
        
    },
    ["Bows"] = {
        ["Bow"] = {	
            expadd = 1,
            expreq = 0,
            diff = 5000,
            hashname = "WEAPON_BOW",
            jobonly = true,
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"},     
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 2},
                item2 = {name = "wood",label = "wood", amount = 4},
                item3 = {name = "fibers",label = "Fibers", amount = 2},
            }, 
        },
        ["Improved Bow"] = {	
            expadd = 1,
            expreq = 5,
            diff = 3000,
            hashname = "WEAPON_BOW_IMPROVED",   
            jobonly = true,
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "sap",label = "Sap", amount = 1},
                item2 = {name = "hwood",label = "Hard Wood", amount = 3},
                item3 = {name = "fibers",label = "Fibers", amount = 1},
            }, 
        },
    },
    ["Rifles"] = {
        ["Elephant Rifle"] = {	
            expadd = 1,
            expreq = 500,
            diff = 2500,
            hashname = "WEAPON_RIFLE_ELEPHANT",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "legmooses",label = "Legendary Moose Pelt", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
        ["Varmint Rifle"] = {	
            expadd = 1,
            expreq = 10,
            diff = 3000,
            hashname = "WEAPON_RIFLE_VARMINT", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
        ["Rollingblock Rifle"] = {	
            expadd = 1,
            expreq = 250,
            diff = 3000,
            hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "legendbuckantler",label = "Legendary Buck Antlers", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
        ["Carcano Rifle"] = {	
            expadd = 1,
            expreq = 500,
            diff = 3000,
            hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "legfoxs1",label = "Ota Fox pelt", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
        ["Springfield Rifle"] = {	
            expadd = 1,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_RIFLE_SPRINGFIELD", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
        ["Boltaction Rifle"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_RIFLE_BOLTACTION",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "riflebarrel",label = "Rifle Barrel", amount = 1},
                item2 = {name = "riflestock",label = "Rifle Stock", amount = 1},
                item3 = {name = "riflereceiver",label = "Rifle Reciever", amount = 1},
            }, 
        },
    },
    ["Repeaters"] = {
        ["Winchester Repeater"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_REPEATER_WINCHESTER",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
            }, 
        },
        ["Henry Repeater"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_REPEATER_HENRY", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
            }, 
        },
        ["Evans Repeater"] = {	
            expadd = 1,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_REPEATER_EVANS",
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
            }, 
        },
        ["Carbine Repeater"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_REPEATER_CARBINE",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "repeaterbarrel",label = "Repeater Barrel", amount = 1},
                item2 = {name = "repeaterreceiver",label = "Repeater Receiver", amount = 1},
                item3 = {name = "repeaterstock",label = "Repeater Stock", amount = 1},
            }, 
        },
    },
    ["Pistols"] = {
            ["SemiAuto Pistol "] = {	
            expadd = 1,
            expreq = 1000,
            diff = 2000,
            hashname = "WEAPON_PISTOL_SEMIAUTO",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "legbeavers1",label = "Grey Beaver pelt", amount = 1},
            }, 
        },
        ["Mauser Pistol "] = {	
            expadd = 1,
            expreq = 500,
            diff = 2000,
            hashname = "WEAPON_PISTOL_MAUSER",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "legboars",label = "Legendary Boar pelt", amount = 1},
            }, 
        },
        ["Volcanic Pistol "] = {	
            expadd = 1,
            expreq = 500,
            diff = 2000,
            hashname = "WEAPON_PISTOL_VOLCANIC",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "legcougars",label = "Legendary Cougar pelt", amount = 1},
            }, 
        },
        ["M1899 Pistol "] = {	
            expadd = 1,
            expreq = 1500,
            diff = 2000,
            hashname = "WEAPON_PISTOL_M1899",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "pistolreceiver",label = "Pistol Receiver", amount = 1},
                item2 = {name = "pistolbarrel",label = "Pistol Barrel", amount = 1},
                item3 = {name = "legelks",label = "Legendary Elk pelt", amount = 1},
            }, 
        },
        
    }, 
    ["Revolvers"] = {
        ["Navy Revolver Crossover"] = {	
            hashname = "WEAPON_REVOLVER_NAVY_CROSSOVER",    
            expadd = 1,
            expreq = 60,
            diff = 2500,
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
        ["Schofield Revolver"] = {	
            expadd = 1,
            expreq = 40,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_SCHOFIELD",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
        ["Lemat Revolver"] = {	
            expadd = 1,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_LEMAT",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
        ["Double Action Revolver"] = {	
            expadd = 1,
            expreq = 20,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_DOUBLEACTION", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
        ["Cattleman Revolver"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_CATTLEMAN",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
        ["Navy Revolver"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_REVOLVER_NAVY",     
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "revolverbarrel",label = "Revolver Barrel", amount = 1},
                item2 = {name = "revolverhandle",label = "Revolver Handle", amount = 1},
                item3 = {name = "revolvercylinder",label = "Revolver Cylinder", amount = 1},
            }, 
        },
    },
    ["Throwable"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
    -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
    -- only then will the throwable show up in their weapon wheel 
        ["Bolas Hawkmoth"] = {	
            hashname = "WEAPON_THROWN_BOLAS_HAWKMOTH",    
            expadd = 1,
            expreq = 25,
            diff = 3000,
            jobonly = true,
            jobs = {"pinkerton","cumberlandguild","omenbounty","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "hawkt",label = "Hawk claws", amount = 2},
            }, 
        
        },
        ["Bolas Iron-Spiked"] = {	
            hashname = "WEAPON_THROWN_BOLAS_IRONSPIKED",    
            expadd = 1,
            expreq = 50,
            diff = 3000,
            jobonly = true,
            jobs = {"pinkerton","cumberlandguild","omenbounty","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "deerskin",label = "Deer skin", amount = 2},
            }, 
        
        },
        ["Bolas Intertwined"] = {	
            hashname = "WEAPON_THROWN_BOLAS_INTERTWINED",    
            expadd = 1,
            expreq = 10,
            diff = 3000,
            jobonly = true,
            jobs = {"pinkerton","cumberlandguild","omenbounty","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "sap",label = "Sap", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 5},
                item3 = {name = "deerskin",label = "Deer skin", amount = 2},
            },
        
        },
        ["Tomahawk"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_THROWN_TOMAHAWK",  
            jobonly = true,
            jobs = {"shaman","wapitishaman","blackhawkshaman","blacksmokeshaman"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "hwood",label = "Hard Wood", amount = 2},
                item3 = {name = "fibers",label = "Fibers", amount = 2},
            }, 
        },
        ["Knives"] = {	
            expadd = 1,
            expreq = 10,
            diff = 3000,
            hashname = "WEAPON_THROWN_THROWING_KNIVES", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","shaman","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 3},
                item2 = {name = "wood",label = "wood", amount = 1},
                item3 = {name = "clay",label = "Clay", amount = 1},
            }, 
        },
        ["Poison Bottle"] = {	
            expadd = 1,
            expreq = 5000,
            diff = 3000,
            hashname = "WEAPON_THROWN_POISONBOTTLE", 
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","shaman","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "alcohol",label = "alcohol", amount = 3},
                item2 = {name = "glassbottle",label = "glassbottle", amount = 3},
                item3 = {name = "acid",label = "acid", amount = 3},
            }, 
        },
        ["Bolas"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_THROWN_BOLAS",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","shaman","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deer skin", amount = 2},
                item2 = {name = "fibers",label = "Fibers", amount = 2},
                item3 = {name = "rock",label = "rock", amount = 2},
            }, 
        },
        ["Dynamite"] = {	
            expadd = 1,
            expreq = 10000,
            diff = 3000,
            hashname = "WEAPON_THROWN_DYNAMITE",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","shaman","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "dynamite",label = "dynamite", amount = 1},
                item2 = {name = "clay",label = "Clay", amount = 5},
                item3 = {name = "sap",label = "Sap", amount = 5},
            }, 
        },
        ["Molotov"] = {	
            expadd = 1,
            expreq = 5000,
            diff = 3000,
            hashname = "WEAPON_THROWN_MOLOTOV",
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","shaman","pinkerton","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "alcohol",label = "alcohol", amount = 3},
                item2 = {name = "rabbits",label = "Rabbitskin", amount = 3},
                item3 = {name = "glassbottle",label = "glassbottle", amount = 3},
            }, 
        },

    },
    ["Shotguns"] = {
        ["Semiauto Shotgun"] = {	
            expadd = 1,
            expreq = 600,
            diff = 2000,
            hashname = "WEAPON_SHOTGUN_SEMIAUTO",  
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
            }, 
        },
        ["Sawedoff Shotgun"] = {	
            expadd = 1,
            expreq = 50,
            diff = 4000,
            hashname = "WEAPON_SHOTGUN_SAWEDOFF",  
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
            }, 
        },
        ["Repeating Shotgun"] = {	
            expadd = 1,
            expreq = 100,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_REPEATING",   
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
            }, 
        },
        ["Pump Shotgun"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_PUMP",  
            jobonly = true,
            jobs = {"gunsmith","sdgunsmith","annesburgguns","rguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
            }, 
        },
        ["Doublebarrel Shotgun"] = {	
            expadd = 1,
            expreq = 25,
            diff = 3000,
            hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",   
            jobonly = true,
            jobs = {"gunsmith","rguns","sdgunsmith","annesburgguns","bwgunsmith","rippersarms","frontierarms","strwgunsmith"}, 
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "shotgunbarrel",label = "Shotgun Barrel", amount = 1},
                item2 = {name = "shotgunstock",label = "Shotgun Stock", amount = 1},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 5},
            }, 
        },
    },
    ["Misc."] = {
        ["Metal Dectector"] = {	 
            expadd = 1,
            expreq = 1000,
            diff = 2000,
            hashname = "WEAPON_KIT_METAL_DETECTOR",   
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "deerskin", amount = 2},
                item2 = {name = "copper",label = "Copper", amount = 2},
                item3 = {name = "leggbears",label = "Legendary Bear pelt", amount = 1},
            }, 
        },
        ["Halloween Lantern"] = {	
            expadd = 1,
            expreq = 5,
            diff = 3000,
            hashname = "WEAPON_MELEE_LANTERN_HALLOWEEN",   
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 2},
                item2 = {name = "legwolfs3",label = "Moonstone Wolf pelt", amount = 2},
                item3 = {name = "ironbar",label = "Iron Bar", amount = 2},
            },  
        
        },
        ["Lasso"] = {	
            expadd = 1,
            expreq = 0,
            diff = 4500,
            hashname = "WEAPON_LASSO",   
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 2},
                item2 = {name = "bucks",label = "Buck skin", amount = 2},
                item3 = {name = "fibers",label = "Fiber", amount = 5},
            }, 
        },
        ["Reinforced Lasso"] = {	
            expadd = 1,
            expreq = 50,
            diff = 3000,
            hashname = "WEAPON_LASSO_REINFORCED",   
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "deerskin",label = "deerskin", amount = 5},
                item2 = {name = "fibers",label = "Fibers", amount = 10},
                item3 = {name = "copper",label = "copper", amount = 5},
            }, 
        },
        ["Improved Binoculars"] = {	
            expadd = 1,
            expreq = 50,
            diff = 2500,
            hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",  
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "copper",label = "copper", amount = 8},
                item3 = {name = "deerskin",label = "deerskin", amount = 4},
            }, 
        },
        ["Binoculars"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_KIT_BINOCULARS",  
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "copper",label = "copper", amount = 4},
                item3 = {name = "deerskin",label = "deerskin", amount = 4},
            }, 
        },
        ["Fishing Rod"] = {	
            expadd = 1,
            expreq = 0,
            diff = 5000,
            hashname = "WEAPON_FISHINGROD",   
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 1},
                item2 = {name = "wood",label = "wood", amount = 4},
                item3 = {name = "deerskin",label = "deerskin", amount = 1},
            }, 
        },
        ["Camera"] = {	
            expadd = 1,
            expreq = 25,
            diff = 3000,
            hashname = "WEAPON_KIT_CAMERA", 
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 2},
                item2 = {name = "copper",label = "Copper", amount = 2},
                item3 = {name = "lense",label = "Lense", amount = 2},
            }, 
        },
        ["Advanced Camera"] = {	
            expadd = 1,
            expreq = 100,
            diff = 2000,
            hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 5},
                item2 = {name = "copper",label = "Copper", amount = 2},
                item3 = {name = "lense",label = "lense", amount = 4},
            }, 
        },
        ["Lantern"] = {	
            expadd = 1,
            expreq = 5,
            diff = 5000,
            hashname = "WEAPON_MELEE_LANTERN",     
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 10},
                item2 = {name = "coal",label = "Coal", amount = 2},
                item3 = {name = "deerskin",label = "deerskin", amount = 4},
            }, 
        },
        ["Davy Lantern"] = {	
            expadd = 1,
            expreq = 0,
            diff = 3000,
            hashname = "WEAPON_MELEE_DAVY_LANTERN",    
            jobonly = true,
            jobs = {"gunsmith","pinkerton","sdgunsmith","annesburgguns","rguns","shaman","cumberlandguild","omenbounty","bwgunsmith","rippersarms","frontierarms","strwgunsmith","wapitishaman","blackhawkshaman","blacksmokeshaman","grimfellows"},  
            letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
            materials = {
                item1 = {name = "ironbar",label = "Iron Bar", amount = 8},
                item2 = {name = "coal",label = "Coal", amount = 2},
                item3 = {name = "copper",label = "Copper", amount = 5},
            }, 
        },
    },
   
}