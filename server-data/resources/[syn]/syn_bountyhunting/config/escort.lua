Config4 = {}
Config4.randomtarget = true -- if false 100% the enemies will target the escorted, if true 50% the escorted 50% the player
Config4.escort = { 
	["saintdenis"] = {
		{  --Train Station to Tailor
		    location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
		 	endmission = {x = 2551.84, y = -1176.16, z = 53.51}, ---where the escort goes 
		    ["1"] = {
		        rewardcash = 100,
				rewardgold = 0,
		        spawnrate = 60, -- spawns enemies every x seconds
		        hp = 500,
		 		enemypedspool = {
		 			'CS_WELSHFIGHTER',
		 			'RCSP_CRACKPOT_MALES_01',
		 			'A_M_M_SDSlums_02',
		 			'A_M_M_VHTBOATCREW_01',
		 			'A_M_Y_ASBMINER_04',
		 		},
		        pedinfo= {
		 			{ style = 3,weapon =""},
		 			{ style = 3,weapon =""},
		 		},
		        friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
		 		},
			},
		 	["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
	 			},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
	 				{ style = 3,weapon =""},
	 			},
				friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
	 			},
			},
	 		["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
	 			},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
	 			},
				friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
		 		},
			},
	 		["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
	 			},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
	 			},
				friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
		 		},
			},
		},
		{  --Train Station to Market
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2833.58, y = -1230.32, z = 47.87}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
	 				'CS_WELSHFIGHTER',
	 				'RCSP_CRACKPOT_MALES_01',
	 				'A_M_M_SDSlums_02',
	 				'A_M_M_VHTBOATCREW_01',
	 				'A_M_Y_ASBMINER_04',
	 			},
				pedinfo= {
	 				{ style = 3,weapon =""},
	 				{ style = 3,weapon =""},
	 			},
				friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
	 			},
			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
		},
		{  --Train Station to Library
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2407.27, y = -1093.89, z = 47.63}, ---where the escort goes 
				["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
		},

		{  --Train Station to The Grand Hotel
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2676.14, y = -1267.21, z = 52.12}, ---where the escort goes 
				["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
		},

		{  --Train Station to Church of the Holy Blessed Virgin
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2739.54, y = -1261.81, z = 50.81}, ---where the escort goes 
				["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Train Station to Le Petit Port Restraurant
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2467.84, y = -1377.62, z = 45.32}, ---where the escort goes 
				["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Train Station to Art Gallery
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2699.38, y = -1188.15, z = 56.29}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Train Station to Barbers
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2661.96, y = -1180.31, z = 53.37}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Train Station to Pharmacy
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2718.5, y = -1231.17, z = 50.57}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Train Station to Sanitorium
			location = {x = 2690.94, y = -1439.09, z = 47.28}, --- where you go to find escort to start job
			endmission = {x = 2385.42, y = -1221.26, z = 47.38}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},

			},
			["4"] = {
					rewardcash = 400,
				rewardgold = 0,
					spawnrate = 60, -- spawns enemies every x seconds
					hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
					pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
					friendlypedspool = {
					'A_F_M_BIWUpperClass_01',
					'A_F_M_BynFancyTravellers_01',
					'A_F_M_GaMHighSociety_01',
					'A_M_M_BLWObeseMen_01',
					'A_M_M_BlWUpperClass_01',
					'A_M_M_BynFancyTravellers_01',
				},
			},
		},

		{  --Docks to Slums house 1
			location = {x = 2825.38, y = -1416.03, z = 45.59}, --- where you go to find escort to start job
			endmission = {x = 2862.53, y = -1151.1, z = 47.24}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},
			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},
			},
		},

		{  --Docks to Doyles
			location = {x = 2825.38, y = -1416.03, z = 45.59}, --- where you go to find escort to start job
			endmission = {x = 2794.01, y = -1169.61, z = 48.13}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},
			},
		},

		{  --Slums house 1 to Docks
			location = {x = 2862.53, y = -1151.1, z = 47.24}, --- where you go to find escort to start job
			endmission = {x = 2793.28, y = -1411.75, z = 45.39}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},

				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
		},

		{  --Gunsmith to Docks
			location = {x = 2715.38, y = -1284.73, z = 49.83}, --- where you go to find escort to start job
			endmission = {x = 2825.38, y = -1416.03, z = 45.59}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
					'A_M_M_NbxLaborers_01',
					'A_M_M_NbxDockWorkers_01',
					'A_M_M_UniBoatCrew_01',
					'A_M_M_SDDockForeman_01',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
				'A_M_M_NbxLaborers_01',
				'A_M_M_NbxDockWorkers_01',
				'A_M_M_UniBoatCrew_01',
				'A_M_M_SDDockForeman_01',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
				'A_M_M_NbxLaborers_01',
				'A_M_M_NbxDockWorkers_01',
				'A_M_M_UniBoatCrew_01',
				'A_M_M_SDDockForeman_01',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
				'A_M_M_NbxLaborers_01',
				'A_M_M_NbxDockWorkers_01',
				'A_M_M_UniBoatCrew_01',
				'A_M_M_SDDockForeman_01',
				},
			},
		},

		{  --Slums house 1 to Post Office
			location = {x = 2862.53, y = -1151.1, z = 47.24}, --- where you go to find escort to start job
			endmission = {x = 2730.99, y = -1401.22, z = 46.38}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
				},
				friendlypedspool = {
				'A_M_M_NbxSlums_01',
				'A_M_M_LowerSDTownfolk_02',
				'A_F_M_LowerSDTownfolk_02',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
				'A_M_M_NbxSlums_01',
				'A_M_M_LowerSDTownfolk_02',
				'A_F_M_LowerSDTownfolk_02',
				},

			},
			["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
				'A_M_M_NbxSlums_01',
				'A_M_M_LowerSDTownfolk_02',
				'A_F_M_LowerSDTownfolk_02',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},

				},
				friendlypedspool = {
					'A_M_M_NbxSlums_01',
					'A_M_M_LowerSDTownfolk_02',
					'A_F_M_LowerSDTownfolk_02',
				},
			},
		},

		{  --Slums house 1 to gunsmith
			location = {x = 2862.53, y = -1151.1, z = 47.24}, --- where you go to find escort to start job
			endmission = {x = 2715.38, y = -1284.73, z = 49.83}, ---where the escort goes 
			["1"] = {
				rewardcash = 100,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
				},
				friendlypedspool = {
					'A_M_M_NbxSlums_01',
					'A_M_M_LowerSDTownfolk_02',
					'A_F_M_LowerSDTownfolk_02',
				},

			},
			["2"] = {
				rewardcash = 200,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},	
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
				},
				friendlypedspool = {
					'A_M_M_NbxSlums_01',
					'A_M_M_LowerSDTownfolk_02',
					'A_F_M_LowerSDTownfolk_02',
				},

			},
		   ["3"] = {
				rewardcash = 300,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},

				},
				friendlypedspool = {
					'A_M_M_NbxSlums_01',
					'A_M_M_LowerSDTownfolk_02',
					'A_F_M_LowerSDTownfolk_02',
				},

			},
			["4"] = {
				rewardcash = 400,
				rewardgold = 0,
				spawnrate = 60, -- spawns enemies every x seconds
				hp = 500,
				enemypedspool = {
					'CS_WELSHFIGHTER',
					'RCSP_CRACKPOT_MALES_01',
					'A_M_M_SDSlums_02',
					'A_M_M_VHTBOATCREW_01',
					'A_M_Y_ASBMINER_04',
				},
				pedinfo= {
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},
					{ style = 3,weapon =""},
					{ style = 3,weapon =""},
					{ style = 3,weapon ="WEAPON_MELEE_KNIFE"},

				},
				friendlypedspool = {
					'A_M_M_NbxSlums_01',
					'A_M_M_LowerSDTownfolk_02',
					'A_F_M_LowerSDTownfolk_02',
				},

			},
		},
	},
}