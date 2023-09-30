
Config = {}

Config.vorp = true
Config.redem = false

-------- only have 1 enabled----------
Config.normaldrawtext = true -- 
Config.drawtext3d = false --
--------------------------------------

Config.webhook = true -- turn webhooks for each job on or off 
Config.adminwebhook = true -- turn admin webhook on or off 
Config.adminwebhooklink = "https://discord.com/api/webhooks/942196472991076373/hx1Be-26Zqer9tcvgK49_rsHyxcl5Xiq1aWwxQX2EAKBkpOkp81Xw3HAQCh2Mt_5lOE7" -- input your webhook
Config.OpenMenu = 0x760A9C6F -- Key: G
Config.unemployed = "unemployed" --- make sure u set this up in vorp core config as well 
Config.salarytime = 15 -- every 30 minutes players get a salary from the jobs ledger (only if the job has a ledger set up and is included in the config below yes the money gets taken out of the ledger)
Config.maxsalary = 50 -- 30$ max salary --max salary job owners are allowed to set to ranks


Config.autocollect = true -- set to false if you dont want bills from the jobs mentioned below to be auto collected on the spot and instead go to the billing menu 
Config.autocollectjob = {"doctor","police"}

Config.Locations = { 
	--[[ Valentine = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=-182.842, y=629.662, z=114.08}, -- location of job center 
        blipsprite = -272216216, -- blip sprite for job center
		Name = 'Job Center', -- blip name 
    }, ]]
    Valentine = {
        Pos = {x=-182.842, y=629.662, z=114.08}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	},	
    Blackwater = {
        Pos = {x=-878.06, y=-1334.76, z=43.97}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	},	
    Saintdenis = {
        Pos = {x=2530.65, y=-1207.02, z=53.68}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	},
    Rhodes = {
        Pos = {x=1233.18, y=-1294.26, z=76.85},
        blipsprite = -272216216,
		Name = 'Job Center',
    },
}

