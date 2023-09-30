TriggerEvent("menuapi:getData",function(call)
    MenuData = call
end)


local openmenuprompt
local endmissionprompt
local givebodyprompt
local prompts = GetRandomIntInRange(0, 0xffffff)
local prompts2 = GetRandomIntInRange(0, 0xffffff)
local inmenu = false 
local loc 
local level = "0"
local party = {}
local inmission = false 
local type = ""
local tableofinfo = {}
local tableofinfolevel = {}
local spawned = false 
local createdenemy = {}
local enemyarrest = {}
local spawnedarrest = false 
local deadenemies = {}
local rewardc = 0
local rewardg = 0
local deliverbody = false 
local missionblip 
local blips = {}
local switch = false 
local cleanup = {}
local escortped
local startescort = false 
local deadesc = false 
local cooldown = false 
local job 
local players = {}
local bountylist = {}
local addedbountyserverid 
local crimedescription = ""
local fine = 0
local jailtime = 0
local imageurl = ""
local isincoopmission = false 
local cooptable = {}
local playerbountyblips = {}
local bountymissionactive = false 
local playerbountydeliverylocation
local networkidofplayertocatch
local bountyfine
local bountytime
local bountyid
local bountylist2 = {}
local pending = false 


Citizen.CreateThread(function()
	TriggerServerEvent('syn_bountyhunting:getjob')
end)
RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
	TriggerServerEvent('syn_bountyhunting:getjob')
	--TriggerServerEvent('syn_bountyhunting:addtolist')
	if Config.joblocked then 
		Wait(1000)
		if (containsjob(Config.police, job) or containsjob(Config.bountyhunters, job)) then 
			for k,v in pairs(Config.Locations) do 
				local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
				SetBlipSprite(blip, -1747825963, 1)
				SetBlipScale(blip, 0.2)
				Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.language.bountyboard)
				table.insert( blips, blip )
			end
		end
	else
		for k,v in pairs(Config.Locations) do 
			local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
			SetBlipSprite(blip, -1747825963, 1)
			SetBlipScale(blip, 0.2)
			Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.language.bountyboard)
			table.insert( blips, blip )
		end
	end
end)

RegisterNetEvent("syn_bountyhunting:PlayerSelected")
AddEventHandler("syn_bountyhunting:PlayerSelected", function()
	TriggerServerEvent('syn_bountyhunting:getjob')
	Citizen.Wait(1000)
	if Config.joblocked then 
		if (containsjob(Config.police, job) or containsjob(Config.bountyhunters, job)) then 
			for k,v in pairs(Config.Locations) do 
				local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
				SetBlipSprite(blip, -1747825963, 1)
				SetBlipScale(blip, 0.2)
				Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.language.bountyboard)
				table.insert( blips, blip )
			end
		end
	else
		for k,v in pairs(Config.Locations) do 
			local blip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
			SetBlipSprite(blip, -1747825963, 1)
			SetBlipScale(blip, 0.2)
			Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.language.bountyboard)
			table.insert( blips, blip )
		end
	end
	
end)


RegisterNetEvent('syn_bountyhunting:recjob')
AddEventHandler('syn_bountyhunting:recjob', function(x)
	job = x 
end)

RegisterNetEvent('syn_bountyhunting:recplayers')
AddEventHandler('syn_bountyhunting:recplayers', function(x)
	players = x 
end)

RegisterNetEvent('syn_bountyhunting:findbounties')
AddEventHandler('syn_bountyhunting:findbounties', function(x)
	bountylist = x 
end)

RegisterNetEvent('syn_bountyhunting:findbounties2')
AddEventHandler('syn_bountyhunting:findbounties2', function(x)
	bountylist2 = x 
	pending = false 
end)



function deletethepeds(table)
	for k,v in pairs(table) do 
		DeletePed(v)
	end
end



function reset()
	Wait(5000)
	deletethepeds(createdenemy)
	--deletethepeds(deadenemies)
	deletethepeds(enemyarrest)
	deletethepeds(cleanup)
	DeletePed(escortped)
	party = {}
	spawned = false 
	tableofinfo = {}
	tableofinfolevel = {}
	createdenemy = {}
	type = ""
	inmission = false
	level = "0"
	deadenemies = {}
	rewardc = 0
	rewardg = 0
	deliverbody = false 
	switch = false 
	enemyarrest = {}
	spawnedarrest = false 
	escortped = nil
	startescort = false 
	deadesc = false 
	isincoopmission = false 
	cooptable = {}
	ClearGpsMultiRoute()
	RemoveBlip(missionblip)
	print('reset')
end

function resetx()
	deletethepeds(createdenemy)
	--deletethepeds(deadenemies)
	deletethepeds(enemyarrest)
	deletethepeds(cleanup)
	DeletePed(escortped)
	party = {}
	spawned = false 
	tableofinfo = {}
	tableofinfolevel = {}
	createdenemy = {}
	type = ""
	inmission = false
	level = "0"
	deadenemies = {}
	rewardc = 0
	rewardg = 0
	deliverbody = false 
	switch = false 
	enemyarrest = {}
	spawnedarrest = false 
	escortped = nil
	startescort = false 
	deadesc = false 
	ClearGpsMultiRoute()
	RemoveBlip(missionblip)
	print('resetx')
end

