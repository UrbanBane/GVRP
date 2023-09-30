local blips = {}

Citizen.CreateThread(function()
    WarMenu.CreateMenu('saloon', _U('saloon_menu'))
    WarMenu.SetSubTitle('saloon', _U('select_option'))
    WarMenu.CreateSubMenu('options', 'saloon', _U('select_option'))
    WarMenu.CreateMenu('saloon_house', _U('saloon_menu'))
    WarMenu.CreateSubMenu('options_house', 'saloon_house', _U('select_option'))
    WarMenu.CreateSubMenu('options2_house', 'saloon_house', _U('select_option2'))


    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(PlayerPedId(), true)
        for k,v in pairs(Config.SaloonLocations) do
            local distance = GetDistanceBetweenCoords(v.x, v.y, v.z, pos.x, pos.y, pos.z, false)
            if distance <= 1.25 then
                DrawTxt(_U('press_to'), 0.3, 0.95, 0.4, 0.4, true, 255, 255, 255, 255, false)
                if IsControlJustReleased(0, 0xD9D0E1C0) then
                    TriggerServerEvent('smery_saloon:getjob', 'saloon_house')
                end
            end
        end
        if WarMenu.IsMenuOpened('saloon') then
                if WarMenu.MenuButton(_U('saloon_options'), 'options') then
                end
                WarMenu.Display()
        elseif WarMenu.IsMenuOpened('options') then
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('saloon_house') then
            if WarMenu.MenuButton(_U('saloon_options'), 'options_house') then
            elseif WarMenu.MenuButton(_U('select_option2'), 'options2_house') then
            end
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('options_house') then
            if WarMenu.Button(_U('take_beer')) then
                WarMenu.CloseMenu()
                exports['progressBars']:startUI(1000, "Preparing drink...")
                Citizen.Wait(1000)
                TriggerServerEvent('smery_saloon:takebeer')
            elseif WarMenu.Button(_U('take_cognac')) then
                WarMenu.CloseMenu()
                exports['progressBars']:startUI(1000, "Preparing drink...")
                Citizen.Wait(1000)
                TriggerServerEvent('smery_saloon:takecognac')
            elseif WarMenu.Button(_U('take_rootbeer')) then
                WarMenu.CloseMenu()
                exports['progressBars']:startUI(1000, "Preparing drink...")
                Citizen.Wait(1000)
                TriggerServerEvent('smery_saloon:takerootbeer')
            elseif WarMenu.Button(_U('take_sarsaparilla')) then
                WarMenu.CloseMenu()
                exports['progressBars']:startUI(1000, "Preparing drink...")
                Citizen.Wait(1000)
                TriggerServerEvent('smery_saloon:takesarsaparilla')                                    
            end
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('options2_house') then
            WarMenu.CloseMenu()
            WarMenu.Display()
        end 
        Citizen.Wait(10)
    end
end)



    RegisterNetEvent('smery_saloon:auth')
    AddEventHandler('smery_saloon:auth', function(type)
        WarMenu.OpenMenu(type)
    end)
    

--[[ Citizen.CreateThread(function()
    for k,v in pairs(Config.Saloon1Locations) do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.x, v.y, v.z)
        SetBlipSprite(blip, 1879260108, 1)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, _U('map_blip'))
    end
end) ]]

--[[ Citizen.CreateThread(function()
    Citizen.Wait(500)
	if Config.SaloonLocations then
    	Citizen.Wait(1000)
		for k,v in pairs(Config.SaloonLocations) do 
			if v.showblip then
				local blip = N_0x554d9d53f696d002(1664425300, v.Pos.x, v.Pos.y, v.Pos.z)
        		SetBlipSprite(blip, 1879260108, 1)
        		SetBlipScale(blip, 0.2)
        		Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.Name)
				table.insert( blips, blip )
			end
		end
	end
end) ]]

Citizen.CreateThread(function()
        if Config.SaloonBlips then
            Citizen.Wait(1000)
	        for k,v in pairs(Config.SaloonBlips) do 
                if v.showblip then 
		        local blip = N_0x554d9d53f696d002(1664425300, v.Pos.x, v.Pos.y, v.Pos.z)
    	        SetBlipSprite(blip, 1879260108, 1)
    	        Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.Name)
                table.insert(blips, blip)
            end
        end 
	end
end)