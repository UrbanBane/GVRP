
-- pedinfo style types
--[[ 
0 - Stationary (Will just stand in place)
1 - Defensive (Will try to find cover and very likely to blind fire)
2 - Offensive (Will attempt to charge at enemy but take cover as well)
3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack) 
]]
Config2 = {}

Config2.kill = {
	["valentine"] = {
		{
			--Old Gem Store
			location = {x = 210.70, y = 993.49, z = 190.00},
			endmission = {x = -276.33, y = 817.28, z = 119.01},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 223.15, y = 987.99,z = 190.88, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 223.15, y = 987.99,z = 190.88, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 223.15, y = 987.99,z = 190.88, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 203.14, y = 981.15,z = 190.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 208.90, y = 990.69,z = 190.14, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 223.15, y = 987.99,z = 190.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},

		},

		{
			-- Caliban's Seat
			location = {x = -354.34, y = 285.90, z = 98.44},
			endmission = {x = -276.33, y = 817.28, z = 119.01},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 2,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					

				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
				

				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -359.35, y = 286.52,z = 98.52, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -351.58, y = 285.61,z = 98.45, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = -351.58, y = 285.61,z = 98.45, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -359.35, y = 286.52,z = 98.52, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
				},
			},

		},

		{
			-- Limpany
			location = {x = -351.57, y = -134.36, z = 47.70},
			endmission = {x = -276.33, y = 817.28, z = 119.01},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -344.42, y = -156.43,z = 50.66, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -344.42, y = -156.43,z = 50.66, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 2,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -344.42, y = -156.43,z = 50.66, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -344.42, y = -156.43,z = 50.66, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 2,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -332.87, y = -149.10,z = 50.68, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -359.38, y = -115.51,z = 47.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -344.42, y = -156.43,z = 50.66, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -332.87, y = -149.10,z = 50.68, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -359.38, y = -115.51,z = 47.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
		

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -344.42, y = -156.43,z = 50.66, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 2,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -332.87, y = -149.10,z = 50.68, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -359.38, y = -115.51,z = 47.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -366.59, y = -158.05,z = 51.31, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -344.42, y = -156.43,z = 50.66, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -335.24, y = -130.01,z = 49.48, style = 2,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -330.45, y = -147.97,z = 50.80, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},		
					{x = -332.87, y = -149.10,z = 50.68, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -359.38, y = -115.51,z = 47.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -366.59, y = -158.05,z = 51.31, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -344.42, y = -156.43,z = 50.66, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = -358.86, y = -122.03,z = 51.18, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
				},
			},

		},
		{
			-- Bridge over Railway
			location = {x = 174.43, y = 627.95, z = 163.53},
			endmission = {x = -276.33, y = 817.28, z = 119.01},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 171.84, y = 651.33,z = 141.98, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 169.4, y = 603.28,z = 125.4, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 142.03, y = 554.8,z = 134.89, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 92.7, y = 568.02,z = 137.91, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					

				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 171.84, y = 651.33,z = 141.98, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 169.4, y = 603.28,z = 125.4, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 142.03, y = 554.8,z = 134.89, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 92.7, y = 568.02,z = 137.91, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 162.03, y = 608.02,z = 125.36, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 145.75, y = 559.57,z = 126.82, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 91.38, y = 568.69,z = 138.06, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 109.85, y = 594.58,z = 132.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
				

				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 171.84, y = 651.33,z = 141.98, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 169.4, y = 603.28,z = 125.4, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 142.03, y = 554.8,z = 134.89, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 92.7, y = 568.02,z = 137.91, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 162.03, y = 608.02,z = 125.36, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 145.75, y = 559.57,z = 126.82, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 91.38, y = 568.69,z = 138.06, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 109.85, y = 594.58,z = 132.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = 129.53, y = 563.85,z = 132.11, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 165.59, y = 606.13,z = 125.34, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = 167.03, y = 605.46,z = 125.28, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 184.67, y = 601.59,z = 128.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},		
				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = 171.84, y = 651.33,z = 141.98, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 169.4, y = 603.28,z = 125.4, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 142.03, y = 554.8,z = 134.89, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 92.7, y = 568.02,z = 137.91, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 162.03, y = 608.02,z = 125.36, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 145.75, y = 559.57,z = 126.82, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
					{x = 91.38, y = 568.69,z = 138.06, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 109.85, y = 594.58,z = 132.88, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},					
					{x = 129.53, y = 563.85,z = 132.11, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 165.59, y = 606.13,z = 125.34, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},	
					{x = 167.03, y = 605.46,z = 125.28, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 184.67, y = 601.59,z = 128.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},						
					{x = 144.64, y = 549.67,z = 137.3, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 154.46, y = 552.38,z = 135.05, style = 0,weapon ="WEAPON_REPEATER_HENRY"},	
					{x = 159.73, y = 564.74,z = 126.81, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 140.38, y = 634.59,z = 127.2, style = 0,weapon ="WEAPON_REPEATER_HENRY"},					
				},
			},

		},
		

	},

	["blackwater"] = {
		{
			location = {x = -1030.53, y = -1630.80, z = 78.35},
			endmission = {x = -767.26, y = -1259.83, z = 43.60},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"}
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1057.02, y = -1642.31,z = 77.29, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1059.21, y = -1645.01,z = 77.37, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1037.12, y = -1661.96,z = 94.91, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1022.91, y = -1626.23,z = 79.01, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1030.53, y = -1630.80,z = 78.35, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1017.65, y = -1618.10,z = 77.86, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1057.02, y = -1642.31,z = 77.29, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1059.21, y = -1645.01,z = 77.37, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},

				},
			},
		},
		-- Location is at purchasable house
		--{ 
		--	location = {x = -2376.16, y = -1589.72,z = 154.28},
		--	endmission = {x = -767.26, y = -1259.83, z = 43.60},
		--	["1"] = {
		--		rewardcash = 200,
		--		rewardgold = 0,
--
--				pedspool = {
--					'U_M_M_ODriscollBrawler_01',
--					'U_M_M_BHT_ODRISCOLLSLEEPING',
--					'U_M_M_BHT_ODRISCOLLMAULED',
--					'U_M_M_BHT_ODRISCOLLDRUNK',
--					'CS_ColmODriscoll',
--				},
--				pedinfo= {
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},
--				},
--
--			},
--			["2"] = {
--				rewardcash = 400,
--				rewardgold = 0,
--
--				pedspool = {
--					'U_M_M_ODriscollBrawler_01',
--					'U_M_M_BHT_ODRISCOLLSLEEPING',
--					'U_M_M_BHT_ODRISCOLLMAULED',
--					'U_M_M_BHT_ODRISCOLLDRUNK',
--					'CS_ColmODriscoll',
--				},
--				pedinfo= {
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--
--
--
--				},
--			},
--			["3"] = {
--				rewardcash = 600,
--				rewardgold = 0,
--
--				pedspool = {
--					'U_M_M_ODriscollBrawler_01',
--					'U_M_M_BHT_ODRISCOLLSLEEPING',
--					'U_M_M_BHT_ODRISCOLLMAULED',
--					'U_M_M_BHT_ODRISCOLLDRUNK',
--					'CS_ColmODriscoll',
--				},
--				pedinfo= {
--				{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--
--				},
--			},
--			["4"] = {
--				rewardcash = 800,
--				rewardgold = 0,
--
--				pedspool = {
--					'U_M_M_ODriscollBrawler_01',
--					'U_M_M_BHT_ODRISCOLLSLEEPING',
--					'U_M_M_BHT_ODRISCOLLMAULED',
--					'U_M_M_BHT_ODRISCOLLDRUNK',
--					'CS_ColmODriscoll',
--				},
--				pedinfo= {
--					{x = -2376.95, y = -1600.79,z = 154.34, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2375.04, y = -1590.44,z = 158.23, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
--					{x = -2384.96, y = -1599.42,z = 154.34, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2390.29, y = -1599.54,z = 154.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2376.95, y = -1600.79,z = 154.34, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2375.04, y = -1590.44,z = 158.23, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
--					{x = -2384.96, y = -1599.42,z = 154.34, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2390.29, y = -1599.54,z = 154.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
--					{x = -2376.16, y = -1589.72,z = 154.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2370.25, y = -1590.38,z = 153.88, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
--					{x = -2381.38, y = -1595.03,z = 154.23, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
--
--				},
--			},
--		},

		{
			location = {x = -1486.06, y = -775.00,z = 104.13},
			endmission = {x = -767.26, y = -1259.83, z = 43.60},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1487.16, y = -785.50,z = 102.99, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1487.16, y = -785.50,z = 102.99, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},

				},
			},
		},

		

	},

	["huntinglodge"] = {
		{
			location = {x = -2536.39, y = 1168.44,z = 225.19},
			endmission = {x = -2204.68, y = 713.60, z = 122.32}, 
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -2536.39, y = 1168.44,z = 225.19, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -2531.21, y = 1174.49,z = 226.25, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2536.39, y = 1168.44,z = 225.19, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -2534.23, y = 1166.19,z = 224.82, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
				},
			},
		},

		{
			location = {x = -1486.06, y = -775.00,z = 104.13}, -- A little far from the board
			endmission = {x = -2204.68, y = 713.60, z = 122.32}, 
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1487.16, y = -785.50,z = 102.99, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 2,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1478.79, y = -766.12,z = 104.41, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1480.95, y = -786.38,z = 102.32, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1487.16, y = -785.50,z = 102.99, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1494.18, y = -796.93,z = 102.70, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1501.20, y = -788.73,z = 103.53, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1503.60, y = -779.73,z = 110.70, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1490.14, y = -775.81,z = 104.25, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
		},

		{
			location = {x = -1891.01, y = 1342.88,z = 200.83},
			endmission = {x = -2204.68, y = 713.60, z = 122.32}, 
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1902.25, y = 1347.33,z = 201.55, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 1,weapon ="WEAPON_RIFLE_SPRINGFIELD"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1872.34, y = 1359.36,z = 211.52, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1872.34, y = 1359.36,z = 211.52, style = 1,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1891.81, y = 1371.41,z = 206.44, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1872.34, y = 1359.36,z = 211.52, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1891.81, y = 1371.41,z = 206.44, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1902.25, y = 1347.33,z = 201.55, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1898.66, y = 1333.65,z = 200.18, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1894.68, y = 1332.46,z = 200.09, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1875.97, y = 1361.87,z = 211.50, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
				},
			},
		},

		{
			location = {x = -1307.25, y = 401.30,z = 95.38},
			endmission = {x = -2204.68, y = 713.60, z = 122.32}, 
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},			
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1294.30, y = 417.59,z = 99.83, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1294.89, y = 407.60,z = 95.38, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},


				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1294.30, y = 417.59,z = 99.83, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1294.89, y = 407.60,z = 95.38, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 1,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},

				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'U_M_M_ODriscollBrawler_01',
					'U_M_M_BHT_ODRISCOLLSLEEPING',
					'U_M_M_BHT_ODRISCOLLMAULED',
					'U_M_M_BHT_ODRISCOLLDRUNK',
					'CS_ColmODriscoll',
				},
				pedinfo= {
					{x = -1294.30, y = 417.59,z = 99.83, style = 0,weapon ="WEAPON_RIFLE_SPRINGFIELD"},
					{x = -1294.89, y = 407.60,z = 95.38, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = -1299.71, y = 387.29,z = 95.28, style = 0,weapon ="WEAPON_REPEATER_WINCHESTER"},
					{x = -1295.23, y = 392.41,z = 95.56, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},

				},
			},
		},

	},
	["rhodes"] = {
		{
			-- Graveyard plot on Ringneck Creek
			location = {x = 1393.34, y = -650.36, z = 71.70},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1394.20, y = -656.60, z = 71.90, style = 1,weapon ="WEAPON_REVOLVER_SCHOFIELD"},
					{x = 1392.74, y = -657.78, z = 71.72, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1404.22, y = -647.67,z = 71.24, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1387.16, y = -642.92,z = 71.82, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1387.16, y = -642.92,z = 71.82, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},

				},
			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1404.63, y = -643.42,z = 70.58, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1393.34, y = -650.36, z = 71.70, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1392.73, y = -656.84,z = 71.76, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},
			},

		},

		{
			-- Old depot on rails near St. Denis
			location = {x = 2000.81, y = -1615.22, z = 41.73},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1994.54, y = -1614.22,z = 45.22, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 2001.06, y = -1616.83, z = 41.74, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1993.56, y = -1612.93,z = 45.30, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 1,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1987.54, y = -1610.28,z = 42.42, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 0,weapon ="WEAPON_REVOLVER_SCHOFIELD"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1993.56, y = -1612.93,z = 45.30, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1987.54, y = -1610.28,z = 42.42, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REVOLVER_SCHOFIELD"},
					{x = 1991.87, y = -1615.08,z = 45.12, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 2003.43, y = -1605.53,z = 41.74, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 1,weapon ="WEAPON_REPEATER_HENRY"},


			},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1993.56, y = -1612.93,z = 45.30, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1991.87, y = -1615.08,z = 45.12, style = 0,weapon ="WEAPON_REVOLVER_SCHOFIELD"},
					{x = 2003.43, y = -1605.53,z = 41.74, style = 0,weapon ="WEAPON_REVOLVER_SCHOFIELD"},
					{x = 1987.54, y = -1610.28,z = 42.42, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1987.54, y = -1610.28,z = 42.42, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1986.58, y = -1624.69,z = 41.65, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2003.77, y = -1619.47,z = 41.12, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1994.81, y = -1607.57,z = 42.16, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1991.87, y = -1615.08,z = 45.12, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 2003.43, y = -1605.53,z = 41.74, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
				},

			},

		},

		{
			-- Fishing Shack on Kamassa River
			location = {x = 1876.60, y = -772.64, z = 42.46},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1892.77, y = -737.13, z = 42.34, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.18, y = -753.31, z = 41.65, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"}, 
					{x = 1892.77, y = -737.13, z = 42.34, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},


				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},

				},

			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1868.90, y = -758.40,z = 41.22, style = 1,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1894.22, y = -753.25, z = 41.65, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1884.19, y = -747.67,z = 41.92, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 1878.06, y = -755.60, z = 41.63, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},

				},

			},

		},

		{
			-- Trenches outside Rhodes
			location = {x = 1504.37, y = -1796.49, z = 19.55},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1588.55, y = -1839.76,z = 58.6, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1509.25, y = -1807.27,z = 54.29, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1500.54, y = -1837.54,z = 56.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1480.16, y = -1825.06,z = 55.28, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1517.13, y = -1771.46, z = 56.06, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1588.55, y = -1839.76,z = 58.6, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1509.25, y = -1807.27,z = 54.29, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1500.54, y = -1837.54,z = 56.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1480.16, y = -1825.06,z = 55.28, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1517.13, y = -1771.46, z = 56.06, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1510.52, y = -1762.38,z = 57.44, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1476.05, y = -1820.35,z = 54.51, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1516.19, y = -1828.9,z = 51.79, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1588.55, y = -1839.76,z = 58.6, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1509.25, y = -1807.27,z = 54.29, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1500.54, y = -1837.54,z = 56.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1480.16, y = -1825.06,z = 55.28, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1517.13, y = -1771.46, z = 56.06, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1510.52, y = -1762.38,z = 57.44, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1476.05, y = -1820.35,z = 54.51, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1516.19, y = -1828.9,z = 51.79, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1467.85, y = -1791.27,z = 56, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1565.79, y = -1772.16,z = 52.58, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1484.17, y = -1769.33,z = 57.87, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1516.47, y = -1805.34,z = 53.87, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},


			},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1588.55, y = -1839.76,z = 58.6, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1509.25, y = -1807.27,z = 54.29, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1500.54, y = -1837.54,z = 56.88, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1480.16, y = -1825.06,z = 55.28, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1517.13, y = -1771.46, z = 56.06, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1510.52, y = -1762.38,z = 57.44, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1476.05, y = -1820.35,z = 54.51, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1516.19, y = -1828.9,z = 51.79, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1467.85, y = -1791.27,z = 56, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1565.79, y = -1772.16,z = 52.58, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1484.17, y = -1769.33,z = 57.87, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1516.47, y = -1805.34,z = 53.87, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1531.55, y = -1808.52,z = 53.49, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1500.53, y = -1802.41,z = 55.2, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1513.76, y = -1797.19,z = 54.55, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1461.94, y = -1725.3,z = 62.55, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},

		},

		{
			-- Bayou Nwa
			location = {x = 2103.26, y = -282.95, z = 43.0},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2067.75, y = -377.32,z = 42.93, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.26, y = -384.57,z = 43.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.77, y = -343.41,z = 41.34, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2035.01, y = -362.81,z = 41.69, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2046.84, y = -403.23, z = 42.72, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2067.75, y = -377.32,z = 42.93, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.26, y = -384.57,z = 43.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.77, y = -343.41,z = 41.34, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2035.01, y = -362.81,z = 41.69, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2046.84, y = -403.23, z = 42.72, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2007.95, y = -394.34,z = 41.59, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2062.86, y = -397.25,z = 44.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.56, y = -348.15,z = 41.62, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2067.75, y = -377.32,z = 42.93, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.26, y = -384.57,z = 43.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.77, y = -343.41,z = 41.34, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2035.01, y = -362.81,z = 41.69, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2046.84, y = -403.23, z = 42.72, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2007.95, y = -394.34,z = 41.59, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2062.86, y = -397.25,z = 44.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.56, y = -348.15,z = 41.62, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2090.48, y = -378.83,z = 43.18, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2009.23, y = -370.38,z = 41.64, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2050.48, y = -358.4,z = 41.61, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.08, y = -358.36,z = 41.76, style = 3,weapon ="WEAPON_MELEE_MACHETE"},


			},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2067.75, y = -377.32,z = 42.93, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.26, y = -384.57,z = 43.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.77, y = -343.41,z = 41.34, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2035.01, y = -362.81,z = 41.69, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2046.84, y = -403.23, z = 42.72, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2007.95, y = -394.34,z = 41.59, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2062.86, y = -397.25,z = 44.5, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2078.56, y = -348.15,z = 41.62, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2090.48, y = -378.83,z = 43.18, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2009.23, y = -370.38,z = 41.64, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2050.48, y = -358.4,z = 41.61, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2057.08, y = -358.36,z = 41.76, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2070.45, y = -367.11,z = 42.18, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2056.13, y = -373.87,z = 42.07, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2059.16, y = -405.89,z = 44.45, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 2063.09, y = -397.02,z = 44.49, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
				},

			},

		},

		{
			-- Run down mansion
			location = {x = 1901.71, y = -1866.46, z = 43.15},
			endmission = {x = 1352.48, y = -1305.87, z = 76.90},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1890.45, y = -1857.22,z = 47.36, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1882.19, y = -1834.51,z = 43.28, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1898.2, y = -1855.45,z = 43.15, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1909.31, y = -1864.37,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1905.06, y = -1869.64, z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1890.45, y = -1857.22,z = 47.36, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1882.19, y = -1834.51,z = 43.28, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1898.2, y = -1855.45,z = 43.15, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1909.31, y = -1864.37,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1905.06, y = -1869.64, z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1901.26, y = -1873.02,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1899.21, y = -1869.5,z = 47.38, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1887.97, y = -1864.99,z = 47.33, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1890.45, y = -1857.22,z = 47.36, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1882.19, y = -1834.51,z = 43.28, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1898.2, y = -1855.45,z = 43.15, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1909.31, y = -1864.37,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1905.06, y = -1869.64, z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1901.26, y = -1873.02,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1899.21, y = -1869.5,z = 47.38, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1887.97, y = -1864.99,z = 47.33, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1903.67, y = -1859.06,z = 47.36, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1900.02, y = -1860.87,z = 46.91, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1898.62, y = -1871.92,z = 43.13, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1863.35, y = -1848.92,z = 42.96, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},


			},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 1890.45, y = -1857.22,z = 47.36, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1882.19, y = -1834.51,z = 43.28, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1898.2, y = -1855.45,z = 43.15, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1909.31, y = -1864.37,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1905.06, y = -1869.64, z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1901.26, y = -1873.02,z = 47.36, style = 3,weapon ="WEAPON_MELEE_MACHETE"},
					{x = 1899.21, y = -1869.5,z = 47.38, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1887.97, y = -1864.99,z = 47.33, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1903.67, y = -1859.06,z = 47.36, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1900.02, y = -1860.87,z = 46.91, style = 0,weapon ="WEAPON_SHOTGUN_PUMP"},
					{x = 1898.62, y = -1871.92,z = 43.13, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1863.35, y = -1848.92,z = 42.96, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1907.59, y = -1856.24,z = 46.19, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 1869.13, y = -1867.66,z = 42.86, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
					{x = 1906.14, y = -1862.29,z = 43.14, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 1892.72, y = -1866.0,z = 43.15, style = 0,weapon ="WEAPON_REPEATER_HENRY"},
				},

			},

		},
    },
	--[["saintdenis"] = {
		{
			-- Old Factory
			location = {x = 2141.11, y = -1284.39, z = 54.07},
			endmission = {x = 2485.68, y = -1314.33, z = 49.02},
			["1"] = {
				rewardcash = 200,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2141.11, y = -1284.39, z = 54.07, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2149.66, y = -1295.89,z = 42.96, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2171.88, y = -1301.99,z = 42.8, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2165.09, y = -1318.15,z = 42.52, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2165.57, y = -1316.36, z = 42.59, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},
			["2"] = {
				rewardcash = 400,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2141.11, y = -1284.39, z = 54.07, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2149.66, y = -1295.89,z = 42.96, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2171.88, y = -1301.99,z = 42.8, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2165.09, y = -1318.15,z = 42.52, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2165.57, y = -1316.36, z = 42.59, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2135.37, y = -1302.25,z = 42.78, style = 3,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2143.55, y = -1314.62,z = 42.96, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2124.47, y = -1306.9,z = 43.33, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
				},

			},
			["3"] = {
				rewardcash = 600,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2141.11, y = -1284.39, z = 54.07, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2149.66, y = -1295.89,z = 42.96, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2171.88, y = -1301.99,z = 42.8, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2165.09, y = -1318.15,z = 42.52, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2165.57, y = -1316.36, z = 42.59, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2135.37, y = -1302.25,z = 42.78, style = 3,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2143.55, y = -1314.62,z = 42.96, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2124.47, y = -1306.9,z = 43.33, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2125.23, y = -1287.52,z = 47.37, style = 0,weapon ="WEAPON_RILE_BOLTACTION"},
					{x = 2168.62, y = -1292.63,z = 55.27, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2179.06, y = -1278.8,z = 47.44, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},


			},
			},
			["4"] = {
				rewardcash = 800,
				rewardgold = 0,

				pedspool = {
					'mp_u_m_m_bountytarget_001',
					'mp_u_m_m_bountytarget_002',
					'mp_u_m_m_bountytarget_003',
					'mp_u_m_m_bountytarget_005',
				},
				pedinfo= {
					{x = 2141.11, y = -1284.39, z = 54.07, style = 0,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2149.66, y = -1295.89,z = 42.96, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2171.88, y = -1301.99,z = 42.8, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2165.09, y = -1318.15,z = 42.52, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2165.57, y = -1316.36, z = 42.59, style = 3,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2135.37, y = -1302.25,z = 42.78, style = 3,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2143.55, y = -1314.62,z = 42.96, style = 0,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
					{x = 2124.47, y = -1306.9,z = 43.33, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2125.23, y = -1287.52,z = 47.37, style = 0,weapon ="WEAPON_RILE_BOLTACTION"},
					{x = 2168.62, y = -1292.63,z = 55.27, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2179.06, y = -1278.8,z = 47.44, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2172.21, y = -1285.21,z = 43.55, style = 1,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2175.6, y = -1294.27,z = 42.91, style = 1,weapon ="WEAPON_RIFLE_BOLTACTION"},
					{x = 2154.74, y = -1302.76,z = 43.08, style = 0,weapon ="WEAPON_REPEATER_CARBINE"},
					{x = 2155.03, y = -1316.43,z = 42.6, style = 1,weapon ="WEAPON_SHOTGUN_DOUBLEBARREL"},
				},

			},

		},
	}]]
}