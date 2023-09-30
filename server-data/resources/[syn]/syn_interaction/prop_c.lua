
----Uncomment to allow placement of a camera prop, change cords to wherever you want, link to coords or usable item, your choice, code all works.



-- -- Citizen.CreateThread(function()
-- -- 	while true do
-- -- 		Citizen.Wait(1)
-- -- 		local coords = GetEntityCoords(PlayerPedId())
-- --     if (Vdist(coords.x, coords.y, coords.z, -286.3942, 796.4553, 118.8803) < 2.0) then
-- --             DrawTxt("Press [~e~G~q~] to Place Camera.", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
-- --             if IsControlJustReleased(0, 0x760A9C6F) then -- g
-- --                 TriggerEvent("camera:deploy")
-- --                 --print('openedwarmenu')

-- --             end
-- --         end
-- --     end
-- -- end)

-- function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
--     local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
--    SetTextScale(w, h)
--    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
--    SetTextCentre(centre)
--    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
--    Citizen.InvokeNative(0xADA9255D, 10);
--    DisplayText(str, x, y)
-- end




function FPrompt(text, button, hold)
    Citizen.CreateThread(function()
        proppromptdisplayed=false
        PropPrompt=nil
        local str = text or "Put Away"
        local buttonhash = button or 0x3B24C470
        local holdbutton = hold or false
        PropPrompt = PromptRegisterBegin()
        PromptSetControlAction(PropPrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(PropPrompt, str)
        PromptSetEnabled(PropPrompt, false)
        PromptSetVisible(PropPrompt, false)
        PromptSetHoldMode(PropPrompt, holdbutton)
        PromptRegisterEnd(PropPrompt)
    end)
end

function LMPrompt(text, button, hold)
    Citizen.CreateThread(function()
        UsePrompt=nil
        local str = text or "Use"
        local buttonhash = button or 0x07B8BEAF
        local holdbutton = hold or false
        UsePrompt = PromptRegisterBegin()
        PromptSetControlAction(UsePrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(UsePrompt, str)
        PromptSetEnabled(UsePrompt, false)
        PromptSetVisible(UsePrompt, false)
        PromptSetHoldMode(UsePrompt, holdbutton)
        PromptRegisterEnd(UsePrompt)
    end)
end

function EPrompt(text, button, hold)
    Citizen.CreateThread(function()
        ChangeStance=nil
        local str = text or "Use"
        local buttonhash = button or 0xD51B784F
        local holdbutton = hold or false
        ChangeStance = PromptRegisterBegin()
        PromptSetControlAction(ChangeStance, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(ChangeStance, str)
        PromptSetEnabled(ChangeStance, false)
        PromptSetVisible(ChangeStance, false)
        PromptSetHoldMode(ChangeStance, holdbutton)
        PromptRegisterEnd(ChangeStance)
    end)
end

--[[ --Proximity Prompt for taking down camera
function SetupCameraPrompt()
    Citizen.CreateThread(function()
        cameraprompt=false
        CameraPickup=nil
        local str = 'Take Down Camera'
        CameraPickup = PromptRegisterBegin()
        PromptSetControlAction(CameraPickup, 0x3B24C470)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraPickup, str)
        PromptSetEnabled(CameraPickup, false)
        PromptSetVisible(CameraPickup, false)
        PromptSetHoldMode(CameraPickup, true)
        PromptRegisterEnd(CameraPickup)
    end)
end

--Places Camera Prop, Triggers Camera Animation, and removes Camera from Inventory
RegisterNetEvent('camera:deploy')
AddEventHandler('camera:deploy', function(source)
    local _source = source
	if camera == nil then
		local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), -0.06, 0.75, -1.1))
		camera = CreateObject(GetHashKey("P_CAMERA01X"), x,y,z, true, false, true)
		SetEntityHeading(camera, GetEntityHeading(PlayerPedId())-180)
		Anim(PlayerPedId(),"script_rc@masn@leadout@rc4","idle_base_mason",3500,1)
		ExecuteCommand('close') -- Close the Inventory Window
	end
end)

--Allows for pickup of camera: removes prop & adds back into inventory
Citizen.CreateThread(function(source)
	local _source = source
	local player = PlayerPedId()
    SetupCameraPrompt()
	while true do
		Citizen.Wait(1000)
		local coordsf = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.45, 0.0)
        local cameraprop = GetClosestObjectOfType(coordsf, 1.0, GetHashKey("P_CAMERA01X"), false)
        if cameraprop ~= 0 then
			if cameraprompt == false then
				PromptSetEnabled(CameraPickup, true)
				PromptSetVisible(CameraPickup, true)
				cameraprompt = true
			end
			if PromptHasHoldModeCompleted(CameraPickup) then
				PromptSetEnabled(CameraPickup, false)
				PromptSetVisible(CameraPickup, false)
				cameraprompt = false
				DeleteEntity(camera)
				camera = nil
				TriggerServerEvent('prop:camerapickup')
				StopAnim("script_rc@masn@leadout@rc4","idle_base_mason")
			end
		else
			if cameraprompt == true then
			    PromptSetEnabled(CameraPickup, false)
			    PromptSetVisible(CameraPickup, false)
			    cameraprompt = false
			end
            Wait(3000)
		end
	end
end) ]]

--Ledger animation
RegisterNetEvent('prop:ledger')
AddEventHandler('prop:ledger', function() 
    FPrompt("Put Away", 0x3B24C470, false)
    ExecuteCommand('close')
        
    RequestAnimDict("amb_work@world_human_write_notebook@female_a@idle_c")
    while not HasAnimDictLoaded("amb_work@world_human_write_notebook@female_a@idle_c") do
        Citizen.Wait(100)
    end

    if not IsEntityPlayingAnim(ped, "amb_work@world_human_write_notebook@female_a@idle_c", "idle_h", 3) then
        local ped = PlayerPedId()
        local male = IsPedMale(ped)
        local ledger = CreateObject(GetHashKey('P_AMB_CLIPBOARD_01'), x, y, z, true, true, true)
        local pen = CreateObject(GetHashKey('P_PEN01X'), x, y, z, true, true, true)
        local lefthand = GetEntityBoneIndexByName(ped, "SKEL_L_Hand")
        local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Hand")
        Wait(100)
        if male then
            AttachEntityToEntity(pen, ped, righthand, 0.105, 0.055, -0.13, -5.0, 0.0, 0.0, true, true, false, true, 1, true)
            AttachEntityToEntity(ledger, ped, lefthand, 0.17, 0.07, 0.08, 80.0, 160.0, 180.0, true, true, false, true, 1, true)
        else
            AttachEntityToEntity(pen, ped, righthand, 0.095, 0.045, -0.095, -5.0, 0.0, 0.0, true, true, false, true, 1, true)
            AttachEntityToEntity(ledger, ped, lefthand, 0.17, 0.07, 0.08, 70.0, 155.0, 185.0, true, true, false, true, 1, true)
        end
        Anim(PlayerPedId(),"amb_work@world_human_write_notebook@female_a@idle_c","idle_h",-1,31)
        Wait(1000)
	    if proppromptdisplayed == false then
		    PromptSetEnabled(PropPrompt, true)
		    PromptSetVisible(PropPrompt, true)
		    proppromptdisplayed = true
	    end

        while IsEntityPlayingAnim(ped, "amb_work@world_human_write_notebook@female_a@idle_c", "idle_h", 3) do
            Wait(1)
		    if IsControlJustReleased(0, 0x3B24C470) then
			    PromptSetEnabled(PropPrompt, false)
			    PromptSetVisible(PropPrompt, false)
			    proppromptdisplayed = false
			    StopAnimTask(PlayerPedId(), 'amb_work@world_human_write_notebook@female_a@idle_c', "idle_h", 1.0)
			    DeleteEntity(ledger)
                DeleteEntity(pen)
			    break
		    end
        end
        PromptSetEnabled(PropPrompt, false)
		PromptSetVisible(PropPrompt, false)
		proppromptdisplayed = false
		StopAnimTask(PlayerPedId(), 'amb_work@world_human_write_notebook@female_a@idle_c', "idle_h", 1.0)
		DeleteEntity(ledger)
        DeleteEntity(pen)
        RemoveAnimDict("amb_work@world_human_write_notebook@female_a@idle_c")
    end
end)


---Animations for Drinkin Booze, I dont use since i use poke_licor, but might be of use for helpful snippets


