Citizen.CreateThread(function()
    WarMenu.CreateMenu('blacksmith', _U('blacksmith_menu'))
    WarMenu.SetSubTitle('blacksmith', _U('select_option'))
    WarMenu.CreateSubMenu('closeMenu', 'blacksmith', "Close")

    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(PlayerPedId(), true)
        for k,v in pairs(Config.BlacksmithLocations) do
            local distance = GetDistanceBetweenCoords(v.x, v.y, v.z, pos.x, pos.y, pos.z, false)
            if distance <= 1.5 then
                DrawTxt(_U('press_to'), 0.3, 0.95, 0.4, 0.4, true, 255, 255, 255, 255, false)
                if IsControlJustReleased(0, 0xD9D0E1C0) then
                    TriggerServerEvent('ncrp_blacksmith:getjob', 'blacksmith')
                end
            end
        end
        if WarMenu.IsMenuOpened('blacksmith') then
            if WarMenu.Button(_U('free_player')) then
                local closestPlayer, closestDistance = GetClosestPlayer()
                if closestPlayer == -1 or closestDistance > 3.0 then
                    TriggerEvent("vorp:TipBottom", _U('no_nearby_players'), 3000)
                else
                    TriggerEvent("ncrp_blacksmith:free")
                end
            elseif WarMenu.Button(_U('take_lantern')) then
                    WarMenu.CloseMenu()
                    exports['progressBars']:startUI(10000, "Smithing item...")
                    Citizen.Wait(10000)
                    TriggerServerEvent('ncrp_blacksmith:takelantern')
            elseif WarMenu.Button(_U('take_hatchet')) then
                    WarMenu.CloseMenu()
                    exports['progressBars']:startUI(10000, "Smithing item...")
                    Citizen.Wait(10000)
                    TriggerServerEvent('ncrp_blacksmith:takehatchet')
            elseif WarMenu.Button(_U('take_pickaxe')) then
                    WarMenu.CloseMenu()
                    exports['progressBars']:startUI(10000, "Smithing item...")
                    Citizen.Wait(10000)
                    TriggerServerEvent('ncrp_blacksmith:takepickaxe')
            elseif WarMenu.Button(_U('take_goldpan')) then
                    WarMenu.CloseMenu()
                    exports['progressBars']:startUI(10000, "Smithing item...")
                    Citizen.Wait(10000)
                    TriggerServerEvent('ncrp_blacksmith:takegoldpan')
            elseif WarMenu.Button(_U('take_necklace')) then
                    WarMenu.CloseMenu()
                    exports['progressBars']:startUI(10000, "Smithing item...")
                    Citizen.Wait(10000)
                    TriggerServerEvent('ncrp_blacksmith:takenecklace')
            end
            WarMenu.Display()    
        end
        Citizen.Wait(0)
    end
end)



    RegisterNetEvent('ncrp_blacksmith:auth')
    AddEventHandler('ncrp_blacksmith:auth', function(type)
        WarMenu.OpenMenu(type)
    end)
    
    RegisterNetEvent('ncrp_blacksmith:free')
    AddEventHandler('ncrp_blacksmith:free', function(closestPlayer)
        local closestPlayerPed = GetPlayerPed(closestPlayer)
        exports['progressBars']:startUI(10000, "Removing Shackles...")
        Citizen.Wait(10000)
        SetEnableHandcuffs(closestPlayerPed, false)
    end)

-- Citizen.CreateThread(function()
--     for k,v in pairs(Config.Blacksmith1Locations) do
--         local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.x, v.y, v.z)
--         SetBlipSprite(blip, 1879260108, 1)
--         Citizen.InvokeNative(0x9CB1A1623062F402, blip, _U('map_blip'))
--     end
--end)
