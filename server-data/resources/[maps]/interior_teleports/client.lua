local hasAlreadyEnteredMarker, currentZone = false, nil
local blip = {}
local PromptGorup = GetRandomIntInRange(0, 0xffffff)

function SetupUseDoorPrompt()
    Citizen.CreateThread(function()
        local str = 'Use'
        UseDoorPrompt = PromptRegisterBegin()
        PromptSetControlAction(UseDoorPrompt, 0xE8342FF2)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(UseDoorPrompt, str)
        PromptSetEnabled(UseDoorPrompt, true)
        PromptSetVisible(UseDoorPrompt, true)
        PromptSetHoldMode(UseDoorPrompt, true)
        PromptSetGroup(UseDoorPrompt, PromptGorup)
        PromptRegisterEnd(UseDoorPrompt)
    end)
end

Citizen.CreateThread(function()
    SetupUseDoorPrompt()
    while Config.UseTeleports do
        Citizen.Wait(500)
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local isInMarker, tempZone = false

        for k,v in pairs(Config.Teleports) do
            local dist = #(coords - v.outside)
            local dist2 = #(coords - v.inside)
            if dist < 1.5 then
                isInMarker = true
                tempZone = k
            elseif dist2 < 1.5 then
                isInMarker = true
                tempZone = k
            end
        end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
            currentZone = tempZone
            ZoneLoop(currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
            currentZone = nil
        end
    end
end)

function ZoneLoop(zone)
    Citizen.CreateThread(function()
        repeat
            Wait(0)
            local player = PlayerPedId()
            local coords = GetEntityCoords(player)
            for k,v in pairs(Config.Teleports[zone]) do
                    local dist = #(coords - v)
                    if dist < 1.25 then
                        local label  = CreateVarString(10, 'LITERAL_STRING', "Door")
                        PromptSetActiveGroupThisFrame(PromptGorup, label)
                        if PromptHasHoldModeCompleted(UseDoorPrompt) then
                            if k == 'outside' then
                                DoScreenFadeOut(1000)
                                Wait(1000)
                                FreezeEntityPosition(PlayerPedId(),true)
                                SetEntityCoords(player, Config.Teleports[zone].inside)
                                Wait(3000)
                                FreezeEntityPosition(PlayerPedId(),false)
                                while IsPedFalling(PlayerPedId()) == 1 do 
                                    wait(1000)
                                    SetEntityCoords(player, Config.Teleports[zone].inside)
                                end 
                                DoScreenFadeIn(1000)
                                Wait(1000)
                            elseif k == 'inside' then
                                DoScreenFadeOut(1000)
                                Wait(1000)
                                FreezeEntityPosition(PlayerPedId(),true)
                                SetEntityCoords(player, Config.Teleports[zone].outside)
                                Wait(3000)
                                FreezeEntityPosition(PlayerPedId(),false)
                                while IsPedFalling(PlayerPedId()) == 1 do 
                                    wait(1000)
                                    SetEntityCoords(player, Config.Teleports[zone].outside)
                                end 
                                DoScreenFadeIn(1000)
                                Wait(1000)
                            end
                        end
                    end
            end
        until currentZone ~= zone
    end)
end

-- Citizen.CreateThread(function()
--     if Config.Blips == true then
--         for k,v in pairs(Config.Teleports) do
--             blip[k] = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v.outside)
--             SetBlipSprite(blip[k], -392465725, 1)
--             Citizen.InvokeNative(0x9CB1A1623062F402, blip[k], 'Moonshine Shack')
--         end
--     end
-- end)

AddEventHandler("playerSpawned", function(spawn)
    if Config.UseTeleports == false then
        for _,v in pairs(Config.Teleports) do
            for _,r in pairs(v.interior_sets) do
                if not IsInteriorEntitySetActive(v.interior, r) then
                    ActivateInteriorEntitySet(v.interior, r)
                end
            end
        end
    end
end)

-- AddEventHandler('onResourceStop', function(resource)
--     if resource == GetCurrentResourceName() then
--         if Config.Blips == true then
--             for k,v in pairs(Config.Teleports) do
--                 RemoveBlip(blip[k])
--             end
--         end
--     end
-- end)
