VORP = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()
	Citizen.Wait(2000)
	VORP.RegisterUsableItem("waterskin", function(data)
		TriggerClientEvent('waterskin:collection', data.source)
	end)
end)


RegisterNetEvent("watercollect")
AddEventHandler("watercollect", function()
    local item = "water"
    local watergiven = 5
    local _source = source
    local total_water = 0
    local inventory_full = false
    local water_full = false
    for water = 1, watergiven do
        local canCarry = VORP.canCarryItems(_source, '1') --can carry inv space
        local canCarry2 = VORP.canCarryItem(_source, item, '1') --cancarry item limit
        if canCarry then
            if canCarry2 then
                VORP.addItem(_source, item, 1)
                total_water = total_water + 1
                canCarry2 = VORP.canCarryItem(_source, item, '1') --cancarry item limit
            else 
                water_full = true
            end
        else
            inventory_full = true     
        end
        Wait(10)
    end
    TriggerClientEvent("vorp:TipRight", _source, 'You found ' ..total_water.. ' ~t3~Water~q~', 6000)
    if inventory_full then
        TriggerClientEvent("vorp:TipRight", _source, 'Inventory full', 6000)
    elseif water_full then
        TriggerClientEvent("vorp:TipRight", _source, 'Cannot carry any more water', 6000)
    end
end)