AddEventHandler("onResourceStop",function(resourceName)
    if resourceName == GetCurrentResourceName() then
		ClearGpsMultiRoute()
		DeletePed(escortped)
		RemoveBlip(missionblip)
        deletethepeds(createdenemy)
        deletethepeds(enemyarrest)
		--deletethepeds(deadenemies)
		for k,v in pairs(blips) do 
            RemoveBlip(v)
        end
		for k,v in pairs(playerbountyblips) do 
            RemoveBlip(v.blip)
        end
    end
end)

Citizen.CreateThread(function()
	Wait(500)
	local str = Config.language.openmenu
	openmenuprompt = PromptRegisterBegin()
	PromptSetControlAction(openmenuprompt, Config.keys["G"])
	str = CreateVarString(10, 'LITERAL_STRING', str)
	PromptSetText(openmenuprompt, str)
	PromptSetEnabled(openmenuprompt, 1)
	PromptSetVisible(openmenuprompt, 1)
	PromptSetStandardMode(openmenuprompt,1)
	PromptSetGroup(openmenuprompt, prompts)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,openmenuprompt,true)
	PromptRegisterEnd(openmenuprompt)

	local str2 = Config.language.endmission
	endmissionprompt = PromptRegisterBegin()
	PromptSetControlAction(endmissionprompt, Config.keys["F"])
	str2 = CreateVarString(10, 'LITERAL_STRING', str2)
	PromptSetText(endmissionprompt, str2)
	PromptSetEnabled(endmissionprompt, 1)
	PromptSetVisible(endmissionprompt, 1)
	PromptSetStandardMode(endmissionprompt,1)
	PromptSetGroup(endmissionprompt, prompts2)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,endmissionprompt,true)
	PromptRegisterEnd(endmissionprompt)

	local str3 = Config.language.deliver
	givebodyprompt = PromptRegisterBegin()
	PromptSetControlAction(givebodyprompt, Config.keys["G"])
	str3 = CreateVarString(10, 'LITERAL_STRING', str3)
	PromptSetText(givebodyprompt, str3)
	PromptSetEnabled(givebodyprompt, 1)
	PromptSetVisible(givebodyprompt, 1)
	PromptSetStandardMode(givebodyprompt,1)
	PromptSetGroup(givebodyprompt, prompts2)
	Citizen.InvokeNative(0xC5F428EE08FA7F2C,givebodyprompt,true)
	PromptRegisterEnd(givebodyprompt)
end)

AddEventHandler('menuapi:closemenu', function()
	if inmenu then 
		inmenu = false 
	end
end)


function coopreset()
	isincoopmission = false 
	cooptable = {}
end

RegisterNetEvent('syn_bountyhunting:addblipnetwork')
AddEventHandler('syn_bountyhunting:addblipnetwork', function(tablex)
	isincoopmission = true 
	cooptable = tablex
end)

RegisterNetEvent('syn_bountyhunting:resetco')
AddEventHandler('syn_bountyhunting:resetco', function()
	coopreset()
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
		if isincoopmission then 
			local IsTargetting = Citizen.InvokeNative(0x936F967D4BE1CE9D,PlayerId())
			if IsTargetting then 
				local target, entity  = GetEntityPlayerIsFreeAimingAt(PlayerId())
				if entity ~= 0 then 
					local isaimingnetwork = NetworkGetNetworkIdFromEntity(entity)
					for k,v in pairs(cooptable) do 
						if v == isaimingnetwork then 
							local blip = Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, entity)
							SetBlipSprite(blip,1481032477,true)
							Citizen.InvokeNative(0x662D364ABF16DE2F,blip,0xA9DBBFDC)
							isincoopmission = false 
						end
					end
				end
			end
		end
	end
end)

RegisterNetEvent('syn_bountyhunting:pending')
AddEventHandler('syn_bountyhunting:pending', function()
	pending = false 
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
		local player = PlayerPedId()
	  	local coords = GetEntityCoords(player)
	  	local sleep = true 
	  	for k, v in pairs(Config.Locations) do
			if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 2 and not inmenu and not inmission then
				if Config.joblocked then 
					if containsjob(Config.police, job) or containsjob(Config.bountyhunters, job) then 
			  			sleep = false
			  			local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.bh)
			  			PromptSetActiveGroupThisFrame(prompts, label)
			  			if Citizen.InvokeNative(0xC92AC953F0A982AE,openmenuprompt) then
							if not pending then 
								pending = true 
								loc = v.town
								if Config.onesync then 
									TriggerServerEvent("syn_bountyhunting:getbounties")
									TriggerServerEvent("syn_bountyhunting:getplayers")
								else
									TriggerServerEvent("syn_bountyhunting:getbounties2",GetPlayers2())
									TriggerServerEvent("syn_bountyhunting:getplayers2",GetPlayers2())
								end
								while pending do 
									Wait(500)
								end
								openmenu()
							end
			  			end
					end
				else
					sleep = false
			  		local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.bh)
			  		PromptSetActiveGroupThisFrame(prompts, label)
			  		if Citizen.InvokeNative(0xC92AC953F0A982AE,openmenuprompt) then
						if not pending then 
							pending = true 
							loc = v.town
							if Config.onesync then 
								TriggerServerEvent("syn_bountyhunting:getplayers")
								TriggerServerEvent("syn_bountyhunting:getbounties")
							else
								TriggerServerEvent("syn_bountyhunting:getbounties2",GetPlayers2())
								TriggerServerEvent("syn_bountyhunting:getplayers2",GetPlayers2())
							end
							while pending do 
								Wait(500)
							end
							openmenu()
						end
			  		end
				end 
			end
		end
		if sleep then 
			Wait(500)
		end
	end
