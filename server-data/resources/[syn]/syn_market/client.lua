local blips = {}
local prompts = GetRandomIntInRange(0, 0xffffff)
local openmenu 
local inmenu 
local db = {}
local personallisting = {}
local globallisting = {}
local hasspace = false 
local slots = 0
local invid = 0
local temptable = {}
local amounty = 0
local pricey = 0
local locationowned = ""
local location = ""
local fitching = false 
Citizen.CreateThread(function()
    Wait(5000)
    for k,v in pairs(Config.marketplace) do
        if v.showblip then 
            local blip = N_0x554d9d53f696d002(1664425300, v.Pos.x,v.Pos.y,v.Pos.z)
            SetBlipSprite(blip, v.blipsprite, 1)
            SetBlipScale(blip, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
            table.insert( blips, blip )
        end
    end
    local str = Config.language.openmenu
	openmenu = PromptRegisterBegin()
	PromptSetControlAction(openmenu, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openmenu, str)
	PromptSetEnabled(openmenu, 1)
	PromptSetVisible(openmenu, 1)
	PromptSetStandardMode(openmenu,1)
	PromptSetGroup(openmenu, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openmenu,true)
	PromptRegisterEnd(openmenu)

    TriggerServerEvent("syn_market:getitemlist")
end)

RegisterNetEvent("syn_market:recitemlist")
AddEventHandler("syn_market:recitemlist", function(x)
	db = x
end)

RegisterNetEvent("syn_market:reclisting")
AddEventHandler("syn_market:reclisting", function(x,y,z,id,loc)
	hasspace = x
    personallisting = y
    slots = z
    invid = id 
    locationowned = loc
    fitching = false 
end)
RegisterNetEvent("syn_market:reclisting2")
AddEventHandler("syn_market:reclisting2", function(x)
    globallisting = x
    viewlist()

end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local sleep = true 
        local coords = GetEntityCoords(PlayerPedId())
        if not inmenu then 
            for k,v in pairs(Config.marketplace) do
                if GetDistanceBetweenCoords(coords,v.Pos.x,v.Pos.y,v.Pos.z, true) < 2 then
                    sleep = false 
                    local label  = CreateVarString(10, 'LITERAL_STRING', k..Config.language.marketplace)
                    PromptSetActiveGroupThisFrame(prompts, label)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE,openmenu) then
                        location = k
                        fitching = true 
                        TriggerServerEvent("syn_market:getlisting",location)
                        while fitching do 
                            Wait(100)
                        end
                        inmenu = true 
                        openmarket()
                        FreezeEntityPosition(PlayerPedId(), true) 
                    end
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)


AddEventHandler("onResourceStop",function(resourceName)
    if resourceName == GetCurrentResourceName() then
        FreezeEntityPosition(PlayerPedId(), false) 
		for k,v in pairs(blips) do 
            RemoveBlip(v)
        end
    end
end)

TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)

AddEventHandler('menuapi:closemenu', function()
    if inmenu then 
        inmenu = false 
        FreezeEntityPosition(PlayerPedId(), false) 
        hasspace = nil 
    end
end)
function closem()
    MenuData.CloseAll()
    if inmenu then 
        inmenu = false 
        hasspace = nil 
        FreezeEntityPosition(PlayerPedId(), false) 
    end
    
end


function openmarket()
    MenuData.CloseAll()
    local elements = {	
        {label = Config.language.viewlisting, value = 'viewlist' , desc = ""}
	}
    if hasspace and locationowned == location then 
        table.insert( elements, {label = Config.language.requestitems, value = 'reqitems' , desc = ""})
        table.insert( elements, {label = Config.language.removelist, value = 'removeitem' , desc = ""})
        table.insert( elements, {label = Config.language.openinv, value = 'openinv' , desc = ""})
        if Config.upgradeslots then 
            table.insert( elements, {label = Config.language.slots, value = 'buyslots' , desc = Config.language.buyslots})
        end
    else
        table.insert( elements, {label = Config.language.buylicense, value = 'buylic' , desc = ""})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
        if(data.current.value == "openinv") then 
            closem()
            TriggerEvent("syn_Container:openinventory", Config.language.slotsy..slots, invid)
		end
        if(data.current.value == "viewlist") then 
            MenuData.CloseAll()
            TriggerServerEvent('syn_market:globallisting')
		end
        if(data.current.value == "removeitem") then 
            removelisting()
		end
		if(data.current.value == "buylic") then 
            TriggerServerEvent("syn_market:buylic",location)
            closem()
		end
        if(data.current.value == "buyslots") then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.buyslots, function(cb)
                local slotsx =     ToInteger(tonumber(cb))
                if slotsx ~= nil and slotsx ~= "" and slotsx > 0 then
                    TriggerServerEvent("syn_market:buyslots",slotsx,invid)
                end
            end)
            closem()
		end
        if(data.current.value == "reqitems") then 
            openreqmenu()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function round(number, decimals)
    local scale = 10^decimals
    local c = 2^52 + 2^51
    return ((number * scale + c ) - c) / scale
