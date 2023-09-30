local next_robbery_cooldown = 0
local prompt_active = false
local sheriff_online = 0
local current_robbery_time = nil
local current_robbery_coords_x = nil
local current_robbery_coords_y = nil
local current_robbery_coords_z = nil
local current_min_reward = 0
local current_max_reward = 0
local has_lockpick = 0

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    Citizen.Wait(1000)
	TriggerServerEvent('bulgar_shopRobbery_vorp:playerLoaded')
end)

RegisterNetEvent("bulgar_shopRobbery:cooldown_check")
AddEventHandler("bulgar_shopRobbery:cooldown_check", function(cdstatus)
	next_robbery_cooldown = cdstatus
end)

RegisterNetEvent('bulgar_shopRobbery:count_sheriffs_cl_cb')
AddEventHandler('bulgar_shopRobbery:count_sheriffs_cl_cb', function()
	sheriff_online = sheriff_online + 1
	Wait(12000)
	sheriff_online = 0
end)

RegisterNetEvent('bulgar_shopRobbery:has_lockpick_cb')
AddEventHandler('bulgar_shopRobbery:has_lockpick_cb', function(lpstatus)
	has_lockpick = lpstatus
end)

math.randomseed(GetGameTimer())
local shopRobberyPrompt
local shopRobberyPromptGroup = GetRandomIntInRange(0, 0xffffff)

function CreatePrompt()
    Citizen.CreateThread(function()
        local str = 'Start Robbery'
        local wait = 0
        shopRobberyPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(shopRobberyPrompt, 0xC7B5340A)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(shopRobberyPrompt, str)
        PromptSetEnabled(shopRobberyPrompt, true)
        PromptSetVisible(shopRobberyPrompt, true)
        PromptSetHoldMode(shopRobberyPrompt, true)
        PromptSetGroup(shopRobberyPrompt, shopRobberyPromptGroup)
        PromptRegisterEnd(shopRobberyPrompt)
    end)
end