end)
local cooldowntimer = Config.cooldown * 1000 * 60
Citizen.CreateThread(function() --
    while true do
        Citizen.Wait(10)
		if cooldown then 
			Wait(cooldowntimer)
			cooldown = false 
		end
	end
end)

function startmssion() -- change here
	inmenu = false 
	if not cooldown then 
		local available = {}
		if Config2.kill[loc] ~= nil then
			table.insert(available, 'kill')
		end 
		if Config3.arrest[loc] ~= nil then 
			table.insert(available, 'arrest') 
		end 
		if Config4.escort[loc] ~= nil then 
			table.insert(available, 'escort')
		end 
		print( )
		type = available[ math.random( #available ) ] 
		if type == 'kill' then 
			print("kill")
			local randomizer = math.random( 1, #Config2.kill[loc])
			tableofinfo = Config2.kill[loc][randomizer]
			tableofinfolevel = Config2.kill[loc][randomizer][level]
			if Config.vorp then
				TriggerEvent("vorp:TipBottom", Config.language.mist1, 4000)
			elseif Config.redem then
				TriggerEvent("redem_roleplay:ShowObjective", Config.language.mist1, 4000)
			end
			ClearGpsMultiRoute()
    	    StartGpsMultiRoute(0, true, true)
    	    local gps = tableofinfo.location
    	    AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
    	    SetGpsMultiRouteRender(true, 8, 8)
    	    missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    		SetBlipSprite(missionblip, 1779658797, 1)
    		SetBlipScale(missionblip, 0.2)
    		Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.known)
    	    Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0x6F85C3CE)

		elseif type == 'arrest' then
			print("arrest")
			local randomizer = math.random( 1, #Config3.arrest[loc])
			tableofinfo = Config3.arrest[loc][randomizer]
			tableofinfolevel = Config3.arrest[loc][randomizer][level]
			if Config.vorp then
				TriggerEvent("vorp:TipBottom", Config.language.gotomarked, 4000)
			elseif Config.redem then
				TriggerEvent("redem_roleplay:ShowObjective", Config.language.gotomarked, 4000)
			end
			ClearGpsMultiRoute()
    	    StartGpsMultiRoute(0, true, true)
    	    local gps = tableofinfo.location
    	    AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
    	    SetGpsMultiRouteRender(true, 8, 8)
    	    missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    		SetBlipSprite(missionblip, 1779658797, 1)
    		SetBlipScale(missionblip, 0.2)
    		Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.known)
    	    Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0x6F85C3CE)

		elseif type == 'escort' then 
			print("escort")
			local randomizer = math.random( 1, #Config4.escort[loc])
			print('Random escort number: '..randomizer)
			tableofinfo = Config4.escort[loc][randomizer]
			tableofinfolevel = Config4.escort[loc][randomizer][level]
			if Config.vorp then
				TriggerEvent("vorp:TipBottom", Config.language.escort, 4000)
			elseif Config.redem then
				TriggerEvent("redem_roleplay:ShowObjective", Config.language.escort, 4000)
			end
			ClearGpsMultiRoute()
    	    StartGpsMultiRoute(0, true, true)
    	    local gps = tableofinfo.location
    	    AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
    	    SetGpsMultiRouteRender(true, 8, 8)
    	    missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    		SetBlipSprite(missionblip, -1103135225, 1)
    		SetBlipScale(missionblip, 0.2)
    		Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.client)
    	    Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0xA9DBBFDC)
		end
		inmission = true
		cooldown = true 
	else
		if Config.vorp then
			TriggerEvent("vorp:TipBottom", Config.language.nojob, 4000)
		elseif Config.redem then
			TriggerEvent("redem_roleplay:ShowObjective", Config.language.nojob, 4000)
		end
	end
end

