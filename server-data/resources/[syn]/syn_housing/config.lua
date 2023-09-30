Config = {}

Config.vorp = true
Config.redem = false

Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["B"] = 0x4CC0E2FE,
    ["G"] = 0x760A9C6F,
    ["ENTER"] = 0xC7B5340A,
    ["DOWN"] = 0x05CA7C52,
    ["SHIFT"] = 0x8FFC75D6,
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
Config.command = "createhouse" -- command to createhouses

Config.synsociety = true -- turn true only if using syn_society. make sure realestate job is registered in society config and in relevant databases, this is used to deposit money into the mentioned society
Config.synsocietyjob = "realestate" -- you can use this to allow for job creation by people with this job(does not require syn society)
Config.synsocietyjobrank = 0 -- minimum job rank to allow deletion of created houses (houses on sale can be deleted, owned houses cannot)(does not require syn society)
Config.sellpercentage = { -- percentages below will by multiplyed by sale price and result will be given to relevant party as mentioned below. make sure the total percentages amount does not go over 1
-- anything less than 1 the remaining money gets deleted from server. this is good to fight inflation of currency 
seller = 0.5, -- person selling the house agent or player, set to 0 if you dont want money to go to people. this also stops people from receving money for selling their homes.
society = 0.3, -- realestate society only use if syn_society is toggled on above and you own syn society. set to 0 if you dont want money to go to society
} -- in this case 50% of sale price goes to seller, 30% goes to society, 20% gets deleted from the server and goes to no one.

Config.Locations = { -- money for houses bought goes here. sellers have it to collected from here. 
    Valentine = {	   -- you can add more by copy pasting this 
        Pos = {x=2646.74, y=-1292.48, z=52.25}, -- location of sold home ledger
        blipsprite = 249721687, -- blip sprite
		Name = 'Sold Home Ledger', -- blip name 
    },

    
}


-------------------- replace your config.motellocation with this (new line)
Config.motellocation = { -- location for motel access, only supports 1 access point

    Pos = {x=-322.14, y=767.47, z=121.63}, -- location of valentine motel enter
    blipsprite = -211556852, -- blip sprite for motel
    Name = 'Hotel', -- blip name 
    price = 50, -- price to buy room
    inventorylimit = 50

}
-------------------------------------------------------------------
Config.Storageupgrades = {  -- when building houses make sure u set their inventory limit to allow them to have the quantity of items below otherwise they wont be able to upgrade because the inventory cant 
-- hold the items. the storage upgrade system checks to see if the house inventory has the required items below to make the upgrade
    Upgrade1 = {	   
        num = 1, -- always use a number make sure each subsequent number is an addition by 1 not more, and make sure its not repeated.
        title = "Upgrade 1", 
        materials = {
            item1 = {name = "nails", amount = 5},
            item2 = {name = "wood", amount = 10},
            item3 = {name = "clay", amount = 5},
        }, 
		slotamount = 25,  
    },
    Upgrade2 = {	   
        num = 2, 
        title = "Upgrade 2", 
        materials = {
            item1 = {name = "nails", amount = 10},
            item2 = {name = "wood", amount = 20},
            item3 = {name = "clay", amount = 5},
        }, 
		slotamount = 25,  
    },
    Upgrade3 = {	   
        num = 3, 
        title = "Upgrade 3", 
        materials = {
            item1 = {name = "nails", amount = 15},
            item2 = {name = "hwood", amount = 25},
            item3 = {name = "clay", amount = 5},
        }, 
		slotamount = 50,  
    },
    Upgrade4 = {	   
        num = 4, 
        title = "Upgrade 4", 
        materials = {
            item1 = {name = "nails", amount = 15},
            item2 = {name = "wooden_boards", amount = 15},
            item3 = {name = "rock", amount = 20},
        }, 
		slotamount = 100,  
    },
    Upgrade5 = {	   
        num = 5, 
        title = "Upgrade 5", 
        materials = {
            item1 = {name = "nails", amount = 25},
            item2 = {name = "wooden_boards", amount = 25},
            item3 = {name = "rock", amount = 25},
        }, 
		slotamount = 100,  
    },
    Upgrade6 = {	   
        num = 6, 
        title = "Upgrade 6", 
        materials = {
            item1 = {name = "nails", amount = 25},
            item2 = {name = "wooden_boards", amount = 25},
            item3 = {name = "hwoodboard", amount = 10},
        }, 
		slotamount = 200,  
    },
    Upgrade7 = {	   
        num = 7, 
        title = "Upgrade 7", 
        materials = {
            item1 = {name = "nails", amount = 25},
            item2 = {name = "wooden_boards", amount = 25},
            item3 = {name = "hwoodboard", amount = 25},
        }, 
		slotamount = 200,  
    },
    Upgrade8 = {	   
        num = 8, 
        title = "Upgrade 8", 
        materials = {
            item1 = {name = "nails", amount = 25},
            item2 = {name = "barrel", amount = 10},
            item3 = {name = "hwoodboard", amount = 5},
        }, 
		slotamount = 300,  
    },
}