-- --Beer drinking animation
-- RegisterNetEvent('prop:beer')
-- AddEventHandler('prop:beer', function() 
--     PlaySoundFrontend("Core_Full", "Consumption_Sounds", true, 0)
-- 	ExecuteCommand('close')
--     FPrompt("Finish Drinking", 0x3B24C470, false)
--     local ped = PlayerPedId()
--     local male = IsPedMale(ped)
--     local x,y,z = table.unpack(GetEntityCoords(ped, true))
--     local beer = CreateObject(GetHashKey('p_bottleBeer01x'), x, y, z + 0.2, true, true, true)
--     local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")
--     if male then
--     if not IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@male_a@idle_a", "idle_a", 3) then
--         Wait(100)
--         Anim(ped,"amb_rest_drunk@world_human_drinking@male_a@idle_a","idle_a",-1,31)
--         AttachEntityToEntity(beer, ped,boneIndex, 0.07, -0.0200, 0.12250, 0.024, -160.0, -40.0, true, true, false, true, 1, true)
--         Wait(1000)
--     end
--     else --if female
--     if not IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@female_a@idle_a", "idle_b", 3) then
--         Wait(100)
--         Anim(ped,"amb_rest_drunk@world_human_drinking@female_a@idle_a","idle_b",-1,31)
--         AttachEntityToEntity(beer, ped,GetEntityBoneIndexByName(ped, "SKEL_R_Hand"), 0.035, -0.03, -0.068, -50.0, 65.0, 0.0, true, true, false, true, 1, true)
--         Wait(1000)
--     end
--     end

--     if proppromptdisplayed == false then
-- 		PromptSetEnabled(PropPrompt, true)
-- 		PromptSetVisible(PropPrompt, true)
-- 		proppromptdisplayed = true
-- 	end

--     while IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@male_a@idle_a", "idle_a", 3)
--        or IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@female_a@idle_a", "idle_b", 3) do
--         Wait(1)
-- 		if IsControlJustReleased(0, 0x3B24C470) then
-- 			PromptSetEnabled(PropPrompt, false)
-- 			PromptSetVisible(PropPrompt, false)
-- 			proppromptdisplayed = false

--             if male then
--                 StopAnimTask(ped, 'amb_rest_drunk@world_human_drinking@male_a@idle_a', "idle_a", 1.0)
--                 Wait(10)
--                 Anim(ped,"amb_wander@upperbody_player_discard_items@whiskey@arthur@trans","whiskey_trans_nodrink",-1, 24)
--                 Wait(5650)
--                 local rx, ry, rz = table.unpack(GetEntityRotation(beer, true))
--                 local facing = math.rad(GetEntityHeading(ped))
--                 DetachEntity(beer, true, true)
--                 SetEntityRotation(beer, rx,ry,rz, 1, true)
--                 SetEntityVelocity(beer, math.cos(facing), math.sin(facing), 1.5)
--             else
--                 StopAnimTask(PlayerPedId(), 'amb_rest_drunk@world_human_drinking@female_a@idle_a', "idle_b", 1.0)
--                 Wait(1000)
--                 DetachEntity(beer, true, true)
--                 ClearPedSecondaryTask(ped)
--             end
-- 			break
-- 		end
--     end
--     PromptSetEnabled(PropPrompt, false)
-- 	PromptSetVisible(PropPrompt, false)
-- 	proppromptdisplayed = false
--     if male then
--         StopAnimTask(ped, 'amb_rest_drunk@world_human_drinking@male_a@idle_a', "idle_a", 1.0)
--         local rx, ry, rz = table.unpack(GetEntityRotation(beer, true))
--         DetachEntity(beer, true, true)
--         ClearPedSecondaryTask(ped)
--         RemoveAnimDict("amb_rest_drunk@world_human_drinking@male_a@idle_a")
--     else
--         StopAnimTask(PlayerPedId(), 'amb_rest_drunk@world_human_drinking@female_a@idle_a', "idle_b", 1.0)
--         DetachEntity(beer, true, true)
--         ClearPedSecondaryTask(ped)
--         RemoveAnimDict("amb_rest_drunk@world_human_drinking@female_a@idle_a")
--     end
-- end)

-- --Whisky drinking animation
-- RegisterNetEvent('prop:whiskey')
-- AddEventHandler('prop:whiskey', function() 
--     PlaySoundFrontend("Core_Full", "Consumption_Sounds", true, 0)
-- 	ExecuteCommand('close')
--     FPrompt("Finish Drinking", 0x3B24C470, false)
--     local ped = PlayerPedId()
--     local male = IsPedMale(ped)
--     local x,y,z = table.unpack(GetEntityCoords(ped, true))
--     local beer = CreateObject(GetHashKey('p_cs_shotglass01x'), x, y, z + 0.2, true, true, true)
--     local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")
--     if male then
--         if not IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@male_a@idle_a", "idle_a", 3) then
--             Wait(100)
--             Anim(ped,"amb_rest_drunk@world_human_drinking@male_a@idle_a","idle_a",-1,31)
--             AttachEntityToEntity(beer, ped,boneIndex, 0.02, -0.0200, 0.02250, 0.024, -160.0, -40.0, true, true, false, true, 1, true)
--             Wait(1000)
--         end
--     else --if female
--         if not IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@female_a@idle_a", "idle_b", 3) then
--             Wait(100)
--             Anim(ped,"amb_rest_drunk@world_human_drinking@female_a@idle_a","idle_b",-1,31)
--             AttachEntityToEntity(beer, ped,GetEntityBoneIndexByName(ped, "SKEL_R_Finger12"), 0.0, -0.05, 0.02, -150.0, 0.0, 0.0, true, true, false, true, 1, true)
--             Wait(1000)
--         end
--     end

--     if proppromptdisplayed == false then
-- 		PromptSetEnabled(PropPrompt, true)
-- 		PromptSetVisible(PropPrompt, true)
-- 		proppromptdisplayed = true
-- 	end

--     while IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@male_a@idle_a", "idle_a", 3)
--        or IsEntityPlayingAnim(ped, "amb_rest_drunk@world_human_drinking@female_a@idle_a", "idle_b", 3) do
--         Wait(1)
-- 		if IsControlJustReleased(0, 0x3B24C470) then
-- 			PromptSetEnabled(PropPrompt, false)
-- 			PromptSetVisible(PropPrompt, false)
-- 			proppromptdisplayed = false

--             if male then
--                 StopAnimTask(ped, 'amb_rest_drunk@world_human_drinking@male_a@idle_a', "idle_a", 1.0)
--                 Wait(10)
--                 Anim(ped,"amb_wander@upperbody_player_discard_items@whiskey@arthur@trans","whiskey_trans_nodrink",-1, 24)
--                 Wait(5650)
--                 local rx, ry, rz = table.unpack(GetEntityRotation(beer, true))
--                 local facing = math.rad(GetEntityHeading(ped))
--                 DetachEntity(beer, true, true)
--                 SetEntityRotation(beer, rx,ry,rz, 1, true)
--                 SetEntityVelocity(beer, math.cos(facing), math.sin(facing), 1.5)
--             else
--                 StopAnimTask(PlayerPedId(), 'amb_rest_drunk@world_human_drinking@female_a@idle_a', "idle_b", 1.0)
--                 Wait(1000)
--                 DetachEntity(beer, true, true)
--                 ClearPedSecondaryTask(ped)
--             end
-- 			break
-- 		end
--     end
--     PromptSetEnabled(PropPrompt, false)
-- 	PromptSetVisible(PropPrompt, false)
-- 	proppromptdisplayed = false
--     if male then
--         StopAnimTask(ped, 'amb_rest_drunk@world_human_drinking@male_a@idle_a', "idle_a", 1.0)
--         local rx, ry, rz = table.unpack(GetEntityRotation(beer, true))
--         DetachEntity(beer, true, true)
--         ClearPedSecondaryTask(ped)
--         RemoveAnimDict("amb_rest_drunk@world_human_drinking@male_a@idle_a")
--     else
--         StopAnimTask(PlayerPedId(), 'amb_rest_drunk@world_human_drinking@female_a@idle_a', "idle_b", 1.0)
--         DetachEntity(beer, true, true)
--         ClearPedSecondaryTask(ped)
--         RemoveAnimDict("amb_rest_drunk@world_human_drinking@female_a@idle_a")
--     end
-- end)

