local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

Inventory = exports.vorp_inventory:vorp_inventoryApi()

local DoorInfo	= {}

RegisterServerEvent('bulgar_doorlocks_vorp:Load')
AddEventHandler('bulgar_doorlocks_vorp:Load', function()
	for k, v in pairs(DoorInfo) do
		TriggerClientEvent('bulgar_doorlocks_vorp:setState', -1, v.doorID, v.state)
	end
end)

RegisterServerEvent('bulgar_doorlocks_vorp:updatedoorsv')
AddEventHandler('bulgar_doorlocks_vorp:updatedoorsv', function(source, doorID, cb)
    local _source = source
	
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	local job = Character.job
	
	if not IsAuthorized(job, Config.DoorList[doorID]) then
		local count = Inventory.getItemCount(_source, "lockpick")
		if count > 0 then
			TriggerClientEvent('bulgar_doorlocks_vorp:lockpick', _source, _source, doorID)
		else
			TriggerClientEvent("vorp:TipBottom", _source, "you do not have any lockpicks", 3000)
		end
	else 
		TriggerClientEvent('bulgar_doorlocks_vorp:changedoor', _source, doorID)
	end
end)

RegisterServerEvent('bulgar_doorlocks_vorp:updateState')
AddEventHandler('bulgar_doorlocks_vorp:updateState', function(doorID, state, cb)
    local _source = source
	
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	local job = Character.job
	
	if type(doorID) ~= 'number' then
		return
	end

	if not IsAuthorized(job, Config.DoorList[doorID]) then
		return
	end
	
	DoorInfo[doorID] = {
		doorID = doorID,
		state = state
	}

	TriggerClientEvent('bulgar_doorlocks_vorp:setState', -1, doorID, state)
end)

function IsAuthorized(jobName, doorID)
	for _,job in pairs(doorID.authorizedJobs) do
		if job == jobName then
			return true
		end
	end
	return false
end



RegisterServerEvent('bulgar_doorlocks_vorp:brokenlockpick')
AddEventHandler('bulgar_doorlocks_vorp:brokenlockpick', function(source)
    local _source = source
	Inventory.subItem(_source, "lockpick", 1)
end)

RegisterServerEvent('bulgar_doorlocks_vorp:lockpickUpdateState')
AddEventHandler('bulgar_doorlocks_vorp:lockpickUpdateState', function(doorID, state, cb)
	local _source = source
	if type(doorID) ~= 'number' then
		return
	end

	DoorInfo[doorID] = {
		doorID = doorID,
		state = state
	}

	TriggerClientEvent('bulgar_doorlocks_vorp:setState', -1, doorID, state)
end)
