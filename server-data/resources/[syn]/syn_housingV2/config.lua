Config = {}

Config.vorp = true -- dont change 

Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["B"] = 0x4CC0E2FE,
    ["G"] = 0x760A9C6F,
    ["ENTER"] = 0xC7B5340A,
    ["DOWN"] = 0x05CA7C52,
    ["SHIFT"] = 0x8AAA0AD4,
    ["UP"] = 0x6319DB71,
    ["LEFT"] = 0xA65EBAB4,
    ["RIGHT"] = 0xDEB34313,
    ["RIGHTBRACKET"] = 0xA5BDCD3C,
    ["LEFTBRACKET"] = 0x430593AA,
    ["BACKSPACE"] = 0x156F7119,
    ["ALT"] = 0x8AAA0AD4,
    ["CTRL"] = 0xDB096B85,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["3"] = 0x4F49CC4C,
    ["4"] = 0x8F9F9E58,
}
Config.metadata = false -- set to true when using meta data inventory update 


Config.debug = true -- script is not supposed to be restarted on live server. put this to true if u want to restart script
Config.taxledger = true -- taxes will be taken from a special ledger that only allows players to deposit their tax amount and nothing more, use this to avoid houses that never go on sale because players put alot of money in their tax ledger and left the server
Config.renderdistance = 100
Config.timedupdate = 15 -- update db every 30 minutes
Config.bucketblock = 9959
-- this script requires syn_instancebucket to work correctly. 
Config.anticrashloop = true -- redm has an issue with exiting routing bucket. turn this to true if u have trouble crashing when exiting hotel rooms
Config.furnitureitems = false -- turn to true if you want furniture to be items instead of having a buy furniture menu
Config.maxhouses = 1  -- max number of houses player can own (hotels excluded)

Config.command = "createhouse" -- command to createhouses
Config.synsociety = true -- turn true only if using syn_society. make sure realestate job is registered in society config and in relevant databases, this is used to deposit money into the mentioned society
Config.synsocietyjob ="realestate" -- you can use this to allow for job creation by people with this job(does not require syn society)
Config.synsocietyjobrank = 0 -- minimum job rank to allow deletion of created houses (houses on sale can be deleted, owned houses cannot)(does not require syn society)
Config.sellpercentage = { -- percentages below will by multiplyed by sale price and result will be given to relevant party as mentioned below. make sure the total percentages amount does not go over 1
-- anything less than 1 the remaining money gets deleted from server. this is good to fight inflation of currency 
seller = 0.75, -- person selling the house agent or player, set to 0 if you dont want money to go to people. this also stops people from receving money for selling their homes.
society = 0, -- realestate society only use if syn_society is toggled on above and you own syn society. set to 0 if you dont want money to go to society
} -- in this case 50% of sale price goes to seller, 30% goes to society, 20% gets deleted from the server and goes to no one.

Config.teleporterhouses = { -- use your own mlos to make teleporter homes the ones below are just examples
    ["Penthouse"] = {location = {x=2816.0, y=-1232.49, z=21.18}},
    ["Gunsmith"] = {location = {x=-757.9, y=-1315.6, z=23.73}},
    ["Office"] = {location = {x=-790.6, y=-1352.1, z=23.67}},
    ["News Office"] = {location = {x=2623.98, y=-1338.3, z=50.16}},
    ["Law Office"] = {location = {x=-291.2, y=782.9, z=98.5}},
    ["Lodge"] = {location = {x=-1439.45, y=-2275.24, z=44.0}},
    ["Bar"] = {location = {x=-1408.99, y=-2318.08, z=23.6}},
    ["Breakroom"] = {location = {x=-278.6, y=811.0, z=122.6}},
}

Config.Locations = { -- money for houses bought goes here. sellers have it to collected from here. 
    SaintDenis = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=2648.51, y=-1294.12, z=52.25}, -- location of sold home ledger 
        blipsprite = 249721687, -- blip sprite
		Name = 'Sold Home Ledger', -- blip name 
    },
    Blackwater = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=-819.1, y=-1278.75, z=43.64}, -- location of sold home ledger 
        blipsprite = 249721687, -- blip sprite
        Name = 'Sold Home Ledger', -- blip name 
},
}

Config.motellocation = { 
    Valentine = {
        PosEntrance = {x=-322.14, y=767.47, z=121.63}, 
        PosExit = {x=-323.707, y=767.1247, z=121.5827}, 
        PosChangingroom = {x=-326.82, y=764.62, z=122.0866}, 
        PosInventory = {x=-325.4, y=767.02, z=122.0866}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Saints Hotel', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    Armadillo = {
        PosEntrance = {x=-3697.51, y=-2588.12, z=-10.29}, 
        PosExit = {x=-5512.44, y=-2972.61, z=2.22}, 
        PosChangingroom = {x=-5515.87, y=-2973.22, z=2.22}, 
        PosInventory = {x=-5514.92, y=-2970.04, z=2.22}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Armadillo Saloon', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    Tumbleweed = {
        PosEntrance = {x=-5516.48, y=-2962.85, z=-0.81}, 
        PosExit = {x=-5512.44, y=-2972.61, z=2.22}, 
        PosChangingroom = {x=-5515.87, y=-2973.22, z=2.22}, 
        PosInventory = {x=-5514.92, y=-2970.04, z=2.22}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Tumbleweed Room & Board', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    bw1 = {
        PosEntrance = {x=-809.98, y=-1346.16, z=43.73}, 
        PosExit = {x=-819.04, y=-1324.18, z=47.88}, 
        PosChangingroom = {x=-821.0, y=-1326.25, z=47.89}, 
        PosInventory = {x=-825.57, y=-1323.56, z=47.88}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Althewaye Inn', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    bw2 = {
        PosEntrance = {x=-790.3, y=-1264.22, z=43.6}, 
        PosExit = {x=-819.04, y=-1324.18, z=47.88}, 
        PosChangingroom = {x=-821.0, y=-1326.25, z=47.89}, 
        PosInventory = {x=-825.57, y=-1323.56, z=47.88}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'The Blackwater Hotel', -- blip name 
        price = 75, -- price to buy room
        inventorylimit = 50
    },

    Strawberry = {
        PosEntrance = {x=-1778.28, y=-374.98, z=159.91 }, 
        PosExit = {x=-1819.57, y=-368.67, z=166.5}, 
        PosChangingroom = {x=-1817.05, y=-368.89, z=166.51}, 
        PosInventory = {x=-1820.85, y=-367.95, z=166.51}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Trackers Hotel', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    Rhodes = {
        PosEntrance = {x=1343.5, y=-1301.3, z=77.4}, 
        PosExit = {x=1334.38, y=-1376.89, z=80.48}, 
        PosChangingroom = {x=1331.6, y=-1378.23, z=80.51}, 
        PosInventory = {x=1332.75, y=-1375.38, z=80.49}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Mountview Hotel', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    sd1 = {
        PosEntrance = {x=2677.43, y=-1270.54, z=52.38}, 
        PosExit = {x=2382.27, y=-1213.64, z=51.76}, 
        PosChangingroom = {x=2384.47, y=-1209.85, z=51.77}, 
        PosInventory = {x=2385.97, y=-1213.16, z=51.77}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'The Hotel Grand', -- blip name 
        price = 150, -- price to buy room
        inventorylimit = 50
    },

    sd2 = {
        PosEntrance = {x=2769.66, y=-1337.88, z=46.41}, 
        PosExit = {x=2635.56, y=-1223.56, z=59.59},  
        PosChangingroom = {x=2635.51, y=-1220.64, z=59.59}, 
        PosInventory = {x=2638.13, y=-1222.04, z=59.6}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Hotel Chevalier', -- blip name 
        price = 75, -- price to buy room
        inventorylimit = 50
    },

    Annesburg = {
        PosEntrance = {x=2947.64, y=1332.14, z=44.45}, 
        PosExit = {x=2947.33, y=1331.11, z=44.46}, 
        PosChangingroom = {x=2944.84, y=1329.12, z=44.45}, 
        PosInventory = {x=2947.39, y=1329.89, z=44.45}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Mitternachts Inn', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },

    VanHorn = {
        PosEntrance = {x=2975.68, y=569.57, z=47.82}, 
        PosExit = {x=2975.86, y=572.28, z=47.88}, 
        PosChangingroom = {x=2978.26, y=571.78, z=47.88}, 
        PosInventory = {x=2976.61, y=576.36, z=47.88}, 
        blipsprite = -211556852, -- blip sprite for hotel
        Name = 'Van Horn Room & Board', -- blip name 
        price = 50, -- price to buy room
        inventorylimit = 50
    },
}
-------------------------------------------------------------------
Config.Storageupgrades = {  -- when building houses make sure u set their inventory limit to allow them to have the quantity of items below otherwise they wont be able to upgrade because the inventory cant 
-- hold the items. the storage upgrade system checks to see if the house inventory has the required items below to make the upgrade
    Upgrade1 = {	   
        num = 1, -- always use a number make sure each subsequent number is an addition by 1 not more, and make sure its not repeated.
        title = "Upgrade 1", 
        materials = {
            item1 = {name = "nails", label = "nails", amount = 5},
            item2 = {name = "wood",label = "wood", amount = 10},
            item3 = {name = "clay",label = "clay", amount = 5},
        }, 
		slotamount = 25,  
    },
    Upgrade2 = {	   
        num = 2, 
        title = "Upgrade 2", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 10},
            item2 = {name = "wood",label = "wood", amount = 20},
            item3 = {name = "clay",label = "clay", amount = 5},
        }, 
		slotamount = 25,  
    },
    Upgrade3 = {	   
        num = 3, 
        title = "Upgrade 3", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 15},
            item2 = {name = "hwood",label = "hard wood", amount = 25},
            item3 = {name = "clay",label = "clay", amount = 5},
        }, 
		slotamount = 50,  
    },
    Upgrade4 = {	   
        num = 4, 
        title = "Upgrade 4", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 15},
            item2 = {name = "wooden_boards",label = "wooden boards", amount = 15},
            item3 = {name = "rock",label = "rock", amount = 20},
        }, 
		slotamount = 100,  
    },
    Upgrade5 = {	   
        num = 5, 
        title = "Upgrade 5", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 25},
            item2 = {name = "wooden_boards",label = "wooden boards", amount = 25},
            item3 = {name = "rock",label = "rock", amount = 25},
        }, 
		slotamount = 100,  
    },
    Upgrade6 = {	   
        num = 6, 
        title = "Upgrade 6", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 25},
            item2 = {name = "wooden_boards",label = "wooden boards", amount = 25},
            item3 = {name = "hwoodboard",label = "hard wood boards", amount = 10},
        }, 
		slotamount = 200,  
    },
    Upgrade7 = {	   
        num = 7, 
        title = "Upgrade 7", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 25},
            item2 = {name = "wooden_boards",label = "wooden boards", amount = 25},
            item3 = {name = "hwoodboard",label = "hard wood boards", amount = 25},
        }, 
		slotamount = 200,  
    },
    Upgrade8 = {	   
        num = 8, 
        title = "Upgrade 8", 
        materials = {
            item1 = {name = "nails",label = "nails", amount = 25},
            item2 = {name = "barrel",label = "barrel", amount = 10},
            item3 = {name = "hwoodboard",label = "hard wood boards", amount = 5},
        }, 
		slotamount = 300,  
    },
}

