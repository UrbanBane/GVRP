Config = {}

Config.PickPromptKey = 0xD9D0E1C0 -- Key to press for prompt
Config.CancelPickKey = 0x3B24C470 -- Key to Cancel Picking
Config.PickBushKey = 0x07B8BEAF -- Key To Pick Bush

Config.MinPicks = 1
Config.MaxPicks = 3


----- lower number is harder
Config.minDifficulty = 4000
Config.maxDifficulty = 2700
---------------------------

Config.Items = {
    {name = "consumable_herb_chanterelles", label = "Chanterelles", chance = 20, amount = math.random(1,2)},
	{name = "consumable_herb_evergreen_huckleberry", label = "Evergreen Huckleberries", chance = 70, amount = math.random(1,3)},
	{name = "consumable_herb_oregano", label = "Oregano", chance = 40, amount = math.random(1,2)},
    {name = "consumable_herb_vanilla_flower", label = "Vanilla Flower", chance = 50, amount = math.random(1,2)},
	{name = "consumable_herb_wintergreen_berry", label = "Wintergreen Berries", chance = 70, amount = math.random(1,3)},
    {name = "Red_Raspberry", label = "Red Raspberries", chance = 60, amount = math.random(1,3)},
    {name = "Black_Berry", label = "Black Berries", chance = 65, amount = math.random(1,3)},
    {name = "strawberry", label = "Strawberries", chance = 75, amount = math.random(1,3)},
	{name = "consumable_peach", label = "Peaches", chance = 30, amount = math.random(1,2)},
	{name = "consumable_pear", label = "Pears", chance = 50, amount = math.random(1,2)},
	{name = "apple", label = "Apples", chance = 50, amount = math.random(1,2)},
	{name = "blueberry", label = "Blueberries", chance = 80, amount = math.random(1,3)},
	{name = "tobacco", label = "Tobacco", chance = 50, amount = math.random(1,2)},
    {name = "potato", label = "a Potato", chance = 10, amount = 1},
	{name = "dandyflwr", label = "a Dandy flower", chance = 20, amount = math.random(1,3)},
	{name = "lupinflwr", label = "a Lupin flower", chance = 20, amount = math.random(1,3)},
	{name = "milkweedflwr", label = "a Milkweed flower", chance = 20, amount = math.random(1,3)},
	{name = "poppyflwr", label = "a Poppy flower", chance = 30, amount = math.random(1,3)},
    {name = "fibers", label = "some Fibers", chance = 60, amount = math.random(3,5)},
}

Config.Bushes = {
    "rdr_bush_neat_aa_sim",
    "rdr_bush_neat_ac_sim",
    "rdr_bush_neat_ad_sim",
    "rdr_bush_neat_ae_sim",
    "rdr_bush_neat_ba_sim",
    "rdr_bush_neat_bb_sim",
    "rdr_bush_neat_bc_sim",
    "rdr_bush_ficus_aa_sim",
    "rdr_bush_sumac_aa_sim",
    "p_tree_orange_01",
    "p_tree_apple_01",
    "p_tree_maple_s_04",
    "p_tree_maple_s_03",
    "s_inv_huckleberry01x",
    "s_inv_raspberry01x",
    "s_inv_blackberry01x",
    "s_inv_chanterelles",
    "s_inv_oregano01dx",
    "rdr_bush_leafy_aa_sim",
    "s_indiantobaccopicked01",
    "rdr_bush_lrg_aa_sim",
    "rdr_bush_ficus_aa_sim",
    "rdr2_bush_americanboxwood",
    "rdr2_bush_bigberrymanzanita",
    "rdr2_bush_catclaw",
    "rdr2_bush_creosotebush",
    "rdr2_bush_creosotebush_2",
    "rdr2_bush_desertbroom",
    "rdr2_bush_desertbroom_2",
    "rdr2_bush_sagebrush",
    "rdr2_bush_snakeweed",
    "rdr2_bush_snakeweedflower",
    "rdr2_bush_snakeweedflower2",
    "rdr2_bush_snakeweedflower",
    "rdr_bush_bram_aa_sim",
    "rdr_bush_bram_aa_sim",
    "rdr_bush_dry_thin_ba_sim",
    "rdr_bush_junip_aa_sim",
    "rdr_bush_junip_ab_sim",
    "rdr_bush_junip_ac_sim",
    "rdr_bush_junip_aa_sim",
    "rdr_bush_scrub_aa_sim",
    "rdr_bush_thick_aa_sim",
    "prop_bush_gorse",
    "prop_bush_gorse_dark",
    "prop_bush_gorse_dry",
    "prop_bush_gorse_lush",
    "rdr_bush_leafy_aa_sim",
    "rdr_bush_mang_la_aa_sim",
    "rdr_tree_rata01",
    "rdr_tree_rata02",
    "rdr_tree_utahjuniper"
}