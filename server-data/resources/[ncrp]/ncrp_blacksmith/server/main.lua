Inventory = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('ncrp_blacksmith:getjob')
AddEventHandler('ncrp_blacksmith:getjob', function(type)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local job = user.job
        if job == 'blacksmith' then
            TriggerClientEvent('ncrp_blacksmith:auth', _source, type)
        end
    end)
end)


RegisterServerEvent('ncrp_blacksmith:takelantern')
AddEventHandler('ncrp_blacksmith:takelantern', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 25 then
    Inventory.addItem(_source, "WEAPON_MELEE_LANTERN", 1)
    TriggerClientEvent("vorp:TipRight", _source, "You made a Lantern", 3000)
    TriggerEvent("vorp:removeMoney", _source, 0, 25)
else
    TriggerClientEvent("vorp:TipRight", _source, _U('do_not_have', _U('lantern')), 3000)
    end
end)
end)

RegisterServerEvent('ncrp_blacksmith:takehatchet')
AddEventHandler('ncrp_blacksmith:takehatchet', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 2 then
    Inventory.addItem(_source, "hatchet", 1)
    TriggerClientEvent("vorp:TipRight", _source, "You made a Hatchet", 3000)
    TriggerEvent("vorp:removeMoney", _source, 0, 2)
else
    TriggerClientEvent("vorp:TipRight", _source, _U('insufficient_funds'), 3000)
    end
end)
end)

RegisterServerEvent('ncrp_blacksmith:takepickaxe')
AddEventHandler('ncrp_blacksmith:takepickaxe', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 2 then
    Inventory.addItem(_source, "pickaxe", 1)
    TriggerClientEvent("vorp:TipRight", _source, "You made a Pickaxe", 3000)
    TriggerEvent("vorp:removeMoney", _source, 0, 2)
else
    TriggerClientEvent("vorp:TipRight", _source, _U('insufficient_funds'), 3000)
    end
end)
end)

RegisterServerEvent('ncrp_blacksmith:takegoldpan')
AddEventHandler('ncrp_blacksmith:takegoldpan', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 2 then
    Inventory.addItem(_source, "goldpan", 1)
    TriggerClientEvent("vorp:TipRight", _source, "You made a Goldpan", 3000)
    TriggerEvent("vorp:removeMoney", _source, 0, 2)
else
    TriggerClientEvent("vorp:TipRight", _source, _U('insufficient_funds'), 3000)
    end
end)
end)

RegisterServerEvent('ncrp_blacksmith:takenecklace')
AddEventHandler('ncrp_blacksmith:takenecklace', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 20 then
    Inventory.addItem(_source, "elegantnecklace", 1)
    TriggerClientEvent("vorp:TipRight", _source, "You made an Elegant Necklace", 3000)
    TriggerEvent("vorp:removeMoney", _source, 0, 20)
    else
        TriggerClientEvent("vorp:TipRight", _source, _U('insufficient_funds'), 3000)
    end
end)
end)