Config.housebliphash = -2024635066 -- unowned
Config.ownedhouseblip = -235048253 -- owned
Config.showblipsforsale = true  -- show blips for houses on sale 

------------------------------------------
-- only set one of those true 

Config.monthlyrepo = true
Config.repotime ={ -- day, hour, and minute of monthly repo of houses. when the server time matches these values. houses that dont have money in their ledger = or more than the tax rate of the house will 
-- go on sale and their owner will lose their ownership. these houses will be marked as repoed and when bought the money spend on buying them will go to no one.
    day = 1,
    hour = 20, -- MAKE SURE THIS IS NOT THE SAME TIME AS SERVER RESTART
    minute = 30
} 
Config.weeklyrepo = false
Config.repotime2 ={ -- day, hour, and minute of monthly repo of houses. when the server time matches these values. houses that dont have money in their ledger = or more than the tax rate of the house will 
-- go on sale and their owner will lose their ownership. these houses will be marked as repoed and when bought the money spend on buying them will go to no one.
    day1 = 3,
    day2 = 10,
    day3 = 17,
    day4 = 24,
    hour = 21,  -- MAKE SURE THIS IS NOT THE SAME TIME AS SERVER RESTART
    minute = 30
} 


Config.furniturelimit = 150
Config.furnituresellrate = 1.0 -- this is the rate at which furniture will sell for if ur not using furniture as items 