Citizen.CreateThread(function() 
	local timesSpawned = 0
	local timer
	while true do
        Citizen.Wait(10)
		if startescort and not deadesc then 
			if timesSpawned == 0 then
				timer = (tableofinfolevel.spawnrate + math.random(-15,15)) * 1000
				timesSpawned = timesSpawned + 1
			end
			Wait(timer)
		end
		if startescort and not deadesc then 
			local coords = GetEntityCoords(escortped)
			local keys = #tableofinfolevel.enemypedspool
			for k,v in pairs(tableofinfolevel.pedinfo) do
				local modelrandomizer = math.random( 1,keys)
				local modelname = tableofinfolevel.enemypedspool[modelrandomizer]
				local model = GetHashKey(modelname)
				RequestModel(model)
				if not HasModelLoaded(model) then 
					RequestModel(model) 
				end
				while not HasModelLoaded(model) or HasModelLoaded(model) == 0 or model == 1 do
					Citizen.Wait(1) 
				end
				local createdped = 0
				local spawnPosition = vector3(coords.x+25, coords.y +25, coords.z)
				while createdped == 0 do
					createdped = CreatePed(model, spawnPosition,true, true, true, true)
					Wait(500)
				end
				SetModelAsNoLongerNeeded(model)
				local spawnable = vector3(0, 0, 0)
        		local spawnable2 = vector3(0, 0, 0)
       			local nothing, roadpoint = GetClosestRoad(spawnPosition.x, spawnPosition.y, spawnPosition.z,0.0,25,spawnable,spawnable2,0,0,0.0,true)
        		local dist = GetDistanceBetweenCoords(spawnPosition,roadpoint, true)
				--if dist > 15 then 
				spawnPosition = roadpoint
				--end
				local height = 100
				SetEntityCoords(createdped, spawnPosition.x, spawnPosition.y, height + 0.0)
				FreezeEntityPosition(createdped, true)
				Wait(1000)
				local foundground, groundZ, normal  = GetGroundZAndNormalFor_3dCoord(spawnPosition.x, spawnPosition.y, height + 0.0)
				while not foundground do 
					height = height + 10
					foundground, groundZ, normal = GetGroundZAndNormalFor_3dCoord(spawnPosition.x, spawnPosition.y, height + 0.0)
					Wait(100)
				end
				SetEntityCoords(createdped, spawnPosition.x, spawnPosition.y, groundZ)
				FreezeEntityPosition(createdped, false)
				Citizen.InvokeNative(0xA91E6CF94404E8C9,createdped)		
				Citizen.InvokeNative(0x9587913B9E772D29, createdped, 0)
				Citizen.InvokeNative(0x4DB9D03AC4E1FA84, createdped, -1, -1, 0)	

				Citizen.InvokeNative(0x283978A15512B2FE, createdped, true)      
				if Config.showenemyblips then 
					Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, createdped)
				end
				table.insert( createdenemy,createdped)
				GiveWeaponToPed_2(createdped, v.weapon, 10, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
				SetCurrentPedWeapon(createdped, v.weapon, true)
				SetPedCombatMovement(createdped,v.style)
				if Config4.randomtarget then 
					local rx = math.random( 1,2 )
					if rx == 1 then 
						TaskCombatPed(createdped,PlayerPedId())
					else
						TaskCombatPed(createdped,escortped)
					end
				else
					TaskCombatPed(createdped,escortped)
				end
				SetPedCombatAttributes(createdped,46,true)
			end
			if timer > 180000 then 
				timer = 180000
			else 
				timer = timer + (30 + math.random(-5,5)) * 1000
			end
		else 
			timesSpawned = 0 
		end
	end
end)


Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1)
		local sleep = true 
		if inmission then
			sleep = false  
			local player = PlayerPedId()
	  		local coords = GetEntityCoords(player)
			local coords2 = tableofinfo.location
			local coords3 = tableofinfo.endmission
			if GetDistanceBetweenCoords(coords, coords2.x, coords2.y, coords2.z, true) < 120 and not switch and type ~= "escort" then
				RemoveBlip(missionblip)
				ClearGpsMultiRoute()
				if type == "kill" then 
					TriggerEvent("syn_bountyhunting:spawnkillai")
				elseif type == "arrest" then 
					TriggerEvent("syn_bountyhunting:spawnarrestai")
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.dontkill, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.dontkill, 4000)
					end
					ClearGpsMultiRoute()
        			StartGpsMultiRoute(0, true, true)
        			local gps = tableofinfo.endmission
        			AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
        			SetGpsMultiRouteRender(true, 8, 8)
        			missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    				SetBlipSprite(missionblip, -2108463156, 1)
    				SetBlipScale(missionblip, 0.2)
    				Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.delivery)
        			Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0xA9DBBFDC)
				end
				switch = true 
			elseif GetDistanceBetweenCoords(coords, coords2.x, coords2.y, coords2.z, true) < 10 and not switch and type == "escort" then
				RemoveBlip(missionblip)
				ClearGpsMultiRoute()
				TriggerEvent("syn_bountyhunting:spawnescort")
				if Config.vorp then
					TriggerEvent("vorp:TipBottom", Config.language.esdist, 4000)
				elseif Config.redem then
					TriggerEvent("redem_roleplay:ShowObjective", Config.language.esdist, 4000)
				end
				ClearGpsMultiRoute()
				StartGpsMultiRoute(0, true, true)
				local gps = tableofinfo.endmission
				AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
				SetGpsMultiRouteRender(true, 8, 8)
				missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
				SetBlipSprite(missionblip, -2108463156, 1)
				SetBlipScale(missionblip, 0.2)
				Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.cldist)
				Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0xA9DBBFDC)
				switch = true
			end
			if startescort then 
				local coords4 = GetEntityCoords(escortped)
				if IsEntityDead(player) then 
					cooldown = false
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.failed, 4000)
					end
				end
				if IsEntityDead(escortped) then 
					deadesc = true 
					cooldown = false
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.failed, 4000)
					end
				end
				if Citizen.InvokeNative(0xD453BB601D4A606E,escortped) then 
					cooldown = false
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.failed, 4000)
					end
				end
				if GetDistanceBetweenCoords(coords4, coords3.x, coords3.y, coords3.z, true) < 2 then 
					Wait(500)
					DeletePed(escortped)
					TriggerServerEvent("syn_bountyhunting:payment",party,rewardc,rewardg,#party)
					reset()
				end
			end
			if spawnedarrest then 
				for k,v in pairs(enemyarrest) do
					if IsEntityDead(v) then 
						cooldown = false
						table.remove(enemyarrest,k)
						table.insert( cleanup,v)
					end
				end
				if IsEntityDead(player) then 
					TriggerServerEvent("syn_bountyhunting:resetcoop",party)
					cooldown = false
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.failed, 4000)
					end
				end
				if #enemyarrest == 0 then
					TriggerServerEvent("syn_bountyhunting:resetcoop",party)
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", "Mission Over.", 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.missionover, 4000)
					end
				end
				if GetDistanceBetweenCoords(coords, coords3.x, coords3.y, coords3.z, true) < 2 then 
					local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.bh)
			  		PromptSetActiveGroupThisFrame(prompts2, label)
			  		if Citizen.InvokeNative(0xC92AC953F0A982AE,endmissionprompt) then
						TriggerServerEvent("syn_bountyhunting:resetcoop",party)
						reset()
						if Config.vorp then
							TriggerEvent("vorp:TipBottom", "Mission Over.", 4000)
						elseif Config.redem then
							TriggerEvent("redem_roleplay:ShowObjective", Config.language.missionover, 4000)
						end

			  		end
					if Citizen.InvokeNative(0xC92AC953F0A982AE,givebodyprompt) then
						local carriedped = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
						for k,v in pairs(enemyarrest) do 
							if v == carriedped then 
								DeletePed(v)
								TriggerServerEvent("syn_bountyhunting:payment",party,rewardc,rewardg,#party)
								table.remove(enemyarrest,k)
							end
						end
			  		end
				end 
			end
			if spawned then 
				for k,v in pairs(createdenemy) do 
					if IsEntityDead(v) then
						local network = NetworkGetNetworkIdFromEntity(v)
						table.insert( deadenemies,network)
						table.remove(createdenemy,k)
					end
				end
				if #createdenemy == 0 then 
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.gtd, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.gtd, 4000)
					end
					spawned = false 
					deliverbody = true 
					ClearGpsMultiRoute()
        			StartGpsMultiRoute(0, true, true)
        			local gps = coords3
        			AddPointToGpsMultiRoute(gps.x, gps.y, gps.z)
        			SetGpsMultiRouteRender(true, 8, 8)
        			missionblip = N_0x554d9d53f696d002(1664425300, gps.x, gps.y, gps.z)
    				SetBlipSprite(missionblip, -2108463156, 1)
    				SetBlipScale(missionblip, 0.2)
    				Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, Config.language.delivery)
        			Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0xA9DBBFDC)
				end
				if IsEntityDead(player) then 
					cooldown = false
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.failed, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.failed, 4000)
					end
				end
			end
			if deliverbody then 
				if GetDistanceBetweenCoords(coords, coords3.x, coords3.y, coords3.z, true) < 2 then 
					local label  = CreateVarString(10, 'LITERAL_STRING', Config.language.bh)
			  		PromptSetActiveGroupThisFrame(prompts2, label)
			  		if Citizen.InvokeNative(0xC92AC953F0A982AE,endmissionprompt) then
						reset()
						if Config.vorp then
							TriggerEvent("vorp:TipBottom", Config.language.missionover, 4000)
						elseif Config.redem then
							TriggerEvent("redem_roleplay:ShowObjective", Config.language.missionover, 4000)
						end
			  		end
					if Citizen.InvokeNative(0xC92AC953F0A982AE,givebodyprompt) then
						local carriedped = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
						local network = NetworkGetNetworkIdFromEntity(carriedped)
						for k,v in pairs(deadenemies) do 
							if v == network then 
								DeletePed(carriedped)
								TriggerServerEvent("syn_bountyhunting:payment",party,rewardc,rewardg,#party)
								table.remove(deadenemies,k)
							end
						end
			  		end
				end
				if #deadenemies == 0 then 
					reset()
					if Config.vorp then
						TriggerEvent("vorp:TipBottom", Config.language.missionover, 4000)
					elseif Config.redem then
						TriggerEvent("redem_roleplay:ShowObjective", Config.language.missionover, 4000)
					end
				end 
			end
		end
		if sleep then 
			Wait(500)
		end
	end
end)


