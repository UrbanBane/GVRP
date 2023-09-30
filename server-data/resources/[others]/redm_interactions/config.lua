Config = {}

-- Control to start/stop interactions. Comment this out to disable the control.
Config.InteractControl = 0x4CC0E2FE -- 2

-- Interaction picker menu controls
Config.MenuUpControl = `INPUT_GAME_MENU_UP`
Config.MenuDownControl = `INPUT_GAME_MENU_DOWN`
Config.MenuAcceptControl = `INPUT_GAME_MENU_ACCEPT`
Config.MenuCancelControl = `INPUT_GAME_MENU_CANCEL`

-- Settings for the marker that appears on the currently selected object
Config.MarkerType = 0x26E9DC00
Config.MarkerColor = {254, 127, 156, 128}

-- Effects that may be applied when interacting with objects
Config.Effects = {
	["clean"] = function()
		local ped = PlayerPedId()
		ClearPedEnvDirt(ped)
		ClearPedDamageDecalByZone(ped, 10, "ALL")
		ClearPedBloodDamage(ped)
	end
}

-- List of interactable types of objects.
Config.Interactions = {
	-- Pianos
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_piano03x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_piano02x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_nbxpiano01x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = -0.1,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_nbmpiano01x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.77,
		z = 0.5,
		heading = 0.0
	},
	{
		objects = {"sha_man_piano01"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = -0.05,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},

	---------------- CHAIRS ----------------
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		x = 0.0,
		y = 0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericBenches,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		label = "left",
		x = 0.4,
		y = -0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericBenches,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		label = "right",
		x = -0.4,
		y = -0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsMale,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_BENCH_HARMONICA"}
		},
		x = 0.0,
		y = -0.3,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdultFemale,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_FAN"}
		},
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 240.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {"p_chairrusticsav01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = -0.1,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {"p_chairtall01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {"p_chair27x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_barstool01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"mp005_s_posse_trad_chair01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = -0.35,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsChild,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.4,
		heading = 180.0
	},
		---------------- BENCHES ----------------
	{
		isCompatible = PlayerPedIsHuman,
		objects = GenericBenches,
		label = "right",
		radius = 2.0,
		scenarios = GenericChairAndBenchScenarios,
		x = -0.5,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = GenericBenches,
		label = "left",
		radius = 2.0,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.5,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = GenericBenches,
		label = "middle",
		radius = 2.0,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {
			"p_bench17x",
			"p_benchbear01x"
		},
		label = "right",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = -0.3,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bench17x",
			"p_benchbear01x"
		},
		label = "left",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.3,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		label = "left",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.5,
		y = 0.0,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		label = "right",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = -0.5,
		y = 0.0,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		label = "middle",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 0.0
		},

	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		radius = 1.5,
		label = "right",
		scenarios = {
			{name = "MP_LOBBY_SEATED_D"}
		},
		x = -0.5,
		y = -0.17,
		z = 0.41,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		radius = 1.5,
		label = "left",
		scenarios = {
			{name = "MP_LOBBY_SEATED_D"}
		},
		x = 0.5,
		y = -0.17,
		z = 0.41,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {
			"p_bench09x",
			"p_bench03x"
		},
		radius = 1.5,
		label = "middle",
		scenarios = {
			{name = "MP_LOBBY_SEATED_D"}
		},
		x = 0.0,
		y = -0.17,
		z = 0.41,
		heading = 0.0
	},
		---------------- BEDS ----------------
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x",
			"p_bed21x",
			"p_singlebrassbed01x",
			"s_bedarthur01x",
			"s_caravancot01x"
		},
		label = "middle",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.05,
		z = 0.55,
		heading = 180.0
	},
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x",
			"p_bed21x",
			"p_singlebrassbed01x",
			"s_bedarthur01x",
			"s_caravancot01x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.2,
		y = -0.05,
		z = 0.55,
		heading = 180.0
	},
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x",
			"p_bed21x",
			"p_singlebrassbed01x",
			"s_bedarthur01x",
			"s_caravancot01x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.2,
		y = -0.05,
		z = 0.55,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_ambbed01x",
			"p_bed03x",
			"p_bed09x",
			"p_bedindian01x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			"p_bed05x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed12x",
			"p_bed22x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.3,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed13x",
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.3,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed13x",
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.3,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed10x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.4,
		z = 0.85,
		heading = 180.0
	},
	{
		objects = {
			"p_bed10x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.4,
		z = 0.85,
		heading = 180.0
	},
	{
		objects = {
			"p_bedking01x",
			"p_bedking02x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bedking01x",
			"p_bedking02x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress04x",
			"p_mattress03x",
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.25,
		y = -0.1,
		z = 0.3,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress04x",
			"p_mattress03x",
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.25,
		y = -0.1,
		z = 0.3,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress04x",
			"p_mattress03x",
		},
		label = "middle",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.1,
		z = 0.3,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress07x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.05,
		z = 0.15,
		heading = 180.0
	},
	{
		objects = {
			"p_amb_mattress04x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.25,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_amb_mattress04x"

		},
		label = "middle",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_amb_mattress04x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.25,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress08x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.25,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress08x"
		},
		label = "middle",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_mattress08x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.25,
		y = 0.0,
		z = 0.19,
		heading = 180.0
	},
	{
		objects = {
			"p_bedrollopen01x",
			"p_bedrollopen03x",
			"p_re_bedrollopen01x",
			"s_bedrollfurlined01x",
			"s_bedrollopen01x",
			"p_mattresscombined01x"
		},
		radius = 1.5,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.0,
		heading = 180.0
	},
	{
		objects = {
			"p_cs_ann_wrkr_bed01x",
			"p_cs_roc_hse_bed",
			"p_medbed01x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.1,
		y = 0.0,
		z = 0.85,
		heading = 270.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.3,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = 0.3,
		z = 0.5,
		heading = 270.0
	},
	--[[ {
		isCompatible = PlayerPedIsHuman,
		objects = TheaterSeats,
		label = "right",
		radius = 2.0,
		scenarios = TheaterSeatScenarios,
		x = -0.5,
		y = 0.0,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = TheaterSeats,
		label = "left",
		radius = 2.0,
		scenarios = TheaterSeatScenarios,
		x = 0.5,
		y = 0.0,
		z = 0.5,
		heading = 0.0
	}, ]] -- Commented out until can ascertain relative coords

	-- Valentine bath
	
}