Config.jobs = { 
	police = {	   
        Pos = { 
            {x=-279.21, y=809.9, z=119.3}, -- Valentine
            {x=1361.56, y=-1303.22, z=77.76}, -- Rhodes
            {x=2508.43, y=-1308.72, z=48.95}, -- Saint Denis
            {x=-763.41, y=-1271.52, z=43.99}, -- Blackwater
            {x=-3624.99, y=-2601.39, z=-13.39}, -- Armadillo
            {x=2907.72, y=1312.85, z=44.93}, -- Annesburg
            {x=-1807.44, y=-348.05, z=164.70}, -- Strawberry
			{x=-5531.16, y=-2929.27, z=-1.41}, -- Tumbleweed
        }, -- position of blip
      
        jobmenu = { 
            {x=-279.21, y=809.9, z=119.3}, -- Valentine
            {x=1359.17, y=-1299.98, z=77.76}, -- Rhodes
            {x=2508.43, y=-1308.72, z=48.95}, -- Saint Denis
            {x=-763.41, y=-1271.52, z=43.99}, -- Blackwater
            {x=-3624.99, y=-2601.39, z=-13.39}, -- Armadillo
            {x=2907.72, y=1312.85, z=44.93}, -- Annesburg
            {x=-1807.44, y=-348.05, z=164.70}, -- Strawberry
			{x=-5531.16, y=-2929.27, z=-1.41}, -- Tumbleweed
        }, -- position of job menu

        blipsprite = 778811758, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Sheriffs Office', -- name of blip
        recruitmentrank = 1,
        bossrank = 1, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 1, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Police Inv.", -- the name displayed when the container is open
        billing = true, -- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = true, -- (added line) enable/disable salary system.
    },

    confectioner = {	   
        Pos = { 
            {x=-814.74, y=-1306.16, z=43.83},
        }, -- position of blip

        jobmenu = { 
            {x=-783.84, y=-1295.98, z=43.73},

        }, -- position of job menu
        blipsprite = 103490298, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Blackwater Taffy Co.', -- name of blip
        recruitmentrank = 0,
        bossrank = 3, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 15, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Candy Jar", -- the name displayed when the container is open
        billing = false, -- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = true, -- (added line) enable/disable salary system.
    },

    horsetrainer = {	   
        Pos = { 
            {x=-1595.05, y=-1407.37, z=82.00},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-1595.05, y=-1407.37, z=82.00},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -73168905,
        showblip = true,
		Name = 'McLeods Equine Traders',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 3,
        containername = "Trader's Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    saloon = {	   
        Pos = { 
            {x=-819.35, y=-1319.30, z=43.67},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-819.35, y=-1319.30, z=43.67},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -963916715,
        showblip = false,
		Name = 'Silver Dollar Saloons',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 223,
        containername = "Barkeeper Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    government = {	   
        Pos = { 
            {x=2401.42, y=-1088.76, z=47.46},

    
        }, 
        jobmenu = { 
            {x=2402.16, y=-1089.46, z=47.41},

        },
        blipsprite = 1047294027,
        showblip = true,
		Name = 'Lemieux Library & Museum',
        recruitmentrank = 0,
        bossrank = 0,
        containerid = 26,
        containername = "Public Purse",
        billing = true,
        webhook = "",
        salary = true,

    },

    doctor = {	   
        Pos = { 
            {x=-287.43, y=810.29, z=119.34}, -- Valentine
            {x=-1806.0, y=-433.01, z=159.07}, -- Strawberry
            {x=1371.11, y=-1307.97, z=77.97}, -- Rhodes
            {x=2724.45, y=-1228.85, z=50.32}, -- Saint Denis
            {x=-786.3, y=-1302.91, z=31.32}, -- Blackwater 
            {x=2956.34, y=465.34, z=49.44}, -- Van Horn 
            {x=-3650.83, y=-2649.76, z=-13.46}, -- Armadillo (Tents)
            {x = 1385.71, y = -7005.39, z = 57.08}, -- Guarma
        }, 
        jobmenu = { 
            {x=-290.42, y=815.33, z=119.39}, -- Valentine
            {x=-1807.95, y=-430.94, z=158.78}, -- Strawberry
            {x=1371.47, y=-1309.65, z=77.97}, -- Rhodes
            {x=2727.97, y=-1234.29, z=50.38}, -- Saint Denis
            {x=-785.4, y=-1305.07, z=44.78}, -- Blackwater (Doctors Office)
            {x=-3653.43, y=-2651.13, z=-13.46}, -- Armadillo (Tents)
            {x=-5524.48, y=-2956.73, z=-1.56}, -- Tumbleweed
            {x=2956.37, y=461.93, z=49.44}, -- Van Horn 
            {x=3981.3, y=-1740.33, z=35.46}, -- Saint Denis Fight Club 
            {x=1382.79, y=-7009.01, z=57.11}, -- Guarma
        },
        blipsprite = -695368421,
        showblip = true,
		Name = 'Doctors Office',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 4,
        containername = "Medicine Cabinet",
        billing = true,
        webhook = "",
        salary = true,

    },
    --[[bastille = {	   
        Pos = { 
            {x=2640.08, y=-1222.74, z=53.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=2640.08, y=-1222.74, z=53.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -392465725,
		Name = 'Bastille Saloon',
        recruitmentrank = 5,
        bossrank = 5,
        containerid = 6,
        showblip = true,
        containername = "Bar Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },]]
    --[[sgs = {	   
        Pos = { 
            {x=-1795.06, y=-385.79, z=157.08},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-1795.06, y=-385.79, z=157.08},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -1954662204,
		Name = 'Popalone Brothers General',
        recruitmentrank = 5,
        bossrank = 5,
        containerid = 7,
        showblip = false,
        containername = "General Store Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },]]
    --[[rguns = {	   
        Pos = { 
            {x=1323.77, y=-1321.71, z=77.88},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1328.66, y=-1325.23, z=77.89},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -145868367,
		Name = 'Pierce Your Heart Gunstore',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 8,
        showblip = true,
        containername = "Gun Store Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },]]

   --[[ newaustinstable = {	   
        Pos = { 
            {x=-5513.87, y=-3039.92, z=-2.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-5513.87, y=-3039.92, z=-2.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 564457427,
		Name = 'Whitlock Stables',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 27,
        showblip = true,
        containername = "Saloon Inv",
        billing = true,
        webhook = "",
        salary = true,

    },

    marshal = {	   
        Pos = { 
            {x=-2195.27, y=715.30, z=122.34},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-2195.27, y=715.30, z=122.34},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 778811758,
        showblip = true,
		Name = 'US Marshal',
        recruitmentrank = 4,
        bossrank = 5,
        containerid = 16,
        containername = "US Marshal Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },]]
    
    conductor = {	   
        Pos = { 
            {x=-176.59, y=630.75, z=114.08},
    
        }, 
        jobmenu = { 
            {x=-176.59, y=630.75, z=114.08},

        },
        blipsprite = 778811758,
        showblip = false,
		Name = 'Val Train Company',
        recruitmentrank = 0,
        bossrank = 0,
        containerid = 17,
        containername = "Storage Car",
        billing = false,
        webhook = "",
        salary = true,

    },

    bountyhunter = {	   
        Pos = { 
            {x=2917.93, y=1381.04, z=56.27},
    
        }, 
        jobmenu = { 
            {x=2917.93, y=1381.04, z=56.27},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Guardian Security',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 18,
        containername = "Bounty Hunter Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

--[[     sdblacksmith = {	   
        Pos = { 
            {x=2512.54, y =-1457.93, z=46.26},
    
        }, 
        jobmenu = { 
            {x=2512.54, y =-1457.93, z=46.26},

        },
        blipsprite = -758970771,
        showblip = false,
		Name = 'Smithy for Lease',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 19,
        containername = "Blacksmith Inv.",
        billing = false,
        webhook = "",
        salary = true,

    }, ]]

    miner = {	   
        Pos = { 
            {x=498.06, y=673.00, z=121.04},
    
        }, 
        jobmenu = { 
            {x=498.06, y=673.00, z=121.04},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Miner',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 24,
        containername = "Miner Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[smlvalsaloon = {	   
        Pos = { 
            {x=-237.30, y=767.83, z=118.10},
    
        }, 
        jobmenu = { 
            {x=-237.30, y=767.83, z=118.10},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'King Family Saloon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 25,
        containername = "Bar Safe",
        billing = true,
        webhook = "",
        salary = false,

    },]]

    gunsmith = {	   
        Pos = { 
            {x=-283.56, y=778.84, z=119.5},
            {x=1327.92, y=-1325.84, z=77.69},
            {x=-1763.62, y=-378.31, z=157.64},
            {x=2712.89, y=-1290.13, z=49.83},
            {x=-829.94, y=-1275.6, z=43.68}
    
        }, 
        jobmenu = { 
            {x=-283.56, y=778.84, z=119.5},
            {x=1327.92, y=-1325.84, z=77.69},
            {x=-1763.62, y=-378.31, z=157.64},
            {x=2712.89, y=-1290.13, z=49.83},
            {x=-829.94, y=-1275.6, z=43.68}

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Valentine Gunsmith',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 23,
        containername = "Gunsmith Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },
    construction = {	   
        Pos = { 
            {x=-283.56, y=778.84, z=119.5},
    
        }, 
        jobmenu = { 
            {x=-283.56, y=778.84, z=119.5},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Bills Construction',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 219,
        containername = "Construction Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },
    stagecoach = {	   
        Pos = { 
            {x=-283.56, y=778.84, z=119.5},
    
        }, 
        jobmenu = { 
            {x=-283.56, y=778.84, z=119.5},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Garys Taxi Service',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 220,
        containername = "Stagecoach Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },
    moonshiner = {	   
        Pos = { 
            {x=1945.17, y=-681.8, z=42.07}
    
        }, 
        jobmenu = { 
            {x=1945.17, y=-681.8, z=42.07}

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Moonshine City',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 221,
        containername = "Moonshine Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },
    delivery = {	   
        Pos = { 
            {x=-283.56, y=778.84, z=119.5},
    
        }, 
        jobmenu = { 
            {x=-283.56, y=778.84, z=119.5},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Pats Post',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 222,
        containername = "Delivery Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },
    unemployed = {	   
        Pos = { 
            {x=0.0, y=0.0, z=0.0},
    
        }, 
        jobmenu = { 
            {x=0.0, y=0.0, z=0.0},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Unemployed',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 0,
        containername = "Unemployed",
        billing = false,
        webhook = "",
        salary = true,

    },
    cinema = {	   
        Pos = { 
            {x=-783.0, y=-1366.04, z=47.42},
    
        }, 
        jobmenu = { 
            {x=-783.0, y=-1366.04, z=47.42},

        },
        blipsprite = 1322310532,
        showblip = false,
		Name = 'Showman Office',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 0,
        containername = "Showman Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    farmer = {	   
        Pos = { 
            {x = -249.15, y = 686.16, z = 113.23},
    
        }, 
        jobmenu = { 
            {x = -249.15, y = 686.16, z = 113.23},

        },
        blipsprite = 552659337,
        showblip = false,
		Name = 'Farmers Union',
        recruitmentrank = 0,
        bossrank = 1,
        containerid = 28,
        containername = "Grain Store",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ sdgunsmith = {	   
        Pos = { 
            {x=2712.59, y=-1290.19, z=49.63},
    
        }, 
        jobmenu = { 
            {x=2712.59, y=-1290.19, z=49.63},

        },
        blipsprite = 1322310532,
        showblip = true,
		Name = 'Saint Denis Gunsmith',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 29,
        containername = "Gun Safe",
        billing = false,
        webhook = "",
        salary = false,

    },]]

    --[[ bwblacksmith = {	   
        Pos = { 
            {x=-864.33, y=-1397.23, z=43.58},
    
        }, 
        jobmenu = { 
            {x=-864.33, y=-1397.23, z=43.58},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Jones Brothers Smithy',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 30,
        containername = "Blacksmith Inv.",
        billing = true,
        webhook = "",
        salary = false,

    },]]

    tobacconist = {	   
        Pos = { 
            {x=-878.96, y=-1368.10, z=43.52},
    
        }, 
        jobmenu = { 
            {x=-878.96, y=-1368.10, z=43.52},

        },
        blipsprite = 2107754879,
        showblip = false,
		Name = 'Blackwater Tobacconist',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 31,
        containername = "Humidor",
        billing = false,
        webhook = "",
        salary = true,

    },

    gambler = {	   
        Pos = { 
            {x=2739.24, y=-1209.47, z=49.75},
    
        }, 
        jobmenu = { 
            {x=2739.24, y=-1209.47, z=49.75},

        },
        blipsprite = 2107754879,
        showblip = false,
		Name = 'Gentlemans Club',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 32,
        containername = "Club Stash",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ sdstable = {	   
        Pos = { 
            {x=2508.45, y=-1462.81, z=46.41},
    
        }, 
        jobmenu = { 
            {x=2508.45, y=-1462.81, z=46.41},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Lone Star Stables',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 33,
        containername = "Stable Inv.",
        billing = true,
        webhook = "",
        salary = false,

    },

    caligasmith = {	   
        Pos = { 
            {x=1881.37, y=-1343.81, z=42.50},
    
        }, 
        jobmenu = { 
            {x=1881.37, y=-1343.81, z=42.50},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Regis Rod',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 34,
        containername = "Shop Inv.",
        billing = true,
        webhook = "",
        salary = false,

    },

    annesburgguns = {	   
        Pos = { 
            {x=2950.50, y=1321.64, z=44.82},
    
        }, 
        jobmenu = { 
            {x=2950.50, y=1321.64, z=44.82},

        },
        blipsprite = 202506373,
        showblip = false,
		Name = 'Annesburg Gunsmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 35,
        containername = "Shop Inv.",
        billing = false,
        webhook = "",
        salary = false,

    }, ]]

    lumberjack = {	   
        Pos = { 
            {x=-1822.31, y=-431.56, z=159.88},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-1822.31, y=-431.56, z=159.88},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = false,
		Name = 'Hardwood Lumberjacks',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 217,
        containername = "Lumberjack Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ emeraldsmith = {	   
        Pos = { 
            {x=1418.15, y=381.76, z=90.33},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1418.15, y=381.76, z=90.33},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Emerald Blacksmiths',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 37,
        containername = "Smith Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

--[[     campingsite = {	   
        Pos = { 
            {x=-128.45, y=-32.38, z=96.12},
    
        }, 
        jobmenu = { 
            {x=-138.92, y=-20.99, z=96.04},

        },
        blipsprite = 1754365229,
        showblip = true,
		Name = 'Horseshoe Overlook Campsite',
        recruitmentrank = 0,
        bossrank = 0,
        containerid = 38,
        containername = "Chuckwagon Storage",
        billing = false,
        webhook = "",
        salary = false,

    }, ]]

    photographer  = {	   
        Pos = { 
            {x=2733.9, y=-1120.15, z=49.13},
            {x=-813.31, y=-1374.58, z=44.21},
    
        }, 
        jobmenu = { 
            {x=2735.96, y=-1116.97, z=49.11},
            {x=-810.52, y=-1372.28, z=44.02},

        },
        blipsprite = 1364029453,
        showblip = true,
		Name = 'Photography Studio',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 39,
        containername = "Dark Room",
        billing = false,
        webhook = "",
        salary = true,

    },

    wellnesscentre = {	   
        Pos = { 
            {x=2375.42, y=-1216.28, z=47.16},
    
        }, 
        jobmenu = { 
            {x=2375.42, y=-1216.28, z=47.16},

        },
        blipsprite = 1865251988,
        showblip = true,
		Name = 'Bronte Memorial Sanitorium',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 40,
        containername = "Medicine Cabinet",
        billing = true,
        webhook = "",
        salary = false,

    },

    --[[ omenbounty = {	   
        Pos = { 
            {x=-1401.48, y=-2331.04, z=43.08},
    
        }, 
        jobmenu = { 
            {x=-1401.48, y=-2331.04, z=43.08},

        },
        blipsprite = 1322310532,
        showblip = true,
		Name = 'Omen Bounty Hunters',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 41,
        containername = "Guild Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ valsaloon = {	   
        Pos = { 
            {x=-314.85, y=808.76, z=118.97},
    
        }, 
        jobmenu = { 
            {x=-314.85, y=808.76, z=118.97},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'Valentine Saloon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 42,
        containername = "Bar Safe",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]
 

    --[[ tbd = {	   
        Pos = { 
            {x=2886.22, y=1359.36, z=62.72},
    
        }, 
        jobmenu = { 
            {x=2886.22, y=1359.36, z=62.72},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Iron River Metal Works',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 43,
        containername = "Smith Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ pinkerton = {	   
        Pos = { 
            {x=2696.31, y=-1186.27, z=56.09},
    
        }, 
        jobmenu = { 
            {x=2696.31, y=-1186.27, z=56.09},

        },
        blipsprite = 1322310532,
        showblip = true,
		Name = 'Pinkertons',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 44,
        containername = "Guild Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ rustyscrew = {	   
        Pos = { 
            {x=2793.26, y=-1165.62, z=47.93},
    
        }, 
        jobmenu = { 
            {x=2793.26, y=-1165.62, z=47.93},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'The Rusty Screw Saloon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 45,
        containername = "Saloon Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ armadillosaloon = {	   
        Pos = { 
            {x=-3697.94, y=-2601.28, z=-13.31},
    
        }, 
        jobmenu = { 
            {x=-3697.94, y=-2601.28, z=-13.31},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'Los Diablos Cantina',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 46,
        containername = "Saloon Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ aceseightsstable = {	   
        Pos = { 
            {x=-363.55, y=791.46, z=116.18},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-363.55, y=791.46, z=116.18},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -963916715,
        showblip = true,
		Name = 'Aces and Eights Stable',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 47,
        containername = "Trainer Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ armadillostable = {	   
        Pos = { 
            {x=-3700.64, y=-2574.85, z=-13.69},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-3700.64, y=-2574.51, z=-13.69},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -963916715,
        showblip = true,
		Name = 'Los Diablos Stable',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 48,
        containername = "Trainer Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ caligastable = {	   
        Pos = { 
            {x=1867.35, y=-1350.65, z=42.72},
    
        }, 
        jobmenu = { 
            {x=1867.35, y=-1350.65, z=42.72},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'McKinnie Stables',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 49,
        containername = "Stable Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ armadillostore = {	   
        Pos = { 
            {x=-3689.39, y=-2626.78, z=-13.41},

    
        }, 
        jobmenu = { 
            {x=-3689.39, y=-2626.78, z=-13.41},

        },
        blipsprite = -1954662204,
		Name = 'General Ming Loungs Store',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 50,
        showblip = true,
        containername = "General Store Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    undertaker = {	   
        Pos = { 
            {x=1306.05, y=-1314.86, z=77.04},
            {x=-3651.48, y=-2593.70, z=-13.16},
        }, 
        jobmenu = { 
            {x=1306.05, y=-1314.86, z=77.04},
            {x=-3652.04, y=-2599.95, z=-13.16},

        },
        blipsprite = 1862205446,
		Name = 'Undertaker',
        recruitmentrank = 1,
        bossrank = 1,
        containerid = 218,
        showblip = true,
        containername = "Undertaker Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ rhodessaloon = {	   
        Pos = { 
            {x=1336.95, y=-1371.86, z=80.49},
    
        }, 
        jobmenu = { 
            {x=1336.95, y=-1371.86, z=80.49},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'Madame Bonnie’s Saloon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 52,
        containername = "Saloon Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    blackjack = {	   
        Pos = { 
            {x=1337.92, y=-1371.81, z=83.24},
            {x=-813.49, y=-1322.56, z=48.83},
            {x=2937.21, y=519.94, z=45.28},
    
        }, 
        jobmenu = { 
            {x=0.0, y=0.0, z=0.0},

        },
        blipsprite = 595820042,
        showblip = true,
		Name = 'Blackjack Tables',
        recruitmentrank = 0,
        bossrank = 0,
        containerid = 53,
        containername = "Casino Safe",
        billing = false,
        webhook = "",
        salary = false,

    },

    fence = {	   
        Pos = { 
            {x=2861.53, y=-1203.73, z=49.58},
    
        }, 
        jobmenu = { 
            {x=2861.53, y=-1203.73, z=49.58},

        },
        blipsprite = -1179229323,
        showblip = false,
		Name = 'The Fence',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 54,
        containername = "Fence Safe",
        billing = false,
        webhook = "",
        salary = false,

    },

    --[[ armatrain = {	   
        Pos = { 
            {x=-3730.26, y=-2597.65, z=-12.88},
    
        }, 
        jobmenu = { 
            {x=-3730.26, y=-2597.65, z=-12.88},

        },
        blipsprite = 778811758,
        showblip = false,
		Name = 'Armadillo Train Company',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 55,
        containername = "Val Train Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    sdchurch = {	   
        Pos = { 
            {x=2751.54, y=-1271.15, z=8.95},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=2751.54, y=-1271.15, z=8.95},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 350569997,
        showblip = true,
		Name = 'Saint Denis Church of the Holy Blessed Virgin',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 56,
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ bwgunsmith = {	   
        Pos = { 
            {x=-846.63, y=-1201.88, z=44.09},
    
        }, 
        jobmenu = { 
            {x=-846.63, y=-1201.88, z=44.09},

        },
        blipsprite = -145868367,
        showblip = true,
		Name = 'Blackwater Gunsmith',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 57,
        containername = "Gun Safe",
        billing = false,
        webhook = "",
        salary = false,

    }, ]]

    -- armadillogeneral = {	   
    --     Pos = { 
    --         {x=-3689.39, y=-2626.78, z=-13.41},

    
    --     }, 
    --     jobmenu = { 
    --         {x=-3689.39, y=-2626.78, z=-13.41},

    --     },
    --     blipsprite = 1475879922,
	-- 	Name = 'Sons General Store',
    --     recruitmentrank = 2,
    --     bossrank = 2,
    --     containerid = 58,
    --     showblip = true,
    --     containername = "General Store Inv.",
    --     billing = true,
    --     webhook = "",
    --     salary = true,

    -- },
    cook = {	   
        Pos = { 
            {x=-816.64, y=-1358.35, z=44.8},
    
        }, 
        jobmenu = { 
            {x=-819.46, y=-1357.6, z=23.85},

        },
        blipsprite = 935247438,
        showblip = true,
		Name = 'Blackwater Restaurant',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 627,
        containername = "Pantry",
        billing = false,
        webhook = "",
        salary = true,

    },

    hotellalicorne = {	   
        Pos = { 
            {x=2621.35, y=-1007.65, z=44.29},
    
        }, 
        jobmenu = { 
            {x=2615.71, y=-1017.48, z=44.29},

        },
        blipsprite = 935247438,
        showblip = true,
		Name = 'Hotel La Licorne',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 59,
        containername = "Larder",
        billing = true,
        webhook = "",
        salary = true,

    },

    --[[ sportsmansaloon = {	   
        Pos = { 
            {x=-314.68, y=808.54, z=118.97},
    
        }, 
        jobmenu = { 
            {x=-314.68, y=808.54, z=118.97},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'Sportsman Saloon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 60,
        containername = "Saloon Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ octavioelixirs = {	   
        Pos = { 
            {x=-1144.76, y=-1783.50, z=61.00},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-1144.76, y=-1783.50, z=61.00},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -592068833,
        showblip = false,
		Name = 'octavio elixirs',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 61,
        containername = "Lockbox",
        billing = true,
        webhook = "",
        salary = true,

    },

    annesburggunsmith = {	   
        Pos = { 
            {x=2950.50, y=1321.64, z=44.82},
    
        }, 
        jobmenu = { 
            {x=2950.50, y=1321.64, z=44.82},

        },
        blipsprite = -145868367,
        showblip = true,
		Name = 'Annesburg Gunsmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 62,
        containername = "Gun Safe",
        billing = true,
        webhook = "",
        salary = false,

    },

    frontierarms = {	   
        Pos = { 
            {x=-3671.72, y=-2601.27, z=-13.13},
    
        }, 
        jobmenu = { 
            {x=-3671.72, y=-2601.27, z=-13.13},

        },
        blipsprite = -145868367,
        showblip = true,
		Name = 'Armadillo Gunsmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 63,
        containername = "Gun Safe",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    news = {	   
        Pos = { 
            {x=2615.42, y=-1346.56, z=50.19},
    
        }, 
        jobmenu = { 
            {x=2717.99, y=-1311.83, z=30.77},
        },
        blipsprite = 587827268,
        showblip = true,
		Name = 'Saint Denis Times Tribune',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 64,
        containername = "Business Safe",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ queenheartstable = {	   
        Pos = { 
            {x=-1826.68, y=-554.67, z=156.09},
    
        }, 
        jobmenu = { 
            {x=-1826.68, y=-554.67, z=156.09},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Queen of Hearts Stables',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 65,
        containername = "Stable Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ valblacksmith = {	   
        Pos = { 
            {x=-365.21, y=795.86, z=116.22},
    
        }, 
        jobmenu = { 
            {x=-365.21, y=795.86, z=116.22},

        },
        blipsprite = 2107754879,
        showblip = false,
		Name = 'Diamondworks Blacksmithing',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 66,
        containername = "Blacksmith Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ bellestable = {	   
        Pos = { 
            {x=2967.33, y=792.43, z=51.40},
    
        }, 
        jobmenu = { 
            {x=2967.33, y=792.43, z=51.40},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Belle Stable',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 67,
        containername = "Stable Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ thejug = {	   
        Pos = { 
            {x=2950.34, y=529.17, z=45.33},
    
        }, 
        jobmenu = { 
            {x=2950.34, y=529.17, z=45.33},

        },
        blipsprite = -392465725,
        showblip = true,
		Name = 'The Jug',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 68,
        containername = "Saloon Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ valleysmith = {	   
        Pos = { 
            {x=-2593.77, y=414.04, z=148.90},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-2593.77, y=414.04, z=148.90},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Valley Blacksmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 69,
        containername = "Smith Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },

    strwgunsmith = {	   
        Pos = { 
            {x=-1764.65, y=-377.06, z=157.74},
    
        }, 
        jobmenu = { 
            {x=-1764.65, y=-377.06, z=157.74},

        },
        blipsprite = -145868367,
        showblip = false,
		Name = 'Strawberry Gunsmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 70,
        containername = "Gun Safe",
        billing = false,
        webhook = "",
        salary = false,

    }, ]]

    valchurch = {	   
        Pos = { 
            {x=-226.03, y=805.4, z=125.03},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-226.03, y=805.4, z=125.03},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 350569997,
        showblip = true,
		Name = 'Valentine Church',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 71,
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,

    },

    bwchurch = {	   
        Pos = { 
            {x=-974.53, y=-1189.22, z=64.02},
    
        }, 
        jobmenu = { 
            {x=-974.53, y=-1189.22, z=64.02},
        },
        blipsprite = 350569997,
        showblip = true,
		Name = 'Blackwater Church of the Holy Ascension',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 72,
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ sdlumberjack = {	   
        Pos = { 
            {x=1122.23, y=-1292.04, z=65.62},
    
        }, 
        jobmenu = { 
            {x=1122.23, y=-1292.04, z=65.62},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Lumberjacks',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 73,
        containername = "Lumberjack Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ annesblacksmith = {	   
        Pos = { 
            {x=2886.22, y=1359.36, z=62.72},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=2886.22, y=1359.36, z=62.72},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'The Sons Blacksmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 74,
        containername = "Smith Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ armablacksmith = {	   
        Pos = { 
            {x=-3695.79, y=-2559.84, z=-13.47},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-3695.79, y=-2559.84, z=-13.47},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
		Name = 'Los Diablos Blacksmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 75,
        showblip = true,
        containername = "General Store Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ megaminingco = {	   
        Pos = { 
            {x=1322.83, y=-1291.51, z=77.07},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1322.83, y=-1291.51, z=77.07},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -243818172,
		Name = 'Kanes Material Supply',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 76,
        showblip = true,
        containername = "Shop Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ twminingco = {	   
        Pos = { 
            {x=-6015.36, y=-3244.66, z=-21.14},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-6015.36, y=-3244.66, z=-21.14},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -758970771,
		Name = 'Stillwater Mining Co',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 77,
        showblip = true,
        containername = "Shop Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ laveyelixiries = {	   
        Pos = { 
            {x=2582.85, y=-1009.72, z=44.25},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=2582.85, y=-1009.72, z=44.25},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -2121688190,
        showblip = true,
		Name = 'LaVeys Elixiries',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 78,
        containername = "Lockbox",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ monroeelixirs  = {	   
        Pos = { 
            {x=-348.81, y=691.90, z=117.27},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-348.81, y=691.90, z=117.27},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -2121688190,
        showblip = false,
		Name = '',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 79,
        containername = "Lockbox",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ wapitishaman = {	   
        Pos = { 
            {x=443.37, y=2242.55, z=248.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, -- position of blip
        jobmenu = { 
            {x=443.37, y=2242.55, z=248.38},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, -- position of job menu
        blipsprite = 1202244626, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Koda Tribe', -- name of blip
        recruitmentrank = 2,
        bossrank = 2, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 80, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Shaman Inv.", -- the name displayed when the container is open
        billing = true, -- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = false, -- (added line) enable/disable salary system.
    },]]

    --[[ blackhawkshaman = {	   
        Pos = { 
            {x=-1846.20, y=420.24, z=114.79},

    
        }, 
        jobmenu = { 
            {x=-1846.20, y=420.24, z=114.79},

    
        }, 
        blipsprite = 1202244626, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, 
		Name = 'Black Hawk Tribe', 
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 84,
        containername = "Shaman Inv.", 
        billing = true, 
        webhook = "", 
        salary = false,
    }, ]]

    --[[ undertakersd = {	   
        Pos = { 
            {x=2726.07, y=-1057.42, z=47.49},

    
        }, 
        jobmenu = { 
            {x=2726.07, y=-1057.42, z=47.49},

        },
        blipsprite = -963916715,
		Name = 'Undertaker',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 85,
        showblip = true,
        containername = "Undertaker Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ blackwatergeneral = {	   
        Pos = { 
            {x=-778.04, y=-1323.98, z=43.88},

    
        }, 
        jobmenu = { 
            {x=-778.04, y=-1323.98, z=43.88},

        },
        blipsprite = -963916715,
		Name = 'Fosters Tendon',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 86,
        showblip = true,
        containername = "Shop Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ bwlumberjack = {	   
        Pos = { 
            {x=-866.82, y=-1291.56, z=43.10},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-866.82, y=-1291.56, z=43.10},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 595820042,
        showblip = true,
		Name = 'Aces Trail Lumbermill',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 87,
        containername = "Lumberjack Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    
    --[[ rathskellerstable = {	   
        Pos = { 
            {x=-5196.20, y=-2153.75, z=11.98},
    
        }, 
        jobmenu = { 
            {x=-5196.20, y=-2153.75, z=11.98},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'The Sons Booking Agency',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 88,
        containername = "Stable Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]
    
    --[[ armadillolumber = {	   
        Pos = { 
            {x=-3610.65, y=-2606.38, z=-13.73},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-3610.65, y=-2606.38, z=-13.73},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Enrich Lumberjack',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 89,
        containername = "Lumberjack Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]
    
    fibblesfarms = {	   
        Pos = { 
            {x=1419.64, y=383.94, z=90.33},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1419.64, y=383.94, z=90.33},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 1664261990,
        showblip = false,
		Name = 'Fibbles Farm',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 90,
        containername = "Silo",
        billing = false,
        webhook = "",
        salary = false,

    },

    lapetitport = {	   
        Pos = { 
            {x=2440.46, y=-1391.66, z=45.37},
    
        }, 
        jobmenu = { 
            {x=2450.56, y=-1389.41, z=45.41},
        },
        blipsprite = 935247438,
		Name = 'Le Petit Port Restaurant',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 91,
        showblip = true,
        containername = "Larder",
        billing = true,
        webhook = "",
        salary = true,

    }, 

    --[[ blacksmokeshaman = {	   
        Pos = { 
            {x=-2603.87, y=-52.77, z=160.28},

    
        }, 
        jobmenu = { 
            {x=-2603.87, y=-52.77, z=160.28},

    
        }, 
        blipsprite = 1202244626, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, 
		Name = 'Black Smoke Tribe', 
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 94,
        containername = "Shaman Inv.", 
        billing = true, 
        webhook = "", 
        salary = false,
    }, ]]

    emanfarming = {	   
        Pos = { 
            {x=-877.81, y=-1643.13, z=69.17},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-877.81, y=-1643.13, z=69.17},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -818533067,
        showblip = false,
		Name = 'Eman Farms',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 95,
        containername = "Silo",
        billing = false,
        webhook = "",
        salary = false,

    },

--[[     macfarlaneblacksmith = {	   
        Pos = { 
            {x=-2397.24, y=-2379.82, z=61.19},
    
        }, 
        jobmenu = { 
            {x=-2395.99, y=-2383.98, z=61.19},
        },
        blipsprite = -758970771,
        showblip = false,
		Name = 'Smithy for Lease',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 105,
        containername = "Smith Inv.",
        billing = false,
        webhook = "",
        salary = true,

    }, ]]

    realestate = {	   
        Pos = { 
            {x=0.0, y=0.0, z=0.0},
    
        }, 
        jobmenu = { 
            {x=0.0, y=0.0, z=0.0},

        },
        blipsprite = -1498696713,
        showblip = false,
		Name = 'Real Estate',
        recruitmentrank = 0,
        bossrank = 0,
        containerid = 96,
        containername = "Real Estate Inv.",
        billing = false,
        webhook = "",
        salary = true,

    },

    --[[ banditos = {	   
        Pos = { 
            {x=-1500.37, y=1253.25, z=313.92},
    
        }, 
        jobmenu = { 
            {x=-1500.37, y=1253.25, z=313.92},

        },
        blipsprite = -392465725,
        showblip = false,
		Name = 'Los Banditos',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 98,
        containername = "Fence Safe",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ risingsun = {	   
        Pos = { 
            {x=2724.52, y=-1330.87, z=37.59},
    
        }, 
        jobmenu = { 
            {x=2724.52, y=-1330.87, z=37.59},

        },
        blipsprite = -392465725,
        showblip = false,
		Name = 'Rising Sun',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 100,
        containername = "Fence Safe",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ sundownfarms = {	   
        Pos = { 
            {x=1130.54, y=-989.96, z=68.78},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1130.54, y=-989.96, z=68.78},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -818533067,
        showblip = true,
		Name = 'Sundown Farms',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 103,
        containername = "Silo",
        billing = true,
        webhook = "",
        salary = true,

    }, 

    twgunsmith = {	   
        Pos = { 
            {x=-5505.40, y=-2967.05, z=-0.63},
    
        }, 
        jobmenu = { 
            {x=-5505.40, y=-2967.05, z=-0.63},

        },
        blipsprite = -145868367,
        showblip = false,
		Name = 'Tumbleweed Gunsmith',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 104,
        containername = "Gun Safe",
        billing = false,
        webhook = "",
        salary = false,

    },

    drbarber = {	   
        Pos = { 
            {x=2652.21, y=-1177.81, z=53.17},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=2652.21, y=-1177.81, z=53.17},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 455154152,
        showblip = true,
		Name = 'The Barbers',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 106,
        containername = "Barber Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ bubbablacksmith = {	   
        Pos = { 
            {x=-4846.64, y=-2663.04, z=-12.46},
    
        }, 
        jobmenu = { 
            {x=-4846.64, y=-2663.04, z=-12.46},

        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'BSB IronWorks',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 108,
        containername = "Blacksmith Inv.",
        billing = true,
        webhook = "",
        salary = false,

    }, ]]

    --[[ twsaloon = {	   
        Pos = { 
            {x=-5520.64, y=-2906.68, z=-1.75},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-5520.64, y=-2906.68, z=-1.75},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -392465725,
		Name = 'Waterin Trough',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 109,
        showblip = true,
        containername = "Bar Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    --[[ vallumber = {	   
        Pos = { 
            {x=-249.36, y=693.35, z=113.62},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=-249.36, y=693.35, z=113.62},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 2107754879,
        showblip = true,
		Name = 'Black Family Lumber Co.',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 110,
        containername = "Lumberjack Inv.",
        billing = true,
        webhook = "",
        salary = true,

    }, ]]

    rhodeschurch = {	   
        Pos = { 
            {x=1288.99, y=-1224.61, z=81.6},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=1285.19, y=-1219.75, z=82.75},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = 350569997,
        showblip = true,
		Name = 'First Church of Rhodes',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 111,
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,

    },

    twchurch = {	   
        Pos = { 
            {x=-5434.3, y=-2920.77, z=0.94},
        }, -- position of blip
        jobmenu = { 
            {x=-5434.3, y=-2920.77, z=0.94},
        }, -- position of job menu
        blipsprite = 350569997,
        showblip = true, 
		Name = 'First Congregational Church of Tumbleweed',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 112, 
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,
    },

    armachurch = {	   
        Pos = { 
            {x=-3325.03, y=-2856.78, z=-6.09},
        }, 
        jobmenu = { 
            {x=-3325.03, y=-2856.78, z=-6.09},
        },
        blipsprite = 350569997,
        showblip = true,
		Name = 'Coot\'s Chapel',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 113,
        containername = "Church Lockbox",
        billing = false,
        webhook = "",
        salary = true,

    },

--[[     vanhornimports = {	   
        Pos = { 
            {x=3022.58, y=559.44, z=44.72},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
    
        }, 
        jobmenu = { 
            {x=3022.58, y=559.44, z=44.72},
            --{x=-279.21, y=809.9, z=119.3},
            --{x=-279.21, y=809.9, z=119.3},
        },
        blipsprite = -243818172,
		Name = 'Idle Hands Liquor Imports',
        recruitmentrank = 2,
        bossrank = 2,
        containerid = 114,
        showblip = false,
        containername = "Shop Inv.",
        billing = false,
        webhook = "",
        salary = true,

    }, ]]

    blacksmith = {	   
        Pos = { 
            {x=1328.32, y=-1322.23, z=77.89},
            {x=-869.98, y=-1389.89, z=43.52},
            {x=-365.31, y=796.95, z=116.23},
    
        }, 
        jobmenu = { 
            {x=1320.88, y=-1325.77, z=77.89},
            {x=-867.03, y=-1387.52, z=43.53},
            {x=-371.02, y=800.24, z=116.14},
            {x=2512.30, y=-1453.48, z=46.31},
            {x=-866.76, y=-1385.61, z=43.55},

        },
        blipsprite = -758970771,
        showblip = false,
		Name = 'Smit Smithing Co.',
        recruitmentrank = 0,
        bossrank = 2,
        containerid = 19,
        containername = "Blacksmith Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },

}
-------------------
Config.alerts = { 
    police = { -- job name
        command = "alertpolice",
        jobs = {"police"}, -- jobs the alert is sent to
        msg = "police help needed. check map for coords", -- alert sent to the players with the job name 
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Police Alert',
        }
    },
    undertaker = {
        command = "alertundertaker",
        jobs = {"undertaker"},
        msg = "undertaker help needed. check map for coords",
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Undertaker Alert',
        }
    },
    doctor = {
        command = "alertdoctor",
        jobs = {"doctor"},
        msg = "doctor help needed. check map for coords",
        isdoctor = true,
        blip = {
            blipsprite = 2119977580,
            Name = 'Medic Alert',
        }
    },
    train = {
        command = "alerttrain",
        jobs = {"armatrain","valtrain"},
        msg = "passangers are requesting a train ride. check map for coords",
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Train Alert',
        }
    },
    barber = {
        command = "alertbarber",
        jobs = {"drbarber"},
        msg = "Barber help needed. check map for coords",
        isdoctor = true,
        blip = {
            blipsprite = 2119977580,
            Name = 'Barber Alert',
        }
    },
}

Config.medicresponse = "resp"
Config.cancelblipcommand = "calert" -- removes alert blips
Config.alertcooldown = 60 -- seconds
Config.viewonduty = "viewduty" -- allows admins or job boss rank to viw who is on duty. for boss rank players its just /viewduty, for admins its /viewduty jobname
Config.ondutycommand = "onduty"
Config.offdutycommad = "offduty"
Config.checkduty = "checkduty"
Config.nosalaryoffduty = true -- dont pay salary to off duty players for the jobs listed below 
Config.dutyjobs = {"government"} -- not sure if this can be empty or not so just added a known job that doesn't matter. 

----------------
Config.Language = {
    SelectedJob = "You have selected the job :", 
    changingroom = "Changing Room",
    manageemployees = "Manage Employees",
    jobmenu = "Job Menu",
    nooutfits = "No saved outfits",
    outfits = "Outfits",
    yourjobis = "your job title is : ",
    hire = "Hire",
    fire = "Fire",
    setsalary = "Set Salary",
    setrank = "Set Rank",
    cantfire = "Cannot Fire Yourself",
    canthire = "Cannot Hire Yourself",
    youhired = "You Hired ",
    youfired = "You Fired ",
    hired = "You Were Hired as ",
    fired = "You Were Fired From ",
    changerank = "You Changed The Job Rank of ",
    rankchanged = "your Job Rank Was Changed To ",
    cantchangerank = "You Cannot Change Your Own Rank",
    highestrank = "You Cannot Rank Above Or Equal To The Highest Rank, Rank: ",
    Torank = " To Rank: ",
    listrank = " // Rank: ",
    confirm = "Confirm",
    playerid = "Player ID",
    rank = "Rank",
    salarys = "Salary",
    salary = "You Received A Salary Payment of: ",
    maxsalary = "Cannot exceed max salary of : ",
    salaryupdated = "You Updated The Salary Of Rank ",
    to = " To ",
    from = " From ",
    noledgercash = "Your Society Ledger Does Not Have Enough Cash To Pay Salary",
    ledger = "Ledger",
    ledgercash = "Job Ledger Cash: ",
    depositcash = "Deposit Cash",
    withdrawcash = "Withdraw Cash",
    deposited = "You Deposited : ",
    invalidamount = "Invalid Amount",
    withdrew = "You Withdrew : ",
    inventory = "Inventory",
    qt = "Invalid quantity",
    carry = "You cannot carry more items",
    limit = "You reached the limit for this item",
    someoneisclose = "Someone is too close to you",
    noplayer = "No Person Nearby",
    finesent = "You Sent A Fine Amount Of $",
    finerecieve = "You Received A Fine Amount Of $",
    bills = "Your Bills:",
    billpaid = "You Paid A Bill Amount Of: ",
    takena = " Has Taken A ",
    taken = " Has Taken ",
    put = " Deposited ",
    issuedbill = " Issued A Bill Amount Of ",
    paidbill = " Paid A Bill Amount Of",
    withdrews = " Withdrew An Amount Of ",
    deposits = " Deposited An Amount Of ",
    billss = "Bills:",
    viewbills = "View Bills",
    drawtextjobmenu = "Press G For Job Menu", 
    drawtextjobcenter = "Press G For Job Center", 
    nocash1 = "You Do Not Have Enough Money", 
    maxslots = "Cannot store more items, slot limit is ", -- newline	
    dothis = "~e~do /",
    toremovenoti = " to remove notifications",
    needsyourhelp = "someone needs your help, check your map for a blip do ~e~(/",
    needsyourhelp2 = "~e~someone needs your help, check your map for a blip",
    torespond = ")~q~ to respond", 
    alertsent = 'An alert has been sent',
    alertcooldown = 'Alert on cooldown',
    docontheway = "~e~Doctor is on the way",
    nodoc = "~e~ No Doctors Available",
    youonduty = "~e~ You Are on Duty",
    youoffduty = "~e~ You Are off Duty",
    duty = " On Duty",
    serverid = "Server ID: "

}