RegisterNetEvent('syn_bountyhunting:spawnescort')
AddEventHandler('syn_bountyhunting:spawnescort', function()
	local keys = #tableofinfolevel.friendlypedspool
	local modelrandomizer = math.random( 1,keys)
	local modelname = tableofinfolevel.friendlypedspool[modelrandomizer]
	local model = GetHashKey(modelname)
	RequestModel(model)
	if not HasModelLoaded(model) then 
		RequestModel(model) 
	end
	while not HasModelLoaded(model) or HasModelLoaded(model) == 0 or model == 1 do
		Citizen.Wait(1) 
	end
	escortped = 0
	while escortped == 0 do
		escortped = CreatePed(model, tableofinfo.location.x, tableofinfo.location.y , tableofinfo.location.z,true, true, true, true)
		Wait(500)
	end
	SetBlockingOfNonTemporaryEvents(escortped, true) 
	Citizen.InvokeNative(0x283978A15512B2FE, escortped, true)      
	local blip = Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, escortped)
	SetBlipSprite(blip,-1103135225,true)
	Citizen.InvokeNative(0x662D364ABF16DE2F,blip,0xA9DBBFDC)
	SetBlockingOfNonTemporaryEvents(escortped, true)
	Citizen.InvokeNative(0x489FFCCCE7392B55, escortped, PlayerPedId())
	local hp = tableofinfolevel.hp
	SetPedMaxHealth(escortped,hp)
	Citizen.InvokeNative(0x166E7CF68597D8B5,escortped, hp)
	Citizen.InvokeNative(0xAC2767ED8BDFAB15,escortped, hp,0) 
	rewardc = tableofinfolevel.rewardcash 
	rewardg = tableofinfolevel.rewardgold 
	TaskGoToEntity(escortped, PlayerPedId(), -1, 1.0, 2.5, 0, 0 )
	local playerCoords = GetEntityCoords(PlayerPedId()) 
    TaskGoToCoordAnyMeans(escortped,playerCoords.x,playerCoords.y,playerCoords.z,3.5,0,0,0,0)
	Citizen.InvokeNative(0x489FFCCCE7392B55, escortped, PlayerPedId())

	startescort = true 
