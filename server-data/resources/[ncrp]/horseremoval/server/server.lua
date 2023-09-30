local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

function IsAuthorized(job, jobName)
    if job == jobName then
		return true
    else
        return false
    end
end

RegisterServerEvent('hr:checkJob')
AddEventHandler('hr:checkJob', function()
    local _source = source
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	local job = Character.job
    local jobCheck = IsAuthorized(job, "police")
    if jobCheck == true then
        TriggerClientEvent("hr:removeHorse", _source)
    elseif jobCheck == false then
        print("You cannot use this command")
        TriggerClientEvent("vorp:TipBottom", _source, "You cannot use this command", 3000)
    end
end)