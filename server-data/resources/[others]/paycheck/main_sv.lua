local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VORP = exports.vorp_core:vorpAPI()

RegisterServerEvent("paycheck:pay")
AddEventHandler("paycheck:pay", function()
	local _source = source
	local Character = VorpCore.getUser(_source).getUsedCharacter
    exports.ghmattimysql:execute('SELECT * from society where job=@job and jobgrade=@grade', {['job'] = Character.job, ['grade'] = Character.jobGrade}, function(result)
    	if result ~= nil then 
    		local salary = result[1].salary
    		Character.addCurrency(0, tonumber(salary))
    		TriggerClientEvent("vorp:TipRight", _source, 'You received a salary : $'..salary, 5000)
    	end
    end)
end)