end

function viewlist()
    MenuData.CloseAll()
    local elements = {	
	}
    for x,y in ipairs(globallisting) do
        if y.location == location then  
            for k,v in pairs(y.listing) do
                local priceshow = round(v.price/v.amount, 2)
                if priceshow >  Config.minimumpriceperitem then 
                    table.insert( elements, {label = v.item.label, value = v.item.item,price = (v.price/v.amount), limit = v.item.limit,invid = y.invid , desc = Config.language.priceper..Config.language.dollar..priceshow..Config.language.amountx..v.amount..Config.language.slotsx..y.invslots})
                end
            end
        end
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmarket",
	},
	function(data, menu)
		if data.current == "backup" then 
            _G[data.trigger]()
        else
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.amount, function(cb)
                local amountx =     ToInteger(tonumber(cb))
                if amountx ~= nil and amountx ~= "" and amountx > 0 then

                    TriggerServerEvent("syn_market:submititem",data.current.price,data.current.limit,data.current.label,amountx,data.current.value,data.current.invid)
                end
            end)
            closem()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function removelisting()
    MenuData.CloseAll()
    local elements = {	
	}
    for k,v in ipairs(personallisting) do 
        table.insert( elements, {label = v.item.label, value = k , desc = Config.language.price..": $"..v.price.." / Amount:"..v.amount})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmarket",
	},
	function(data, menu)
		if data.current == "backup" then 
            _G[data.trigger]()
        else
            local price = personallisting[data.current.value].price
            table.remove( personallisting, data.current.value )
            local listing = json.encode(personallisting)
            TriggerServerEvent("syn_market:updatelisting",listing,location,price)
            closem()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function searchfun(name,tablex)
    for k,v in ipairs(tablex) do
        local first = string.lower(v.label)
        local sec = string.lower(name)
        if string.find(first, sec) then
            table.insert( temptable, v)
        end
    end
end
function processorder(item,backx)
    MenuData.CloseAll()
    local elements = {	
        {label = Config.language.amount, value = 'amount' , desc = Config.language.amountdesc..amounty},	
        {label = Config.language.price, value = 'price' , desc = Config.language.pricedesc..pricey},	
        {label = Config.language.confirm, value = 'confirm' , desc = Config.language.confirmdesc},	
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
        lastmenu = backx,
	},
	function(data, menu)
		if data.current == "backup" then 
            _G[data.trigger]()
        end
        if data.current.value == "amount" then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.amount, function(cb)
                local amountx =     ToInteger(tonumber(cb))
                if amountx ~= nil and amountx ~= "" and amountx > 0 then
                    amounty = amountx
                end
                processorder(item,backx)
            end)
        end
        if data.current.value == "price" then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.price, function(cb)
                local pricex =     tonumber(cb)
                if pricex ~= nil and pricex ~= "" and pricex > 0 then
                    pricey = pricex
                end
                processorder(item,backx)
            end)
        end
        if data.current.value == "confirm" then 
            local lis ={item = item, price = pricey,amount = amounty}
            TriggerServerEvent("syn_market:addtolist",lis,location)
            closem()
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function openreqmenu()
    MenuData.CloseAll()
    local elements = {	
        {label = Config.language.search, value = 'search' , desc = ""}	
	}
    for k,v in ipairs(db) do 
        table.insert( elements, {label = v.label, value = k , desc = "<img style='max-height: 50px;max-width: 50px;' src='"..Config.invpath..""..v.item..".png'>"})
    end
    temptable = {}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openmarket",
	},
	function(data, menu)
		if data.current == "backup" then 
            _G[data.trigger]()
        elseif data.current.value == "search" then 
            TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.name, function(cb)
                local descx =     tostring(cb)
                if descx ~= nil and descx ~= "" then
                    searchfun(descx,db)
                    Wait(500)
                    openreqmenu2()
                end
            end)
            closem()
        else
            local item = db[data.current.value]
            processorder(item,"openreqmenu")
        end
	end,
	function(data, menu)
		menu.close()
	end)
end

function openreqmenu2()
    MenuData.CloseAll()
    local elements = {	
	}
    for k,v in ipairs(temptable) do 
        table.insert( elements, {label = v.label, value = k , desc = "<img style='max-height: 50px;max-width: 50px;' src='"..Config.invpath..""..v.item..".png'>"})
    end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.marketmenu,
		subtext    = Config.language.slots2..slots,
		align    = 'top-left',
		elements = elements,
        lastmenu = "openreqmenu",
	},
	function(data, menu)
		if data.current == "backup" then 
            _G[data.trigger]()
        else
            local item = temptable[data.current.value]
            processorder(item,"openreqmenu2")
        end
	end,
	function(data, menu)
		menu.close()
	end)
end