Config.furniture = { -- you can add more furniture by following the format and getting the hashes from http://rdr2.mooshe.tv/, use Model Hash (Signed)
-- i only added a few, fill them up with the items you like
["Bathroom"] = {
    ["Baths & Tubs"] = {
        ["Clawfoot Bathtub"] = { cost = 1250, hash = 2131512149},
        ["Wood Bathtub"] = { cost = 350, hash = 29326204},
        ["Single Small Bathtub"] = { cost = 200, hash = -1868751235},
        ["Single Basin Bathtub"] = { cost = 450, hash = -1449867409},
        ["Basin & Jug"] = { cost = 10, hash = 301083006},
        ["Large Basin & Jug"] = { cost = 25, hash = -1645854530},       
    },

    ["Commodes"] = {
        ["Chamber Pot"] = { cost = 5, hash = -283102943},
        ["Simple Commode"] = { cost = 100, hash = -63121300},
        ["Fancy Commode"] = { cost = 500, hash = 158554511},
    },

    ["Decor"] = {      
        ["Bar Soap"] = { cost = 5, hash = -1935140274},
        ["Bath Brush"] = { cost = 5, hash = 975747759},
        ["Bath Sponge"] = { cost = 5, hash = 2060892540},
        ["Facewash"] = { cost = 10, hash = -64543801},
        ["Shaving Cup"] = { cost = 10, hash = -602874159},
        ["Shaving Mirror"] = { cost = 20, hash = 1661492172},
        ["Shaving Kit"] = { cost = 50, hash = -1639277937},
        ["Towel Rack"] = { cost = 35, hash = -1882084875},
        ["First Aid Kit"] = { cost = 50, hash = -1592000004},
        ["Syringe Case"] = { cost = 65, hash = -271103175},
    },

    ["Storage"] = {
        ["Medicine Chest"] = { cost = 30, hash = 879616218},
        ["Sterile Cabinet"] = { cost = 75, hash = 2118901904},
    },

    ["Washstands"] = {
        ["Broken Washstand"] = { cost = 15, hash = -1402045904},
        ["Fancy Washstand"] = { cost = 100, hash = -144018940},
        ["Regal Washstand"] = { cost = 350, hash = 440607172},      
    },
},

["Bedroom"] = {
    ["Armoirs"] = { 
        ["Tall Armoir"] = { cost = 125, hash = 1226012504},
        ["Cherrywood Armoir"] = { cost = 300, hash = -370296889},
        ["Ornate Armoir"] = { cost = 600, hash = -956029335},
        ["Stout Armoir"] = { cost = 400, hash = 528882718},
        ["Shabby Armoir"] = { cost = 125, hash = -1555265429},
        ["Preloved Armoir"] = { cost = 135, hash = 1413284115},
        ["Yellow Armoir"] = { cost = 100, hash = -331838387},
        ["New Pine Armoir"] = { cost = 175, hash = 572662454},     
    },

    ["Beds (Single)"] = {
        ["Army Cot"] = { cost = 15, hash = 850607054},
        ["Bunk Bed"] = { cost = 35, hash = -661790979},
        ["Worn Metal"] = { cost = 10, hash = 1072182776},
        ["Caravan Cot"] = { cost = 50, hash = 531527393},
        ["Simple Wood"] = { cost = 50, hash = -81698397},
        ["Spindle Wood"] = { cost = 165, hash = -582686820},
        ["Shiny Brass"] = { cost = 180, hash = 445982141},
        ["Tidy Wood"] = { cost = 150, hash = -847228074},
        ["Fancy Wood"] = { cost = 300, hash = 48968044},
        ["French Canopy"] = { cost = 600, hash = 427790467},      
    },

    ["Beds (Double)"] = {  
        ["Brass Double"] = { cost = 200, hash = -1394438717}, 
        ["Iron Double"] = { cost = 200, hash = 1955665811},
        ["King Size 4-Post"] = { cost = 850, hash = 1196694421},
        ["Cherrywood Double"] = { cost = 650, hash = -520350323},
        ["Carved Wood King"] = { cost = 550, hash = -1851083299},
        ["Red Wood King"] = { cost = 250, hash = -569320574},  
    },

    ["Decor"] = { 
        ["Hand Mirror"] = { cost = 50, hash = -1628503605},
        ["Hair Brush"] = { cost = 50, hash = 525317058},
        ["Perfume 1"] = { cost = 100, hash = -1641196709},
        ["Perfume 2"] = { cost = 100, hash = 430098120},
        ["Perfume 3"] = { cost = 100, hash = -1702384018},
        ["Folded Shirt"] = { cost = 15, hash = 2022696126},
        ["Alarm Clock"] = { cost = 20, hash = 1858481837},
        ["Divider"] = { cost = 150, hash = -1652701759},
        ["Clothes Pile"] = { cost = 30, hash = 1504046864},
        ["Folded Undershirt"] = { cost = 5, hash = -520066123},   
    },

    ["Dressers"] = {  
        ["Old Wood Mirrored"] = { cost = 100, hash = -1651399666},
        ["Stylish Dresser"] = { cost = 150, hash = 925416402},
        ["Cherrywood Mirrored"] = { cost = 175, hash = 600136167},
        ["Ornate Mirrored"] = { cost = 250, hash = -565436466},
        ["Preloved w/Shelf"] = { cost = 80, hash = -1656898568},
        ["Gilded Wood"] = { cost = 200, hash = -546862027},
        ["Marble Top"] = { cost = 300, hash = -1657632782},    
        ["White Vanity"] = { cost = 400, hash = -1948301680}, 
    },

    ["Sidetables"] = {
        ["Painted Nightstand"] = { cost = 35, hash = -732751035},
        ["Ornate Nightstand"] = { cost = 100, hash = -154796631},
        ["Carved Nightstand"] = { cost = 75, hash = 1277791880},
        ["Cabinet Nightstand"] = { cost = 50, hash = 1561988529},
        ["Pine Nightstand"] = { cost = 35, hash = 341544623},             
    },
},

--[[ ["| Illegal - Buy at Own Risk |"] = {
    ["Moonshining"] = {
        ["Still"] = { cost = 750, hash = -154796631},
        ["Mash Barrel"] = { cost = 125, hash = -154796631},
    },
}, ]]

["Kitchen & Dining"] = {
    ["Decor"] = {
        ["Butter Churn"] = { cost = 10, hash = -385116617},
        ["Cooking Tools"] = { cost = 5, hash = 197170238},
        ["Plate Stack S"] = { cost = 25, hash = 463853721},
        ["Plate Stack L"] = { cost = 75, hash = 414928810},
        ["Plates Fancy"] = { cost = 150, hash = -1658806610},
        ["Spoon Rack"] = { cost = 10, hash = -651992121},
        ["Wash Tub"] = { cost = 5, hash = 768802576},             
        ["Coffee Urn"] = { cost = 150, hash = -1163661952},    
        ["Scrub Brush"] = { cost = 5, hash = 858540986},
        ["Water Bucket"] = { cost = 5, hash = -197909103},
        ["Coffee Grinder"] = { cost = 50, hash = -706576317},   
        ["Full Basin"] = { cost = 25, hash = 2128770257},   
        ["Empty Basin"] = { cost = 25, hash = 2038152081},   
        ["Feather Duster"] = { cost = 15, hash = -1310258630}, 
        ["Clothes Iron"] = { cost = 15, hash = -1709854421},
        ["Tea Tray Set"] = { cost = 150, hash = -398036248}, 
        ["Copper Kettle"] = { cost = 20, hash = 353586511},
        ["Tin Kettle"] = { cost = 10, hash = -1045380799},
        ["Cutting Board"] = { cost = 5, hash = 305390929},
        ["Knife Block"] = { cost = 10, hash = 1379221251},
        ["Cauldron (Empty)"] = { cost = 10, hash = 1039815225},
        ["Cauldron (Full)"] = { cost = 20, hash = -808559472},
        ["Knife Set"] = { cost = 10, hash = -416142262},
        ["Knife Sharpener"] = { cost = 10, hash = 1475285783},
        ["Mortar & Pestle"] = { cost = 10, hash = -503626004},
    },

    ["Dining Tables (Large)"] = {
        ["Long Rough Hewn"] = { cost = 20, hash = 85453683},
        ["Long Whitewashed"] = { cost = 100, hash = 1287780262},
        ["Long Wide Painted"] = { cost = 100, hash = -937878392},
        ["Long Green"] = { cost = 100, hash = -103072601},
        ["Long Prep L"] = { cost = 300, hash = -166830089},
        ["Long Timber"] = { cost = 50, hash = 1624513686},              
        ["Long Dropleaf"] = { cost = 150, hash = 1350239673},   
        ["Long Annesburg"] = { cost = 300, hash = 1782154345},   
        ["Long Carved"] = { cost = 175, hash = -856053084},
        ["Round White"] = { cost = 150, hash = 287247401},
        ["Round Dark Wood"] = { cost = 150, hash = -1439003348},
        ["Long Lace Cloth"] = { cost = 150, hash = -838564983},
        ["Long Lace Doily"] = { cost = 300, hash = -1473835664},
        ["Long Voodoo"] = { cost = 150, hash = 405825635},
    },
    
    ["Dining Tables (Small)"] = {
        ["Square Shabby"] = { cost = 50, hash = 1652652063},
        ["Square Tablecloth"] = { cost = 200, hash = -1587930623},
        ["Square Metal"] = { cost = 150, hash = 211190273},
        ["Round Scalloped"] = { cost = 250, hash = 179055886},
        ["Round Tablecloth"] = { cost = 300, hash = -1799375105},
        ["Round Preloved"] = { cost = 150, hash = 1006370188},
        ["Square Preloved"] = { cost = 150, hash = 1359714186},
        ["Round Polished"] = { cost = 400, hash = -152558810},               
    },

    ["Dining Chairs"] = {
        ["Ladder Back Wood"] = { cost = 20, hash = -1443906703},
        ["Cushioned Chair"] = { cost = 50, hash = 1402789292},
        ["Varnish Rattan"] = { cost = 20, hash = -876203942},
        ["Unvarnished Wood"] = { cost = 10, hash = -289651159},
        ["Windsor Wood"] = { cost = 20, hash = 325252933},
        ["Thatched Seat"] = { cost = 15, hash = -359926761},              
    },

    ["Ovens & Stoves"] = {
        ["Cooktop Stove"] = { cost = 50, hash = -2008369031}, 
        ["Vented Cooktop Stove"] = { cost = 75, hash = -677652422}, 
        ["Cooking Range S"] = { cost = 350, hash = -2054771143}, 
        ["Cooking Range M"] = { cost = 550, hash = -1740286366}, 
        ["Cooking Range L"] = { cost = 750, hash = 1647846115}, 
        ["Tiny Stove"] = { cost = 20, hash = -1498775951},
        ["Vented Stove"] = { cost = 100, hash = 920471419},
        ["Barrel Stove"] = { cost = 75, hash = 922264741},
        ["Shiny Pot Belly"] = { cost = 75, hash = 445844223},
        ["Cast Iron Pot Belly"] = { cost = 50, hash = -229133091},
        ["Cast Iron Heater"] = { cost = 350, hash = 1932321260},             
    },

    ["Counters"] = {
        ["Butcher Block S"] = { cost = 100, hash = 2039723247},          
        ["Butcher Block L"] = { cost = 150, hash = 421426490},   
        ["Prep Table L"] = { cost = 150, hash = -485409951},   
        ["Prep Table S"] = { cost = 100, hash = -729484024},   
        ["Gutting Table"] = { cost = 150, hash = -513927548},
        ["Trough Table"] = { cost = 75, hash = -652904703},
    },

    ["Sinks"] = {
        ["Small Sink"] = { cost = 75, hash = -710494238},
        ["Fancy Pump Sink"] = { cost = 300, hash = 944948591},
        ["Simple Pump Sink"] = { cost = 150, hash = 1338551108},
        ["Large Dry Sink"] = { cost = 75, hash = 1307304177},             
    },

    ["Storage"] = {
        ["Apple Barrel"] = { cost = 5, hash = -156060815},
        ["Apple Basket"] = { cost = 10, hash = 86968515},
        ["Root Veg Basket"] = { cost = 5, hash = -1775924437},
        ["Mushroom Basket"] = { cost = 5, hash = 1276279445},
        ["Bread Basket"] = { cost = 5, hash = -2122226661},
        ["Flower Basket"] = { cost = 5, hash = -1886126872},
        ["Food Barrel"] = { cost = 5, hash = -589926798},
        ["Ice Chest Small"] = { cost = 200, hash = -1027584093},
        ["Icebox Small"] = { cost = 1000, hash = -418113348},
        ["Icebox Fancy"] = { cost = 2000, hash = -695961351},             
        ["Kitchen Shelves"] = { cost = 50, hash = 1771906012},  
        ["White Hutch"] = { cost = 150, hash = 1294051394},  
        ["Green Hutch"] = { cost = 100, hash = 920663016},  
        ["Varnished Hutch"] = { cost = 350, hash = -600811692},  
    },
},

["Lighting"] = {
    ["Candles"] = {
        ["Bottle Candle"] = { cost = 5, hash = -1012195445},
        ["Candle Box"] = { cost = 20, hash = 749478396},
        ["Cup Candle"] = { cost = 5, hash = 97710627},
        ["Cup Candle 2"] = { cost = 5, hash = 436323736},
        ["Double Candle"] = { cost = 5, hash = 1443543434},
        ["Lantern Stick"] = { cost = 20, hash = -127135028},
        ["Melted Candle"] = { cost = 5, hash = -1200234060},
        ["Stick Candle"] = { cost = 5, hash = 526843578},   
        ["Fancy Cup Candle"] = { cost = 50, hash = 1849477065},           
    },

    ["Lamps & Lanterns"] = {
        ["Red Table Lamp"] = { cost = 75, hash = 1920013875},
        ["Blue Kerosene"] = { cost = 175, hash = -1773877772},
        ["Plain Swing-Arm"] = { cost = 75, hash = 1401470064},
        ["Floral Bronze"] = { cost = 50, hash = -1747529137},
        ["Green Globe"] = { cost = 75, hash = -1998240069},
        ["Crackle Glaze"] = { cost = 125, hash = 1635620646},
        ["Glass Oil"] = { cost = 45, hash = -1274796299},
        ["Bronze Oil"] = { cost = 45, hash = 1017104287},
        ["Ceramic Oil"] = { cost = 75, hash = -879706202},
        ["Fancy Swing-Arm"] = { cost = 125, hash = -2131192581},
        ["Cheap Oil Lamp"] = { cost = 15, hash = -1113583116},
        ["Covered Oil Lantern"] = { cost = 15, hash = 84384819},
        ["Hurricane Lantern"] = { cost = 10, hash = 319326044},             
        ["Bronze Stick Lantern"] = { cost = 20, hash = 68511322},  
        ["Bronze Bulb Lantern"] = { cost = 20, hash = -966953657},
    },

    ["Standing Lamps"] = {
        ["Carved Wood"] = { cost = 350, hash = 811678375},
        ["Fancy Bronze"] = { cost = 400, hash = -1029021629},        
    },

    ["Wall & Ceiling Lights"] ={
        ["Kerosene Wall Lamp"] = { cost = 20, hash = -1085138714},
        ["Oil Wall Lamp"] = { cost = 35, hash = -1974760673},
        ["Antler Chandelier"] = { cost = 300, hash = -1874672492},
        ["Bronze Short Hanging"] = { cost = 300, hash = 867853685},
        ["Bronze Medium Hanging"] = { cost = 300, hash = -1610607398},
    },
},

["Living"] = {

    ["Rocking Chairs"] = {
        ["Painted High Back"] = { cost = 175, hash = -1194133100},
        ["Wicker Low Back"] = { cost = 125, hash = 1732597082},
        ["Wide Low Back"] = { cost = 125, hash = 612486560},
        ["Chunky High Back"] = { cost = 100, hash = -821713083},
        ["Scruffy Fabric"] = { cost = 150, hash = 1246765953},
        ["Ladderback Wicker"] = { cost = 150, hash = 359054075},
        ["Painted Cane Seat"] = { cost = 150, hash = -51310680},
    },

    ["Indoor Benches"] = {
        ["Regal Bench"] = { cost = 500, hash = 476996807},
        ["Bear Bench"] = { cost = 150, hash = -191845882},
        ["Cloth Bench"] = { cost = 25, hash = 964931263},
        ["Annesburg Bench"] = { cost = 250, hash = 1119082152},
        ["Windsor Bench"] = { cost = 75, hash = -1882052649},
        ["Blackwater Bench"] = { cost = 300, hash = -2007453069},
        ["Woven Wicker Bench"] = { cost = 150, hash = 876732623},
        ["Green Fabric Bench"] = { cost = 225, hash = 1530158847},
    },
    
    ["Coffee Tables"] = {
        ["Shabby Painted"] = { cost = 25, hash = 286526954},
        ["Latticed Round"] = { cost = 100, hash = -2053209149},
        ["Preloved Walnut"] = { cost = 500, hash = -1080593296},
        ["Lacquer Top"] = { cost = 500, hash = -1014005016},
        ["Leather Top"] = { cost = 250, hash = -1699303373},
        ["White Wicker"] = { cost = 50, hash = -1486370183},
    }, 

    ["Couches"] = {
        ["Scruffy Sofa"] = { cost = 600, hash = -1523455647},
        ["Comfy Wicker Couch"] = { cost = 250, hash = -1649174004},
        ["Louis XIV Couch"] = { cost = 450, hash = -410195220},
        ["Blue Floral Loveseat"] = { cost = 200, hash = -278050664},
        ["White Wicker Loveseat"] = { cost = 50, hash = 1220939063},
        ["Fancy French Couch"] = { cost = 800, hash = 11639493},
        ["Worn Floral Couch"] = { cost = 700, hash = 232449597},
    },

    ["Decor"] = {
        ["Mantle Clock"] = { cost = 25, hash = 1291410892},
        ["Decor Plate"] = { cost = 10, hash = -1126784041},
        ["Small Deer Statue"] = { cost = 10, hash = -881813009},         
        ["Small Bust 1"] = { cost = 35, hash = 778670526},  
        ["Small Bust 2"] = { cost = 35, hash = 543124810}, 
        ["Ashtray"] = { cost = 5, hash = -1694359093},
    }, 

    ["End Tables"] = {
        ["Spindleleg Endtable"] = { cost = 50, hash = -49290960},
        ["Dropleaf Endtable"] = { cost = 50, hash = -96741014},
        ["Sturdy Endtable"] = { cost = 75, hash = -992245794},
        ["Low Endtable"] = { cost = 15, hash = 991973339},
        ["Rustic Endtable"] = { cost = 10, hash = -1461458001},	            
    },

    ["Living Chairs"] = {
        ["White Wicker"] = { cost = 15, hash = 1971611315},
        ["Brown Wicker"] = { cost = 15, hash = 1980978441},
        ["Comfy Green Wicker"] = { cost = 25, hash = -1345208079},
        ["Intricate Wicker"] = { cost = 250, hash = -591288884},
        ["Eagle Wing Chair"] = { cost = 650, hash = -1525270475},
        ["Fancy Folding"] = { cost = 175, hash = -441641109},
        ["Floral Armchair"] = { cost = 550, hash = 1322876246},
        ["Hunter Armchair"] = { cost = 500, hash = 579705889},
        ["Louis XIV Chair"] = { cost = 200, hash = 126203870},
        ["Red Velvet Chair"] = { cost = 125, hash = -48905921},           
        ["Regal Armchair"] = { cost = 450, hash = -1542319979},
        ["Red Tub Chair"] = { cost = 175, hash = -807250478},
        ["Floral Tub Chair"] = { cost = 285, hash = -1936130724},
        ["Cream Tub Chair"] = { cost = 400, hash = 70472470},
        ["Eagle Claw Chair"] = { cost = 195, hash = -1000916748},
        ["Screen Back Armchair"] = { cost = 275, hash = -772253778},
        ["Carved Wooden Armchair"] = { cost = 225, hash = -67848309},
    },

    ["Fires & Accessories"] = {
        ["Hearth Lit S"] = { cost = 25, hash = 89834103},
        ["Hearth Unlit S"] = { cost = 25, hash = -1689976376},
        ["Hearth Lit M"] = { cost = 50, hash = -2074655778},
        ["Hearth Unlit M"] = { cost = 50, hash = -1953797880},
        ["Hearth Lit L"] = { cost = 75, hash = -239887287},
        ["Hearth Unlit L"] = { cost = 75, hash = -2128618183},
        ["Fireplace Logs"] = { cost = 20, hash = 2098245573}, 
        ["Fireplace Tools"] = { cost = 10, hash = -1048702951},
        ["Bellows"] = { cost = 10, hash = 1984976183},
        ["Coal Scuttle"] = { cost = 15, hash = -1674877330},   
        ["Coal Hod"] = { cost = 100, hash = -1485591379},   
    },

    ["Leisure"] = {
        ["Book Row S"] = { cost = 15, hash = 50893433},
        ["Book Stack"] = { cost = 10, hash = 356130777},
        ["Book Row M"] = { cost = 25, hash = 1876566176},
        ["Book Row L"] = { cost = 30, hash = 682536653},
        ["Checker Board"] = { cost = 30, hash = 1009452159},
        ["Chess Set"] = { cost = 50, hash = 1796540484},
        ["Easel"] = { cost = 25, hash = -228445372},
        ["Paint Box"] = { cost = 10, hash = -863232339},
        ["Sewing Decor"] = { cost = 10, hash = 992748516},   
        ["Sewing Box"] = { cost = 50, hash = 615442333},
        ["Map"] = { cost = 10, hash = 1564811379},
        ["Telescope"] = { cost = 1000, hash = 346324195},
        ["Pet Basket"] = { cost = 10, hash = 1449731695},  
        ["Cribbage"] = { cost = 35, hash = 1695133799}, 
        ["Playing Cards"] = { cost = 10, hash = 989398512}, 
        ["Music Book"] = { cost = 10, hash = 915198113}, 
        ["Pipe Box"] = { cost = 50, hash = -1194329592},
        ["Cigar Box"] = { cost = 20, hash = 1713200946},
        ["Liquer Set"] = { cost = 300, hash = -330571735},
        ["Champagne Set"] = { cost = 350, hash = 567396368},
        ["Cigar Box"] = { cost = 20, hash = 1713200946},
        ["Soda Siphon"] = { cost = 35, hash = -113196840},
    },

    ["Sidetables & Consoles"] = {
        ["Bamboo Sidetable"] = { cost = 50, hash = -1991761880},	    
        ["Corner Cabinet"] = { cost = 50, hash = -810390893},
        ["Sawbuck Table"] = { cost = 15, hash = 883569961},  
        ["Buffet"] = { cost = 55, hash = 335118833},        
        ["Annesburg Console"] = { cost = 255, hash = 1186209217},
        ["Preloved Sidetable"] = { cost = 45, hash = -1037565097},    
        ["Refined Sidetable"] = { cost = 220, hash = 784659507},
        ["Small Side Cabinet"] = { cost = 75, hash = -799922861},
        ["Simple Sidetable"] = { cost = 50, hash = -743292301},
        ["Pedestal Sidetable"] = { cost = 50, hash = 1362003490},
        ["Curved Sideboard"] = { cost = 125, hash = 263886239},     
    },

    ["Cabinets & Shelving"] = {
        ["Shabby Red Shelves"] = { cost = 50, hash = 1969230861},
        ["Shabby Green Shelves"] = { cost = 50, hash = -156150626},
        ["Dark Corner Cabinet"] = { cost = 125, hash = 1645316571},
        ["White Corner Cabinet"] = { cost = 175, hash = 1680459140},
        ["Scallop Shelves"] = { cost = 150, hash = -1226753492},
        ["Finial Shelves"] = { cost = 200, hash = -750202184},
        ["Gun Cabinet"] = { cost = 200, hash = 282918927},
        ["Walnut China Cabinet"] = { cost = 300, hash = 164347474},
        ["Preloved Fancy Cabinet"] = { cost = 400, hash = -839571926},
    },

    ["Storage"] = {
        ["Coatstand Bear"] = { cost = 200, hash = -66284383},
        ["Coatstand Fancy"] = { cost = 75, hash = -1033712895},
        ["Coatstand Simple"] = { cost = 50, hash = 1327088196},
        ["Coatstand Rustic"] = { cost = 25, hash = 563067872},                   
    },
},

["Miscellaneous"] = {
    ["Wall Decor"] = {    
        ["Alligator Art"] = { cost = 150, hash = -1961482670},
        ["Bear Art"] = { cost = 150, hash = 1929525079},
        ["Botany Art 1"] = { cost = 150, hash = 444625587},
        ["Botany Art 2"] = { cost = 100, hash = 887628302},
        ["Botany Art 3"] = { cost = 100, hash = -1004125172},
        ["Botany Art 4"] = { cost = 50, hash = -2021243415},
        ["Botany Art 5"] = { cost = 50, hash = 722538304},
        ["Botany Art 6"] = { cost = 50, hash = -1695618086},
        ["Buck Art"] = { cost = 150, hash = -1211054765},
        ["Chicken Church Art"] = { cost = 150, hash = -132020357},
        ["Elk Art"] = { cost = 150, hash = -359242103},
        ["Fields Art"] = { cost = 150, hash = 1653322454},
        ["Fox Art"] = { cost = 150, hash = 746047447},
        ["Industial Art"] = { cost = 150, hash = 581482573},
        ["Lake Art"] = { cost = 150, hash = -1233266567},
        ["Mansion Art"] = { cost = 150, hash = -1186962242},
        ["Moose Art"] = { cost = 150, hash = -1464680957},
        ["Mountain Art"] = { cost = 150, hash = -1003692821},
        ["River Art"] = { cost = 150, hash = 1948311852},
        ["Rock Art"] = { cost = 150, hash = -1470832373},
        ["Turkey Plume"] = { cost = 10, hash = -1479447029},
        ["Deer Antlers S"] = { cost = 15, hash = 1297601427},
        ["Deer Antlers L"] = { cost = 25, hash = 18009014},
        ["Gator Gunrack"] = { cost = 150, hash = 908527399},
        ["Elk Antlers"] = { cost = 50, hash = 1960347173},
        ["Mounted Deer Head"] = { cost = 30, hash = 270188936},
        ["Mounted Moose Antlers"] = { cost = 150, hash = -2120171894},  
        ["Mounted Bat"] = { cost = 75, hash = -567096045},
        ["Bow Display"] = { cost = 100, hash = -1942736688},
        ["Needlework"] = { cost = 50, hash = 2078252229},
        ["Hunting Horn"] = { cost = 125, hash = 656129288},
    },

    ["Wall Clocks"] = {    
        ["Station Clock"] = { cost = 50, hash = 753356425},
        ["Gilded Regulator"] = { cost = 75, hash = 1161515178},
        ["Simple Regulator"] = { cost = 50, hash = 695388577},
        ["Over Mantle"] = { cost = 175, hash = 1354682729},
        ["Fancy Pendulum"] = { cost = 200, hash = -1339244739},
    },

    ["Taxidermy"] = {   
        ["Badger 1"] = { cost = 50, hash = 1351633399},
        ["Badger 2"] = { cost = 75, hash = -730612139},
        ["Badger 3"] = { cost = 100, hash = 448514076},
        ["Cougar"] = { cost = 150, hash = 106531847},
        ["Coyote 1"] = { cost = 25, hash = 755719297},
        ["Coyote 2"] = { cost = 50, hash = -1429415106},
        ["Coyote 3"] = { cost = 100, hash = -2128902508},
        ["Eagle 1"] = { cost = 75, hash = 91726944},
        ["Eagle 2"] = { cost = 150, hash = 139224300},
        ["Eagle 3"] = { cost = 150, hash = 1110501816},
        ["Pheasant"] = { cost = 50, hash = -139659644},
        ["Vulture 1"] = { cost = 50, hash = -783244734},
        ["Vulture 2"] = { cost = 75, hash = 117247090},
        ["Vulture 3"] = { cost = 125, hash = -1586839833},
        ["Vulture 4"] = { cost = 150, hash = 1751914218},
        ["Gator Sunbathing"] = { cost = 50, hash = 1927954815},
        ["Gator Groom"] = { cost = 200, hash = 840028633},
        ["Gator Bachelor"] = { cost = 125, hash = 1536796168},
        ["Cardinal 1"] = { cost = 10, hash = -1203782423},
        ["Cardinal 2"] = { cost = 10, hash = -1339763497},
        ["Cardinal 3"] = { cost = 10, hash = 1776986935},
        ["Fox 1"] = { cost = 25, hash = -643500459},
        ["Fox 2"] = { cost = 50, hash = -1066772880},
        ["Fox 3"] = { cost = 75, hash = -898733096},
        ["Fox 4"] = { cost = 150, hash = -1437140365},
        ["Owl"] = { cost = 200, hash = 769516480},
        ["Hawk 1"] = { cost = 25, hash = 879332164},
        ["Hawk 2"] = { cost = 50, hash = 314625975},
        ["Hawk 3"] = { cost = 100, hash = -1501170113},   
        ["Heron & Loon"] = { cost = 100, hash = -2107823340},   
    },

    ["Trunks & Chests"] = {     
        ["Checkered Trunk"] = { cost = 50, hash = -173933318},
        ["Ornate Chest"] = { cost = 50, hash = -576101586},
        ["Wedding Chest"] = { cost = 50, hash = -1784026290},
        ["Old Worn Chest"] = { cost = 50, hash = 370527842},
        ["Log Chest"] = { cost = 50, hash = -1215506615},
        ["Travel Trunk"] = { cost = 50, hash = 1207272102},
        ["Trunk"] = { cost = 50, hash = 193149167},
        ["Wicker Chest"] = { cost = 50, hash = -835354648},
        ["Pirate Chest"] = { cost = 50, hash = -208790017},
    },

    ["Misc Storage"] = {    
        ["Gun Barrel"] = { cost = 10, hash = 187048082},
        ["Blanket Box"] = { cost = 10, hash = -542120195},
        ["Rifle Case"] = { cost = 100, hash = -1666166776},
        ["Pistol Case"] = { cost = 50, hash = -1213330222},
        ["Pistol Chest"] = { cost = 200, hash = 1395370441},
        ["Small Suitcase"] = { cost = 50, hash = 768520500},
        ["Hatbox"] = { cost = 30, hash = 1086196969},
        ["Knapsack"] = { cost = 10, hash = 986744376}, 
        ["Keybox"] = { cost = 10, hash = 1564026289}, 
    },

    ["Rugs"] = {    
        ["Bearskin Rug"] = { cost = 150, hash = -319983629},
        ["Cougarskin Rug"] = { cost = 50 , hash = 1384646303},
        ["Deerskin Rug"] = { cost = 100 , hash = 466947407},
        ["Wolfskin Rug"] = { cost = 50, hash = 1437732249},
        ["Green Rug"] = { cost = 20, hash = 1264441366},
        ["Persian Rug"] = { cost = 75, hash = 795977430},
        ["Striped Rug"] = { cost = 20, hash = 1976404081},
    },

    ["Wall Storage"] = {  
        ["Gun Rack"] = { cost = 100, hash = 1230911989},
        ["Coatrack Rustic"] = { cost = 10, hash = 1180301368},
        ["Coatrack Chunky"] = { cost = 50, hash = 631426674},
        ["Coatrack Crafted"] = { cost = 100, hash = 704796177},
        ["Shelf White"] = { cost = 100, hash = -1971102173},
        ["Shelf Green"] = { cost = 100, hash = -1458883546},
        ["Shelf Sweet"] = { cost = 125, hash = -827596041},
        ["Shelf Ironwork S"] = { cost = 50, hash = 1881303217},
        ["Shelf Ironwork L"] = { cost = 75, hash = -1487353679},
        ["Shelf Chunky"] = { cost = 50, hash = -892805115},
        ["Shelf Worn"] = { cost = 15, hash = -1689617623},
    },
},

["Outdoors"] = {
    ["Animals"] = {
        ["Animal Trap 1"] = { cost = 25, hash = -1127958042},
        ["Animal Trap 2"] = { cost = 25, hash = 1981290266},
        ["Animal Trap Stack"] = { cost = 50, hash = -536427285},
        ["Chicken Coop"] = { cost = 75, hash = -603478730},
        ["Coyote Pelt"] = { cost = 15, hash = -1156281048},
        ["Deer Pelt"] = { cost = 25, hash = -944201792},
        ["Feed Trough"] = { cost = 20, hash = -1275967124},
        ["Hitching Post"] = { cost = 50, hash = -965956337},
        ["Meat Drying Rack"] = { cost = 35, hash = -1326227200},
        ["Water Trough"] = { cost = 20, hash = 199641577},
        ["Milk Can L"] = { cost = 35, hash = -928441655},
        ["Milk Can S"] = { cost = 20, hash = -816536116},
    },

    ["Work"] = {
        ["Clothes Line"] = { cost = 5, hash = -25978087},
        ["Log Pile"] = { cost = 25, hash = 1994180383},
        ["Split Logs"] = { cost = 50, hash = 1300184824},
        ["Huge Log Store"] = { cost = 150, hash = -110366998},
        ["Wheelbarrow"] = { cost = 50, hash = 1033874054},
        ["Toolbox"] = { cost = 50, hash = 133961016},
        ["Tool Peg Board"] = { cost = 50, hash = -542401398},
        ["Scarecrow"] = { cost = 25, hash = 392345697},
        ["Clothes Wringer"] = { cost = 75, hash = 953535591},
        ["Water Pump"] = { cost = 500, hash = -40350080},
        ["Sawhorse"] = { cost = 35, hash = 1302874895},
    },

    ["Leisure"] = {
        ["Painted Hide"] = { cost = 50, hash = -1739385212},
        ["Hammock"] = { cost = 50, hash = 1693413193},
        ["No Trespass Sign"] = { cost = 10, hash = -111883208},
        ["Private Sign"] = { cost = 10, hash = -955619976},
        ["Wooden Bullseye"] = { cost = 10, hash = 28966073},
        ["Champagne Basket"] = { cost = 350, hash = -403253893},
        ["Horseshoe Pit"] = { cost = 150, hash = 1195306470},
    },

    ["Outdoor Fires"] = {
        ["Simple Campfire"] = { cost = 10, hash = -1179266405},
        ["Campfire & Spit"] = { cost = 15, hash = 1946434792},
        ["Small Cook Pot"] = { cost = 35, hash = 174418135},
        ["Camp Cook Pot"] = { cost = 75, hash = -941414360},
        ["Crafting Fire"] = { cost = 25, hash = -1279776992},  
        ["Firepit"] = { cost = 50, hash = 634946146},  
        ["Firebarrel"] = { cost = 35, hash = -1327241243},            
    },

    ["Seating"] = {
        ["Log Bench 1"] = { cost = 10, hash = -359794697},
        ["Log Bench 2"] = { cost = 10, hash = 861210780},   
        ["Wooden Bench"] = { cost = 20, hash = 1057555344},
        ["Stripe Deck Chair"] = { cost = 25, hash = -1939439553},
        ["Covered Deck Chair"] = { cost = 75, hash = 535450455},
        ["Folding Stool"] = { cost = 10, hash = 1600083684},
        ["Crate Stool L"] = { cost = 10, hash = 1504738597},
        ["Crate Stool S"] = { cost = 5, hash = -1618805595},
    },

    ["Storage & Outbuildings"] = {
        ["Outhouse 1"] = { cost = 150, hash = -2105178365},
        ["Outhouse 2"] = { cost = 150, hash = 2078043409},     
        ["Storage Box S"] = { cost = 25, hash = 1776110856},
        ["Storage Box M"] = { cost = 50, hash = -2070991587},
        ["Storage Box L"] = { cost = 100, hash = -829566757},
        ["Tool Shed L"] = { cost = 100, hash = -1493090196},
        ["Tool Shed S"] = { cost = 50, hash = 1621685195},
        ["Mailbox"] = { cost = 100, hash = 1786837602},
        ["Tool Barrel"] = { cost = 10, hash = -462883214},
        ["Tool Crate"] = { cost = 5, hash = -911764409},
    },
},

["Plants"] = {
    ["Indoor"] = {
        ["Bell Jar Flower"] = { cost = 50, hash = 980789985},
        ["Mauve Bouquet"] = { cost = 5, hash = 765646576},
        ["Pink Bouquet"] = { cost = 5, hash = -623299690},
        ["Mixed Bouquet"] = { cost = 10, hash = 289239370},
        ["Potted Monstera"] = { cost = 20, hash = -274346894},
        ["Potted Palm"] = { cost = 20, hash = 889891686},
        ["Barrel Ficus"] = { cost = 20, hash = 659361771},
        ["Purple Bouquet"] = { cost = 10, hash = -899803912},
        ["Tiny Posey Pot"] = { cost = 5, hash = 1456843022},
        ["Tiny Planter"] = { cost = 5, hash = 152617735},
        ["Delftware Ficus"] = { cost = 150, hash = 1917937436},              
        ["Bottle Terrarium"] = { cost = 50, hash = 992352453},  
        ["Lily Bouquet"] = { cost = 15, hash = -797664443},
        ["Potted Lily"] = { cost = 25, hash = -1931452171},
    },

    ["Outdoor"] = {
        ["Flower Boxes"] = { cost = 10, hash = 456717314},
        ["Dieffenbachius Plant"] = { cost = 10, hash = 1933348919},
--[[        ["Hanging Flower Basket Purple"] = { cost = 10, hash = -168494054},
        ["Hanging Flower Basket Orange"] = { cost = 10, hash = -309146763},
        ["Hanging Flower Basket Lilac"] = { cost = 10, hash = -470001623}, ]]
        ["Small Flower Pot"] = { cost = 10, hash = 681443655},
        ["Medium Flower Pot"] = { cost = 10, hash = 1846381345},
        ["Large Plant Pot"] = { cost = 10, hash = 406182099},
        ["Small Plant Pot"] = { cost = 5, hash = 681443655},
        ["Plant Pot"] = { cost = 10, hash = 731716223},
        ["Stool Planter"] = { cost = 10, hash = -1105255470},
        ["Window Planter"] = { cost = 10 , hash = 1703012180},             
    },

},

["Study"] = {
    ["Decor"] = {
        ["Astrolabe"] = { cost = 650, hash = 1500352852},
        ["Calculator"] = { cost = 450, hash = 330467191},
        ["Desk Pad"] = { cost = 15, hash = -1280296438},
        ["Letterbox"] = { cost = 25, hash = 2041689626}, 
        ["Safe"] = { cost = 200, hash = -497717277},
        ["Microscope"] = { cost = 75, hash = -317359805},
        ["Desk Set"] = { cost = 200, hash = 814967714},
        ["Album"] = { cost = 10, hash = -1462168959},
        ["Scrapbook"] = { cost = 10, hash = -904001369},
        ["Typewriter"] = { cost = 750, hash = -424180136},  
        ["Tonic Box"] = { cost = 200, hash = -192353904},              
        ["Globe"] = { cost = 250, hash = 616621460}, 
        ["Trashcan"] = { cost = 10, hash = -47442526}, 
        ["Inkwell"] = { cost = 25, hash = -1040506474}, 
        ["Hand Warmer"] = { cost = 250, hash = 464622849},
        ["Glasses Case"] = { cost = 20, hash = -917473435},
        ["Loupe Lens"] = { cost = 25, hash = -652315328},
        ["Compass"] = { cost = 25, hash = 1961491950},
    },

    ["Desks"] = {
        ["Clerk Desk"] = { cost = 120, hash = -1073706476},
        ["Sleek Desk"] = { cost = 450, hash = 1615548247},
        ["Polished Desk"] = { cost = 450, hash = 1883682934},
        ["Blackwater Desk"] = { cost = 650, hash = -130500054},
        ["Large Top Desk"] = { cost = 450, hash = 966315007},
        ["Small Desk"] = { cost = 80, hash = -1272864568},
        ["Tool Bench"] = { cost = 200, hash = 61143397},
        ["Craftsman Desk"] = { cost = 150, hash = -1231539219},
        ["Messy Secretary Desk"] = { cost = 650, hash = -997451465},
        ["Secretaire"] = { cost = 250, hash = -318756505},
        ["Tiny Desk"] = { cost = 30, hash = 1015218671},
        ["Worn Desk"] = { cost = 30, hash = -1231539219},             
    },

    ["Desk Chairs"] = {
        ["Leather Swivel"] = { cost = 500, hash = 805425957},
        ["Lowback Leather"] = { cost = 350, hash = 1576627533},
        ["Carved Leather"] = { cost = 350, hash = 2017187266},
        ["Fancy Swivel"] = { cost = 25, hash = -343238839},
        ["Wooden Swivel"] = { cost = 10, hash = 342335375},
        ["Scholar"] = { cost = 50, hash = -1022779569},
        ["Lowback Windsor"] = { cost = 50, hash = -1321878957},
    },

    ["Storage"] = {
        ["Bookcase Rolltop"] = { cost = 400, hash = 490621707},
        ["Bookcase Green"] = { cost = 300, hash = 1346985294},
        ["Bookcase Carved"] = { cost = 500, hash = -302968547},
        ["Bookcase Gothic"] = { cost = 400, hash = 1258757423},
        ["Bookcase Empty Walnut"] = { cost = 200, hash = -1405053637}, --WRONG  
        ["Bookcase Small Wall"] = { cost = 150, hash = 850298864},
        ["File Cabinet S"] = { cost = 35, hash = -651349538},
        ["File Cabinet L"] = { cost = 100, hash = -363840348},
    },
},
}
---------------------------------------------------------
Config.Language = {
	["qt"] = "Invalid quantity",
    ["carry"] = "You cannot carry more items",
    ["limit"] = "You reached the limit for this item",
    ["maxslots"] = "your house cannot store more items, slot limit is ",	
    ["aimingatdoor"] = "Press ~e~G~q~ While Aiming at Door",	
    ["nodoorhouse"] = "Press ~e~B~q~ To Create A No Door House",
    ["createhousecancel"] = "Type ~e~/createhouse~q~ To Cancel & Exit",	
    ["pressenterconfirm"] = "Press ~e~Enter~q~ To Confirm",
    ["uparrowicon"] = "Press ~e~Up Arrow~q~ To Move Icon",
    ["downarrowicon"] = "Press ~e~Down Arrow~q~ To Move Icon",
    ["rightarrowicon"] = "Press ~e~Right Arrow~q~ To Move Icon",
    ["leftarrowicon"] = "Press ~e~Left Arrow~q~ To Move Icon",
    ["bracketrighticon"] = "Press ~e~]~q~ To Move Icon",
    ["bracketlefticon"] = "Press ~e~[~q~ To Move Icon",
    ["confirm"] = "Confirm",
    ["outofrange"] = "~e~Out Of Range~q~",
    ["fourtocancel"] = "Press ~e~4~q~ To Cancel & Exit item placement",
    ["gitemplace"] = "Press ~e~G~q~ To place item into place",
    ["bonground"] = "Press ~e~B~q~ To place item on Ground Properly",
    ["changemoverate"] = "Press ~e~3~q~ To Change item movement rate",
    ["rotateitem1"] = "Press ~e~1~q~ To Rotate Item",
    ["rotateitem2"] = "Press ~e~2~q~ To Rotate Item",
    ["moveitem1"] = "Press ~e~Up Arrow~q~ To Move Item",
    ["moveitem2"] = "Press ~e~Down Arrow~q~ To Move Item",
    ["moveitem3"] = "Press ~e~Right Arrow~q~ To Move Item",
    ["moveitem4"] = "Press ~e~Left Arrow~q~ To Move Item",
    ["moveitem5"] = "Press ~e~]~q~ To Move Item",
    ["moveitem6"] = "Press ~e~[~q~ To Move Item",
    ["changerateinfo"] = "Change Rate Of Each Press (0.5) default, max is 5",
    ["set"] = "Set",
    ["notset"] = "Not Set",
    ["furnilimit"] = "You cannot have more furniture. The limit is ",
    ["createhousemenu"] = "Create House Menu",
    ["buyhouse"] = "Buy House",
    ["managehouse"] = "Manage House",
    ["soldhomeledger"] = "Sold Home Ledger",
    ["buyfurni"] = "Buy Furniture",
    ["changingroom"] = "Wardrobe",
    ["setupprimdoor"] = "Primary Door Setup",
    ["extradoorsetup"] = "Extra Doors Setup",
    ["aresure"] = "Are You Sure?",
    ["upstore"] = "Upgrade Storage",
    ["furni"] = "Furniture",
    ["furnicata"] = "Furniture Catagory",
    ["sellfurni"] = "Sell Furniture",
    ["keyholders"] = "Key Holders",
    ["ledger"] = "Ledger",
    ["cancel"] = "Cancel",
    ["yes"] = "Yes",
    ["no"] = "No",
    ["setupprimodoor"] = "Set Up Primary Door : ",
    ["setupotherdoors"] = "Set Up Other Doors",
    ["range"] = "Furniture Range: ",
    ["furnirange"] = "Furniture Range",
    ["taxrate"] = "Tax Rate: ",
    ["taxrate2"] = "Tax Rate",
    ["price"] = "Price",
    ["doorname"] = "Door Name: ",
    ["changedooriconloc"] = "Change Door Icon Location",
    ["confirmdoor"] = "Confirm Door",
    ["addadoor"] = "Add a Door",
    ["returntomainmenu"] = "Return to Main Menu",
    ["otherdoor"] = "Other Door",
    ["addeditdoor"] = "Add a Door",
    ["inventoryspace"] = "Inventory Space",
    ["despawnfurni"] = "De-spawn Furniture",
    ["delhouse"] = "Remove House",
    ["houseid"] = "House ID : ",
    ["givekey"] = "Give Keys",
    ["id"] = "ID",
    ["takekey"] = "Take Keys",
    ["setchangeroomloc"] = "Set Changing Room Location",
    ["setinvloc"] = "Set Inventory Location",
    ["sellhouse"] = "Sell House",
    ["furni"] = "Furniture",
    ["price2"] = " / Value: ",
    ["cost2"] = " / $",
    ["increaseby"] = " / Increase by: ",
    ["ledgercash"] = "Ledger Cash: ",
    ["dollar"] = " $",
    ["ledgerdepo"] = "Ledger Deposit",
    ["tooclose"] = "Someone is too close",
    ["ledgerwithdraw"] = "Ledger Withdraw",
    ["soldhouseid"] = "Sold House ID: ",
    ["profit"] = " / Profit: ",
    ["nooutfits"] = "No outfits",
    ["house"] = "House",
    ["presstobuy"] = "Buy House",
    ["presstomanage"] = "Manage House",
    ["pressforchangingroom"] = "Wardrobe",
    ["pressforinvent"] = "Inventory",
    ["pressforsold"] = "Press ~e~G~q~ For Sold Houses Ledger",
    ["presstoexit"] = "Exit",
    ["presstobuyroom"] = "Buy A Room",
    ["presstoaccess"] = "Enter",
    ["presstochangechangingroom"] = "Press ~e~G~q~ to save changing room location",
    ["presstochangeinv"] = "Press ~e~G~q~ to save inventory location",
    ["changingset"] = "Changing Room Location Set",
    ["invset"] = "Inventory Location Set",
    ["outofhouserange"] = "Out Of House Range",
    ["youcreatedhouse"] = "You Created a House",
    ["boughthome"] = "You Bought A Home",
    ["cantaffordhome"] = "You cannot afford this house",
    ["puthomeforsale"] = "You put a house up for sale",
    ["youdepo"] = "You deposited ",
    ["intoledger"] = " $ into ledger",
    ["intoledger2"] = " $ into tax ledger",
    ["cantdepo"] = "You cannot afford this deposit",
    ["youwith"] = "You withdrew ",
    ["fromledger"] = " $ from ledger",
    ["yougot"] = "You got ",
    ["forsold"] = " $ for your sold house",
    ["youdelh"] = "You Deleted House: ",
    ["homtax1h"] = "~e~Home Tax Collection in 1 hour~q~",
    ["makesure"] = "~e~Make Sure Your Home Ledger Has Enoguh Money To Pay Tax~q~",
    ["youupped"] = "You upgraded your house inventory space",
    ["nomat"] = "You dont have the materials in your house inventory for this upgrade",
    ["cantaffitem"] = "You cannot afford this item",
    ["gotitem"] = "You bought the item",
    ["itemsoldfor"] = "You sold the item for ",
    ["gavekeysto"] = "You gave keys to ",
    ["gotkeys"] = "You received a house key",
    ["alreadykeys"] = "You already have keys",
    ["wrongid"] = "Already has keys or wrong id",
    ["takekeysfrom"] = "You took house keys from ",
    ["motelroomcantafford"] = "You cannot afford this hotel. It costs ",
    ["nosold"] = "No Sold Houses", 
    ["hsfrsale"] = "House For Sale", 
    ["mehome"] = "My Home", 
    ["menuinuse"] = "Menu is in use",
    ["nokeys"] = "You Dont have keys",
    ["nosuchuser"] = "No Such user",
    ["doorlock"] = "Doorlock",
    ["open"] = "open",
    ["motel"] = "Hotel",
    ["cantownmore"] = "Cannot own more houses max: ",
    ["taxledger"] = "Tax Ledger: $",
    ["taxledger2"] = "Deposit money into your tax ledger. ",
    ["cantdepomore"] = "Cannot deposit more than Tax amount: $",
    ["placefurniture"] = "Place Furniture",
    ["removefurni"] = "Remove Furniture",
    ["cantcarry"] = "You cannot carry more items",
    ["gotbackitem"] = "You withdrew the item: ",
    ["furnicantremove"] = "cannot get back item",
    ["nodoorhouse2"] = "No Door House",
    ["telehouse"] = "Teleporter House",
    ["typeoftele"] = "Type of teleport: ", 
    ["enterhouse"] = "Enter House",
    ["exithouse"] = "Exit",
    ["knockprompt"] = "Knock on door",
    ["allowinprompt"] = "Allow in",
    ["declineprompt"] = "Ignore",
    ["doorknocked"] = "There is a knock at the door",
    ["soldfurni"] = "You sold a furniture item",
}
---------------------------------------------------------