--PocketWatch
RegisterNetEvent('prop:watch')
AddEventHandler('prop:watch', function() 
    RequestAnimDict('mech_inventory@item@pocketwatch@unarmed@base')
	FPrompt()
    while (not HasAnimDictLoaded('mech_inventory@item@pocketwatch@unarmed@base')) do
		Citizen.Wait(300)
    end
	ExecuteCommand('close')
	prop_name = 'S_INV_POCKETWATCH03X'
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped, true))
	local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
	local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Hand")
    if male then
	    AttachEntityToEntity(prop, ped,boneIndex, 0.085,0.025,-0.035,  15.0,190.0,-140.0, true, true, false, true, 1, true)
    else
        AttachEntityToEntity(prop, ped,boneIndex, 0.075,0.025,-0.045,  35.0,200.0,-140.0, true, true, false, true, 1, true)
    end
	local UnholsterTime = GetAnimDuration('mech_inventory@item@pocketwatch@unarmed@base', "unholster")
	Anim(ped,"mech_inventory@item@pocketwatch@unarmed@base","unholster",UnholsterTime*1000,0)
    Wait(UnholsterTime*1000)
    Anim(ped,"mech_inventory@item@pocketwatch@unarmed@base","inspect_base",-1,31)
    Wait(100)
    if proppromptdisplayed == false then
		PromptSetEnabled(PropPrompt, true)
		PromptSetVisible(PropPrompt, true)
		proppromptdisplayed = true
	end
    while IsEntityPlayingAnim(ped, "mech_inventory@item@pocketwatch@unarmed@base", "inspect_base", 3) do
        Wait(1)
		if IsControlJustReleased(0, 0x3B24C470) then
			PromptSetEnabled(PropPrompt, false)
			PromptSetVisible(PropPrompt, false)
			proppromptdisplayed = false
			StopAnimTask(ped, 'mech_inventory@item@pocketwatch@unarmed@base', "inspect_base", 1.0)
			Anim(ped,"mech_inventory@item@pocketwatch@unarmed@base","holster",1000,0)
            Citizen.Wait(2000)
			DeleteEntity(prop)
			break
		end
    end
    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false)
	proppromptdisplayed = false
	StopAnimTask(ped, 'mech_inventory@item@pocketwatch@unarmed@base', "inspect_base", 1.0)
	DeleteEntity(prop)
end, false)

--Book
RegisterNetEvent('prop:book')
AddEventHandler('prop:book', function() 
    FPrompt()
    ExecuteCommand('close')
        
    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_HUMAN_SIT_GROUND_READING_BOOK"), -1, true, "StartScenario", 0, false)
    Wait(1)

	if proppromptdisplayed == false then
		PromptSetEnabled(PropPrompt, true)
		PromptSetVisible(PropPrompt, true)
		proppromptdisplayed = true
	end

    while IsPedUsingAnyScenario(PlayerPedId()) do
        Wait(1)
		if IsControlJustReleased(0, 0x3B24C470) then
			PromptSetEnabled(PropPrompt, false)
			PromptSetVisible(PropPrompt, false)
			proppromptdisplayed = false
			ClearPedTasks(PlayerPedId())
			break
		end
    end
    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false)
	proppromptdisplayed = false
    Wait(5000)
    SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)
end)

--Sketchbook
RegisterNetEvent('prop:sketchbook')
AddEventHandler('prop:sketchbook', function() 
    FPrompt()
    ExecuteCommand('close')
        
    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_HUMAN_SIT_GROUND_SKETCHING"), -1, true, "StartScenario", 0, false)
    Wait(1)

	if proppromptdisplayed == false then
		PromptSetEnabled(PropPrompt, true)
		PromptSetVisible(PropPrompt, true)
		proppromptdisplayed = true
	end

    while IsPedUsingAnyScenario(PlayerPedId()) do
        Wait(1)
		if IsControlJustReleased(0, 0x3B24C470) then
			PromptSetEnabled(PropPrompt, false)
			PromptSetVisible(PropPrompt, false)
			proppromptdisplayed = false
			ClearPedTasks(PlayerPedId())
			break
		end
    end
    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false)
	proppromptdisplayed = false
    Wait(5000)
    SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)
end)

--[[ --Pocket Mirror
RegisterNetEvent('prop:silverpocketmirror')
AddEventHandler('prop:silverpocketmirror', function() 
    FPrompt()
    ExecuteCommand('close')
        
    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_HUMAN_POCKET_MIRROR"), -1, true, "StartScenario", 0, false)
    Wait(1)

	if proppromptdisplayed == false then
		PromptSetEnabled(PropPrompt, true)
		PromptSetVisible(PropPrompt, true)
		proppromptdisplayed = true
	end

    while IsPedUsingAnyScenario(PlayerPedId()) do
        Wait(1)
		if IsControlJustReleased(0, 0x3B24C470) then
			PromptSetEnabled(PropPrompt, false)
			PromptSetVisible(PropPrompt, false)
			proppromptdisplayed = false
			ClearPedTasks(PlayerPedId())
			break
		end
    end
    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false)
	proppromptdisplayed = false
    Wait(5000)
    SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)
end) ]]

