Config = {}
Config.Shoptext = 'Press ~INPUT_JUMP~ to access Clothing Store' -- Text to open the clothing shop
Config.Cloakroomtext = 'Press ~INPUT_JUMP~ to change your Outfit' -- Text to open the clothing shop
Config.BlipName = 'Clothing Store' -- Blip Name Showed on map
Config.BlipNameCloakRoom = 'Wardrobe' -- Blip Name Showed on map
Config.EnableCommand = true -- Enable/Disable /clothing command
Config.BlipSprite = 1195729388	 -- Clothing shop sprite
Config.BlipSpriteCloakRoom = 1496995379	 -- Clothing shop sprite
Config.BlipScale = 0.2 -- Blip scale
Config.OpenKey = 0xD9D0E1C0 -- Opening key hash
Config.Price = 10 -- Price for clothes
Config.Zones = {
	vector3(-325.38, 760.56, 121.63), -- VALENTINE Hotel 1
	vector3(-329.37, 774.65, 121.63), -- VALENTINE Hotel 2
	vector3(1323.35, -1289.43, 77.07), -- RHODES General Store
	vector3(2550.81, -1166.28, 53.68), -- SAINT DENIS
	vector3(-767.94, -1294.95, 43.84), -- BLACK WATER
	vector3(-1793.75, -395.04, 160.24), -- STRAWBERRY
	vector3(-5480.58, -2934.23, -0.33), -- Tumbleweed
	vector3(-3688.29, -2629.50, -13.50), -- Armadillo
	vector3(1323.32, -6980.72, 62.01) -- Guarma
}

Config.Cloakroom = {
	ValHotel = {
		Pos = {x = -325.29, y = 766.24, z= 117.48},
		showblip = true,
	},
	ValSmithfields = {
		Pos = {x = -316.21, y = 814.53, z = 120.1 },
		showblip = true,
	},
	ValKeanes = {
		Pos = {x = -236.5, y = 769.0, z = 118.14},
		showblip = true,
	},
	ValGenStore = {
		Pos = {x = -327.71, y = 807.68, z = 117.89},
		showblip = true,
	},
	Strawberry = {
		Pos = {x = -1811.19, y = -370.37, z = 166.5},
		showblip = true,
	},
	BWTailor = {
		Pos = {x = -759.0, y = -1294.2, z = 43.89},
		showblip = true,
	},
	RhoStore = {
		Pos = {x = 1326.27, y = -1288.98, z = 77.07},
		showblip = true,
	},
	RhoParl = {
		Pos = {x = 1333.57, y = -1378.69, z = 80.48},
		showblip = true,
	},
	SDTailor = {
		Pos = {x = 2556.49, y = -1160.14, z = 53.74},
		showblip = true,
	},
	SDSanatorium = {
		Pos = {x = 2370.14, y = -1208.06, z = 51.82},
		showblip = false,
	},
	SDBastille = {
		Pos = {x = 2637.8, y = -1227.75, z = 59.59},
		showblip = false,
	},
	Armadillo = {
		Pos = {x = -3728.69, y = -2597.53, z = -12.99},
		showblip = true,
	},
	Annesburg = {
		Pos = {x = 2933.81, y = 1293.15, z = 44.65},
		showblip = true,
	},
	Tumbleweed = {
		Pos = {x = -5518.01, y = -2972.75, z = -0.75},
		showblip = true,
	},
	BWPhoto = {
		Pos = {x = -811.75, y = -1376.81, z = 43.97},
		showblip = false,
	},
	SDPhoto = {
		Pos = {x = 2732.48, y = -1116.28, z = 48.93},
		showblip = false,
	},
	Guarma = {
		Pos = {x = 643.83, y = -7434.44, z = 179.09},
		showblip = true,
	}
--[[ 	HorseshoeOverlook1 = {
		Pos = {x = -132.34, y = -32.49, z = 96.13},
		showblip = false,
	},
	HorseshoeOverlook2 = {
		Pos = {x = -94.94, y = -36.33, z = 96.09},
		showblip = false,
	} ]]
--[[ 	vector3(-325.29, 766.24, 117.48), -- VALENTINE hotel
    vector3(-316.21, 814.53, 120.1), -- Valentine Smithfield's saloon
	vector3(-236.5, 769.0, 118.14), -- Valentine Keane's Saloon
	vector3(-1817.11, -368.77, 166.54), -- Strawberry
	vector3(-821.14, -1326.33, 47.93), --Blackwater Saloon bedroom
	vector3(-759.0, -1294.2, 43.89), -- Blackwater Tailor
	vector3(1326.27, -1288.98, 77.07), -- Rhodes General Store
	vector3(1333.57, -1378.69, 80.48), -- Rhodes Parlor House
	vector3(2556.49, -1160.14, 53.74), -- St Denis Tailor
	vector3(2370.14, -1208.06, 51.82), -- St. Denis Sanatorium
	vector3(2637.92, -1220.98, 59.54), -- St. Denis Bastille Saloon
	vector3(-3728.69, -2597.53, -12.99), -- Armadillo
	vector3(2944.7, 1329.1, 44.4), -- Annesburg
	vector3(-5515.77, -2973.25, 2.17), -- Tumbleweed
	vector3(-811.75, -1376.81, 43.97), -- Blackwater Photography Studio
	vector3(2732.48, -1116.28, 48.93), -- St. Denis Photography Studio
	vector3(643.83, -7434.44, 179.09) -- Guarma Stilt House ]]
}
Config.Label = {
		["boot_accessories"] = "Spurs",
 		["pants"] = "Pants",            	
 		["cloaks"] = "Cloak",            	
 		["hats"] = "Hat",             	
 		["vests"] = "Vest",            	
 		["chaps"] = "Chaps",             	
 		["shirts_full"] = "Shirt",       	
 		["badges"] = "Badge",           	
 		["masks"] = "Mask",            	
 		["spats"] = "Spats",           	
 		["neckwear"] = "Neck",         	
 		["boots"] = "Boots",            	
 		["accessories"] = "Accessories",      	
 		["jewelry_rings_right"] = "Jewelry Right",
 		["jewelry_rings_left"]	= "Jewelry Left",
 		["jewelry_bracelets"] = "Bracelets",	
 		["gauntlets"] = "Gauntlets",        	
 		["neckties"] = "Necktie",        	
 		["holsters_knife"] = "Knife Holster",   	
 		["talisman_holster"] = "Talisman Holster",
 		["loadouts"] = "Loadouts",          	
 		["suspenders"] = "Suspenders",      	
 		["talisman_satchel"] = "Talisman Satchel", 	
 		["satchels"] = "Satchel",         	
 		["gunbelts"] = "Gunbelt",          	
 		["belts"] = "Belt",            	
 		["belt_buckles"] = "Belt Buckle",     	
 		["holsters_left"] = "Holster Left",    	
 		["holsters_right"] = "Holster Right",   	
 		["talisman_wrist"] = "Wrist Talisman",   	
 		["coats"] = "Coat",            	
 		["coats_closed"] = "Coat Closed",     	
 		["ponchos"] = "Poncho",           	
 		["eyewear"] = "Eyewear",          	
 		["gloves"] = "Gloves",           	
 		["holsters_crossdraw"] = "Crossdraw Holster", 	
 		["aprons"] = "Aprons",			
 		["skirts"] = "Skirts",          	

}