Citizen.CreateThread(function()
    Wait(1000)
    CreatePrompt()
    while true do
        Citizen.Wait(1)

        for key, value in pairs(Config.RobberyLocations) do
            if IsPlayerNearCoords(value.x, value.y, value.z) then
                if prompt_active == false then
                    local shopRobberyPromptName  = CreateVarString(10, 'LITERAL_STRING', "Start Robbery")
                    PromptSetActiveGroupThisFrame(shopRobberyPromptGroup, shopRobberyPromptName)
                    if PromptHasHoldModeCompleted(shopRobberyPrompt) then
						prompt_active = true

						has_lockpick = 1
						TriggerServerEvent("bulgar_shopRobbery:has_lockpick")
						exports['progressBars']:startUI(2000, "Checking Inventory...")
						Wait(2000)
						
						if has_lockpick > 0 then
							sheriff_online = 0
							for i,v in pairs(Config.SheriffJobName) do
								TriggerServerEvent("bulgar_shopRobbery:count_sheriffs", v)
							end

							exports['progressBars']:startUI(5000, "Checking the number of Sheriffs...")
							Wait(5000)
						
							if sheriff_online >= Config.MinimumSheriffsOnline then
								if next_robbery_cooldown < 1 then
									local lpick = lockpick()
									
									if lpick then
										if next_robbery_cooldown < 1 then -- Double check to avoid duplication.
											TriggerServerEvent("bulgar_shopRobbery:next_robbery_cooldown_enable")

											current_robbery_coords_x = value.x
											current_robbery_coords_y = value.y
											current_robbery_coords_z = value.z
											current_min_reward = value.min_reward
											current_max_reward = value.max_reward
											current_robbery_time = Config.RobberyTime
											
											SetEntityCoords(PlayerPedId(), value.x, value.y, value.z-1.0)
											SetEntityHeading(PlayerPedId(), value.heading)

											RequestAnimDict('script_common@jail_cell@unlock@key')
											while not HasAnimDictLoaded('script_common@jail_cell@unlock@key') do
												Citizen.Wait(50)
											end
											TaskPlayAnim(PlayerPedId(), 'script_common@jail_cell@unlock@key', "action", 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
											
											if Config.UseWitnessPlugin then
												for i,v in pairs(Config.SheriffJobName) do
													TriggerEvent("redemrp_witness:CallWitness", "Shop Robbery", "I saw someone robbing a store", v)
												end
											else
												for i,v in pairs(Config.SheriffJobName) do
													jobs = {v}
													blip = {
														blipsprite = 2119977580,
														Name = 'Shop Robbery',
														coords = GetEntityCoords(PlayerPedId())
													}
													TriggerServerEvent("syn_alert:sendalert",jobs,"I saw someone robbing a store",blip,false)
												end
											end
										else
											exports.pNotify:SendNotification({text = "Currently the robbery cannot be done the cooldown is active.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
											prompt_active = false		
										end
									elseif not lpick then
										exports.pNotify:SendNotification({text = "Robbery Failed.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
										prompt_active = false
										TriggerServerEvent("bulgar_shopRobbery:remove_lockpick")
									end
								else
									exports.pNotify:SendNotification({text = "Currently the robbery cannot be done the cooldown is active.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
									prompt_active = false								
								end
							else
								exports.pNotify:SendNotification({text = "There arent enough online sheriffs.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
								prompt_active = false
							end
						else
							exports.pNotify:SendNotification({text = "You need a lockpick.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
							prompt_active = false						
						end
                    end
                end
            end
        end
    end
end)

function IsPlayerNearCoords(x, y, z)
    local playerx, playery, playerz = table.unpack(GetEntityCoords(PlayerPedId(), 0))
    local distance = Vdist(playerx, playery, playerz, x, y, z)

    if distance < 1.2 then
        return true
    end
end

Citizen.CreateThread(function()
    while true do
		if current_robbery_time ~= nil then
			if current_robbery_time <= 0 then
				current_robbery_time = nil
				current_robbery_coords_x = nil
				current_robbery_coords_y = nil
				current_robbery_coords_z = nil
				prompt_active = false
				
				ClearPedTasksImmediately(PlayerPedId())
				ClearPedSecondaryTask(PlayerPedId())

				local reward = math.random(current_min_reward, current_max_reward)

				TriggerEvent("vorp:NotifyLeft", "Shop Robbery", "You Have Stolen "..reward.."$", "generic_textures", "tick", 8000, "COLOR_WHITE")

				TriggerServerEvent("bulgar_shopRobbery:givereward", reward)
			else
				local player_coords = GetEntityCoords(PlayerPedId(), true)

				if GetDistanceBetweenCoords(player_coords, current_robbery_coords_x, current_robbery_coords_y, current_robbery_coords_z, true) > 1.5 then -- Cancel if wrong distance.
					current_robbery_time = nil
					current_robbery_coords_x = nil
					current_robbery_coords_y = nil
					current_robbery_coords_z = nil
					prompt_active = false

					ClearPedTasksImmediately(PlayerPedId())
					ClearPedSecondaryTask(PlayerPedId())

					exports.pNotify:SendNotification({text = "Robbery Canceled.", type = "error", layout = "centerRight", killer = false, progressBar = true, timeout = math.random(5000, 5000)})
				end

				if current_robbery_time ~= nil then
					current_robbery_time = current_robbery_time - 1
				end
			end
		end
		Citizen.Wait(1000)
	end
end)

Citizen.CreateThread(function ()
	local LETMESLEEP = 1000

    while true do
        if current_robbery_time ~= nil then
			LETMESLEEP = 0
			local pedCoords = GetEntityCoords(PlayerPedId())
			DrawText3D2(pedCoords.x, pedCoords.y, pedCoords.z+1, math.floor(current_robbery_time)..' seconds left.')
		else
			LETMESLEEP = 1000
        end
        Citizen.Wait(LETMESLEEP)
    end
end)

function DrawText3D2(x, y, z, text)
    local onScreen,_x,_y=GetHudScreenPositionFromWorldPosition(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoord())
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(1)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
    local factor = (string.len(text)) / 150
    DrawSprite("generic_textures", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 100, 1, 1, 190, 0)
end