Config.housebliphash = -2024635066 -- unowned
Config.ownedhouseblip = -235048253 -- owned
Config.showblipsforsale = true  -- show blips for houses on sale 

------------------------------------------
-- only set one of those true 

Config.monthlyrepo = false
Config.repotime ={ -- day, hour, and minute of monthly repo of houses. when the server time matches these values. houses that dont have money in their ledger = or more than the tax rate of the house will 
-- go on sale and their owner will lose their ownership. these houses will be marked as repoed and when bought the money spend on buying them will go to no one.
    day = 15,
    hour = 6,
    minute = 10
} 
Config.weeklyrepo = true
Config.repotime2 ={ -- day, hour, and minute of monthly repo of houses. when the server time matches these values. houses that dont have money in their ledger = or more than the tax rate of the house will 
-- go on sale and their owner will lose their ownership. these houses will be marked as repoed and when bought the money spend on buying them will go to no one.
    day1 = 3,
    day2 = 10,
    day3 = 17,
    day4 = 24,
    hour = 21,
    minute = 00
} 


Config.furniturelimit = 100
Config.furnituresellrate = 0.5

Config.furniture = { -- you can add more furniture by following the format and getting the hashes from http://rdr2.mooshe.tv/, use Model Hash (Signed)
-- i only added a few, fill them up with the items you like
    ["Chairs"] = {
        ["Wood Chair"] = { cost = 10, hash = 325252933},
        ["Leather Chair"] = { cost = 10, hash = 805425957},

    },
    ["Tables"] = {
	    ["Round Table"] = { cost = 20, hash = 1070917324},
        ["Table"] = { cost = 20, hash = 85453683},
        ["Rectangle Table"] = { cost = 20, hash = 1287780262},
		["Timber Table"] = { cost = 20, hash = 1624513686},

    },
    ["Fires"] = {
        ["Crafting Fire"] = { cost = 25, hash = -1279776992},
        ["Pot"] = { cost = 25, hash = 174418135},
        ["Fireplace Logs"] = { cost = 25, hash = -239887287},
        ["Cooking Stove"] = { cost = 20, hash = -677652422},
        ["Stove"] = { cost = 20, hash = 920471419}, 

    },
	 ["Decor"] = {
        ["Sink Wood"] = { cost = 20, hash = 1338551108},
        ["Sink White"] = { cost = 20, hash = 944948591},
        ["Sink Small"] = { cost = 20, hash = -710494238},
        ["Water Pump"] = { cost = 5, hash = -40350080},
        ["Flower Boxes"] = { cost = 5, hash = 456717314},        
        ["Mauve Bouquet"] = { cost = 5, hash = 765646576},
        ["Mixed Bouquet"] = { cost = 10, hash = 289239370},
        ["Purple Bouquet"] = { cost = 10, hash = -899803912},
        ["Small Pot of Flowers"] = { cost = 5, hash = 1456843022},
		["Deer Pelt"] = { cost = 10, hash = -944201792},
		["Coyote Pelt"] = { cost = 10, hash = -1156281048},
		["Blanket Box"] = { cost = 5, hash = -542120195},
        ["Gun Barrel"] = { cost = 10, hash = 187048082},
		["Apple Barrel"] = { cost = 5, hash = -156060815},
		["Apple Basket"] = { cost = 5, hash = 86968515},
        ["Food Barrel"] = { cost = 5, hash = -589926798},
		["Wash Tub"] = { cost = 5, hash = 768802576},
		["Clothes Line"] = { cost = 5, hash = -25978087},
        ["Fireplace Tools"] = { cost = 5, hash = 868990081},
		["Tool Barrel"] = { cost = 10, hash = -462883214},
		["Coyote Taxidermy"] = { cost = 25, hash = 755719297},
		["Pheasant Taxidermy"] = { cost = 10, hash = -139659644},
		["Deer Taxidermy"] = { cost = 15, hash = 270188936},
		["Cougar Taxidermy"] = { cost = 30, hash = 106531847},
		["Vulture Taxidermy"] = { cost = 10, hash = 1751914218},
        ["Paper map"] = { cost = 10, hash = 1564811379},
        ["Wooden Bullseye"] = { cost = 10, hash = 28966073},
        ["Window Planter"] = { cost = 10 , hash = 1703012180},
        ["Bearskin"] = { cost = 10 , hash = -319983629},
        ["Deerskin"] = { cost = 10 , hash = 1384646303},

    },
	 ["Benches"] = {
        ["Bear Bench"] = { cost = 30, hash = -191845882},
        ["Log Bench 1"] = { cost = 10, hash = -359794697},
		["Log Bench 2"] = { cost = 10, hash = 861210780},
		["Cloth Bench"] = { cost = 15, hash = 964931263},
		["Wooden Bench"] = { cost = 20, hash = 1057555344},
		["Wicker Bench"] = { cost = 25, hash = 1220939063},

    },
    ["Dresser"] = {
        ["brown wood"] = { cost = 25, hash = 614869605},
        ["brown mirror"] = { cost = 35, hash = -565436466},
		["night stand"] = { cost = 20, hash = -154796631},
		["side table 1"] = { cost = 15, hash = 335118833},
		["side table 2"] = { cost = 15, hash = -96741014},
		["side table 3"] = { cost = 15, hash = 341544623},
		
    },
    ["Chests"] = {
        ["chest 1"] = { cost = 50, hash = -576101586},
        ["chest 2"] = { cost = 50, hash = 370527842},
		
    },
    ["Lights"] = {
        ["Lantern"] = { cost = 10, hash = 319326044},
        ["Dbl Candle"] = { cost = 5, hash = 1443543434},
        ["Stick Candle"] = { cost = 5, hash = 526843578},
        ["Small Melted Candle"] = { cost = 5, hash = -1200234060},
        ["Bottle Candle"] = { cost = 5, hash = -1012195445},
        ["Cup Candle"] = { cost = 5, hash = 97710627},
        ["Another Cup Candle"] = { cost = 5, hash = 436323736},
		
    },
	["Beds"] = {
	    ["old metal single bed"] = { cost = 10, hash = -335869017},
        ["fancy metal single bed"] = { cost = 30, hash = 1190865994},
        ["old wooden single bed"] = { cost = 10, hash = -81698397},
        ["fancy wooden single bed"] = { cost = 30, hash = 48968044},
        ["bunk bed"] = { cost = 20, hash = -661790979},
        ["fancy double bed (unmade)"] = { cost = 50, hash = 204817984},
        ["fancy double bed (made)"] = { cost = 50, hash = 967723860},
        ["fancy four-poster bed"] = { cost = 150, hash = -520350323},
		
    },
    ["Seasonal Decor"] = {
        ["Skull Chair"] = { cost = 20, hash = 457118649},
        ["Scarecrow"] = { cost = 10, hash = -426010680},
        ["Coffin"] = { cost = 10, hash = 1373121931},
        ["Cauldron"] = { cost = 10, hash = 1039815225},
        ["Pumpkin"] = { cost = 5, hash = -643300023},
        ["Pumpkin Group"] = { cost = 10, hash = 1693450265},
        ["Spooky Skull"] = { cost = 5, hash = -444971314},
        ["Pool of Fake Blood"] = { cost = 5, hash = -1700886102},
        ["Bucket of Fake Blood"] = { cost = 5, hash = -1332712371},
        ["Shrunken Head"] = { cost = 5, hash = 323485423},
    }
}
---------------------------------------------------------
Config.Language = {
	["qt"] = "Invalid quantity",
    ["carry"] = "You cannot carry more items",
    ["limit"] = "You reached the limit for this item",
    ["maxslots"] = "your house cannot store more items, slot limit is ",	
    ["aimingatdoor"] = "Press ~e~G~q~ While Aiming at Door",	
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
    ["furnilimit"] = "You Cannot Have More Furniture, the limit is ",
    ["createhousemenu"] = "Create House Menu",
    ["buyhouse"] = "Buy House",
    ["managehouse"] = "Manage House",
    ["soldhomeledger"] = "Sold Home Ledger",
    ["buyfurni"] = "Buy Furniture",
    ["changingroom"] = "Changing Room",
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
    ["addeditdoor"] = "Add/Edit a Door",
    ["inventoryspace"] = "Inventory Space",
    ["delhouse"] = "Remove House",
    ["houseid"] = "House ID : ",
    ["givekey"] = "Give Keys",
    ["id"] = "ID",
    ["takekey"] = "Take Keys",
    ["setchangeroomloc"] = "Set Changing Room Location",
    ["setinvloc"] = "Set Inventory Location",
    ["sellhouse"] = "Sell House",
    ["spawnfurni"] = "Spawn Furniture",
    ["despawnfurni"] = "De-spawn Furniture",
    ["price2"] = " / Price: ",
    ["cost2"] = " / Cost: ",
    ["increaseby"] = "/ Increase by: ",
    ["ledgercash"] = "Ledger Cash: ",
    ["dollar"] = " $",
    ["ledgerdepo"] = "Ledger Deposit",
    ["tooclose"] = "someone is too close",
    ["ledgerwithdraw"] = "Ledger Withdraw",
    ["soldhouseid"] = "Sold House ID: ",
    ["profit"] = " / Profit: ",
    ["nooutfits"] = "no outfits",
    ["presstobuy"] = "Press ~e~G~q~ To Buy House",
    ["presstomanage"] = "Press ~e~G~q~ To Manage House",
    ["pressforchangingroom"] = "Press ~e~G~q~ For Changing Room",
    ["pressforinvent"] = "Press ~e~G~q~ For Inventory",
    ["pressforsold"] = "Press ~e~G~q~ For Sold Houses Ledger",
    ["presstoexit"] = "Press ~e~G~q~ To Exit Room",
    ["presstobuyroom"] = "Press ~e~G~q~ To Buy A Room",
    ["presstoaccess"] = "Press ~e~G~q~ Access Motel Room",
    ["presstochangechangingroom"] = "Press ~e~G~q~ to save changing room location",
    ["presstochangeinv"] = "Press ~e~G~q~ to save inventory location",
    ["changingset"] = "Changing Room Location Set",
    ["invset"] = "Inventory Location Set",
    ["outofhouserange"] = "Out Of House Range",
    ["youcreatedhouse"] = "You Created a House",
    ["boughthome"] = "You Bought A Home",
    ["cantaffordhome"] = "You Cannot Afford This House",
    ["puthomeforsale"] = "You put a house up for sale",
    ["youdepo"] = "You Deposited ",
    ["intoledger"] = " $ into ledger",
    ["cantdepo"] = "You Cannot Afford This Deposit",
    ["youwith"] = "You Withdrew ",
    ["fromledger"] = " $ from ledger",
    ["yougot"] = "You got ",
    ["forsold"] = " $ for Your Sold House",
    ["youdelh"] = "You Deleted House: ",
    ["homtax1h"] = "~e~Home Tax Collection in 1 hour~q~",
    ["makesure"] = "~e~Make Sure Your Home Ledger Has Enough Money To Pay Tax~q~",
    ["youupped"] = "You Upgraded Your House Inventory Space",
    ["nomat"] = "You Do Not Have Enough Material In Your House Inventory For This Upgrade",
    ["cantaffitem"] = "You Cannot Afford This Item",
    ["gotitem"] = "You Bought The Item",
    ["itemsoldfor"] = "You Sold The Item for ",
    ["gavekeysto"] = "You Gave Keys to ",
    ["gotkeys"] = "You Received a House Key",
    ["alreadykeys"] = "You Already Have Keys",
    ["wrongid"] = "Already has Keys or wrong id",
    ["takekeysfrom"] = "You Took House Keys From ",
    ["motelroomcantafford"] = "You Cannot Afford This Motel it costs ",
    ["nosold"] = "No Sold Houses", 
    ["hsfrsale"] = "House For Sale", 
    ["mehome"] = "My Home", 
}
---------------------------------------------------------