--Pocket Mirror
RegisterNetEvent('prop:silverpocketmirror')
AddEventHandler('prop:silverpocketmirror', function() 
    FPrompt("Put Away", 0x3B24C470, false)
    EPrompt("Clean Up", 0xD51B784F, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local male = IsPedMale(ped)
    local x,y,z = table.unpack(GetEntityCoords(ped, true))

    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_HUMAN_POCKET_MIRROR"), -1, true, "StartScenario", 0, false)
    Wait(1000)
    
    PlayEntityAnim(pocketmirror, "nonfan_trans_fan_fan", "amb_wander@code_human_fan_wander@female_a@trans", 0.0, 0, 0, "OpenMirror", 0.0, 0)
    Wait(2233)
    Anim(ped,"amb_misc@world_human_pocket_mirror@female_a@idle_b","idle_d",-1,31)
    
    while not IsEntityPlayingAnim(ped,"amb_misc@world_human_pocket_mirror@female_a@idle_b","idle_d", 3) do
        Wait(100)
    end

    if proppromptdisplayed == false then
        PromptSetEnabled(PropPrompt, true)
        PromptSetVisible(PropPrompt, true)
        PromptSetEnabled(UsePrompt, true)
        PromptSetVisible(UsePrompt, true)
        proppromptdisplayed = true
	end

    while  IsEntityPlayingAnim(ped, "amb_misc@world_human_pocket_mirror@female_a@idle_b","idle_d", 3) do

        Wait(5)
		if IsControlJustReleased(0, 0x3B24C470) then
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            proppromptdisplayed = false

            Anim(ped, "amb_misc@world_human_pocket_mirror@female_a@stand_exit", "exit_front_pocketmirror", -1, 30)
            Wait(100)
            PlayEntityAnim(pocketmirror, "exit_front_pocketmirror", "amb_misc@world_human_pocket_mirror@female_a@stand_exit", 0.0, 0, 0, "CloseMirror", 0.0, 0)
            Wait(1800)
            DeleteEntity(pocketmirror)
            ClearPedSecondaryTask(ped)
            ClearPedTasks(ped)
            Wait(10)
		end
        
        if IsControlJustReleased(0, 0x07B8BEAF) then
            Wait(500)
            if IsControlPressed(0, 0x07B8BEAF) then
                Anim(ped, "amb_misc@world_human_pocket_mirror@female_a@idle_c","idle_g", -1, 30, 0)
                Wait(11800)
                Anim(ped, "amb_misc@world_human_pocket_mirror@female_a@idle_b","idle_d", -1, 31, 0)
                Wait(100)
            else
                Anim(ped, "amb_misc@world_human_pocket_mirror@female_a@idle_a","idle_a", -1, 30, 0)
                Wait(5400)
                Anim(ped, "amb_misc@world_human_pocket_mirror@female_a@idle_b","idle_d", -1, 31, 0)
                Wait(100)
            end
        end
    end

    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    proppromptdisplayed = false

    DetachEntity(pocketmirror, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_wander@code_human_fan_wander@female_a@trans")
    RemoveAnimDict("amb_misc@world_human_pocket_mirror@female_a@idle_b")
    RemoveAnimDict("amb_misc@world_human_pocket_mirror@female_a@idle_a")
    RemoveAnimDict("amb_misc@world_human_pocket_mirror@female_a@idle_c")
    Wait(100)
    ClearPedTasks(ped)
end)

--Cigarette
RegisterNetEvent('prop:cigarettes')
AddEventHandler('prop:cigarettes', function() 
    FPrompt("Finish Smoking", 0x3B24C470, false)
    LMPrompt("Inhale", 0x07B8BEAF, false)
    EPrompt("Change Stance", 0xD51B784F, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local male = IsPedMale(ped)
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local cigarette = CreateObject(GetHashKey('P_CIGARETTE01X'), x, y, z + 0.2, true, true, true)
    local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")
    local mouth = GetEntityBoneIndexByName(ped, "skel_head")
    --Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 500.0, false )
    --PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    if male then
        AttachEntityToEntity(cigarette, ped, mouth, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
        Anim(ped,"amb_rest@world_human_smoking@male_c@stand_enter","enter_back_rf",9400,0)
        Wait(1000)
        AttachEntityToEntity(cigarette, ped, righthand, 0.03, -0.01, 0.0, 0.0, 90.0, 0.0, true, true, false, true, 1, true)
        Wait(1000)
        AttachEntityToEntity(cigarette, ped, mouth, -0.017, 0.1, -0.01, 0.0, 90.0, -90.0, true, true, false, true, 1, true)
        Wait(3000)
        AttachEntityToEntity(cigarette, ped, righthand, 0.017, -0.01, -0.01, 0.0, 120.0, 10.0, true, true, false, true, 1, true)
        Wait(1000)
        Anim(ped,"amb_rest@world_human_smoking@male_c@base","base",-1,30)
        RemoveAnimDict("amb_rest@world_human_smoking@male_c@stand_enter")
        Wait(1000)
    else --female
        AttachEntityToEntity(cigarette, ped, mouth, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
        Anim(ped,"amb_rest@world_human_smoking@female_c@base","base",-1,30)
        Wait(1000)
        AttachEntityToEntity(cigarette, ped, righthand, 0.01, 0.0, 0.01, 0.0, -160.0, -130.0, true, true, false, true, 1, true)
        Wait(2500)
    end

    local stance="c"

    if proppromptdisplayed == false then
		PromptSetEnabled(PropPrompt, true)
		PromptSetVisible(PropPrompt, true)
		PromptSetEnabled(UsePrompt, true)
		PromptSetVisible(UsePrompt, true)
        PromptSetEnabled(ChangeStance, true)
		PromptSetVisible(ChangeStance, true)
		proppromptdisplayed = true
	end

    if male then
        while  IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_c@base","base", 3)
            or IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base","base", 3)
            or IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_d@base","base", 3)
            or IsEntityPlayingAnim(ped, "amb_wander@code_human_smoking_wander@male_a@base","base", 3) do

            Wait(5)
		    if IsControlJustReleased(0, 0x3B24C470) then
			    PromptSetEnabled(PropPrompt, false)
			    PromptSetVisible(PropPrompt, false)
                PromptSetEnabled(UsePrompt, false)
		        PromptSetVisible(UsePrompt, false)
                PromptSetEnabled(ChangeStance, false)
		        PromptSetVisible(ChangeStance, false)
			    proppromptdisplayed = false

                ClearPedSecondaryTask(ped)
                Anim(ped, "amb_rest@world_human_smoking@male_a@stand_exit", "exit_back", -1, 1)
                Wait(2800)
                DetachEntity(cigarette, true, true)
                SetEntityVelocity(cigarette, 0.0,0.0,-1.0)
                Wait(1500)
                ClearPedSecondaryTask(ped)
                ClearPedTasks(ped)
                Wait(10)
		    end
            if IsControlJustReleased(0, 0xD51B784F) then
                if stance=="c" then
                    Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30)
                    Wait(1000)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", 3) do
                        Wait(100)
                    end    
                    stance="b"
                elseif stance=="b" then
                    Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30)
                    Wait(1000)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_d@base","base", 3) do
                        Wait(100)
                    end
                    stance="d"
                elseif stance=="d" then
                    Anim(ped, "amb_rest@world_human_smoking@male_d@trans", "d_trans_a", -1, 30)
                    Wait(4000)
                    Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                    while not IsEntityPlayingAnim(ped,"amb_wander@code_human_smoking_wander@male_a@base","base", 3) do
                        Wait(100)
                    end
                    stance="a"
                else --stance=="a"
                    Anim(ped, "amb_rest@world_human_smoking@male_a@trans", "a_trans_c", -1, 30)
                    Wait(4233)
                    Anim(ped,"amb_rest@world_human_smoking@male_c@base","base",-1,30,0)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_c@base","base", 3) do
                        Wait(100)
                    end
                    stance="c"
                end
            end
        
            if stance=="c" then
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@male_c@idle_a","idle_b", -1, 30, 0)
                        Wait(21166)
                        Anim(ped, "amb_rest@world_human_smoking@male_c@base","base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@male_c@idle_a","idle_a", -1, 30, 0)
                        Wait(8500)
                        Anim(ped, "amb_rest@world_human_smoking@male_c@base","base", -1, 30, 0)
                        Wait(100)
                    end
                end
            elseif stance=="b" then
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@idle_c","idle_g", -1, 30, 0)
                        Wait(13433)
                        Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@idle_a", "idle_a", -1, 30, 0)
                        Wait(3199)
                        Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30, 0)
                        Wait(100)
                    end
                end
            elseif stance=="d" then
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@male_d@idle_a","idle_b", -1, 30, 0)
                        Wait(7366)
                        Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@male_d@idle_c", "idle_g", -1, 30, 0)
                        Wait(7866)
                        Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30, 0)
                        Wait(100)
                    end
                end
            else --stance=="a"
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@male_a@idle_a", "idle_b", -1, 30, 0)
                        Wait(12533)
                        Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@male_a@idle_a","idle_a", -1, 30, 0)
                        Wait(8200)
                        Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                        Wait(100)
                    end
                end
            end
        end
    else --if female
        while  IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_c@base", "base", 3) 
            or IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_b@base", "base", 3)
            or IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_a@base", "base", 3)do

            Wait(5)
		    if IsControlJustReleased(0, 0x3B24C470) then
			    PromptSetEnabled(PropPrompt, false)
			    PromptSetVisible(PropPrompt, false)
                PromptSetEnabled(UsePrompt, false)
		        PromptSetVisible(UsePrompt, false)
                PromptSetEnabled(ChangeStance, false)
		        PromptSetVisible(ChangeStance, false)
			    proppromptdisplayed = false

                ClearPedSecondaryTask(ped)
                Anim(ped, "amb_rest@world_human_smoking@female_b@trans", "b_trans_fire_stand_a", -1, 1)
                Wait(3800)
                DetachEntity(cigarette, true, true)
                Wait(800)
                ClearPedSecondaryTask(ped)
                ClearPedTasks(ped)
                Wait(10)
		    end
            if IsControlJustReleased(0, 0xD51B784F) then
                if stance=="c" then
                    Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30)
                    Wait(1000)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_b@base", "base", 3) do
                        Wait(100)
                    end    
                    stance="b"
                elseif stance=="b" then
                    Anim(ped, "amb_rest@world_human_smoking@female_b@trans", "b_trans_a", -1, 30)
                    Wait(5733)
                    Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_a@base","base", 3) do
                        Wait(100)
                    end
                    stance="a"
                else --stance=="a"
                    Anim(ped,"amb_rest@world_human_smoking@female_c@base","base",-1,30)
                    Wait(1000)
                    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_c@base","base", 3) do
                        Wait(100)
                    end
                    stance="c"
                end
            end
        
            if stance=="c" then
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@female_c@idle_a","idle_a", -1, 30, 0)
                        Wait(9566)
                        Anim(ped, "amb_rest@world_human_smoking@female_c@base","base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@female_c@idle_b","idle_f", -1, 30, 0)
                        Wait(8133)
                        Anim(ped, "amb_rest@world_human_smoking@female_c@base","base", -1, 30, 0)
                        Wait(100)
                    end
                end
            elseif stance=="b" then
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@female_b@idle_b","idle_f", -1, 30, 0)
                        Wait(8033)
                        Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@female_b@idle_a", "idle_b", -1, 30, 0)
                        Wait(4266)
                        Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30, 0)
                        Wait(100)
                    end
                end
            else --stance=="a"
                if IsControlJustReleased(0, 0x07B8BEAF) then
                    Wait(500)
                    if IsControlPressed(0, 0x07B8BEAF) then
                        Anim(ped, "amb_rest@world_human_smoking@female_a@idle_b", "idle_d", -1, 30, 0)
                        Wait(14566)
                        Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                        Wait(100)
                    else
                        Anim(ped, "amb_rest@world_human_smoking@female_a@idle_a","idle_b", -1, 30, 0)
                        Wait(6100)
                        Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                        Wait(100)
                    end
                end
            end
        end
    end

    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
	PromptSetVisible(UsePrompt, false)
    PromptSetEnabled(ChangeStance, false)
	PromptSetVisible(ChangeStance, false)
	proppromptdisplayed = false

    DetachEntity(cigarette, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_wander@code_human_smoking_wander@male_a@base")
    RemoveAnimDict("amb_rest@world_human_smoking@male_a@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@base")
    RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@idle_g")
    RemoveAnimDict("amb_rest@world_human_smoking@male_c@base")
    RemoveAnimDict("amb_rest@world_human_smoking@male_c@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@male_d@base")
    RemoveAnimDict("amb_rest@world_human_smoking@male_d@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@male_d@idle_c")
    RemoveAnimDict("amb_rest@world_human_smoking@male_a@trans")
    RemoveAnimDict("amb_rest@world_human_smoking@male_c@trans")
    RemoveAnimDict("amb_rest@world_human_smoking@male_d@trans")
    RemoveAnimDict("amb_rest@world_human_smoking@female_a@base")
    RemoveAnimDict("amb_rest@world_human_smoking@female_a@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@female_a@idle_b")
    RemoveAnimDict("amb_rest@world_human_smoking@female_b@base")
    RemoveAnimDict("amb_rest@world_human_smoking@female_b@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@female_b@idle_b")
    RemoveAnimDict("amb_rest@world_human_smoking@female_c@base")
    RemoveAnimDict("amb_rest@world_human_smoking@female_c@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@female_c@idle_b")
    RemoveAnimDict("amb_rest@world_human_smoking@female_b@trans")
    Wait(100)
    ClearPedTasks(ped)
end)

