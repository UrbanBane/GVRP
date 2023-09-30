Inventory = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('smery_saloon:getjob')
AddEventHandler('smery_saloon:getjob', function(type)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local job = user.job
        if job == 'saloon' then
            TriggerClientEvent('smery_saloon:auth', _source, type)
        end
    end)
end)


RegisterServerEvent('smery_saloon:takebeer')
AddEventHandler('smery_saloon:takebeer', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 1 then
            Inventory.addItem(_source, "beer", Config.giveItemCount)
            TriggerEvent("vorp:removeMoney", _source, 0, 1)
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('do_not_have', _U('beer')), 3000)
        end
    end)
end)

RegisterServerEvent('smery_saloon:takerootbeer')
AddEventHandler('smery_saloon:takerootbeer', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 1 then
            Inventory.addItem(_source, "rootbeer", Config.giveItemCount)
            TriggerEvent("vorp:removeMoney", _source, 0, 1)
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('do_not_have', _U('rootbeer')), 3000)
        end
    end)
end)

RegisterServerEvent('smery_saloon:takesarsaparilla')
AddEventHandler('smery_saloon:takesarsaparilla', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 1 then
            Inventory.addItem(_source, "sarsaparilla", Config.giveItemCount)
            TriggerEvent("vorp:removeMoney", _source, 0, 1)
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('do_not_have', _U('sarsaparilla')), 3000)
        end
    end)
end)

RegisterServerEvent('smery_saloon:takecognac')
AddEventHandler('smery_saloon:takecognac', function(user)
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        local money = user.money
        if money >= 1 then
            Inventory.addItem(_source, "whisky", Config.giveItemCount)
            TriggerEvent("vorp:removeMoney", _source, 0, 1)
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('do_not_have', _U('cognac')), 3000)
        end
    end)
end)