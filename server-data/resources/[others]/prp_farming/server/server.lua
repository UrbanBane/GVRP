VORP = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()
	Citizen.Wait(2000)

	VORP.RegisterUsableItem("tobaccoseed", function(data)
        VORP.subItem(data.source, "tobaccoseed", 1)
        local item = "tobaccoseed"
        TriggerClientEvent('poke_planting:planto1', data.source, "CRP_TOBACCOPLANT_AA_SIM", "CRP_TOBACCOPLANT_AB_SIM", "CRP_TOBACCOPLANT_AC_SIM", item)
    end)

	VORP.RegisterUsableItem("sugarcaneseed", function(data)
		VORP.subItem(data.source, "sugarcaneseed", 1)
		local item = "sugarcaneseed"
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_SUGARCANE_AA_SIM", "CRP_SUGARCANE_AB_SIM", "CRP_SUGARCANE_AC_SIM", item)
		
	end)
	
	VORP.RegisterUsableItem("cornseed", function(data)
		VORP.subItem(data.source, "cornseed", 1)
		local item = "cornseed"
		TriggerClientEvent('poke_planting:planto1', data.source, "CRP_CORNSTALKS_CB_SIM", "CRP_CORNSTALKS_CA_SIM", "CRP_CORNSTALKS_AA_SIM", item)
		
	end)
	
	VORP.RegisterUsableItem("dixonappleseed", function(data)
			VORP.subItem(data.source, "dixonappleseed", 1)
			local item = "dixonappleseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "p_tree_magnolia_01", "p_tree_magnolia_02", "p_tree_magnolia_02_MD", item)
	end)
	
	VORP.RegisterUsableItem("bananaseed", function(data)
			VORP.subItem(data.source, "bananaseed", 1)
			local item = "bananaseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "p_tree_banana_01_crt", "p_tree_banana_01_MD_crt", "p_tree_banana_01_MD_crt", item)
		
    end)

	VORP.RegisterUsableItem("cottonseed", function(data)
			VORP.subItem(data.source, "cottonseed", 1)
			local item = "cottonseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "CRP_COTTON_AD_SIM", "CRP_COTTON_BA_SIM", "CRP_COTTON_BB_SIM", item)
		
	end)

	VORP.RegisterUsableItem("ginsengseed", function(data)
			VORP.subItem(data.source, "ginsengseed", 1)
			local item = "ginsengseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "CRP_GINSENG_AA_SIM", "CRP_GINSENG_AA_SIM", "CRP_GINSENG_AA_SIM", item)
		
	end)

	VORP.RegisterUsableItem("potato", function(data)
			VORP.subItem(data.source, "potato", 1)
			local item = "potato"
			TriggerClientEvent('poke_planting:planto1', data.source, "crp_potato_har_aa_sim", "crp_potato_sap_aa_sim", "crp_potato_aa_sim", item)
		
	end)

	VORP.RegisterUsableItem("tomatoplant", function(data)
			VORP.subItem(data.source, "tomatoplant", 1)
			local item = "tomatoplant"
			TriggerClientEvent('poke_planting:planto1', data.source, "crp_tomatoes_aa_sim", "crp_tomatoes_har_aa_sim", "crp_tomatoes_sap_aa_sim", item)
		
	end)

	VORP.RegisterUsableItem("cocaseed", function(data)
			VORP.subItem(data.source, "cocaseed", 1)
			local item = "cocaseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "p_sap_maple_aa_sim", "p_sap_maple_ab_sim", "p_sap_maple_ad_sim", item)
		
	end)

	VORP.RegisterUsableItem("wheatseed", function(data)
			VORP.subItem(data.source, "wheatseed", 1)
			local item = "wheatseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "crp_wheat_dry_aa_sim", "crp_wheat_sap_long_ab_sim", "crp_wheat_stk_ab_sim", item)
		
	end)

	VORP.RegisterUsableItem("barleyseed", function(data)
			VORP.subItem(data.source, "barleyseed", 1)
			local item = "barleyseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "crp_wheat_dry_aa_sim", "crp_wheat_sap_long_ab_sim", "crp_wheat_dry_long_aa_sim", item)
		
	end)

	VORP.RegisterUsableItem("grapeseed", function(data)
			VORP.subItem(data.source, "grapeseed", 1)
			local item = "grapeseed"
			TriggerClientEvent('poke_planting:planto1', data.source, "rdr_bush_neat_ac_sim", "rdr_bush_neat_ab_sim", "rdr_bush_hedgecore_ac", item)
		
	end)

	VORP.RegisterUsableItem("wateringcan", function(data)
		TriggerClientEvent('poke_planting:regar1', data.source)
	end)

	-- NCRP Additions

	VORP.RegisterUsableItem('Agarita_Seed', function(data)
        VORP.subItem(data.source, 'Agarita_Seed', 1)
        local item = 'Agarita_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'CRP_BERRY_AA_SIM','CRP_BERRY_AA_SIM','CRP_BERRY_AA_SIM', item)
	end)
	VORP.RegisterUsableItem('Alaskan_Ginseng_Seed', function(data)
        VORP.subItem(data.source, 'Alaskan_Ginseng_Seed', 1)
        local item = 'Alaskan_Ginseng_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crp_ginseng_ab_sim','crp_ginseng_ab_sim','crp_ginseng_ab_sim', item)
	end)
	VORP.RegisterUsableItem('American_Ginseng_Seed', function(data)
        VORP.subItem(data.source, 'American_Ginseng_Seed', 1)
        local item = 'American_Ginseng_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crp_ginseng_ba_sim','crp_ginseng_ba_sim','crp_ginseng_ba_sim', item)
	end)
	VORP.RegisterUsableItem('Bitter_Weed_Seed', function(data)
        VORP.subItem(data.source, 'Bitter_Weed_Seed', 1)
        local item = 'Bitter_Weed_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_s_inv_bitterweed01cx','mp005_s_inv_bitterweed01cx','mp005_s_inv_bitterweed01cx', item)
	end)
	VORP.RegisterUsableItem('Black_Berry_Seed', function(data)
        VORP.subItem(data.source, 'Black_Berry_Seed', 1)
        local item = 'Black_Berry_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'s_inv_blackberry01x','s_inv_blackberry01x','s_inv_blackberry01x', item)
	end)
	VORP.RegisterUsableItem('Black_Currant_Seed', function(data)
        VORP.subItem(data.source, 'Black_Currant_Seed', 1)
        local item = 'Black_Currant_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crp_seedling_aa_sim','crp_seedling_aa_sim','crp_seedling_aa_sim', item)
	end)
	VORP.RegisterUsableItem('Blood_Flower_Seed', function(data)
        VORP.subItem(data.source, 'Blood_Flower_Seed', 1)
        local item = 'Blood_Flower_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_bloodflower_p','mp005_bloodflower_p','mp005_bloodflower_p', item)
	end)
	VORP.RegisterUsableItem('Bulrush_Seed', function(data)
        VORP.subItem(data.source, 'Bulrush_Seed', 1)
        local item = 'Bulrush_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr_bush_cat_tail_aa_sim','rdr_bush_cat_tail_aa_sim','rdr_bush_cat_tail_ab_sim', item)
	end)
	VORP.RegisterUsableItem('Burdock_Root_Seed', function(data)
        VORP.subItem(data.source, 'Burdock_Root_Seed', 1)
        local item = 'Burdock_Root_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'p_cs_burdock01x','p_cs_burdock01x','p_cs_burdock01x', item)
	end)
	VORP.RegisterUsableItem('Cardinal_Flower_Seed', function(data)
        VORP.subItem(data.source, 'Cardinal_Flower_Seed', 1)
        local item = 'Cardinal_Flower_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_cardinalflw_p','mp005_cardinalflw_p','mp005_cardinalflw_p', item)
	end)
	VORP.RegisterUsableItem('Choc_Daisy_Seed', function(data)
        VORP.subItem(data.source, 'Choc_Daisy_Seed', 1)
        local item = 'Choc_Daisy_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_chocdaisy_p','mp005_chocdaisy_p','mp005_chocdaisy_p', item)
	end)
	VORP.RegisterUsableItem('Creeking_Thyme_Seed', function(data)
        VORP.subItem(data.source, 'Creeking_Thyme_Seed', 1)
        local item = 'Creeking_Thyme_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'thyme_p','thyme_p','thyme_p', item)
	end)
	VORP.RegisterUsableItem('Creekplum_Seed', function(data)
        VORP.subItem(data.source, 'Creekplum_Seed', 1)
        local item = 'Creekplum_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_s_inv_creekplum01bx','mp005_s_inv_creekplum01bx','mp005_s_inv_creekplum01bx', item)
	end)
	VORP.RegisterUsableItem('Crows_Garlic_Seed', function(data)
        VORP.subItem(data.source, 'Crows_Garlic_Seed', 1)
        local item = 'Crows_Garlic_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crowsgarlic_p','crowsgarlic_p','crowsgarlic_p', item)
	end)
	VORP.RegisterUsableItem('Desert_Sage_Seed', function(data)
        VORP.subItem(data.source, 'Desert_Sage_Seed', 1)
        local item = 'Desert_Sage_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'desertsage_p','desertsage_p','desertsage_p', item)
	end)
	VORP.RegisterUsableItem('Evergreen_Huckleberry_Seed', function(data)
        VORP.subItem(data.source, 'Evergreen_Huckleberry_Seed', 1)
        local item = 'Evergreen_Huckleberry_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'s_inv_huckleberry01x','s_inv_huckleberry01x','s_inv_huckleberry01x', item)
	end)
	VORP.RegisterUsableItem('Golden_Currant_Seed', function(data)
        VORP.subItem(data.source, 'Golden_Currant_Seed', 1)
        local item = 'Golden_Currant_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crp_berry_har_aa_sim','crp_berry_har_aa_sim','crp_berry_har_aa_sim', item)
	end)
	VORP.RegisterUsableItem('Hummingbird_Sage_Seed', function(data)
        VORP.subItem(data.source, 'Hummingbird_Sage_Seed', 1)
        local item = 'Hummingbird_Sage_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'humbirdsage_p','humbirdsage_p','humbirdsage_p', item)
	end)
	VORP.RegisterUsableItem('Indian_Tobbaco_Seed', function(data)
        VORP.subItem(data.source, 'Indian_Tobbaco_Seed', 1)
        local item = 'Indian_Tobbaco_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'crp_tobaccoplant_aa_sim','crp_tobaccoplant_ab_sim','crp_tobaccoplant_ac_sim', item)
	end)
	VORP.RegisterUsableItem('Milk_Weed_Seed', function(data)
        VORP.subItem(data.source, 'Milk_Weed_Seed', 1)
        local item = 'Milk_Weed_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr_flw_milkweed_aa','rdr_flw_milkweed_aa','rdr_flw_milkweed_aa', item)
	end)
	VORP.RegisterUsableItem('Oleander_Sage_Seed', function(data)
        VORP.subItem(data.source, 'Oleander_Sage_Seed', 1)
        local item = 'Oleander_Sage_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr2_bush_sagebrush','rdr2_bush_sagebrush','rdr2_bush_sagebrush', item)
	end)
	VORP.RegisterUsableItem('Oregano_Seed', function(data)
        VORP.subItem(data.source, 'Oregano_Seed', 1)
        local item = 'Oregano_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'oregano_p','oregano_p','oregano_p', item)
	end)
	VORP.RegisterUsableItem('Prairie_Poppy_Seed', function(data)
        VORP.subItem(data.source, 'Prairie_Poppy_Seed', 1)
        local item = 'Prairie_Poppy_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr_flw_poppy_aa','rdr_flw_poppy_aa','rdr_flw_poppy_aa', item)
	end)
	VORP.RegisterUsableItem('Rams_Head_Seed', function(data)
        VORP.subItem(data.source, 'Rams_Head_Seed', 1)
        local item = 'Rams_Head_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr_flw_petunia_aa','rdr_flw_petunia_aa','rdr_flw_petunia_aa', item)
	end)
	VORP.RegisterUsableItem('Red_Raspberry_Seed', function(data)
        VORP.subItem(data.source, 'Red_Raspberry_Seed', 1)
        local item = 'Red_Raspberry_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'s_inv_raspberry01x','s_inv_raspberry01x','s_inv_raspberry01x', item)
	end)
	VORP.RegisterUsableItem('Red_Sage_Seed', function(data)
        VORP.subItem(data.source, 'Red_Sage_Seed', 1)
        local item = 'Red_Sage_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'redsage_p','redsage_p','redsage_p', item)
	end)
	VORP.RegisterUsableItem('Wild_Carrot_Seed', function(data)
        VORP.subItem(data.source, 'Wild_Carrot_Seed', 1)
        local item = 'Wild_Carrot_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,"crp_carrots_har_ba_sim", "crp_carrots_aa_sim", "crp_carrots_ba_sim", item)
	end)
	VORP.RegisterUsableItem('Wild_Feverfew_Seed', function(data)
        VORP.subItem(data.source, 'Wild_Feverfew_Seed', 1)
        local item = 'Wild_Feverfew_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'s_wildfeverfew01x','s_wildfeverfew01x','s_wildfeverfew01x', item)
	end)
	VORP.RegisterUsableItem('Wild_Mint_Seed', function(data)
        VORP.subItem(data.source, 'Wild_Mint_Seed', 1)
        local item = 'Wild_Mint_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'wildmint_p','wildmint_p','wildmint_p', item)
	end)
	VORP.RegisterUsableItem('Wild_Rhubarb_Seed', function(data)
        VORP.subItem(data.source, 'Wild_Rhubarb_Seed', 1)
        local item = 'Wild_Rhubarb_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp005_rhubarb_p','mp005_rhubarb_p','mp005_rhubarb_p', item)
	end)
	VORP.RegisterUsableItem('Wintergreen_Berry_Seed', function(data)
        VORP.subItem(data.source, 'Wintergreen_Berry_Seed', 1)
        local item = 'Wintergreen_Berry_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'rdr2_bush_bigberrymanzanita','rdr2_bush_bigberrymanzanita','rdr2_bush_bigberrymanzanita', item)
	end)
	VORP.RegisterUsableItem('Wisteria_Seed', function(data)
        VORP.subItem(data.source, 'Wisteria_Seed', 1)
        local item = 'Wisteria_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'mp007_p_nat_flwr_petunia01x','mp007_p_nat_flwr_petunia01x','mp007_p_nat_flwr_petunia01x', item)
	end)
	VORP.RegisterUsableItem('Yarrow_Seed', function(data)
        VORP.subItem(data.source, 'Yarrow_Seed', 1)
        local item = 'Yarrow_Seed'
        TriggerClientEvent('poke_planting:planto1', data.source,'yarrow01_p','yarrow01_p','yarrow01_p', item)
	end)
	