end)
Citizen.CreateThread(function() 
    while true do
       Citizen.Wait(10000)
		if startescort then 
			Citizen.InvokeNative(0x489FFCCCE7392B55, escortped, PlayerPedId())
		
		end
	end
end)


RegisterNetEvent('syn_bountyhunting:spawnarrestai')
AddEventHandler('syn_bountyhunting:spawnarrestai', function()
	local networktable = {}
	local keys = #tableofinfolevel.pedspool
	for k,v in pairs(tableofinfolevel.targetinfo) do
		local modelrandomizer = math.random( 1,keys)
		local modelname = tableofinfolevel.pedspool[modelrandomizer]
		local model = GetHashKey(modelname)
		RequestModel(model)
		if not HasModelLoaded(model) then 
			RequestModel(model) 
		end
		while not HasModelLoaded(model) or HasModelLoaded(model) == 0 or model == 1 do
			Citizen.Wait(1) 
		end
		local createdped = 0
		while createdped == 0 do
			createdped = CreatePed(model, v.x, v.y , v.z,true, true, true, true)
			Wait(500)
		end
		Citizen.InvokeNative(0x283978A15512B2FE, createdped, true)      
		local blip = Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, createdped)
		SetBlipSprite(blip,1481032477,true)
		Citizen.InvokeNative(0x662D364ABF16DE2F,blip,0xA9DBBFDC)
		table.insert( enemyarrest,createdped)
		GiveWeaponToPed_2(createdped, v.weapon, 10, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
		SetCurrentPedWeapon(createdped, v.weapon, true)
		SetPedCombatMovement(createdped,v.style)
		TaskCombatPed(createdped,PlayerPedId())
		SetPedCombatAttributes(createdped,46,true)

		local keysparty = #party
		if keysparty > 1 then 
			local network = NetworkGetNetworkIdFromEntity(createdped)
			table.insert( networktable, network )
			TriggerServerEvent("syn_bountyhunting:addnetwork",party,networktable)
		end
	end
	for k,v in pairs(tableofinfolevel.pedinfo) do
		local modelrandomizer = math.random( 1,keys)
		local modelname = tableofinfolevel.pedspool[modelrandomizer]
		local model = GetHashKey(modelname)
		RequestModel(model)
		if not HasModelLoaded(model) then 
			RequestModel(model) 
		end
		while not HasModelLoaded(model) or HasModelLoaded(model) == 0 or model == 1 do
			Citizen.Wait(1) 
		end
		local createdped = 0
		while createdped == 0 do
			createdped = CreatePed(model, v.x, v.y , v.z,true, true, true, true)
			Wait(500)
		end
		Citizen.InvokeNative(0x283978A15512B2FE, createdped, true)      
		if Config.showenemyblips then 
			Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, createdped)
		end
		table.insert( createdenemy,createdped)
		GiveWeaponToPed_2(createdped, v.weapon, 10, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
		SetCurrentPedWeapon(createdped, v.weapon, true)
		SetPedCombatMovement(createdped,v.style)
		TaskCombatPed(createdped,PlayerPedId())
		SetPedCombatAttributes(createdped,46,true)
	end 
	rewardc = tonumber(string.format("%.2f", tableofinfolevel.rewardcash / #enemyarrest))
	rewardg = tonumber(string.format("%.2f", tableofinfolevel.rewardgold / #enemyarrest))
	spawnedarrest = true 
end)


RegisterNetEvent('syn_bountyhunting:spawnkillai')
AddEventHandler('syn_bountyhunting:spawnkillai', function()
	local keys = #tableofinfolevel.pedspool
	for k,v in pairs(tableofinfolevel.pedinfo) do
		local modelrandomizer = math.random( 1,keys)
		local modelname = tableofinfolevel.pedspool[modelrandomizer]
		local model = GetHashKey(modelname)
		RequestModel(model)
		if not HasModelLoaded(model) then 
			RequestModel(model) 
		end
		while not HasModelLoaded(model) or HasModelLoaded(model) == 0 or model == 1 do
			Citizen.Wait(1) 
		end
		local createdped = 0
		while createdped == 0 do
			createdped = CreatePed(model, v.x, v.y , v.z,true, true, true, true)
			Wait(500)
		end
		Citizen.InvokeNative(0x283978A15512B2FE, createdped, true)      
		if Config.showenemyblips then 
			Citizen.InvokeNative(0x23f74c2fda6e7c61, 953018525, createdped)
		end
		table.insert( createdenemy,createdped)
		GiveWeaponToPed_2(createdped, v.weapon, 10, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
		SetCurrentPedWeapon(createdped, v.weapon, true)
		SetPedCombatMovement(createdped,v.style)
		TaskCombatPed(createdped,PlayerPedId())
		SetPedCombatAttributes(createdped,46,true)
	end
	rewardc = tonumber(string.format("%.2f", tableofinfolevel.rewardcash / #createdenemy))
	rewardg = tonumber(string.format("%.2f", tableofinfolevel.rewardgold / #createdenemy))
	spawned = true 
end)

function openbountynui()
	local allowtake = false 
	if containsjob(Config.bountyhunters, job) or not Config.joblocked2 then 
		allowtake = true 
	end
	inmenu = true
	SetNuiFocus(true,true)
	SendNUIMessage({
		action = "show",
		job = allowtake,
		bounties = bountylist,
	})
end

RegisterNUICallback('closeui', function(data)
    SetNuiFocus(false,false) 
    inmenu = false
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
		local sleep = true 
		local player = PlayerPedId()
		local coords = GetEntityCoords(player)
		for k,v in pairs(Config.deliveryLocations) do 
			if v.town == playerbountydeliverylocation then 
				if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 2 then 
					sleep = false  
					if bountymissionactive then
						if Citizen.InvokeNative(0xA911EE21EDF69DAF,PlayerPedId()) then 
							local carriedped = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
							if NetworkGetNetworkIdFromEntity(carriedped) == networkidofplayertocatch then
								local serverid = GetPlayerServerId(NetworkGetPlayerIndexFromPed(carriedped))
								TriggerServerEvent("syn_bountyhunting:paybountyhunter",serverid,bountyfine)
								TriggerServerEvent("syn_bountyhunting:removelisting",bountyid)
								Config.sendtojail(serverid,bountytime)
								for g,m in pairs(playerbountyblips) do 
									if m.id == bountyid then 
										RemoveBlip(m.blip)
									end
								end
								bountymissionactive = false
							end
						end
					end
				end
			end
		end
		if sleep then 
			Wait(500)
		end
	end
end)

function openmenu()
	MenuData.CloseAll()
	inmenu = true
	local elements = {
		{label = Config.language.startmission, value = 'startmission' , desc = Config.language.vary},
		{label = Config.language.checkbb, value = 'checkbounty' , desc = Config.language.checkbb2}
	}
	if containsjob(Config.police, job) or not Config.joblocked3 then 
		table.insert( elements,
		{label = Config.language.addbt, value = 'addbounty' , desc = Config.language.addbt2}
		)
		table.insert( elements,
		{label = Config.language.rbt, value = 'removebounty' , desc = Config.language.rbt2}
		)
	end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.bhmen,
		subtext    = Config.language.options,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'startmission') then 
			resetx()
			selectlevel()
		end
		if(data.current.value == 'addbounty') then 
			addbountymenu()
		end
		if(data.current.value == 'checkbounty') then
			menu.close() 
			openbountynui()
		end
		if(data.current.value == 'removebounty') then
			MenuData.CloseAll()
			pending = true 
			TriggerServerEvent("syn_bountyhunting:getbounties3")
			while pending do 
				Wait(500)
			end
			removebountymenu()
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

RegisterNUICallback('missionbounty', function(data)
    SetNuiFocus(false,false) 
    inmenu = false
	for k,v in pairs(bountylist) do 
		if v.id == data.id then 
			bountyid = v.id
			bountyfine = tonumber(v.info[1].fine)
			bountytime = tonumber(v.info[1].jail)
			networkidofplayertocatch = v.networkId
			playerbountydeliverylocation = v.info[1].loc
			bountymissionactive = true 
			local blipname = v.namexyz
			for k,v in pairs (Config.deliveryLocations) do 
				if playerbountydeliverylocation == v.town then 
					local missionblip = N_0x554d9d53f696d002(1664425300, v.x, v.y, v.z)
    				SetBlipSprite(missionblip, -2108463156, 1)
    				SetBlipScale(missionblip, 0.2)
    				Citizen.InvokeNative(0x9CB1A1623062F402, missionblip, "Deliver "..blipname)
        			Citizen.InvokeNative(0x662D364ABF16DE2F,missionblip,0xA9DBBFDC)
					table.insert( playerbountyblips, {blip = missionblip, id = bountyid} )
				end
			end
		end
	end
end)

function removebountymenu() -- findme
	MenuData.CloseAll()
	inmenu = true
	local elements = {
	}
		for k,v in pairs(bountylist2) do 
			table.insert( elements,
			{label = v.namexyz..Config.language.dollar..v.info[1].fine, value = 'delete' , desc = v.id}
			)
		end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.bhmen,
		subtext    = Config.language.options,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'delete') then 
			menu.close() 
			inmenu = false 
			TriggerServerEvent("syn_bountyhunting:removelisting",data.current.desc)
		end
	end,
	function(data, menu)
		menu.close()
	end)
end

function confirmmenu()
	MenuData.CloseAll()
	inmenu = true
	local elements = {
		{label = Config.language.crimdesc, value = 'crimedesc' , desc = crimedescription},
		{label = Config.language.fine, value = 'fine' , desc = Config.language.dollar..fine},
		{label = Config.language.jt, value = 'jail' , desc = jailtime..Config.language.minutes},
		{label = Config.language.confirm, value = 'confirm' , desc = Config.language.confirm},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.bhmen,
		subtext    = Config.language.options,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'confirm') then 
			inmenu = false 
			local tablex = {} 
			table.insert( tablex, {loc = loc,desc = crimedescription,fine = fine,jail = jailtime,img = imageurl} )
			local tableencoded = json.encode(tablex)
			TriggerServerEvent("syn_bountyhunting:createbounty",addedbountyserverid,tableencoded)
			imageurl = ""
			crimedescription = ""
			fine = 0
			jailtime = 0
			menu.close()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end

function addbountymenu2()
	MenuData.CloseAll()
	inmenu = true
	local elements = {
		{label = Config.language.crimdesc, value = 'crimedesc' , desc = Config.language.sdes},
		{label = Config.language.fine, value = 'fine' , desc = Config.language.fine2},
		{label = Config.language.jt, value = 'jail' , desc = Config.language.jt2},
		{label = Config.language.imgurl, value = 'img' , desc = Config.language.imgurl2},
		{label = Config.language.confirm, value = 'confirm' , desc = Config.language.confirm2},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.bhmen,
		subtext    = Config.language.options,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'crimedesc') then 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.crimdesc, function(cb)
				local descx =     cb
				if descx ~= nil and descx ~= 0 and descx ~= "close" and descx ~= "confirm" then
					crimedescription = descx
				end
			end)
		end
		if(data.current.value == 'img') then 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.imgurl, function(cb)
				local descx =     cb
				if descx ~= nil and descx ~= 0 and descx ~= "close" and descx ~= "confirm" then
					imageurl = descx
				end
			end)
		end
		if(data.current.value == 'fine') then 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.dollar, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx ~= 0 and descx ~= "close" and descx ~= "confirm" then
					if descx > Config.maxfine then 
						descx = Config.maxfine
					end
					fine = descx
				end
			end)
		end
		if(data.current.value == 'jail') then 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.minutes, function(cb)
				local descx =     tonumber(cb)
				if descx ~= nil and descx ~= 0 and descx ~= "close" and descx ~= "confirm" then
					if descx > Config.maxtime then 
						descx = Config.maxtime
					end
					jailtime = descx
				end
			end)
		end
		if(data.current.value == 'confirm') then 
			confirmmenu()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end

function addbountymenu()
	MenuData.CloseAll()
	inmenu = true
	local elements = {
	}
		for k,v in pairs(players) do 
			table.insert( elements,
				{label = v.name, value = "newbounty" , desc = k}
			)
		end
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.bhmen,
		subtext    = Config.language.options,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == 'newbounty') then -- reset here
			addedbountyserverid = data.current.desc
			addbountymenu2()
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end



function addplayertoparty(x)
	table.insert(party, {id = x})
end

RegisterNetEvent("syn_bountyhunting:add1more")
AddEventHandler("syn_bountyhunting:add1more", function(string)
    Wait(500)
	TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, string, function(cb)
		local playerid =     tonumber(cb)
		if playerid ~= nil and playerid ~= 0 and playerid ~= "close" and playerid ~= "confirm" and not contains(party, playerid) then
			addplayertoparty(playerid)
			startmssion()
		end
	end)
end)
RegisterNetEvent("syn_bountyhunting:add2more")
AddEventHandler("syn_bountyhunting:add2more", function(string)
    Wait(500)
	TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, string, function(cb)
		local playerid =     tonumber(cb)
		if playerid ~= nil and playerid ~= 0 and playerid ~= "close" and playerid ~= "confirm" and not contains(party, playerid) then
			addplayertoparty(playerid)
			local string = Config.language.string4
			TriggerEvent("syn_bountyhunting:add1more",string)
		end
	end)