--Cigar
RegisterNetEvent('prop:cigar')
AddEventHandler('prop:cigar', function()

    --Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 1000.0, false )
    --PlaySoundFrontend("Core_Full", "Consumption_Sounds", true, 0)
    ExecuteCommand('close')
    FPrompt('Stop Smoking', 0x3B24C470, false)
    local prop_name = 'P_CIGAR01X'
    local ped = PlayerPedId()
    local dict = 'amb_rest@world_human_smoke_cigar@male_a@idle_b'
    local anim = 'idle_d'
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetEntityBoneIndexByName(ped, 'SKEL_R_Finger12')
    local smoking = false

    if not IsEntityPlayingAnim(ped, dict, anim, 3) then
    
        local waiting = 0
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            waiting = waiting + 100
            Citizen.Wait(100)
            if waiting > 5000 then
                print('RedM Fucked up this animation')
                break
            end
        end
    
        Wait(100)
        AttachEntityToEntity(prop, ped,boneIndex, 0.01, -0.00500, 0.01550, 0.024, 300.0, -40.0, true, true, false, true, 1, true)
        TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
        Wait(1000)

        if proppromptdisplayed == false then
		    PromptSetEnabled(PropPrompt, true)
		    PromptSetVisible(PropPrompt, true)
		    proppromptdisplayed = true
        end
        
        smoking = true
        while smoking do
            if IsEntityPlayingAnim(ped, dict, anim, 3) then

                DisableControlAction(0, 0x07CE1E61, true)
                DisableControlAction(0, 0xF84FA74F, true)
                DisableControlAction(0, 0xCEE12B50, true)
                DisableControlAction(0, 0xB2F377E8, true)
                DisableControlAction(0, 0x8FFC75D6, true)
                DisableControlAction(0, 0xD9D0E1C0, true)

                if IsControlPressed(0, 0x3B24C470) then
                    PromptSetEnabled(PropPrompt, false)
                    PromptSetVisible(PropPrompt, false)
                    proppromptdisplayed = false
                    smoking = false
                    ClearPedSecondaryTask(ped)
                    DeleteObject(prop)
                    RemoveAnimDict(dict)
                    break
                end
            else
                TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
            end
            Wait(0)
        end
    end
end)

RegisterNetEvent('prop:syn')
AddEventHandler('prop:syn', function() 
    FPrompt("Put Away", 0x3B24C470, false)
    LMPrompt("Use", 0x07B8BEAF, false)
    EPrompt("Pose", 0xD51B784F, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local male = IsPedMale(ped)
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local syn = CreateObject(GetHashKey('P_PIPE01X'), x, y, z + 0.2, true, true, true)
    local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")
    AttachEntityToEntity(syn, ped, righthand, 0.005, -0.045, 0.0, -170.0, 10.0, -15.0, true, true, false, true, 1, true)
    Anim(ped,"amb_wander@code_human_smoking_wander@male_b@trans","nopipe_trans_pipe",-1,30)
    Wait(9000)
    Anim(ped,"amb_rest@world_human_smoking@male_b@base","base",-1,31)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)


    
    -- local drunkamount = 0
    -- local drunkscreen = 0
    -- local playerPed = PlayerPedId()
    -- drunkamount = drunkamount + 200.0
    -- Citizen.InvokeNative(0xF6A7C08DF2E28B28, playerPed, 0, drunkamount)
    -- Citizen.InvokeNative(0xF6A7C08DF2E28B28, playerPed, 1, drunkamount)
    -- Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, true)
    -- Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, true) 
    -- drunkscreen = drunkscreen + 10.0
    -- if drunkscreen > 10.0 then
	-- 	Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, false)
	-- 	Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, false)
	-- 	drunkscreen = 0.0
	-- 	drunkamount = 0.0
	-- 	ClearTimecycleModifier()
	-- 	--Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0) drunk walk
	-- 	if Citizen.InvokeNative(0x4A123E85D7C4CA0B,"PlayerDrunk01") then 
	-- 		Citizen.InvokeNative(0xB4FD7446BAB2F394,"PlayerDrunk01")
	-- 	end
	-- 	--ApplyDamageToPed(playerPed, 5000, true, true, true, true)
    -- elseif drunkscreen >= 2.0 then
    --     ClearTimecycleModifier()
    --     Citizen.InvokeNative(0x4102732DF6B4005F, "PlayerDrunk01", 0, true)
    --    -- Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 0.95)
    -- else
    --     Citizen.InvokeNative(0xFA08722A5EA82DA7, 'LensDistDrunk')
    --     Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
    -- end
	-- Wait(100000)
    -- Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, false)
    -- Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, false)
    -- drunkscreen = drunkscreen - 10.0
    -- drunkamount = drunkamount - 200.0
	-- if drunkscreen >= 2.0 then
	-- 	ClearTimecycleModifier()
    --     Citizen.InvokeNative(0x4102732DF6B4005F, "PlayerDrunk01", 0, true)
    -- --    Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 0.95)
	-- elseif drunkscreen >= 0.5 then
	-- 	ClearTimecycleModifier()
	-- --	Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0)
	-- 	if Citizen.InvokeNative(0x4A123E85D7C4CA0B,"PlayerDrunk01") then 
	-- 		Citizen.InvokeNative(0xB4FD7446BAB2F394,"PlayerDrunk01")
	-- 	end
    --     Citizen.InvokeNative(0xFA08722A5EA82DA7, 'LensDistDrunk')
    --     Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
	-- else
	-- 	ClearTimecycleModifier()
	-- --	Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0)
	-- 	if Citizen.InvokeNative(0x4A123E85D7C4CA0B,"PlayerDrunk01") then 
	-- 		Citizen.InvokeNative(0xB4FD7446BAB2F394,"PlayerDrunk01")
	-- 	end
	-- end

    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_b@base","base", 3) do
        Wait(100)
    end

    if proppromptdisplayed == false then
        PromptSetEnabled(PropPrompt, true)
        PromptSetVisible(PropPrompt, true)
        PromptSetEnabled(UsePrompt, true)
        PromptSetVisible(UsePrompt, true)
        PromptSetEnabled(ChangeStance, true)
        PromptSetVisible(ChangeStance, true)
        proppromptdisplayed = true
	end

    while IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_b@base","base", 3) do

        Wait(5)
		if IsControlJustReleased(0, 0x3B24C470) then
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            PromptSetEnabled(ChangeStance, false)
            PromptSetVisible(ChangeStance, false)
            proppromptdisplayed = false

            Anim(ped, "amb_wander@code_human_smoking_wander@male_b@trans", "pipe_trans_nopipe", -1, 30)
            Wait(6066)
            DeleteEntity(syn)
            ClearPedSecondaryTask(ped)
            ClearPedTasks(ped)
            Wait(10)
		end
        
        if IsControlJustReleased(0, 0xD51B784F) then
            Anim(ped, "amb_rest@world_human_smoking@pipe@proper@male_d@wip_base", "wip_base", -1, 30)
            Wait(5000)
            Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31)
            Wait(100)
        end

        if IsControlJustReleased(0, 0x07B8BEAF) then
            Wait(500)
            if IsControlPressed(0, 0x07B8BEAF) then
                Anim(ped, "amb_rest@world_human_smoking@male_b@idle_b","idle_d", -1, 30, 0)
                Wait(15599)
                Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31, 0)
                Wait(100)
            else
                Anim(ped, "amb_rest@world_human_smoking@male_b@idle_a","idle_a", -1, 30, 0)
                Wait(22600)
                Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31, 0)
                Wait(100)
            end
        end
    end

    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    PromptSetEnabled(ChangeStance, false)
    PromptSetVisible(ChangeStance, false)
    proppromptdisplayed = false

    DetachEntity(syn, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_wander@code_human_smoking_wander@male_b@trans")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@base")
    RemoveAnimDict("amb_rest@world_human_smoking@pipe@proper@male_d@wip_base")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@idle_b")
    Wait(100)
    ClearPedTasks(ped)
end)