end)

RegisterServerEvent('giveback')
AddEventHandler('giveback', function(item)
	VORP.addItem(source, item, 1)
	TriggerClientEvent("seed:used")
end)

RegisterServerEvent('poke_planting:giveitem')
AddEventHandler('poke_planting:giveitem', function(tipo)
    local _source = source
	local count = math.random(3, 6)
	if tipo == "CRP_TOBACCOPLANT_AC_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Tobacco Leaves', 3000)
		VORP.addItem(_source, "tobacco", count)
	elseif tipo == "CRP_SUGARCANE_AC_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Sugar', 3000)
		VORP.addItem(_source, "sugar", count)
	elseif tipo == "CRP_CORNSTALKS_AA_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Corn', 3000)
		VORP.addItem(_source, "corn", count)
	elseif tipo == "CRP_COTTON_BB_SIM" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Raw Cotton', 3000)
		VORP.addItem(_source, "rawcotton", count)
	elseif tipo == "CRP_GINSENG_AA" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Ginseng', 3000)
		VORP.addItem(_source, "ginseng", count)
	elseif tipo == "crp_carrots_ba_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Carrots', 3000)
		VORP.addItem(_source, "carrots", count)
	elseif tipo == "crp_potato_aa_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Potatoes', 3000)
		VORP.addItem(_source, "potato", count)
	elseif tipo == "crp_tomatoes_sap_aa_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Tomatoes', 3000)
		VORP.addItem(_source, "tomato", count)
	elseif tipo == "p_sap_maple_ad_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Coca Leaves', 3000)
		VORP.addItem(_source, "cocaleaf", count)
	elseif tipo == "crp_wheat_stk_ab_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Wheat', 3000)
		VORP.addItem(_source, "wheat", count)
	elseif tipo == "crp_wheat_dry_long_aa_sim" then
		TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Barley', 3000)
		VORP.addItem(_source, "barley", count)
	elseif tipo == "p_tree_magnolia_02_MD" then
        TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Dixon Apples', 3000)
		VORP.addItem(_source, "dixonapple", count)
	elseif tipo == "p_tree_banana_01_MD_crt" then
        TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Bananas', 3000)
        VORP.addItem(_source, "banana", count)
	elseif tipo == "rdr_bush_hedgecore_ac" then
        TriggerClientEvent("vorp:TipRight", _source, 'You have collected '..count..'x Grapes', 3000)
        VORP.addItem(_source, "grapes", count)

	--NCRP Additions

	elseif tipo == 'CRP_BERRY_AA_SIM' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Agarita', 3000)
		VORP.addItem(_source, 'Agarita', count)

	elseif tipo == 'crp_ginseng_ab_sim' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Alaskan Ginseng', 3000)
		VORP.addItem(_source, 'Alaskan_Ginseng', count)

	elseif tipo == 'crp_ginseng_ba_sim' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x American Ginseng', 3000)
		VORP.addItem(_source, 'American_Ginseng', count)

	elseif tipo == 'mp005_s_inv_bitterweed01cx' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Bitter Weed', 3000)
		VORP.addItem(_source, 'Bitter_Weed', count)

	elseif tipo == 's_inv_blackberry01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Black Berry', 3000)
		VORP.addItem(_source, 'Black_Berry', count)

	elseif tipo == 'crp_seedling_aa_sim' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Black Currant', 3000)
		VORP.addItem(_source, 'Black_Currant', count)

	elseif tipo == 'mp005_bloodflower_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Blood Flower', 3000)
		VORP.addItem(_source, 'Blood_Flower', count)

	elseif tipo == 'rdr_bush_cat_tail_ab_sim' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Bulrush', 3000)
		VORP.addItem(_source, 'Bulrush', count)

	elseif tipo == 'p_cs_burdock01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Burdock Root', 3000)
		VORP.addItem(_source, 'Burdock_Root', count)

	elseif tipo == 'mp005_cardinalflw_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Cardinal Flower', 3000)
		VORP.addItem(_source, 'Cardinal_Flower', count)

	elseif tipo == 'mp005_chocdaisy_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Choc Daisy', 3000)
		VORP.addItem(_source, 'Choc_Daisy', count)

	elseif tipo == 'thyme_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Creeping Thyme', 3000)
		VORP.addItem(_source, 'Creeking_Thyme', count)

	elseif tipo == 'mp005_s_inv_creekplum01bx' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Creekplum', 3000)
		VORP.addItem(_source, 'Creekplum', count)

	elseif tipo == 'crowsgarlic_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Crows Garlic', 3000)
		VORP.addItem(_source, 'Crows_Garlic', count)

	elseif tipo == 'desertsage_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Desert Sage', 3000)
		VORP.addItem(_source, 'Desert_Sage', count)

	elseif tipo == 's_inv_huckleberry01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Evergreen Huckleberry', 3000)
		VORP.addItem(_source, 'consumable_herb_evergreen_huckleberry', count)

	elseif tipo == 'crp_berry_har_aa_sim' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Golden Currant', 3000)
		VORP.addItem(_source, 'Golden_Currant', count)

	elseif tipo == 'humbirdsage_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Hummingbird Sage', 3000)
		VORP.addItem(_source, 'Hummingbird_Sage', count)

	elseif tipo == 'rdr_flw_milkweed_aa' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Milk Weed', 3000)
		VORP.addItem(_source, 'Milk_Weed', count)

	elseif tipo == 'rdr2_bush_sagebrush' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Oleander Sage', 3000)
		VORP.addItem(_source, 'Oleander_Sage', count)

	elseif tipo == 'oregano_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Oregano', 3000)
		VORP.addItem(_source, 'consumable_herb_oregano', count)

	elseif tipo == 'rdr_flw_poppy_aa' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Prairie Poppy', 3000)
		VORP.addItem(_source, 'Prairie_Poppy', count)

	elseif tipo == 'rdr_flw_petunia_aa' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Rams Head', 3000)
		VORP.addItem(_source, 'Rams_Head', count)

	elseif tipo == 's_inv_raspberry01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Red Raspberry', 3000)
		VORP.addItem(_source, 'Red_Raspberry', count)

	elseif tipo == 'redsage_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Red Sage', 3000)
		VORP.addItem(_source, 'Red_Sage', count)

	elseif tipo == 's_wildfeverfew01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Wild Feverfew', 3000)
		VORP.addItem(_source, 'Wild_Feverfew', count)

	elseif tipo == 'wildmint_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Wild Mint', 3000)
		VORP.addItem(_source, 'Wild_Mint', count)

	elseif tipo == 'mp005_rhubarb_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Wild Rhubarb', 3000)
		VORP.addItem(_source, 'Wild_Rhubarb', count)

	elseif tipo == 'rdr2_bush_bigberrymanzanita' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Wintergreen Berry', 3000)
		VORP.addItem(_source, 'consumable_herb_wintergreen_berry', count)

	elseif tipo == 'mp007_p_nat_flwr_petunia01x' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Wisteria', 3000)
		VORP.addItem(_source, 'Wisteria', count)
		
	elseif tipo == 'yarrow01_p' then
		TriggerClientEvent('vorp:TipRight', _source, 'You have collected '..count..'x Yarrow', 3000)
		VORP.addItem(_source, 'Yarrow', count)

	end

end)