end)

function selectlevel()
	MenuData.CloseAll()
	inmenu = true
	local elements = {
		{label = Config.language.man1, value = '1' , desc = Config.language.tman1},
		{label = Config.language.man2, value = '2' , desc = Config.language.tman2},
		{label = Config.language.man3, value = '3' , desc = Config.language.tman3},
		{label = Config.language.man4, value = '4' , desc = Config.language.tman4},
	}
   MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
	{
		title    = Config.language.ptsize,
		subtext    = Config.language.ptsize2,
		align    = 'top-left',
		elements = elements,
	},
	function(data, menu)
		if(data.current.value == '1') then
			level = "1"
			addplayertoparty(GetPlayerServerId(PlayerId()))
			startmssion()
			menu.close()
			inmenu = false 
		end
		if(data.current.value == '2') then
			level = '2'
			addplayertoparty(GetPlayerServerId(PlayerId()))
			menu.close()
			inmenu = false 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.string2, function(cb)
				local playerid =     tonumber(cb)
				if playerid ~= nil and playerid ~= 0 and playerid ~= "close" and playerid ~= "confirm" and not contains(party, playerid) then
					addplayertoparty(playerid)
					startmssion()
				end
			end)
		end
		if(data.current.value == '3') then
			level = "3"
			addplayertoparty(GetPlayerServerId(PlayerId()))
			menu.close()
			inmenu = false 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.string2, function(cb)
				local playerid =     tonumber(cb)
				if playerid ~= nil and playerid ~= 0 and playerid ~= "close" and playerid ~= "confirm" and not contains(party, playerid) then
					addplayertoparty(playerid)
					local string = Config.language.string3
					TriggerEvent("syn_bountyhunting:add1more",string)
				end
			end)
		end
		if(data.current.value == '4') then
			level = '4'
			addplayertoparty(GetPlayerServerId(PlayerId()))
			menu.close()
			inmenu = false 
			TriggerEvent("syn_inputs:sendinputs", Config.language.confirm, Config.language.string2, function(cb)
				local playerid =     tonumber(cb)
				if playerid ~= nil and playerid ~= 0 and playerid ~= "close" and playerid ~= "confirm" and not contains(party, playerid) then
					addplayertoparty(playerid)
					local string = Config.language.string3
					TriggerEvent("syn_bountyhunting:add2more",string)
				end
			end)
		end
		
	end,
	function(data, menu)
		menu.close()
	end)
end


