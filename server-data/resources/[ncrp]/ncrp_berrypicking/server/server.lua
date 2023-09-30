VorpInv = exports.vorp_inventory:vorp_inventoryApi()

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

function keysx(table)
    local keys = 0
    for k,v in pairs(table) do
       keys = keys + 1
    end
    return keys
end

RegisterServerEvent('ncrp_berrypicking:addItem')
AddEventHandler('ncrp_berrypicking:addItem', function()
	local _source = source
	local Character = VorpCore.getUser(_source).getUsedCharacter
	local chance =  math.random(1,100)
	local reward = {}
	for k,v in pairs(Config.Items) do 
		if v.chance >= chance then
			table.insert(reward,v)
		end
	end
	if #reward == 0 then
		TriggerClientEvent("vorp:TipRight", _source, "You found nothing", 3000)
	else
	local chance2 = math.random(1,#reward)
	local count = math.random(1,reward[chance2].amount)
	TriggerEvent("vorpCore:canCarryItems", tonumber(_source), count, function(canCarry)
		TriggerEvent("vorpCore:canCarryItem", tonumber(_source), reward[chance2].name,count, function(canCarry2)
			if canCarry and canCarry2 then
				VorpInv.addItem(_source, reward[chance2].name, count)
				TriggerClientEvent("vorp:TipRight", _source, "You found "..reward[chance2].label, 3000)
			else
				TriggerClientEvent("vorp:TipRight", _source, "You can't carry any more "..reward[chance2].label, 3000)
			end
		end)
	end)
end 
end)