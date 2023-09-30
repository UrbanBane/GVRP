Config = {}

-- Turn it on if u want to use https://github.com/RedEM-RP/redemrp_witness
-- It this is set to false it will use the witness build in my Robbery plugin.
Config.UseWitnessPlugin = false -- It should be false when u are using VORP CORE

-- Lockpick Item Name
Config.LockpickItemName = 'lockpick'

-- Sheriff Job Names
Config.SheriffJobName = {
    "police",
}

-- Minimum Sheriffs Online to Start Robbery
Config.MinimumSheriffsOnline = 1

-- Robbery Time
Config.RobberyTime = 3 * 60 -- 3 Minutes to end Robbery

-- Time Break before next robbery
Config.CooldownTime = 1800000 -- 30 Minutes before next robbery can be enabled

-- shopRobbery Start Locations and Money Rewards
Config.RobberyLocations =  {
	{ x = -785.33, y = -1322.13, z = 43.88,  heading = 191.07, min_reward = 100, max_reward = 250 }, -- Blackwater General Store
	{ x = -815.79, y = -1364.5, z = 43.75,  heading = 261.89, min_reward = 100, max_reward = 250 }, -- Blackwater Barber Shop
	{ x = -810.55, y = -1372.24, z = 44.02,  heading = 5.99, min_reward = 100, max_reward = 250 }, -- Blackwater Photography Studio
	{ x = -787.31, y = -1294.37, z = 43.69,  heading = 164.47, min_reward = 100, max_reward = 250 }, -- Blackwater Tailor
	{ x = -787.47, y = -1304.01, z = 43.75,  heading = 84.9, min_reward = 100, max_reward = 350 }, -- Blackwater Doctor
	{ x = -762.89, y = -1293.61, z = 43.79,  heading = 9.57, min_reward = 100, max_reward = 250 }, -- Blackwater Taffy Co.
	{ x = -280.12, y = 778.91, z = 119.50,  heading = 357.85, min_reward = 150, max_reward = 350 }, -- Valentine Gunsmith
    { x = -324.27, y = 804.22, z = 117.88, heading = 292.6,  min_reward = 100, max_reward = 250 }, -- Valentine General Store
	{ x = -288.14, y = 804.97, z = 119.39,  heading = 278.08, min_reward = 100, max_reward = 350 }, -- Valentine Doctors
	{ x = 1368.58, y = -1307.08, z = 77.97,  heading = 244.87, min_reward = 100, max_reward = 350 }, -- Rhodes Doctors
	{ x = 1338.63, y = -1375.23, z = 80.48,  heading = 176.56, min_reward = 150, max_reward = 300 }, -- Rhodes Parlour
	{ x = 1330.03, y = -1293.62, z = 77.02,  heading = 72.26,  min_reward = 100, max_reward = 250 }, -- Rhodes General Store
	{ x = 1323.29, y = -1323.35, z = 77.84,  heading = 352.27,  min_reward = 150, max_reward = 350 }, -- Rhodes Gunsmith
	{ x = 2825.19, y = -1320.02, z = 46.76,  heading = 329.29, min_reward = 100, max_reward = 250 }, -- Saint Denis General Store
	{ x = 2550.8, y = -1284.35, z = 49.22,  heading = 177.52, min_reward = 100, max_reward = 500 }, -- La Raleur Theater Bar
	{ x = 2639.9, y = -1227.74, z = 53.38,  heading = 94.15, min_reward = 150, max_reward = 300 }, -- The Bastille Saloon
	{ x = 2735.91, y = -1117.22, z = 49.11,  heading = 266.59, min_reward = 100, max_reward = 250 }, -- Saint Denis Photography Studio
	{ x = 2555.79, y = -1166.83, z = 53.68,  heading = 180.34, min_reward = 100, max_reward = 250 }, -- Saint Denis Tailor
	{ x = 2512.37, y = -1456.01, z = 46.31,  heading = 83.59, min_reward = 100, max_reward = 400 }, -- Saint Denis Blacksmith
	{ x = 2586.25, y = -1010.57, z = 44.24,  heading = 281.79, min_reward = 100, max_reward = 500 }, -- Saint Denis Algernon Wasps
	{ x = 2717.9, y = -1286.55, z = 49.64,  heading = 24.41, min_reward = 200, max_reward = 500 }, -- Saint Denis Gunsmith
	{ x = 2721.33, y = -1232.85, z = 50.37,  heading = 96.8, min_reward = 200, max_reward = 500 }, -- Saint Denis Pharmacy
	{ x = -1789.2, y = -387.34,  z = 160.33, heading = 69.56,  min_reward = 100, max_reward = 250 }, -- Strawberry General Store
	{ x = -1806.12, y = -429.17, z = 158.83,  heading = 240.64, min_reward = 100, max_reward = 350 }, -- Strawberry Doctors
	{ x = -1302.05, y = 392.74,  z = 95.43,  heading = 47.79,  min_reward = 100, max_reward = 250 }, -- Wallace Station General Store
	{ x = 3025.42, y = 561.44, z = 44.72,  heading = 262.18, min_reward = 100, max_reward = 250 }, -- Van Horn Pawn Shop
	{ x = 2948.13, y = 1318.61, z = 44.82,  heading = 64.98, min_reward = 150, max_reward = 350 }, -- Annesburg Gunsmith
}

-- Lockpick Settings u can change in the fille bellow
-- bulgar_shopRobbery/html/script.js