VorpInv = exports.vorp_inventory:vorp_inventoryApi()
VorpCore = {}
data = {}


Marshal_Jobs = {
    'police',
    'ranger',
    'marshal',
}

TriggerEvent("getCore", function(core) VorpCore = core end)

Citizen.CreateThread(function()
    Citizen.Wait(2000) 
    VorpInv.RegisterUsableItem("lockpick", function(data)
        TriggerClientEvent('gorp:saferobbery', data.source)
    end)
end)

local Items = {
	{item = "goldnugget", name = "Gold nuggets", amountToGive = math.random(1,5)},
    {item = "goldring", name = "Gold ring", amountToGive = math.random(1,1)},
    {item = "goldtooth", name = "Gold tooth", amountToGive = math.random(1,4)},
    {item = "diamond", name = "Diamond", amountToGive = math.random(1,1)}
}

function payLoot(source)
    local Loot = {}
    for k, v in pairs(items) do 
        table.insert(Loot,v.item)
    end
    if Loot[1] ~= nil then
        local value = math.random(1,#Loot)
        local picked = Loot[value]
        return picked
    end
end


RegisterServerEvent('gorp:robberycomplete')
AddEventHandler('gorp:robberycomplete', function()
	local FinalLoot = LootToGive(source)
    local User = VorpCore.getUser(source).getUsedCharacter
    local chance = math.random(1,100)
    if chance <= 50 then
        for k,v in pairs(Items) do
                if v.item == FinalLoot then
                    VorpInv.subItem(source, "lockpick", 1)
                    VorpInv.addItem(source, FinalLoot, v.amountToGive)
                    LootsToGive = {}
                    TriggerClientEvent("vorp:TipRight", source, 'You find '..v.amountToGive..' ' ..v.name, 3000)
                end
            end
        else
        TriggerClientEvent("vorp:TipRight", source, 'Your lock pick broke and you couldn\'t open it', 3000)
        VorpInv.subItem(source, "lockpick", 1)
    end
end)

function LootToGive(source)
	local LootsToGive = {}
	for k,v in pairs(Items) do
		table.insert(LootsToGive,v.item)
	end

	if LootsToGive[1] ~= nil then
		local value = math.random(1,#LootsToGive)
		local picked = LootsToGive[value]
		return picked
	end
end

RegisterServerEvent('gorp:SafeRobberyAlarm')
AddEventHandler('gorp:SafeRobberyAlarm', function()

	local cops = 0
	for _,i in pairs(GetPlayers()) do
        local character = VorpCore.getUser(i).getUsedCharacter
        local pJob = character.job
        for k,v in pairs(Marshal_Jobs) do
            if pJob == v then
                cops = cops + 1
            end
        end
    end
    if cops >= 1 then
        TriggerClientEvent("gorp:saferobberyCracking", source)
        return
    end

    if cops == 0 then
        TriggerClientEvent("vorp:TipRight", source, 'All safes are deadbolted until some more law arrive in New Cumbernauld', 3000)
        return
    end
end)