TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()


-- Register usable Campfire
VorpInv.RegisterUsableItem("campfire", function(data)
    VorpInv.subItem(data.source, "campfire", 1)
    TriggerClientEvent("syn:campfire", data.source)
end)

RegisterServerEvent('syn:findjob')
AddEventHandler( 'syn:findjob', function ()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local job = Character.job
    TriggerClientEvent("syn:sendjob",_source,job)
end)

RegisterServerEvent('syn:openInv')
AddEventHandler( 'syn:openInv', function ()
    local _source = source
    VorpInv.OpenInv(_source)
end)

RegisterServerEvent('syn:craftingalg')
AddEventHandler( 'syn:craftingalg', function (crafting, countz)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    
    local playerjob = Character.job
    local job = crafting['Job']
    
    local craft = false
    
    -- No job restriction
    if job == 0 then 
        craft = true
    end

    if job ~=0 then
        for k,v in pairs(job) do  
            if v == playerjob then 
                craft = true 
            end
        end
    end


    if craft then 
        -- Check that the user has all crafting items available
        local reward = crafting['Reward']

        local craftcheck = true
        for index, item in pairs(crafting.Items) do  
            local pcount = VorpInv.getItemCount(source, item.name)
            local icount = item.count * countz

            if pcount < icount then
                craftcheck = false
                break
            end
        end

        if craftcheck == true then
            -- Get Totals
            local subcount = 0
            local cancarry = false
            for index, item in pairs(crafting.Items) do 
                local itemcount = item.count * countz
                subcount = subcount + itemcount
            end
            local addcount = 0
            local source = tonumber(_source)
            for k, rwd in pairs(reward) do
                local counta = rwd.count * countz
                addcount = addcount + counta

                --cancarry = VorpInv.canCarryItem(source, rwd.name, counta, functioncancarry)
                TriggerEvent("vorpCore:canCarryItem", source, rwd.name, counta, function(cancarry)
                    -- Check if there is enought room in inventory in general.
                    local invAvailable = VorpInv.canCarryItems(_source, addcount - subcount)
                    if invAvailable and cancarry then            
                    -- Loop through and remove each item
                        for index, item in pairs(crafting.Items) do  
                            VorpInv.subItem(_source, item.name, item.count * countz)
                        end
                        
                        -- Give crafted item(s) to player
                        for k,v in pairs(reward) do
                            local countx = v.count * countz
                            VorpInv.addItem(_source, v.name, countx)
                        end

                        TriggerClientEvent("syn:crafting", _source, crafting.Animation)
                    else
                        TriggerClientEvent("vorp:TipRight", _source, _U('TooFull'), 3000)
                    end
                end)
            end
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('NotEnough'), 3000)
        end
    else
        local jobs = ''
        for k, v in pairs(job) do 
            jobs = jobs..v..' '
        end
        TriggerClientEvent("vorp:TipRight", _source, _U('NotJob')..jobs, 3000)
    end
end)