--Fan
RegisterNetEvent('prop:fan')
AddEventHandler('prop:fan', function() 
    FPrompt("Put Away", 0x3B24C470, false)
    LMPrompt("Little Wave", 0x07B8BEAF, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local male = IsPedMale(ped)
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    
    local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")

    Anim(ped,"amb_wander@code_human_fan_wander@female_a@trans","nonfan_trans_fan",-1,30)
    Wait(1000)
    local fan = CreateObject(GetHashKey('P_CS_FAN01X'), x, y, z + 0.2, true, true, true)
    AttachEntityToEntity(fan, ped, righthand, 0.0, 0.0, -0.02, 0.0, 120.0, 55.0, true, true, false, true, 1, true)
    
    PlayEntityAnim(fan, "nonfan_trans_fan_fan", "amb_wander@code_human_fan_wander@female_a@trans", 0.0, 0, 0, "OpenFan", 0.0, 0)
    Wait(2233)
    Anim(ped,"amb_rest@world_human_fan@female_a@base","base",-1,31)
    
    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_fan@female_a@base","base", 3) do
        Wait(100)
    end

    if proppromptdisplayed == false then
        PromptSetEnabled(PropPrompt, true)
        PromptSetVisible(PropPrompt, true)
        PromptSetEnabled(UsePrompt, true)
        PromptSetVisible(UsePrompt, true)
        proppromptdisplayed = true
	end

    while  IsEntityPlayingAnim(ped, "amb_rest@world_human_fan@female_a@base","base", 3) do

        Wait(5)
		if IsControlJustReleased(0, 0x3B24C470) then
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            proppromptdisplayed = false

            Anim(ped, "amb_wander@code_human_fan_wander@female_a@trans", "fan_trans_nonfan", -1, 30)
            Wait(100)
            PlayEntityAnim(fan, "fan_trans_nonfan_fan", "amb_wander@code_human_fan_wander@female_a@trans", 0.0, 0, 0, "CloseFan", 0.0, 0)
            Wait(1800)
            DeleteEntity(fan)
            ClearPedSecondaryTask(ped)
            ClearPedTasks(ped)
            Wait(10)
		end
        
        if IsControlJustReleased(0, 0x07B8BEAF) then
            Wait(500)
            if IsControlPressed(0, 0x07B8BEAF) then
                Anim(ped, "amb_rest@world_human_fan@female_a@idle_c","idle_g", -1, 30, 0)
                Wait(11800)
                Anim(ped, "amb_rest@world_human_fan@female_a@base","base", -1, 31, 0)
                Wait(100)
            else
                Anim(ped, "amb_rest@world_human_fan@female_a@idle_a","idle_a", -1, 30, 0)
                Wait(5400)
                Anim(ped, "amb_rest@world_human_fan@female_a@base","base", -1, 31, 0)
                Wait(100)
            end
        end
    end

    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    proppromptdisplayed = false

    DetachEntity(fan, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_wander@code_human_fan_wander@female_a@trans")
    RemoveAnimDict("amb_rest@world_human_fan@female_a@base")
    RemoveAnimDict("amb_rest@world_human_fan@female_a@idle_a")
    RemoveAnimDict("amb_rest@world_human_fan@female_a@idle_c")
    Wait(100)
    ClearPedTasks(ped)
end)

--Chewing Tobacco
RegisterNetEvent('prop:chewingtobacco')
AddEventHandler('prop:chewingtobacco', function()
    --Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 800.0, false )
    --PlaySoundFrontend("Core_Full", "Consumption_Sounds", true, 0)
    FPrompt("Finish", 0x3B24C470, false)
    LMPrompt("Spit", 0x07B8BEAF, false)
    EPrompt("Change Stance", 0xD51B784F, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")

    local basedict = "amb_misc@world_human_chew_tobacco@male_a@base"
    local basedictB = "amb_misc@world_human_chew_tobacco@male_b@base"
    local MaleA =
        { 
            [1] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_a", ['anim'] = "idle_a"},
            [2] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_a", ['anim'] = "idle_b"},
            [3] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_a", ['anim'] = "idle_c"},
            [4] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_b", ['anim'] = "idle_d"},
            [5] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_b", ['anim'] = "idle_e"},
            [6] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_b", ['anim'] = "idle_f"},
            [7] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_c", ['anim'] = "idle_g"},
            [8] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_c", ['anim'] = "idle_h"},
            [9] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_c", ['anim'] = "idle_i"},
            [7] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_d", ['anim'] = "idle_j"},
            [8] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_d", ['anim'] = "idle_k"},
            [9] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_a@idle_d", ['anim'] = "idle_l"}
        }
    local MaleB =
        { 
            [1] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_a", ['anim'] = "idle_a"},
            [2] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_a", ['anim'] = "idle_b"},
            [3] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_a", ['anim'] = "idle_c"},
            [4] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_b", ['anim'] = "idle_d"},
            [5] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_b", ['anim'] = "idle_e"},
            [6] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_b", ['anim'] = "idle_f"},
            [7] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_c", ['anim'] = "idle_g"},
            [8] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_c", ['anim'] = "idle_h"},
            [9] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_c", ['anim'] = "idle_i"},
            [7] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_d", ['anim'] = "idle_j"},
            [8] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_d", ['anim'] = "idle_k"},
            [9] = { ['dict'] = "amb_misc@world_human_chew_tobacco@male_b@idle_d", ['anim'] = "idle_l"}
        }
    local stance = "MaleA"

    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_a")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_b")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_c")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_d")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_a")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_b")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_c")
    RequestAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_d")

    Anim(ped,"amb_misc@world_human_chew_tobacco@male_a@stand_enter","enter_back",-1,30)
    Wait(2500)
    local chewingtobacco = CreateObject(GetHashKey('S_TOBACCOTIN01X'), x, y, z + 0.2, true, true, true)
    Wait(10)
    AttachEntityToEntity(chewingtobacco, ped, righthand, 0.0, -0.05, 0.02,  30.0, 180.0, 0.0, true, true, false, true, 1, true)
    Wait(6000)
    DeleteEntity(chewingtobacco)
    Wait(3500)
    Anim(ped,basedict,"base",-1,31, 0)
    
    while not IsEntityPlayingAnim(ped,basedict,"base", 3) do
        Wait(100)
    end

    if proppromptdisplayed == false then
        PromptSetEnabled(PropPrompt, true)
        PromptSetVisible(PropPrompt, true)
        PromptSetEnabled(UsePrompt, true)
        PromptSetVisible(UsePrompt, true)
        PromptSetEnabled(ChangeStance, true)
	    PromptSetVisible(ChangeStance, true)
        proppromptdisplayed = true
	end

    while IsEntityPlayingAnim(ped, basedict,"base", 3) or IsEntityPlayingAnim(ped, basedictB,"base", 3) do

        Wait(5)
		if IsControlJustReleased(0, 0x3B24C470) then
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            PromptSetEnabled(ChangeStance, false)
	        PromptSetVisible(ChangeStance, false)
            proppromptdisplayed = false

            Anim(ped, "amb_misc@world_human_chew_tobacco@male_b@idle_b", "idle_d", 5500, 30)
            Wait(5500)
            ClearPedSecondaryTask(ped)
            ClearPedTasks(ped)
            Wait(10)
		end
        
        if IsControlJustReleased(0, 0x07B8BEAF) then
            local random = math.random(1,9)
            if stance == "MaleA" then
                randomdict = MaleA[random]['dict']
                randomanim = MaleA[random]['anim']
            else
                randomdict = MaleB[random]['dict']
                randomanim = MaleB[random]['anim']
            end
            animduration = GetAnimDuration(randomdict, randomanim)*1000
            Wait(100)
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            PromptSetEnabled(ChangeStance, false)
	        PromptSetVisible(ChangeStance, false)
            Anim(ped, randomdict, randomanim, -1, 30, 0)
            Wait(animduration)
            if stance == "MaleA" then
                Anim(ped, basedict,"base", -1, 31, 0)
            else
                Anim(ped, basedictB,"base", -1, 31, 0)
            end
            PromptSetEnabled(PropPrompt, true)
            PromptSetVisible(PropPrompt, true)
            PromptSetEnabled(UsePrompt, true)
            PromptSetVisible(UsePrompt, true)
            PromptSetEnabled(ChangeStance, true)
	        PromptSetVisible(ChangeStance, true)
            Wait(100)
        end

        if IsControlJustReleased(0, 0xD51B784F) then
            if stance=="MaleA" then
                Anim(ped, "amb_misc@world_human_chew_tobacco@male_a@trans", "a_trans_b", -1, 30)
                PromptSetEnabled(PropPrompt, false)
                PromptSetVisible(PropPrompt, false)
                PromptSetEnabled(UsePrompt, false)
                PromptSetVisible(UsePrompt, false)
                PromptSetEnabled(ChangeStance, false)
	            PromptSetVisible(ChangeStance, false)
                Wait(7333)
                Anim(ped, basedictB, "base", -1, 30, 0)
                while not IsEntityPlayingAnim(ped,basedictB, "base", 3) do
                    Wait(100)
                end    
                PromptSetEnabled(PropPrompt, true)
                PromptSetVisible(PropPrompt, true)
                PromptSetEnabled(UsePrompt, true)
                PromptSetVisible(UsePrompt, true)
                PromptSetEnabled(ChangeStance, true)
	            PromptSetVisible(ChangeStance, true)
                stance="MaleB"
            else
                Anim(ped, "amb_misc@world_human_chew_tobacco@male_b@trans", "b_trans_a", -1, 30)
                PromptSetEnabled(PropPrompt, false)
                PromptSetVisible(PropPrompt, false)
                PromptSetEnabled(UsePrompt, false)
                PromptSetVisible(UsePrompt, false)
                PromptSetEnabled(ChangeStance, false)
	            PromptSetVisible(ChangeStance, false)
                Wait(5833)
                Anim(ped, basedict, "base", -1, 30, 0)
                while not IsEntityPlayingAnim(ped,basedict,"base", 3) do
                    Wait(100)
                end
                PromptSetEnabled(PropPrompt, true)
                PromptSetVisible(PropPrompt, true)
                PromptSetEnabled(UsePrompt, true)
                PromptSetVisible(UsePrompt, true)
                PromptSetEnabled(ChangeStance, true)
	            PromptSetVisible(ChangeStance, true)
                stance="MaleA"
            end
        end

    end

    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    PromptSetEnabled(ChangeStance, false)
	PromptSetVisible(ChangeStance, false)
    proppromptdisplayed = false

    DetachEntity(chewingtobacco, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_a@stand_enter")
    RemoveAnimDict(base)
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_a")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_b")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_c")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_a@idle_d")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_a")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_b")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_c")
    RemoveAnimDict("amb_misc@world_human_chew_tobacco@male_b@idle_d")
    Wait(100)
    ClearPedTasks(ped)
