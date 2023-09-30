Config = {}

Config.Doors = {
	id = {
	}
}

Config.DoorList = {
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Valentine Sheriff Front Door
		object = 1988748538,
		objCoords  = vector3(-276.04, 802.73, 118.41),
		textCoords  = vector3(-275.02, 802.84, 119.43),
		locked = true,
		objYaw = 10.0,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Sheriff Back Door
		object = 395506985,
		objCoords  = vector3(-275.85, 812.02, 118.41),
		textCoords  = vector3(-277.06, 811.83, 119.38),
		objYaw = -170.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Valentine Cells (Rear Door)
		object = 1508776842,
		objCoords  = vector3(-270.7664, 810.0265, 118.3958),
		textCoords  = vector3(-270.5664, 808.9285, 119.19),
		objYaw = -80.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Valentine Cells (Main Door)
		object = 535323366,		
		objCoords  = vector3(-275.03, 809.27, 118.36),
		textCoords  = vector3(-274.89, 808.03, 119.39),
		objYaw = -80.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Valentine Cells (Left Door)
		object = 295355979,
		objCoords  = vector3(-273.47, 809.96, 118.36),
		textCoords  = vector3(-272.23, 810.1, 119.39),
		objYaw = 10.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Valentine Cells (Right Door)
		object = 193903155,
		objCoords  = vector3(-272.06, 808.25, 118.36),
		textCoords  = vector3(-273.3, 808.12, 119.39),
		objYaw = -170.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank Main Doors
		object = 3886827663,
		object2 = 2642457609,
		objCoords  = vector3(-306.89, 780.11, 117.72),
		textCoords  = vector3(-308.11, 779.91, 118.96),
		objYaw = -170.0,
		objYaw2 = 10.05,
		locked = false,
		distance = 2.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank (Gate to Hallway)
		object = 2343746133,
		objCoords  = vector3(-301.94, 771.75, 117.72),
		textCoords  = vector3(-303.02, 771.60, 118.47),
		objYaw = -170.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank (Teller Door)
		object = 1340831050,
		objCoords  = vector3(-311.75, 774.67, 117.72),
		textCoords  = vector3(-310.48, 774.92, 118.70),
		objYaw = 10.05,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank (Office Door - Teller Room)
		object = 3718620420,
		objCoords  = vector3(-311.06, 770.12, 117.7),
		textCoords  = vector3(-309.97, 770.20, 118.70),
		objYaw = 10.36,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank (Office Door - Hallway)
		object = 334467483,
		objCoords  = vector3(-302.93, 767.6, 117.69),
		textCoords  = vector3(-302.97, 768.61, 118.70),
		objYaw = 100.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Vault Door
		object = 576950805,
		objCoords  = vector3(-307.76, 766.34, 117.7),
		textCoords  = vector3(-306.60, 766.65, 118.70),
		objYaw = -170.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Valentine Bank (Rear Door)
		object = 2307914732,
		objCoords  = vector3(-301.51, 762.98, 117.73),
		textCoords  = vector3(-300.59, 763.20, 118.70),
		objYaw = 10.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Smithfield's Saloon (Rear Left Door)
		object = 261929195,
		objCoords  = vector3(-315.37997436523,818.79290771484,117.9640045166),
		textCoords  = vector3(-315.37997436523,818.79290771484,117.9640045166),
		objYaw = 190.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Smithfield's Saloon (Rear Right Door)
		object = 583884620,
		objCoords  = vector3(-306.1442565918,820.42242431641,117.9640045166),
		textCoords  = vector3(-306.1442565918,820.42242431641,117.9640045166),
		objYaw = 190.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Smithfield's Saloon (Bedroom)
		object = 1087218607,
		objCoords  = vector3(-314.83987426758,818.18255615234,120.97278594971),
		textCoords  = vector3(-314.83987426758,818.18255615234,120.97278594971),
		objYaw = 280.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Keane's Saloon (Rear Left Door)
		object = 1013933832,
		objCoords  = vector3(-238.9688873291,774.22943115234,117.14748382568),
		textCoords  = vector3(-238.9688873291,774.22943115234,117.14748382568),
		objYaw = 290.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Keane's Saloon (Rear Right Door)
		object = 3492547982,
		objCoords  = vector3(-236.51684570313,767.53576660156,117.09810638428),
		textCoords  = vector3(-236.51684570313,767.53576660156,117.09810638428),
		objYaw = 110.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'gunsmith', 'government' }, -- Valentine Gunsmith (Rear Door)
		object = 2042647667,
		objCoords  = vector3(-276.65576171875,776.60430908203,118.54555511475),
		textCoords  = vector3(-276.65576171875,776.60430908203,118.54555511475),
		objYaw = 179.99998474121,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'gunsmith', 'government' }, -- Valentine Gunsmith (Front Door)
		object = 475159788,
		objCoords  = vector3(-283.53549194336,784.40875244141,118.52978515625),
		textCoords  = vector3(-283.53549194336,784.40875244141,118.52978515625),
		objYaw = 0.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government'}, -- Valentine Doctors Office (Front Door)
		object = 3588026089,
		objCoords  = vector3(-282.81, 803.85, 118.39),
		textCoords  = vector3(-283.81, 803.85, 119.39),
		objYaw = -170.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government'}, -- Valentine Doctors Office (Middle Door)
		object = 4067537969,
		objCoords  = vector3(-286.64199829102,809.78454589844,118.42121887207),
		textCoords  = vector3(-287.65, 809.76, 119.39),
		objYaw = 190.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Valentine Doctors Office (Back Room Back Door)
		object = 3439738919,
		objCoords  = vector3(-281.18, 815.41, 118.39),
		textCoords  = vector3(-281.18, 816.2, 119.39),
		objYaw = 99.663230895996,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Valentine Doctors Office (Back Room Door)
		object = 925575409,
		objCoords  = vector3(-290.72, 813.29, 118.41),
		textCoords  = vector3(-289.8, 813.29, 119.39),
		objYaw = 10.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, --Valentine Tailor (Dressing Room)
		object = 3554893730,
		objCoords  = vector3(-325.49053955078,806.72943115234,116.88354492188),
		textCoords  = vector3(-325.49053955078,806.72943115234,116.88354492188),
		locked = false,
		objYaw = 190.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon'  }, -- Saints Hotel Bathhouse
		object = 142240370,
		objCoords  = vector3(-319.96673583984,763.11383056641,116.4356918335),
		textCoords  = vector3(-319.96673583984,763.11383056641,116.4356918335),
		objYaw = 280.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Saints Hotel Room 1A
		object = 3693364451,
		objCoords  = vector3(-322.43667602539,764.78387451172,116.4356918335),
		textCoords  = vector3(-322.43667602539,764.78387451172,116.4356918335),
		objYaw = 100.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Saints Hotel Room 1B
		object = 183181940,
		objCoords  = vector3(-322.07095336914,762.73889160156,116.4356918335),
		textCoords  = vector3(-322.07095336914,762.73889160156,116.4356918335),
		objYaw = 280.0,
		locked = true, -- DON'T UNLOCK. USED FOR VALENTINE HOTEL ROOM
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Saints Hotel Room 2A
		object = 3765902977,
		objCoords  = vector3(-322.74942016602,766.65637207031,120.62321472168),
		textCoords  = vector3(-322.74942016602,766.65637207031,120.62321472168),
		objYaw = 100.0,
		locked = true,  -- DON'T UNLOCK. USED FOR GENERIC HOTEL ROOM
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon'  }, -- Saints Hotel Room 2B
		object = 238680582,
		objCoords  = vector3(-322.08334350586,762.73394775391,120.62287902832),
		textCoords  = vector3(-322.08334350586,762.73394775391,120.62287902832),
		objYaw = 280.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon'  }, -- Saints Hotel Room 2C
		object = 3049177115,
		objCoords  = vector3(-324.1794128418,774.65753173828,120.62385559082),
		textCoords  = vector3(-324.1794128418,774.65753173828,120.62385559082),
		objYaw = 280.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Saints Hotel Room 2C Balcony 1
		object = 1183522472,
		object2 = 946241121,
		objCoords  = vector3(-330.2971496582,776.04089355469,120.65428924561),
		textCoords  = vector3(-330.2971496582,776.04089355469,120.65428924561),
		objYaw = 190.0,
		objYaw2 = 190.0,
		locked = true,
		distance = 1.5
	},	
	{
		authorizedJobs = { 'government', 'saloon' }, -- Saints Hotel Room 2C Balcony 2
		object = 2828034344,
		object2 = 2740999876,
		objCoords  = vector3(-327.27404785156,776.5693359375,120.65428924561),
		textCoords  = vector3(-327.27404785156,776.5693359375,120.65428924561),
		objYaw = 190.0,
		objYaw2 = 190.0,
		locked = true,
		distance = 1.5
	},	
	{
		authorizedJobs = { 'police', 'policeloa', 'government', 'conductor' }, -- Valentine Telegraph Office
		object = 283382142,
		objCoords  = vector3(-179.17568969727,629.19555664063,113.09358978271),
		textCoords  = vector3(-179.17568969727,629.19555664063,113.09358978271),
		objYaw = 55.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Heartlands Oil Fields (Managers Office)
		object = 1363261343,
		objCoords  = vector3(492.12185668945,676.67541503906,120.02780914307),
		textCoords  = vector3(492.12185668945,676.67541503906,120.02780914307),
		objYaw = 85.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Heartlands Oil Fields (Furnace Room Door)
		object = 2337551683,
		objCoords  = vector3(491.77828979492,672.74847412109,120.02381134033),
		textCoords  = vector3(491.77828979492,672.74847412109,120.02381134033),
		objYaw = 85.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Heartlands Oil Fields (Back Upstairs Door)
		object = 6541948,
		objCoords  = vector3(500.58575439453,683.67437744141,120.03214263916),
		textCoords  = vector3(500.58575439453,683.67437744141,120.03214263916),
		objYaw = 265.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Heartlands Oil Fields (Back Downstairs Door)
		object = 2023102394,
		objCoords  = vector3(500.58575439453,683.67437744141,116.35289764404),
		textCoords  = vector3(500.58575439453,683.67437744141,116.35289764404),
		objYaw = 265.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Fort Wallace Jail Cell
		object = 4248740658,
		objCoords  = vector3(346.23724365234,1468.9339599609,178.72691345215),
		textCoords  = vector3(346.23724365234,1468.9339599609,178.72691345215),
		objYaw = 215.19097900391,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Fort Wallace Weapons Shelter Door
		object = 1223148325,
		objCoords  = vector3(363.3249, 1488.73, 179.6615),
		textCoords  = vector3(363.3249, 1488.73, 179.6615),
		objYaw = 104.99097442627,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Flatneck Station Office Door
		object = 2818197357,
		objCoords  = vector3(-339.09616088867,-362.57171630859,87.078002929688),
		textCoords  = vector3(-339.09616088867,-362.57171630859,87.078002929688),
		objYaw = 117.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Flatneck Station Closet Door
		object = 1359288708,
		objCoords  = vector3(-336.46871948242,-364.47668457031,87.078002929688),
		textCoords  = vector3(-336.46871948242,-364.47668457031,87.078002929688),
		objYaw = 27.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Flatneck Station Internal Door
		object = 3065308386,
		objCoords  = vector3(-333.38854980469,-361.5426940918,87.078002929688),
		textCoords  = vector3(-333.38854980469,-361.5426940918,87.078002929688),
		objYaw = 117.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Flatneck Station Freight Doors (East)
		object = 2493745901,
		object2 = 2311550261,
		objCoords  = vector3(-324.25045776367,-358.53161621094,87.029411315918),
		textCoords  = vector3(-324.25045776367,-358.53161621094,87.029411315918),
		objYaw = 117.0,
		objYaw2 = 297.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Flatneck Station Freight Doors (North)
		object = 2972206070,
		object2 = 2800037744,
		objCoords  = vector3(-334.41296386719,-358.06219482422,87.029441833496),
		textCoords  = vector3(-334.41296386719,-358.06219482422,87.029441833496),
		objYaw = 27.27,
		objYaw2 = 206.72,
		locked = false,
		distance = 3.0
	},
	----------------------------------------- RHODES LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa', 'government', 'conductor' }, -- Emerald Ranch Station Office
		object = 2057841001,
		objCoords  = vector3(1523.3259277344, 445.06091308594, 89.680671691895),
		textCoords  = vector3(1523.3259277344, 445.06091308594, 89.680671691895),
		objYaw = 180.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Bank Main Doors
		object = 3317756151,
		object2 = 3088209306,
		objCoords  = vector3(1296.2719726563,-1299.0120849609,76.03963470459),
		textCoords  = vector3(1295.363, -1298.380, 77.04),
		objYaw = 139.53230285645,
		objYaw2 = 319.59982299805,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Bank Teller Door
		object = 1634148892,
		objCoords  = vector3(1295.7341308594,-1305.4748535156,76.033004760742),
		textCoords  = vector3(1295.7341308594,-1305.4748535156,76.033004760742),
		objYaw = 139.99998474121,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Bank Hallway Door
		object = 2058564250,
		objCoords  = vector3(1285.1475830078,-1303.1185302734,76.040069580078),
		textCoords  = vector3(1285.1475830078,-1303.1185302734,76.040069580078),
		objYaw = 320.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Bank Vault Door
		object = 3483244267,
		objCoords  = vector3(1282.5363769531,-1309.3159179688,76.036422729492),
		textCoords  = vector3(1282.5363769531,-1309.3159179688,76.036422729492),
		objYaw = 230.05541992188,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Bank Rear Door + Gate // relock this
		object = 3142122679,
		object2 = 2513778780,
		objCoords  = vector3(1278.8559570313,-1310.4030761719,76.039642333984),
		textCoords  = vector3(1278.8559570313,-1310.4030761719,76.039642333984),
		objYaw = 319.73440551758,
		objYaw2 = 140.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = {'doctor', 'police', 'policeloa', 'government' }, -- Rhodes Doctors Office
		object = 65292262,
		objCoords  = vector3(1370.191,-1310.168,76.95205),
		textCoords  = vector3(1370.191,-1310.168,76.95205),
		objYaw = 150.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Sheriff Front Door
		object = 349074475,
		objCoords  = vector3(1359.71, -1305.97, 76.76),
		textCoords  = vector3(1358.42, -1305.71, 77.72),
		objYaw = 160.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Rhodes Sheriff Back Door
		object = 1614494720,
		objCoords  = vector3(1359.12, -1297.56, 76.78),
		textCoords  = vector3(1358.51, -1298.95,77.78),
		objYaw = -110.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Rhodes Jail Cell
		object = 1878514758,
		objCoords  = vector3(1357.26, -1301.58, 77.76),
		textCoords  = vector3(1357.26, -1301.58, 77.76),
		objYaw = 70.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rhodes Parlour House (Staff Door)
		object = 3047627494,
		objCoords  = vector3(1330.7709960938,-1367.376953125,79.483505249023),
		textCoords  = vector3(1330.7709960938,-1367.376953125,79.483505249023),
		objYaw = 260.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Rhodes Parlour House (Bedroom 1)
		object = 2812328251,
		objCoords  = vector3(1335.1053466797,-1376.8656005859,79.483505249023),
		textCoords  = vector3(1335.1053466797,-1376.8656005859,79.483505249023),
		objYaw = 215.0,
		locked = true, -- DON'T UNLOCK. USED FOR RHODES HOTEL ROOM
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rhodes Parlour House (Bedroom 2)
		object = 2046695029,
		objCoords  = vector3(1332.2703857422,-1369.2969970703,79.483505249023),
		textCoords  = vector3(1332.2703857422,-1369.2969970703,79.483505249023),
		objYaw = 170.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rhodes Parlour House (Side Doors)
		object = 3728169477,
		object2 = 3392483841,
		objCoords  = vector3(1335.4031982422,-1380.0325927734,79.483505249023),
		textCoords  = vector3(1335.4031982422,-1380.0325927734,79.483505249023),
		objYaw = 350.0,
		objYaw2 = 350.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rhodes Parlour House (2nd Floor Back Doors)
		object = 3215894013,
		object2 = 3434364936,
		objCoords  = vector3(1336.3430175781,-1370.8815917969,83.28352355957),
		textCoords  = vector3(1336.3430175781,-1370.8815917969,83.28352355957),
		objYaw = 260.0,
		objYaw2 = 260.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rhodes Parlour (Bathroom)
		object = 2446974165,
		objCoords  = vector3(1338.8887939453,-1380.0720214844,83.284172058105),
		textCoords  = vector3(1338.8887939453,-1380.0720214844,83.284172058105),
		objYaw = 80.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Rhodes Tailor (Dressing Room)
		object = 2432590327,
		objCoords  = vector3(1322.3742675781,-1290.7807617188,76.01099395752),
		textCoords  = vector3(1322.3742675781,-1290.7807617188,76.01099395752),
		objYaw = 180.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith', 'blacksmith' }, -- Rhodes Gunsmith (Front Door)
		object = 393076024,
		objCoords  = vector3(1326.427734375, -1319.0665283203, 76.890922546387),
		textCoords  = vector3(1326.427734375, -1319.0665283203, 76.890922546387),
		objYaw = 165.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith', 'blacksmith' }, -- Rhodes Gunsmith (Back Door)
		object = 743565308,
		objCoords  = vector3(1329.821, -1329.197, 76.89149),
		textCoords  = vector3(1329.821, -1329.197, 76.89149),
		objYaw = 75.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith', 'blacksmith' }, -- Rhodes Gunsmith (Side Door)
		object = 934926308,
		objCoords  = vector3(1319.526, -1324.39, 76.89149),
		textCoords  = vector3(1319.526, -1324.39, 76.89149),
		objYaw = 75.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith', 'blacksmith' }, -- Rhodes Gunsmith (Basement Access Door)
		object = 1410133961,
		objCoords  = vector3(1325.2141113281, -1323.6387939453, 76.89241027832),
		textCoords  = vector3(1325.2141113281, -1324.6387939453, 77.89),
		objYaw = 255.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = {'doctor', 'police', 'policeloa', 'government', 'conductor' }, -- Rhodes Telegraph Office
		object = 1405538538,
		objCoords  = vector3(1228.2432861328,-1294.1765136719,75.914482116699),
		textCoords  = vector3(1228.2432861328,-1294.1765136719,75.914482116699),
		objYaw = 315.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = {'government' }, -- Harry Fen House Side Door
		object = 896012811,
		objCoords  = vector3(1387.3020019531,-2077.4401855469,51.581089019775),
		textCoords  = vector3(1387.3020019531,-2077.4401855469,51.581089019775),
		objYaw = 200.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = {'government' }, -- Compson Stead Front Door
		object = 772977516,
		objCoords  = vector3(1264.1951904297,-404.07095336914,96.595031738281),
		textCoords  = vector3(1264.1951904297,-404.07095336914,96.595031738281),
		objYaw = 5.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = {'government' }, -- Compson Stead Side Door
		object = 527767089,
		objCoords  = vector3(1266.837890625,-412.62899780273,96.595031738281),
		textCoords  = vector3(1266.837890625,-412.62899780273,96.595031738281),
		objYaw = 95.0,
		locked = true,
		distance = 2.0
	},
	----------------------------------------- ANNESBURG LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Annesburg Jail Cell (Right)
		object = 1502928852,
		objCoords  = vector3(2904.2734375,1314.3405761719,43.935844421387),
		textCoords  = vector3(2904.791, 1315.474, 44.96082),
		objYaw = 69.264205932617,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Annesburg Jail Cell (Left)
		object = 1657401918,
		objCoords  = vector3(2902.9602050781,1310.8717041016,43.935844421387),
		textCoords  = vector3(2903.478, 1312.005, 44.96082),
		objYaw = 69.264205932617,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Annesburg Sheriff Front Door
		object = 2212368673,
		objCoords = vector3(2911.140625,1309.8092041016,43.928840637207),
		textCoords = vector3(2911.140625,1309.8092041016,43.928840637207),
		objYaw = 69.545677185059,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Annesburg Gunsmith Front Doors
		object = 2135900402,
		object2 = 3270231316,
		objCoords = vector3(2943.5661621094,1321.3540039063,43.820198059082),
		textCoords = vector3(2943.5661621094,1321.3540039063,43.820198059082),
		objYaw = 70.0,
		objYaw2 = 70.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, --Annesburg Gunsmith Back Door
		object = 1181665568,
		objCoords  = vector3(2953.9692382813,1316.8393554688,43.820213317871),
		textCoords  = vector3(2953.9692382813,1316.8393554688,43.820213317871),
		locked = true,
		objYaw = 160.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government', 'conductor' }, --Annesburg Telegraph Office
		object = 1898720605,
		objCoords = vector3(2933.5695800781,1276.5786132813,43.650756835938),
		textCoords = vector3(2933.5695800781,1276.5786132813,43.650756835938),
		locked = true,
		objYaw = 340.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Annesburg Telegraph Office Vault
		object = 1321590180,
		objCoords = vector3(2935.2658691406,1284.44140625,43.64567565918),
		textCoords = vector3(2935.2658691406,1284.44140625,43.64567565918),
		locked = true,
		objYaw = 345.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, --Jameson Mining Managers Office (Inside Door)
		object = 2703965258,
		objCoords = vector3(2921.7209472656,1380.9013671875,55.260143280029),
		textCoords = vector3(2921.7209472656,1380.9013671875,55.260143280029),
		locked = false,
		objYaw = 340.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, --Jameson Mining Managers Office (Outside Door)
		object = 2543667965,
		objCoords = vector3(2926.0666503906,1376.6920166016,55.210140228271),
		textCoords = vector3(2926.0666503906,1376.6920166016,55.210140228271),
		locked = false,
		objYaw = 70.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, --Annesburg Inn Bedroom
		object = 1335986638,
		objCoords = vector3(2947.9060058594,1331.5720214844,43.455974578857),
		textCoords = vector3(2947.9060058594,1331.5720214844,43.455974578857),
		locked = true,  -- DON'T UNLOCK. USED FOR ANNESBURG HOTEL ROOM
		objYaw = 160.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, --Annesburg Inn Bathhouse
		object = 4093895974,
		objCoords = vector3(2950.1821289063,1333.1379394531,43.448860168457),
		textCoords = vector3(2950.1821289063,1333.1379394531,43.448860168457),
		locked = true,
		objYaw = 340.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Ambarino Ranger Hut
		object = 1981171235,
		objCoords = vector3(1933.5963134766,1949.0305175781,265.11849975586),
		textCoords = vector3(1933.5963134766,1949.0305175781,265.11849975586),
		locked = true,
		objYaw = 185.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Ambarino Science Lab (Front)
		object = 4067196104,
		object2 = 3772438949,
		objCoords = vector3(2515.6335449219,2280.4467773438,176.35227966309),
		textCoords = vector3(2515.6335449219,2280.4467773438,176.35227966309),
		locked = false,
		objYaw = 342.7,
		objYaw2 = 342.7,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Ambarino Science Lab (Side)
		object = 1208032345,
		object2 = 1446885586,
		objCoords = vector3(2524.4013671875,2281.322265625,176.35227966309),
		textCoords = vector3(2524.4013671875,2281.322265625,176.35227966309),
		locked = false,
		objYaw = 72.7,
		objYaw2 = 72.7,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, --Ambarino Science Lab (Back)
		object = 1731133409,
		object2 = 1416977006,
		objCoords = vector3(2516.1042480469,2290.0190429688,176.35227966309),
		textCoords = vector3(2516.1042480469,2290.0190429688,176.35227966309),
		locked = false,
		objYaw = 162.7,
		objYaw2 = 162.7,
		distance = 2.0
	},
	-----------------------------------------  VAN HORN LOCKS -----------------------------------------
	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Van Horn Doctors Front Doors
		object = 133863936,
		object2 = 4140038039,
		objCoords  = vector3(2963.5185546875, 467.75030517578125, 48.45991516113281),
		textCoords  = vector3(2963.27, 468.27, 49.63),
		objYaw = -64.87,
		objYaw2 = -64.87,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Van Horn Doctors Side Doors
		object = 339733168,
		object2 = 1531082936,
		objCoords  = vector3(2959.322509765625, 462.34576416015625, 48.50633239746094),
		textCoords  = vector3(2959.83, 462.60, 49.58),
		objYaw = -155.0,
		objYaw2 = -155.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Van Horn Doctors Surgery Door
		object = 3089880971,
		objCoords = vector3(2955.04296875, 464.018310546875, 48.47373580932617),
		textCoords = vector3(2954.80, 464.51, 49.73),
		locked = false,
		objYaw = 114.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Van Horn Bathhouse
		object = 1102743282,
		objCoords = vector3(2985.8999023438,569.33062744141,46.872211456299),
		textCoords = vector3(2985.8999023438,569.33062744141,46.872211456299),
		locked = true,
		objYaw = 350.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Van Horn Boarding House
		object = 1997650502,
		objCoords = vector3(2975.2006835938,571.22668457031,46.872211456299),
		textCoords = vector3(2975.2006835938,571.22668457031,46.872211456299),
		locked = true,  -- DON'T UNLOCK. USED FOR VAN HORN HOTEL ROOM
		objYaw = 350.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'fence' }, -- Van Horn Fence (Front Door)
		object = 3375224492,
		objCoords = vector3(3025.7866210938,555.29803466797,43.740707397461),
		textCoords = vector3(3025.7866210938,555.29803466797,43.740707397461),
		locked = false,
		objYaw = 170.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'fence' }, -- Van Horn Fence (Back Door)
		object = 877945562,
		objCoords = vector3(3027.9602050781,567.66424560547,43.712707519531),
		textCoords = vector3(3027.9602050781,567.66424560547,43.712707519531),
		locked = false,
		objYaw = 170.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Van Horn Telegraph Office
		object = 259147332,
		objCoords = vector3(2984.3493652344,575.32281494141,43.667457580566),
		textCoords = vector3(2984.3493652344,575.32281494141,43.667457580566),
		locked = false,
		objYaw = 260.0,
		distance = 2.0
	},
	----------------------------------------- STRAWBERRY LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Strawberry Jail Front Door
		object = 1821044729,
		objCoords  = vector3(-1806.6751708984,-350.31280517578,163.6475982666),
		textCoords  = vector3(-1806.6751708984,-350.31280517578,163.6475982666),
		objYaw = 245.07702636719,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Strawberry Jail Rear Door
		object = 1514359658,
		objCoords  = vector3(-1812.6691894531,-345.08489990234,163.6475982666),
		textCoords  = vector3(-1812.6691894531,-345.08489990234,163.6475982666),
		objYaw = 244.99990844727,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Strawberry Jail Cell
		object = 902070893,
		objCoords  = vector3(-1814.58, -353.71, 161.43),
		textCoords  = vector3(-1814.58, -353.71, 161.43),
		objYaw = -115.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Strawberry Jail Cell
		object = 1207903970,
		objCoords  = vector3(-1811.40, -352.19, 161.39),
		textCoords  = vector3(-1811.40, -352.19, 161.39),
		objYaw = -26.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon'}, -- Welcome Center Bathhouse
		object = 1256786197,
		objCoords  = vector3(-1815.6889648438,-371.89520263672,165.50114440918),
		textCoords  = vector3(-1815.6889648438,-371.89520263672,165.50114440918),
		objYaw = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'police', 'policeloa' }, -- Welcome Center Back Door
		object = 1908889297,
		objCoords  = vector3(-1820.8804931641,-375.39468383789,162.29248046875),
		textCoords  = vector3(-1820.8804931641,-375.39468383789,162.29248046875),
		objYaw = 0.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Welcome Center Single Bedroom
		object = 1562553736,
		objCoords  = vector3(-1820.9599609375,-369.80453491211,165.49824523926),
		textCoords  = vector3(-1820.9599609375,-369.80453491211,165.49824523926),
		objYaw = 0.0,
		locked = true,  -- DON'T UNLOCK. USED FOR 'TRACKERS HOTEL' HOTEL ROOM
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Welcome Center Double Bedroom
		object = 1407130373,
		objCoords  = vector3(-1815.6981201172,-371.13235473633,165.49478149414),
		textCoords  = vector3(-1815.6981201172,-371.13235473633,165.49478149414),
		objYaw = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Welcome Center Double Bedroom (Balcony)
		object = 1654175864,
		objCoords  = vector3(-1809.5144042969,-369.89138793945,165.50611877441),
		textCoords  = vector3(-1809.5144042969,-369.89138793945,165.50611877441),
		objYaw = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Strawberry Tailor (Dressing Room)
		object = 94437577,
		objCoords = vector3(-1792.0443115234,-392.70361328125,159.33442687988),
		textCoords = vector3(-1792.0443115234,-392.70361328125,159.33442687988),
		objYaw = 145.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Strawberry Carpenter's
		object = 3263931294,
		object2 = 2354746250,
		objCoords  = vector3(-1815.7799072266,-423.92504882813,159.05786132813),
		textCoords  = vector3(-1815.7799072266,-423.92504882813,159.05786132813),
		objYaw = 345.0,
		objYaw2 = 165.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Strawberry Taxidermist House (Front Door)
		object = 1963415953,
		objCoords = vector3(-1682.8327636719,-340.61013793945,172.98583984375),
		textCoords = vector3(-1682.8327636719,-340.61013793945,172.98583984375),
		objYaw = 325.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Strawberry Taxidermist House (Back Door)
		object = 2847752952,
		objCoords = vector3(-1678.7446289063,-336.68927001953,172.99304199219),
		textCoords = vector3(-1678.7446289063,-336.68927001953,172.99304199219),
		objYaw = 145.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government', 'conductor' }, -- Riggs Station Telegraph Office
		object = 1217836331,
		objCoords = vector3(-1091.1092529297,-575.24682617188,81.4091796875),
		textCoords = vector3(-1091.1092529297,-575.24682617188,81.4091796875),
		objYaw = 142.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Wallace Station General (Dressing Room)
		object = 3142465793,
		objCoords = vector3(-1298.2974853516,396.12734985352,94.432159423828),
		textCoords = vector3(-1298.2974853516,396.12734985352,94.432159423828),
		objYaw = 62.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government', 'conductor' }, -- Wallace Station General (Telegraph Office)
		object = 1039842904,
		objCoords = vector3(-1303.5399169922,400.83831787109,94.432159423828),
		textCoords = vector3(-1303.5399169922,400.83831787109,94.432159423828),
		objYaw = 332.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government', 'conductor' }, -- Wallace Station General Store (West Door)
		object = 96424206,
		objCoords = vector3(-1306.5554199219,396.40081787109,94.465843200684),
		textCoords = vector3(-1306.5554199219,396.40081787109,94.465843200684),
		objYaw = 62.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government', 'conductor' }, -- Wallace Station General Store (East Door)
		object = 381066979,
		objCoords = vector3(-1301.5235595703,390.04794311523,94.465759277344),
		textCoords = vector3(-1301.5235595703,390.04794311523,94.465759277344),
		objYaw = 241.75,
		locked = false,
		distance = 2.0
	},
	----------------------------------------- BLACKWATER LOCKS -----------------------------------------
 	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Blackwater Doctor Front Doors
		object = 2567390357,
		object2 = 4167660966,
		objCoords  = vector3(-790.2854614257812, -1305.184814453125, 42.77216339111328),
		textCoords  = vector3(-790.32, -1304.68, 43.83),
		objYaw = -90.0,
		objYaw2 = -90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Blackwater Doctor Surgery Door
		object = 936688764,
		objCoords = vector3(-786.6171264648438, -1307.2664794921875, 42.7691764831543),
		textCoords = vector3(-786.6171264648438, -1307.2664794921875, 42.7691764831543),
		locked = true,
		objYaw = 90.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'police', 'doctor' }, -- Blackwater Doctor Back Door
		object = 2262893519,
		objCoords = vector3(-780.3436889648438, -1307.5836181640625, 42.77384567260742),
		textCoords = vector3(-780.38, -1306.59, 43.91),
		locked = true,
		objYaw = 90.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Blackwater Saloon Bathhouse
		object = 815031507,
		objCoords  = vector3(-824.1289, -1322.801, 42.68617),
		textCoords  = vector3(-824.1289, -1321.801, 43.66617),
		objYaw = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Blackwater Saloon Bedroom
		object = 254520182,
		objCoords  = vector3(-818.62744140625,-1323.5953369141,46.897079467773),
		textCoords  = vector3(-818.62744140625,-1323.5953369141,46.897079467773),
		objYaw = 270.0,
		locked = true,  -- DON'T UNLOCK. USED FOR BLACKWATER HOTEL ROOMS
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Sheriff Back Door
		object = 2810801921,
		objCoords  = vector3(-769.14, -1268.75, 42.06),
		textCoords  = vector3(-769.14, -1269.75, 44.04),
		objYaw = -90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Blackwater Jail Cell (Left)
		object = 2514996158,
		objCoords  = vector3(-765.75, -1263.47, 42.06),
		textCoords  = vector3(-765.75, -1263.47, 44.3),
		objYaw = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Blackwater Jail Cell (Right)
		object = 2167775834,
		objCoords  = vector3(-763.53, -1263.71, 42.06),
		textCoords  = vector3(-763.53, -1263.71, 44.3),
		objYaw = -90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Sheriff Front Door
		object = 3410720590,
		object2 = 3821185084,
		objCoords  = vector3(-757.05, -1268.49, 42.06),
		textCoords  = vector3(-757.05, -1269.34, 44.04),
		objYaw = 90.41,
		objYaw2 = 90.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Bank Front Door
		object = 531022111,
		objCoords  = vector3(-809.14184570313, -1279.1900634766, 42.661499023438),
		textCoords  = vector3(-809.14184570313, -1279.1900634766, 42.661499023438),
		objYaw = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Bank Teller Gate
		object = 2117902999,
		objCoords  = vector3(-816.72528076172,-1276.7509765625,42.641235351563),
		textCoords  = vector3(-816.72528076172,-1276.7509765625,42.641235351563),
		objYaw = 0.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Bank Manager's Office
		object = 2817192481,
		objCoords  = vector3(-817.81109619141, -1277.6684570313, 42.651943206787),
		textCoords  = vector3(-817.81109619141, -1277.6684570313, 42.651943206787),
		objYaw = 270.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Bank Vault
		object = 1462330364,
		objCoords  = vector3(-817.78656005859, -1274.3852539063, 42.662132263184),
		textCoords  = vector3(-817.78656005859, -1274.3852539063, 42.662132263184),
		objYaw = 90.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Blackwater Tailor (Dressing Room)
		object = 3277501452,
		objCoords  = vector3(-766.00732421875,-1293.7102050781,42.837554931641),
		textCoords  = vector3(-767.04, -1293.56, 43.86),
		locked = false,
		objYaw = 180.0,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government', 'photographer' }, -- Blackwater Photography Studio
		object = 3220929702,
		objCoords = vector3(-809.1201171875,-1373.7136230469,43.051731109619),
		textCoords = vector3(-809.1201171875,-1373.7136230469,43.051731109619),
		locked = false,
		objYaw = 270.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Blackwater Gunsmith Front
		object = 169371283,
		objCoords = vector3(-839.5026245117188, -1275.3564453125, 42.79340744018555),
		textCoords = vector3(-839.5026245117188, -1275.3564453125, 42.79340744018555),
		locked = false,
		objYaw = -90.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Blackwater Gunsmith Interior
		object = 1130250489,
		objCoords = vector3(-831.6416015625, -1278.2183837890625, 42.79341125488281),
		textCoords = vector3(-831.6416015625, -1278.2183837890625, 42.79341125488281),
		locked = true,
		objYaw = -90.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Blackwater Gunsmith Back
		object = 1491787144,
		objCoords = vector3(-827.565673828125, -1278.3612060546875, 42.79341125488281),
		textCoords = vector3(-827.565673828125, -1278.3612060546875, 42.79341125488281),
		locked = true,
		objYaw = -90.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- Blackwater Theater Inside Doors
		object = 3126765654,
		object2 = 1225606581,
		objCoords = vector3(-786.05645751953,-1363.3400878906,42.90970993042),
		textCoords = vector3(-786.05645751953,-1363.3400878906,42.90970993042),
		locked = false,
		objYaw = 90.0,
		objYaw2 = 270.0,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Blackwater Telegraph Office
		object = 1730262833,
		objCoords = vector3(-877.09600830078,-1326.3577880859,42.957370758057),
		textCoords = vector3(-877.09600830078,-1326.3577880859,42.957370758057),
		locked = true,
		objYaw = 270.0,
		distance = 2.0
	},	
	----------------------------------------- ARMADILLO LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Armadillo Sheriff Front Door
		object = 66424668,
		objCoords  = vector3(-3624.6982421875,-2605.4157714844,-14.351517677307),
		textCoords  = vector3(-3624.6982421875,-2605.4157714844,-14.351517677307),
		objYaw = 115.00002288818,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Armadillo Jail Cell Door (Right)
		object = 4235597664,
		objCoords  = vector3(-3619.1481933594,-2604.2065429688,-14.351593017578),
		textCoords  = vector3(-3618.697, -2605.369, -13.3268),
		objYaw = 295.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Armadillo Jail Cell Door (Left)
		object = 4016307508,
		objCoords  = vector3(-3620.9931640625,-2600.2490234375,-14.351593017578),
		textCoords  = vector3(-3620.542, -2601.411, -13.3268),
		objYaw = 295.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Armadillo Bank
		object = 3101287960,
		objCoords  = vector3(-3666.0139160156,-2620.8779296875,-14.569600105286),
		textCoords  = vector3(-3666.0139160156,-2620.8779296875,-14.569600105286),
		objYaw = 0.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Armadillo Bank (Teller Gate)
		object = 3550475905,
		objCoords  = vector3(-3661.1369628906,-2627.3623046875,-14.586261749268),
		textCoords  = vector3(-3661.1369628906,-2627.3623046875,-14.586261749268),
		objYaw = 180.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Armadillo Bank (Back Door)
		object = 1366165179,
		objCoords  = vector3(-3663.1545410156,-2638.9812011719,-14.571752548218),
		textCoords  = vector3(-3663.1545410156,-2638.9812011719,-14.571752548218),
		objYaw = 0.0,
		locked = true,
		distance = 3.0
	},
	----------------------------------------- TUMBLEWEED LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Tumbleweed Jail Main Entrance
		object = 2735269038,
		objCoords  = vector3(-5527.6767578125,-2930.4975585938,-2.3662209510803),
		textCoords  = vector3(-5527.6767578125,-2930.4975585938,-2.3662209510803),
		objYaw = 205.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Tumbleweed Jail Cell Main
		object = 831345624,
		objCoords  = vector3(-5529.9135742188,-2925.0739746094,-2.3601191043854),
		textCoords  = vector3(-5529.463, -2926.236, -1.33514),
		objYaw = 295.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Tumbleweed Jail Cell Front
		object = 2677989449,
		objCoords  = vector3(-5531.462890625,-2921.751953125,-2.3601191043854),
		textCoords  = vector3(-5531.012, -2922.914, -1.33514),
		objYaw = 295.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Tumbleweed Jail Cell Front
		object = 2984805596,
		objCoords  = vector3(-5532.9072265625,-2918.6538085938,-2.3601191043854),
		textCoords  = vector3(-5532.457, -2919.816, -1.33514),
		objYaw = 295.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Tumbleweed Room & Board
		object = 2959320055,
		objCoords = vector3(-5511.251953125,-2973.5981445313,1.2093648910522),
		textCoords = vector3(-5511.251953125,-2973.5981445313,1.2093648910522),
		objYaw = 195.0,
		locked = true,  -- DON'T UNLOCK. USED FOR TW/ARMA HOTEL ROOMS
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Tumbleweed Bathhouse (Main Door)
		object = 1423877126,
		objCoords = vector3(-5519.794921875,-2973.1953125,-1.7833360433578),
		textCoords = vector3(-5519.794921875,-2973.1953125,-1.7833360433578),
		objYaw = 285.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Tumbleweed Bathhouse (Inner Door)
		object = 1682160693,
		objCoords = vector3(-5517.0756835938,-2972.46484375,-1.783243060112),
		textCoords = vector3(-5517.0756835938,-2972.46484375,-1.783243060112),
		objYaw = 285.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Tumbleweed Bathhouse (Inside Door) 
		object = 3013877606,
		objCoords = vector3(-5513.2861328125,-2970.0805664063,-1.783243060112),
		textCoords = vector3(-5513.2861328125,-2970.0805664063,-1.783243060112),
		objYaw = 195.0,
		locked = true, -- keep locked at all times
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Tumbleweed Tailor (Dressing Room)
		object = 3208189941,
		objCoords = vector3(-5480.611328125,-2935.0559082031,-1.3969740867615),
		textCoords = vector3(-5480.611328125,-2935.0559082031,-1.3969740867615),
		objYaw = 127.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Tumbleweed Gambling Den (Inside Door)
		object = 1322586500,
		objCoords = vector3(-5514.9912109375,-2913.1657714844,0.67904496192932),
		textCoords = vector3(-5514.9912109375,-2913.1657714844,0.67904496192932),
		objYaw = 30.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Tumbleweed Gambling Den (Outer Doors)
		object = 4292889829,
		object2 = 223504277,
		objCoords = vector3(-5515.3896484375,-2917.0815429688,0.65119791030884),
		textCoords = vector3(-5515.3896484375,-2917.0815429688,0.65119791030884),
		objYaw = 345.0,
		objYaw2 = 165.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Tumbleweed Gunsmith (Front Door)
		object = 1880285656,
		objCoords = vector3(-5510.7084960938,-2961.6040039063,-1.6444520950317),
		textCoords = vector3(-5510.7084960938,-2961.6040039063,-1.6444520950317),
		objYaw = 15.44,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Tumbleweed Gunsmith (Back Door)
		object = 1128355328,
		objCoords = vector3(-5505.6201171875,-2969.2250976563,-1.6487731933594),
		textCoords = vector3(-5505.6201171875,-2969.2250976563,-1.6487731933594),
		objYaw = 15.0,
		locked = true,
		distance = 2.0
	},
	----------------------------------------- SAINT DENIS LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Saint Denis Jail Cell
		object = 1711767580,
		objCoords  = vector3(2502.4296875,-1307.8559570313,47.953273773193),
		textCoords  = vector3(2503.64,-1307.92,49.14),
		objYaw = 115.415,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Saint Denis Jail Cell
		object = 1995743734,
		objCoords  = vector3(2499.75, -1309.87, 47.95),
		textCoords  = vector3(2499.75, -1309.87, 48.95),
		objYaw = 180.35,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Saint Denis Jail Cell
		object = 2515591150,
		objCoords  = vector3(2503.63, -1309.87, 47.95),
		textCoords  = vector3(2503.63, -1309.87, 48.95),
		objYaw = 180.35,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'police', 'policeloa' }, -- Saint Denis Jail Cell
		object = 3365520707,
		objCoords  = vector3(2498.5, -1307.85, 47.95),
		textCoords  = vector3(2498.5, -1307.85, 48.95),
		objYaw = -360.35,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Saint Denis Doctor Office Front Doors
		object = 994323006,
		object2 = 82263429,
		objCoords  = vector3(2724.8232421875,-1234.8221435547,49.363960266113),
		textCoords  = vector3(2724.8232421875,-1234.8221435547,49.363960266113),
		objYaw = 0.0,
		objYaw2 = 0.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Saint Denis Doctor Surgery
		object = 1289094734,
		objCoords  = vector3(2727.434, -1229.163, 49.3678),
		textCoords  = vector3(2727.434, -1229.163, 49.3678),
		objYaw = 270.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Doctor/Pharmacy Connecting Door
		object = 586229709,
		objCoords  = vector3(2723.953125,-1227.0920410156,49.367786407471),
		textCoords  = vector3(2723.953125,-1227.0920410156,49.367786407471),
		objYaw = 270.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Saint Denis Doctor Back Door
		object = 1104407261,
		objCoords  = vector3(2725.1469726563,-1221.6247558594,49.367805480957),
		textCoords  = vector3(2725.1469726563,-1221.6247558594,49.367805480957),
		objYaw = 0.0,
		locked = true,
		distance = 3.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Pharmacy Front Doors
		object = 3723126486,
		object2 = 79213682,
		objCoords  = vector3(2715.9943847656,-1230.2332763672,49.371280670166),
		textCoords  = vector3(2716.2651367188, -1229.3813476563, 50.36576461792),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Saint Denis Bank Vault Door
		object = 1751238140,
		objCoords  = vector3(2643.301, -1300.427, 51.255841),
		textCoords  = vector3(2643.301, -1300.427, 51.255841),
		objYaw = 159.90571594238,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Saint Denis Bank Manager Double Doors
		object = 1634115439,
		object2 = 965922748,
		objCoords  = vector3(2646.983, -1300.896, 51.245381),
		textCoords  = vector3(2648.03, -1300.46, 52.24),
		objYaw = 204.7395324707,
		objYaw2 = 204.58697509766,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Saint Denis North Double Doors
		object = 2089945615,
		object2 = 2817024187,
		objCoords  = vector3(2640.176, -1286.343, 51.24601),
		textCoords  = vector3(2641.05, -1285.57, 52.26),
		objYaw = 204.83293151855,
		objYaw2 = 205.17900085449,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Saint Denis West Double Doors
		object = 2158285782,
		object2 = 1733501235,
		objCoords  = vector3(2637.798, -1298.037, 51.24601),
		textCoords  = vector3(2637.92, -1299.12, 52.24),
		objYaw = 294.84509277344,
		objYaw2 = 294.71026611328,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Main Doors
		object = 2712742172,
		object2 = 1401130182,
		objCoords  = vector3(2402.515, -1095.564, 46.42542),
		textCoords  = vector3(2401.52, -1095.60, 47.42),
		objYaw = 179.99998474121,
		objYaw2 = 0.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Int Door 1)
		object = 2014752984,
		object2 = 1114228095,
		objCoords  = vector3(2396.64453125,-1093.6770019531,46.420745849609),
		textCoords  = vector3(2396.68,-1092.57,47.36),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Int Door 2)
		object = 1196052300,
		object2 = 1553201619,
		objCoords  = vector3(2396.642578125, -1085.8247070313, 46.42024230957),
		textCoords  = vector3(2396.67,-1086.93,47.37),
		objYaw = 270.0,
		objYaw2 = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Ext Door 1)
		object = 463894517,
		object2 = 1440476271,
		objCoords  = vector3(2387.719, -1092.577, 46.42515),
		textCoords  = vector3(2387.66, -1093.29, 47.44),
		objYaw = 270.0,
		objYaw2 = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Ext Door 2)
		object = 4251106158,
		object2 = 895396725,
		objCoords  = vector3(2387.719, -1090.261, 46.42515),
		textCoords  = vector3(2387.66, -1090.86, 47.44),
		objYaw = 270.0,
		objYaw2 = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Ext Door 3)
		object = 2430556805,
		object2 = 260726717,
		objCoords  = vector3(2387.719, -1087.927, 46.42515),
		textCoords  = vector3(2387.66, -1088.75, 47.44),
		objYaw = 270.0,
		objYaw2 = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Dining Room Ext Door 4)
		object = 515307058,
		object2 = 2191834640,
		objCoords  = vector3(2387.718, -1085.609, 46.42515),
		textCoords  = vector3(2387.66, -1086.25, 47.44),
		objYaw = 270.0,
		objYaw2 = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Kitchen Ext Door)
		object = 957998097,
		objCoords  = vector3(2387.85, -1083.439, 46.43348),
		textCoords  = vector3(2387.57, -1082.439, 47.42),
		objYaw = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Kitchen Int Door)
		object = 957140300,
		object2 = 3687125694,
		objCoords  = vector3(2394.6076660156,-1076.5513916016,46.423530578613),
		textCoords  = vector3(2394.63,-1075.87,47.41),
		objYaw = 270.0,
		objYaw2 = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum (Kitchen 2nd floor Door)
		object = 3219924935,
		objCoords  = vector3(2391.3759765625,-1087.0476074219,51.425170898438),
		textCoords  = vector3(2391.34,-1088.08,52.30),
		objYaw = 270.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Rear (Door 1 - Left to Right)
		object = 64755943,
		object2 = 1282026246,
		objCoords  = vector3(2406.744, -1071.16, 46.42515),
		textCoords  = vector3(2406.04, -1071.13, 47.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Rear (Door 2)
		object = 1072042494,
		object2 = 1881469563,
		objCoords  = vector3(2403.08, -1071.16, 46.42515),
		textCoords  = vector3(2403.64, -1071.03, 47.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Rear (Door 3)
		object = 4081383617,
		object2 = 3851050316,
		objCoords  = vector3(2402.107, -1071.16, 46.42515),
		textCoords  = vector3(2401.38, -1071.03, 47.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Rear (Door 4)
		object = 4174676960,
		object2 = 714041173,
		objCoords  = vector3(2399.7883300781,-1071.1597900391,46.425148010254),
		textCoords  = vector3(2399.11, -1071.03, 47.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum Rear (Door 5)
		object = 3301481377,
		object2 = 4111629364,
		objCoords  = vector3(2397.47, -1071.16, 46.42515),
		textCoords  = vector3(2396.77, -1071.03, 47.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum East Side (Door 1)
		object = 2049189737,
		object2 = 1214137310,
		objCoords  = vector3(2415.255, -1094.434, 46.42515),
		textCoords  = vector3(2415.65, -1093.79, 47.42),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum East Side (Door 2)
		object = 1462821251,
		object2 = 883203179,
		objCoords  = vector3(2415.255, -1091.952, 46.42515),
		textCoords  = vector3(2415.44, -1091.29, 47.42),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum East Side (Door 3)
		object = 1123170566,
		object2 = 287888768,
		objCoords  = vector3(2415.255, -1089.466, 46.42515),
		textCoords  = vector3(2415.64, -1088.81, 47.42),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum East Side (Door 4)
		object = 534737645,
		object2 = 4263849849,
		objCoords  = vector3(2415.251, -1086.98, 46.42515),
		textCoords  = vector3(2415.24, -1086.29, 47.42),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum East Side (Door 5)
		object = 681362779,
		object2 = 981199129,
		objCoords  = vector3(2415.545, -1084.083, 46.42515),
		textCoords  = vector3(2416.13, -1084.02, 47.42),
		objYaw = 0.0,
		objYaw2 = 0.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (South)
		object = 3763675028,
		object2 = 3191069522,
		objCoords  = vector3(2402.516, -1095.562, 51.43517),
		textCoords  = vector3(2401.29, -1095.73, 52.42),
		objYaw = 180.0,
		objYaw2 = 0.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (West - Door 1)
		object = 1837549341,
		object2 = 1181972723,
		objCoords  = vector3(2387.941, -1092.599, 51.43631),
		textCoords  = vector3(2387.78, -1093.28, 52.44),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (West - Door 2)
		object = 1359679014,
		object2 = 2612896650,
		objCoords  = vector3(2387.855, -1090.252, 51.43631),
		textCoords  = vector3(2387.66, -1090.95, 52.47),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (East - Door 1)
		object = 2456557508,
		object2 = 1863994303,
		objCoords  = vector3(2415.77, -1084.083, 51.4253),
		textCoords  = vector3(2416.49, -1084.05, 52.45),
		objYaw = 0.0,
		objYaw2 = 0.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (Rear - Door 1 - Left to Right)
		object = 3024919785,
		object2 = 993734236,
		objCoords  = vector3(2406.743, -1071.105, 51.42515),
		textCoords  = vector3(2405.91, -1071.00, 52.43),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (Rear - Door 2)
		object = 3738400142,
		object2 = 3431780609,
		objCoords  = vector3(2404.425, -1071.105, 51.42515),
		textCoords  = vector3(2403.82, -1070.82, 52.43),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (Rear - Door 3)
		object = 2189442277,
		object2 = 1881184294,
		objCoords  = vector3(2402.107, -1071.105, 51.42515),
		textCoords  = vector3(2401.45, -1071.30, 52.42),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (Rear - Door 4)
		object = 3130699033,
		object2 = 2833320358,
		objCoords  = vector3(2399.788, -1071.105, 51.42515),
		textCoords  = vector3(2399.11, -1071.06, 52.43),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government' }, -- Lemieux Library & Museum 2nd Floor (Rear - Door 5)
		object = 3745412704,
		object2 = 3448492795,
		objCoords  = vector3(2397.474, -1071.105, 51.42515),
		textCoords  = vector3(2396.72, -1071.08, 52.43),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Bastille Bathhouse
		object = 779421929,
		objCoords  = vector3(2631.8881835938,-1224.4436035156,58.578788757324),
		textCoords  = vector3(2631.8881835938,-1224.4436035156,58.578788757324),
		objYaw = 90.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Bastille Bedroom (Inside Door)
		object = 1555588463,
		objCoords  = vector3(2634.6809082031,-1225.0213623047,58.596115112305),
		textCoords  = vector3(2634.6809082031,-1225.0213623047,58.596115112305),
		objYaw = 90.0,
		locked = true,  -- DON'T UNLOCK. USED FOR 'HOTEL CHEVALIER' HOTEL ROOM
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Bastille Bedroom (Balcony Left)
		object = 1275780106,
		object2 = 3461406868,
		objCoords  = vector3(2635.8586425781,-1219.7867431641,58.589454650879),
		textCoords  = vector3(2635.8586425781,-1219.7867431641,58.589454650879),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government' }, -- Bastille Bedroom (Balcony Right)
		object = 2693793043,
		object2 = 2999855503,
		objCoords  = vector3(2638.9807128906,-1219.7867431641,58.593223571777),
		textCoords  = vector3(2638.9807128906,-1219.7867431641,58.593223571777),
		objYaw = 180.0,
		objYaw2 = 180.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Saint Denis Gunsmith (Front Doors)
		object = 3283200993,
		object2 = 1057071735,
		objCoords  = vector3(2720.815, -1283.54, 48.63758),
		textCoords  = vector3(2720.40, -1282.44, 49.63),
		objYaw = 115.0,
		objYaw2 = 295.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'gunsmith' }, -- Saint Denis Gunsmith (Rear Door)
		object = 841127028,
		objCoords  = vector3(2710.566, -1291.204, 48.6323),
		textCoords  = vector3(2710.68, -1290.21, 49.63),
		objYaw = 115.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Gambling Den over Saint Denis Gunsmith
		object = 1180868565,
		objCoords  = vector3(2711.438, -1293.084, 59.45848),
		textCoords  = vector3(2711.92, -1293.65, 60.45),
		objYaw = 295.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'saloon' }, -- Rooftop Hideout Nr Gunsmith
		object = 4056636523,
		objCoords  = vector3(2714.4291992188,-1300.2849121094,58.850765228271),
		textCoords  = vector3(2714.4291992188,-1300.2849121094,58.850765228271),
		objYaw = 205.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- La Raleur Theater (Main Doors)
		object = 340151973,
		object2 = 544106233,
		objCoords = vector3(2545.3461914063,-1289.8310546875,48.21639251709),
		textCoords = vector3(2545.3461914063,-1289.8310546875,48.21639251709),
		objYaw = 0.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- La Raleur Theater (Opera Box)
		object = 544106233,
		object2 = 3977525803,
		objCoords = vector3(2547.5502929688,-1289.8310546875,48.21639251709),
		textCoords = vector3(2547.5502929688,-1289.8310546875,48.21639251709),
		objYaw = 180.0,
		objYaw2 = 0.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- La Raleur Theater (Side Door 1)
		object = 534819197,
		object2 = 836064614,
		objCoords = vector3(2537.5954589844,-1294.4779052734,48.2163925170),
		textCoords = vector3(2537.5954589844,-1294.4779052734,48.2163925170),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- La Raleur Theater (Side Door 2)
		object = 2053545201,
		object2 = 1449678065,
		objCoords = vector3(2537.5954589844,-1298.2326660156,48.21639251709),
		textCoords = vector3(2537.5954589844,-1298.2326660156,48.21639251709),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- La Raleur Theater (Side Door 3)
		object = 627391959,
		object2 = 3468071035,
		objCoords = vector3(2537.5954589844,-1303.3359375,48.21639251709),
		textCoords = vector3(2537.5954589844,-1303.3359375,48.21639251709),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema', 'saloon' }, -- La Raleur Theater (Bar+Ticket Office)
		object = 1457151494,
		object2 = 1688533403,
		objCoords = vector3(2544.7133789063,-1284.74609375,48.217514038086),
		textCoords = vector3(2544.7133789063,-1284.74609375,48.217514038086),
		objYaw = 270.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- Fontana Theater (Right Entrance Doors)
		object = 4223025754,
		object2 = 235202295,
		objCoords = vector3(2688.9660644531,-1363.3248291016,47.215187072754),
		textCoords = vector3(2688.9660644531,-1363.3248291016,47.215187072754),
		objYaw = 130.0,
		objYaw2 = 130.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'police', 'policeloa', 'government', 'cinema' }, -- Fontana Theater (Left Entrance Doors)
		object = 1920184275,
		object2 = 3571152033,
		objCoords = vector3(2685.7612304688,-1359.5030517578,47.215068817139),
		textCoords = vector3(2685.7612304688,-1359.5030517578,47.215068817139),
		objYaw = 130.0,
		objYaw2 = 130.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' },
		object = 3804893186,
		objCoords  = vector3(2553.8081054688,-1161.8333740234,52.690673828125), -- Saint Denis Tailor (Dressing Room)
		textCoords  = vector3(2553.65, -1160.84, 53.77),
		locked = false,
		objYaw = 89.999931335449,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government' },
		object = 3451639661,
		objCoords  = vector3(2546.8286132813,-1155.3392333984,52.68346786499), -- Saint Denis Tailor (Side Door 1)
		textCoords  = vector3(2546.8286132813,-1155.3392333984,52.68346786499),
		locked = false,
		objYaw = 270.0,
		distance = 3.0
	},
	{
		authorizedJobs = { 'government' },
		object = 3746429585,
		objCoords  = vector3(2546.8286132813,-1162.9963378906,52.68346786499), -- Saint Denis Tailor (Side Door 2)
		textCoords  = vector3(2546.8286132813,-1162.9963378906,52.68346786499),
		locked = false,
		objYaw = 270.0,
		distance = 3.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Sanatorium (Front Doors)
		object = 1291327218,
		object2 = 1587886668,
		objCoords  = vector3(2387.6420898438, -1217.3891601563, 46.15700149536),
		textCoords  = vector3(2387.6420898438, -1215.1851806641, 46.157001495361),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Sanatorium (Back Doors)
		object = 1130131904,
		object2 = 895866323,
		objCoords  = vector3(2361.443359375, -1217.3901367188, 46.157001495361),
		textCoords  = vector3(2361.443359375, -1217.3901367188, 46.157001495361),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = {'doctor', 'government' }, -- Saint Denis Sanatorium (Side Door)
		object = 3517504371,
		objCoords  = vector3(2367.3679199219, -1208.4289550781, 46.157001495361),
		textCoords  = vector3(2367.3679199219, -1208.4289550781, 46.157001495361),
		objYaw = 0.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Sanatorium (Front Balcony Doors)
		object = 913143609,
		object2 = 4291234285,
		objCoords  = vector3(2387.5876464844, -1217.38671875, 50.766265869141),
		textCoords  = vector3(2387.5876464844, -1217.38671875, 50.766265869141),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'doctor', 'government' }, -- Saint Denis Sanatorium (Back Balcony Doors)
		object = 3660529342,
		object2 = 622515348,
		objCoords  = vector3(2361.4301757813, -1217.38671875, 50.766265869141),
		textCoords  = vector3(2361.4301757813, -1217.38671875, 50.766265869141),
		objYaw = 90.0,
		objYaw2 = 270.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Saint Denis Sanatorium (Twin Bedroom) 
		object = 1625055539,
		objCoords  = vector3(2381.87109375,-1214.1979980469,50.756782531738),
		textCoords  = vector3(2381.87109375,-1214.1979980469,50.756782531738),
		objYaw = 0.0,
		locked = true, -- DON'T UNLOCK. USED FOR 'HOTEL GRAND' HOTEL ROOM
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'cinema', 'photographer' }, -- Galerie Laurent (Managers Office)
		object = 1707768866,
		objCoords  = vector3(2697.6174316406, -1189.7241210938, 55.09761428833),
		textCoords  = vector3(2697.6174316406, -1189.7241210938, 55.09761428833),
		objYaw = 0.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'cinema', 'photographer' }, -- Saint Denis Photography Studio
		object = 277751767,
		object2 = 35199758,
		objCoords = vector3(2699.7026367188,-1189.7280273438,55.094169616699),
		textCoords = vector3(2699.7026367188,-1189.7280273438,55.094169616699),
		locked = false,
		objYaw = 180.0,
		objYaw2 = 180.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'policeloa', 'government' }, -- Saint Denis Trolley Office (East)
		object = 1915401053,
		objCoords  = vector3(2745.9448242188, -1397.6851806641, 45.181930541992),
		textCoords  = vector3(2745.9448242188, -1397.6851806641, 45.181930541992),
		objYaw = 295.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Saint Denis Trolley Office (West)
		object = 187523632,
		objCoords  = vector3(2734.8820800781, -1404.0617675781, 45.181930541992),
		textCoords  = vector3(2734.8820800781, -1404.0617675781, 45.181930541992),
		objYaw = 115.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government', 'photographer' }, -- Saint Denis Photography Studio
		object = 1079875175,
		object2 = 123675751,
		objCoords = vector3(2734.1520996094,-1115.708984375,48.100471496582),
		textCoords = vector3(2734.1520996094,-1115.708984375,48.100471496582),
		locked = false,
		objYaw = 0.0,
		objYaw2 = 0.0,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Barber Back Doors
		object = 527035651,
		object2 = 29962690,
		objCoords  = vector3(2650.5270996094,-1179.4465332031,52.303527832031),
		textCoords  = vector3(2650.5270996094,-1179.4465332031,52.303527832031),
		objYaw = 90.0,
		objYaw2 = 90.0,
		locked = false,
		distance = 2.0
	},
	{
		authorizedJobs = { 'government' }, -- Lemoyne Family Mausoleum
		object = 3472968914,
		object2 = 986162257,
		objCoords  = vector3(2770.6794433594,-1047.0091552734,46.379661560059),
		textCoords  = vector3(2770.6794433594,-1047.0091552734,46.379661560059),
		objYaw = 0.0,
		objYaw2 = 180.0,
		locked = true,
		distance = 2.0
	},
	----------------------------------------- SISIKA PRISON LOCKS -----------------------------------------
	{
		authorizedJobs = { 'police', 'government' }, -- Sisika Outer Double Doors
		object = 1121239638,
		object2 = 2617210026,
		objCoords = vector3(3327.5732421875,-707.517578125,43.383056640625),
		textCoords = vector3(3327.5732421875,-707.517578125,43.383056640625),
		objYaw = 311.865,
		objYaw2 = 311.865,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Sisika Inner Double Doors
		object = 906662604,
		object2 = 3984556459,
		objCoords = vector3(3333.5808105469,-702.05596923828,43.068531036377),
		textCoords = vector3(3333.5808105469,-702.05596923828,43.068531036377),
		objYaw = 311.865,
		objYaw2 = 311.865,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Sisika Outer Gate
		object = 3158090902,
		objCoords = vector3(3349.9089355469,-645.2470703125,44.354637145996),
		textCoords = vector3(3349.9089355469,-645.2470703125,44.354637145996),
		objYaw = 15.0,
		locked = true,
		distance = 2.0
	},
	{
		authorizedJobs = { 'police', 'government' }, -- Sisika Inner Gate
		object = 2381465602,
		objCoords = vector3(3350.638671875,-647.97021484375,44.354637145996),
		textCoords = vector3(3350.638671875,-647.97021484375,44.354637145996),
		objYaw = 15.0,
		locked = true,
		distance = 2.0
	},

 	------------------------------ GRAND KORRIGAN GAMBLING BOAT LOCKS ------------------------------
	{
		authorizedJobs = { 'police', 'government' }, -- Office East
		object = 1962482653,
		objCoords = vector3(3292.0434570313,-1300.2551269531,50.920951843262),
		textCoords = vector3(3292.0434570313,-1300.2551269531,50.920951843262),
		objYaw = 270.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- Office West
		object = 2181772801,
		objCoords = vector3(3284.8774414063,-1300.2551269531,50.925983428955),
		textCoords = vector3(3284.8774414063,-1300.2551269531,50.925983428955),
		objYaw = 270.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- Meeting Room West
		object = 4267779198,
		objCoords = vector3(3284.7690429688,-1316.7893066406,50.74934387207),
		textCoords = vector3(3284.7690429688,-1316.7893066406,50.74934387207),
		objYaw = 270.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- Meeting Room East
		object = 1275379652,
		objCoords = vector3(3292.1313476563,-1316.7893066406,50.749206542969),
		textCoords = vector3(3292.1313476563,-1316.7893066406,50.749206542969),
		objYaw = 270.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- Meeting Room Double Doors
		object = 2811033299,
		object2 = 1509055391,
		objCoords = vector3(3287.3471679688,-1332.8981933594,50.792091369629),
		textCoords = vector3(3287.3471679688,-1332.8981933594,50.792091369629),
		objYaw = 0.0,
		objYaw2 = 180.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 1st Class Bedroom
		object = 1306597923,
		objCoords = vector3(3282.9162597656,-1297.9509277344,45.89453125),
		textCoords = vector3(3282.9162597656,-1297.9509277344,45.89453125),
		objYaw = 90.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 2nd Class Bedroom
		object = 568836657,
		objCoords = vector3(3293.9582519531,-1301.9976806641,45.79931640625),
		textCoords = vector3(3293.9582519531,-1301.9976806641,45.79931640625),
		objYaw = 90.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 3rd Class Bedroom
		object = 1614659292,
		objCoords = vector3(3282.9143066406,-1325.6790771484,45.517639160156),
		textCoords = vector3(3282.9143066406,-1325.6790771484,45.517639160156),
		objYaw = 270.0,
		locked = false,
		distance = 2.0
	},  
		----------------------------------------- GUARMA PRISON LOCKS -----------------------------------------
	{
		authorizedJobs = { 'doctor', 'government', 'police' }, -- Doctor Front Door
		object = 665136222,
		objCoords = vector3(1381.2512207031,-7006.6176757813,56.119739532471),
		textCoords = vector3(1381.2512207031,-7006.6176757813,56.119739532471),
		objYaw = 68.21,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'doctor', 'government', 'police' }, -- Doctor Back Door
		object = 167244044,
		objCoords = vector3(1390.3883056641,-7001.7358398438,56.119739532471),
		textCoords = vector3(1390.3883056641,-7001.7358398438,56.119739532471),
		objYaw = 250.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 1st Leftmost
		object = 1744201837,
		objCoords = vector3(1464.0678710938,-7133.6396484375,74.93123626709),
		textCoords = vector3(1464.0678710938,-7133.6396484375,74.93123626709),
		objYaw = 25.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 2nd Leftmost
		object = 1337407471,
		objCoords = vector3(1467.3154296875,-7132.1259765625,74.944511413574),
		textCoords = vector3(1467.3154296875,-7132.1259765625,74.944511413574),
		objYaw = 25.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- Centre
		object = 1982006478,
		objCoords = vector3(1480.9106445313,-7125.7426757813,74.93123626709),
		textCoords = vector3(1480.9106445313,-7125.7426757813,74.93123626709),
		objYaw = 25.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 2nd Rightmost
		object = 4192865366,
		objCoords = vector3(1484.1579589844,-7124.228515625,75.04451751709),
		textCoords = vector3(1484.1579589844,-7124.228515625,75.04451751709),
		objYaw = 25.0,
		locked = false,
		distance = 2.0
	}, 
	{
		authorizedJobs = { 'police', 'government' }, -- 1st Rightmost
		object = 2423077218,
		objCoords = vector3(1486.6468505859,-7121.12109375,75.04451751709),
		textCoords = vector3(1486.6468505859,-7121.12109375,75.04451751709),
		objYaw = 25.0,
		locked = false,
		distance = 2.0
	},
}