end)

RegisterNetEvent("prop:hairpomade")
AddEventHandler("prop:hairpomade", function()
	local playerPed = PlayerPedId()
    if Citizen.InvokeNative(0xFB4891BD7578CDC1, playerPed, tonumber(0x9925C067)) then   -- _IS_METAPED_USING_COMPONENT
        TaskItemInteraction(playerPed, 0, GetHashKey("APPLY_POMADE_WITH_HAT"), 1, 0, -1082130432)
    else
        TaskItemInteraction(playerPed, 0, GetHashKey("APPLY_POMADE_WITH_NO_HAT"), 1, 0, -1082130432)
    end
    Wait(2500)

    Citizen.InvokeNative(0x66B957AAC2EAAEAB, playerPed, GetCurrentPedComponent(playerPed, "hair"), GetHashKey("POMADE"), 0, true, 1) -- _UPDATE_SHOP_ITEM_WEARABLE_STATE
    Citizen.InvokeNative(0xCC8CA3E88256E58F, playerPed, false, true, true, true, false) -- _UPDATE_PED_VARIATION
end)

function GetCurrentPedComponent(ped, category)

    local componentsCount = GetNumComponentsInPed(ped)
    if not componentsCount then
        return 0
    end
    local metaPedType = GetMetaPedType(ped)
    local dataStruct = DataView.ArrayBuffer(6 * 8)
    local fullPedComponents = {}
    for i = 0, componentsCount, 1 do
        local componentHash = GetShopPedComponentAtIndex(ped, i, true, dataStruct:Buffer(), dataStruct:Buffer())
        if componentHash then
            local componentCategoryHash = GetShopPedComponentCategory(componentHash, metaPedType, true)
            if category ~= nil then
                if GetHashKey(category) == componentCategoryHash then
                    return componentHash
                end
            else
                fullPedComponents[componentCategoryHash] = componentHash
            end
        end
    end
    if category then
        return 0
    end
    return fullPedComponents
end

function GetNumComponentsInPed(ped)
    return Citizen.InvokeNative(0x90403E8107B60E81, ped)
end

function GetMetaPedType(ped)
    return Citizen.InvokeNative(0xEC9A1261BF0CE510, ped)
end

function GetShopPedComponentAtIndex(ped, index, bool, struct1, struct2)
    return Citizen.InvokeNative(0x77BA37622E22023B, ped, index, bool, struct1, struct2)
end

function GetShopPedComponentCategory(componentHash, metaPedType, bool)
    return Citizen.InvokeNative(0x5FF9A878C3D115B8, componentHash, metaPedType, bool)
end

--Force 1st person view when watch is out
Citizen.CreateThread(function()
    while true do
        local forced = false
        local wait = 250
        if IsEntityPlayingAnim(PlayerPedId(), "mech_inventory@item@pocketwatch@unarmed@base", "inspect_base", 3) then -- Is Watch out?
            wait = 5
            firstperson = Citizen.InvokeNative(0x90DA5BA5C2635416) -- Is already aiming first person?
            if firstperson == true and forced == false then -- already first and not forced
                forced = false
            else
                Citizen.InvokeNative(0x90DA5BA5C2635416) -- force first
                forced = true
            end
        else -- Watch Put Away
            if forced == true then -- Is being forced?
                Citizen.InvokeNative(0x1CFB749AD4317BDE) -- force 3rd
                forced = false
            end
        end
        Wait(wait)
    end
end)

function Anim(actor, dict, body, duration, flags, introtiming, exittiming)
Citizen.CreateThread(function()
    RequestAnimDict(dict)
    local dur = duration or -1
    local flag = flags or 1
    local intro = tonumber(introtiming) or 1.0
    local exit = tonumber(exittiming) or 1.0
	timeout = 5
    while (not HasAnimDictLoaded(dict) and timeout>0) do
		timeout = timeout-1
        if timeout == 0 then 
            print("Animation Failed to Load")
		end
		Citizen.Wait(300)
    end
    TaskPlayAnim(actor, dict, body, intro, exit, dur, flag --[[1 for repeat--]], 1, false, false, false, 0, true)
    end)
end

function StopAnim(dict, body)
Citizen.CreateThread(function()
    StopAnimTask(PlayerPedId(), dict, body, 1.0)
    end)
end

--Basket animation
RegisterNetEvent('prop:basket')
AddEventHandler('prop:basket', function() 
    FPrompt("Put Away", 0x3B24C470, false)
    ExecuteCommand('close')
        
    RequestAnimDict("amb_wander@code_human_basket_wander@female_a@base")
    while not HasAnimDictLoaded("amb_wander@code_human_basket_wander@female_a@base") do
        Citizen.Wait(100)
    end

    if not IsEntityPlayingAnim(ped, "amb_wander@code_human_basket_wander@female_a@base", "base", 3) then
        local ped = PlayerPedId()
        local male = IsPedMale(ped)
        local basket = CreateObject(GetHashKey('p_basket04x'), x, y, z, true, true, true)
        local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Hand")
        Wait(100)
        if male then
            AttachEntityToEntity(basket, ped, righthand, 0.30, -0.06, -0.19, -40.0, -15.0, 65.0, true, true, false, true, 1, true)
        else
            AttachEntityToEntity(basket, ped, righthand, 0.30, -0.06, -0.19, -40.0, -15.0, 65.0, true, true, false, true, 1, true)
        end
        Anim(PlayerPedId(),"amb_wander@code_human_basket_wander@female_a@base","base",-1,31)
        Wait(1000)
	    if proppromptdisplayed == false then
		    PromptSetEnabled(PropPrompt, true)
		    PromptSetVisible(PropPrompt, true)
		    proppromptdisplayed = true
	    end

        while IsEntityPlayingAnim(ped, "amb_wander@code_human_basket_wander@female_a@base", "base", 3) do
            Wait(1)
		    if IsControlJustReleased(0, 0x3B24C470) then
			    PromptSetEnabled(PropPrompt, false)
			    PromptSetVisible(PropPrompt, false)
			    proppromptdisplayed = false
			    StopAnimTask(PlayerPedId(), 'amb_wander@code_human_basket_wander@female_a@base', "base", 1.0)
			    DeleteEntity(basket)
			    break
		    end
        end
        PromptSetEnabled(PropPrompt, false)
		PromptSetVisible(PropPrompt, false)
		proppromptdisplayed = false
		StopAnimTask(PlayerPedId(), 'amb_wander@code_human_basket_wander@female_a@base', "base", 1.0)
		DeleteEntity(basket)
        RemoveAnimDict("amb_wander@code_human_basket_wander@female_a@base")
    end
end)

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
----------------- 			                     DATAVIEW FUNCTIONS					            -------------
-----------------										                                        -------------
----------------- 		         BIG THNKS to gottfriedleibniz for this DataView in LUA.		-------------
-----------------   https://gist.github.com/gottfriedleibniz/8ff6e4f38f97dd43354a60f8494eedff	-------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

local _strblob = string.blob or function(length)
    return string.rep("\0", math.max(40 + 1, length))
end

DataView = {
    EndBig = ">",
    EndLittle = "<",
    Types = {
        Int8 = { code = "i1", size = 1 },
        Uint8 = { code = "I1", size = 1 },
        Int16 = { code = "i2", size = 2 },
        Uint16 = { code = "I2", size = 2 },
        Int32 = { code = "i4", size = 4 },
        Uint32 = { code = "I4", size = 4 },
        Int64 = { code = "i8", size = 8 },
        Uint64 = { code = "I8", size = 8 },

        LuaInt = { code = "j", size = 8 },
        UluaInt = { code = "J", size = 8 },
        LuaNum = { code = "n", size = 8 },
        Float32 = { code = "f", size = 4 },
        Float64 = { code = "d", size = 8 },
        String = { code = "z", size = -1, },
    },

    FixedTypes = {
        String = { code = "c", size = -1, },
        Int = { code = "i", size = -1, },
        Uint = { code = "I", size = -1, },
    },
}
DataView.__index = DataView
local function _ib(o, l, t) return ((t.size < 0 and true) or (o + (t.size - 1) <= l)) end

local function _ef(big) return (big and DataView.EndBig) or DataView.EndLittle end

local SetFixed = nil
function DataView.ArrayBuffer(length)
    return setmetatable({
        offset = 1, length = length, blob = _strblob(length)
    }, DataView)
end

function DataView.Wrap(blob)
    return setmetatable({
        offset = 1, blob = blob, length = blob:len(),
    }, DataView)
end

function DataView:Buffer() return self.blob end

function DataView:ByteLength() return self.length end

function DataView:ByteOffset() return self.offset end

function DataView:SubView(offset)
    return setmetatable({
        offset = offset, blob = self.blob, length = self.length,
    }, DataView)
end

for label, datatype in pairs(DataView.Types) do
    DataView["Get" .. label] = function(self, offset, endian)
        local o = self.offset + offset
        if _ib(o, self.length, datatype) then
            local v, _ = string.unpack(_ef(endian) .. datatype.code, self.blob, o)
            return v
        end
        return nil
    end

    DataView["Set" .. label] = function(self, offset, value, endian)
        local o = self.offset + offset
        if _ib(o, self.length, datatype) then
            return SetFixed(self, o, value, _ef(endian) .. datatype.code)
        end
        return self
    end
    if datatype.size >= 0 and string.packsize(datatype.code) ~= datatype.size then
        local msg = "Pack size of %s (%d) does not match cached length: (%d)"
        error(msg:format(label, string.packsize(fmt[#fmt]), datatype.size))
        return nil
    end
end
for label, datatype in pairs(DataView.FixedTypes) do
    DataView["GetFixed" .. label] = function(self, offset, typelen, endian)
        local o = self.offset + offset
        if o + (typelen - 1) <= self.length then
            local code = _ef(endian) .. "c" .. tostring(typelen)
            local v, _ = string.unpack(code, self.blob, o)
            return v
        end
        return nil
    end
    DataView["SetFixed" .. label] = function(self, offset, typelen, value, endian)
        local o = self.offset + offset
        if o + (typelen - 1) <= self.length then
            local code = _ef(endian) .. "c" .. tostring(typelen)
            return SetFixed(self, o, value, code)
        end
        return self
    end
end

SetFixed = function(self, offset, value, code)
    local fmt = {}
    local values = {}
    if self.offset < offset then
        local size = offset - self.offset
        fmt[#fmt + 1] = "c" .. tostring(size)
        values[#values + 1] = self.blob:sub(self.offset, size)
    end
    fmt[#fmt + 1] = code
    values[#values + 1] = value
    local ps = string.packsize(fmt[#fmt])
    if (offset + ps) <= self.length then
        local newoff = offset + ps
        local size = self.length - newoff + 1

        fmt[#fmt + 1] = "c" .. tostring(size)
        values[#values + 1] = self.blob:sub(newoff, self.length)
    end
    self.blob = string.pack(table.concat(fmt, ""), table.unpack(values))
    self.length = self.blob:len()
    return self
end

DataStream = {}
DataStream.__index = DataStream

function DataStream.New(view)
    return setmetatable({ view = view, offset = 0, }, DataStream)
end

for label, datatype in pairs(DataView.Types) do
    DataStream[label] = function(self, endian, align)
        local o = self.offset + self.view.offset
        if not _ib(o, self.view.length, datatype) then
            return nil
        end
        local v, no = string.unpack(_ef(endian) .. datatype.code, self.view:Buffer(), o)
        if align then
            self.offset = self.offset + math.max(no - o, align)
        else
            self.offset = no - self.view.offset
        end
        return v
    end
end

function bigInt(text)
    local string1 = DataView.ArrayBuffer(16)
    string1:SetInt64(0, text)
    return string1:GetInt64(0)
end

function ItemdatabaseFilloutItemInfo(ItemHash)
    local eventDataStruct = DataView.ArrayBuffer(8 * 8)
    local is_data_exists = Citizen.InvokeNative(0xFE90ABBCBFDC13B2, ItemHash, eventDataStruct:Buffer())
    if not is_data_exists then
        return false
    end
    return eventDataStruct
end
 
function ItemHaveTag(ComponentHash)
    return Citizen.InvokeNative(0xFF5FB5605AD56856, ComponentHash, 1844906744, 1120943070)
end
 
function GetWeaponComponentTypeModel(componentHash)
    return Citizen.InvokeNative(0x59DE03442B6C9598, componentHash)
end
 
function ItemdatabaseIsKeyValid(weaponHash, unk)
    return Citizen.InvokeNative(0x6D5D51B188333FD1, weaponHash , unk)
end
 
function InventoryAddItemWithGuid(inventoryId, itemData, parentItem, itemHash, slotHash, amount, addReason)
    return Citizen.InvokeNative(0xCB5D11F9508A928D, inventoryId, itemData, parentItem, itemHash, slotHash, amount, addReason);
   
end
 
function InventoryEquipItemWithGuid(inventoryId , itemData , bEquipped)
    return Citizen.InvokeNative(0x734311E2852760D0, inventoryId , itemData , bEquipped)
end
 
function getGuidFromItemId(inventoryId, itemData, category, slotId)
    local outItem = DataView.ArrayBuffer(8 * 13)
    local success = Citizen.InvokeNative(0x886DFD3E185C8A89, inventoryId, itemData and itemData or 0, category, slotId, outItem:Buffer())
    return success and outItem or nil;
end

function ApplyWeaponComponent(WeaponObject, ComponentHash, slotHash, weaponHash)
    local ComponentModelHash = GetWeaponComponentTypeModel(ComponentHash)
 
    local ItemInfoStruct = ItemdatabaseFilloutItemInfo(ComponentHash)
    local ModType = ItemInfoStruct:GetInt32(2 * 8)
 
    if ModType == GetHashKey("WEAPON_MOD") then
 
        if not IsModelValid(ComponentModelHash) then
            return
        end
 
        RequestModel(ComponentModelHash)
        while not HasModelLoaded(ComponentModelHash) do
            Wait(0)
        end
 
        if not ItemHaveTag(ComponentHash) and not HasWeaponGotWeaponComponent(WeaponObject, ComponentHash) then
            addWeaponInventoryItem(ComponentHash, slotHash, weaponHash)
        end
 
    elseif ModType == GetHashKey("WEAPON_DECORATION") then
        if not ItemHaveTag(ComponentHash) and not HasWeaponGotWeaponComponent(WeaponObject, ComponentHash) then     
            addWeaponInventoryItem(ComponentHash, slotHash, weaponHash)
        end
    end
end

function addWeaponInventoryItem(itemHash, slotHash, weaponHash)
    local addReason = GetHashKey("ADD_REASON_DEFAULT")
    local inventoryId = 1 -- INVENTORY_SP_PLAYER

    local isValid = ItemdatabaseIsKeyValid(itemHash, 0)
    if not isValid then return false end

    local characterItem = getGuidFromItemId(inventoryId, nil, GetHashKey("CHARACTER"), 0xA1212100)
    if not characterItem then return false end
    
    local unkStruct = getGuidFromItemId(inventoryId, characterItem:Buffer(), 923904168, -740156546)
    if not unkStruct then return false end
    
    local weaponItem = getGuidFromItemId(inventoryId, unkStruct:Buffer(), weaponHash, -1591664384)
    if not weaponItem then return false end

    local gripItem
    if slotHash == 0x57575690 then
        gripItem = getGuidFromItemId(inventoryId, weaponItem:Buffer(), GetHashKey(Comps.Components[weaponHash][_U('Grip')][1]), -1591664384)
        if not gripItem then return false end
    end
    
    local itemData = DataView.ArrayBuffer(8 * 13)
    
    local isAdded = InventoryAddItemWithGuid(inventoryId, itemData:Buffer(), (slotHash == 0x57575690) and gripItem:Buffer() or weaponItem:Buffer(), itemHash, slotHash, 1, addReason)
    if not isAdded then return false end
    
    local equipped = InventoryEquipItemWithGuid(inventoryId, itemData:Buffer(), true);
    
    return equipped
end