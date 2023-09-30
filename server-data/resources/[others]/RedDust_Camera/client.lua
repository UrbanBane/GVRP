local camera = nil
local incamera = false
local camerahigher = false
local cameralower = false
local SetupCameraPrompt = 0
local SetupUsePrompt = 0
local SetupLeavePrompt = 0
local SetupShootPrompt = 0
local SetupFiterPrompt = 0
local SetupFiterPrompt2 = 0
local SetupHigher = 0
local SetupLower = 0
local camera1normal = false
local camera1higher = false
local zoom = 1.0


RegisterNetEvent('camera:deploy')
AddEventHandler('camera:deploy', function(source)
    local _source = source
	if camera == nil then
		local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), -0.06, 0.75, -1.1))
		camera = CreateObject(GetHashKey("P_CAMERA01X"), x,y,z, true, false, true)
		SetEntityHeading(camera, GetEntityHeading(PlayerPedId())-180)
		Anim(PlayerPedId(),"script_rc@masn@leadout@rc4","idle_base_mason", -1, 1)
	end
end)


Citizen.CreateThread(function(source)
    SetupCameraPrompt()
    SetupUsePrompt()
	while true do
		Citizen.Wait(600)
		local coordsf = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.45, 0.0)
        local cameraprop = GetClosestObjectOfType(coordsf, 1.0, GetHashKey("P_CAMERA01X"), false)
		local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(cameraprop, 0.0, 0.0, 0.0))
        if cameraprop ~= 0 and not incamera then
			PromptSetEnabled(CameraPickup, true)
			PromptSetVisible(CameraPickup, true)
			PromptSetEnabled(CameraUse, true)
			PromptSetVisible(CameraUse, true)			
		else
			PromptSetEnabled(CameraPickup, false)
			PromptSetVisible(CameraPickup, false)
			PromptSetEnabled(CameraUse, false)
			PromptSetVisible(CameraUse, false)		
		end
		if PromptHasHoldModeCompleted(CameraPickup) then
			DeleteEntity(camera)
			DisplayHud(true)			
			camera = nil
			StopAnim("script_rc@masn@leadout@rc4","idle_base_mason")
		end
		if PromptHasHoldModeCompleted(CameraUse) then
			incamera = true
			DisplayHud(false)	
			PromptSetVisible(CameraPickup, false)
			PromptSetEnabled(CameraPickup, false)
			PromptSetVisible(CameraUse, false)
			PromptSetEnabled(CameraUse, false)
			PromptSetVisible(CameraLeave, true)
			PromptSetEnabled(CameraLeave, true)
			PromptSetVisible(CameraShoot, true)
			PromptSetEnabled(CameraShoot, true)	
			PromptSetVisible(CameraFilter, true)
			PromptSetEnabled(CameraFilter, true)
			PromptSetVisible(CameraFilter2, true)
			PromptSetEnabled(CameraFilter2, true)
			PromptSetVisible(CameraHigher, true)
			PromptSetEnabled(CameraHigher, true)			
			camera1normal = true	
		end		
	end
end)

Citizen.CreateThread(function(source)
    SetupLeavePrompt()
    SetupShootPrompt()
    SetupFiterPrompt()
    SetupFiterPrompt2()
	SetupHigher()
	SetupLower()
	while true do
		Citizen.Wait(2)
			if incamera then			
				if PromptHasHoldModeCompleted(CameraLeave) then	
					Citizen.InvokeNative(0x67C540AA08E4A6F5, "back", "Photo_Mode_Sounds", true, 0)
					PromptSetVisible(CameraLeave, false)
					PromptSetEnabled(CameraLeave, false)
					PromptSetVisible(CameraShoot, false)
					PromptSetEnabled(CameraShoot, false)
					PromptSetVisible(CameraFilter, false)
					PromptSetEnabled(CameraFilter, false)
					PromptSetVisible(CameraFilter2, false)
					PromptSetEnabled(CameraFilter2, false)	
					PromptSetVisible(CameraHigher, false)
					PromptSetEnabled(CameraHigher, false)
					PromptSetVisible(CameraLower, false)
					PromptSetEnabled(CameraLower, false)
					ScreenEffectStop("CameraViewfinder")
					camera1normal = false
					camera1higher = false	
					incamera = false
					EndCam()
					Citizen.Wait(300)				
				end
			
			if PromptHasHoldModeCompleted(CameraFilter) then	
				Citizen.InvokeNative(0x67C540AA08E4A6F5, "filter_right", "Photo_Mode_Sounds", true, 0)
				ScreenEffect("CameraViewfinder")
				Citizen.Wait(500)
				-- Filter Event HERE
			end	
			
			if PromptHasHoldModeCompleted(CameraFilter2) then
				Citizen.InvokeNative(0x67C540AA08E4A6F5, "filter_left", "Photo_Mode_Sounds", true, 0)				
				ScreenEffectStop("CameraViewfinder")
				Citizen.Wait(500)
				-- Filter Event HERE
			end	
			
			if PromptHasHoldModeCompleted(CameraShoot) then	
				AnimpostfxPlay("CameraTakePicture")
				Citizen.InvokeNative(0x67C540AA08E4A6F5, "take_photo", "Photo_Mode_Sounds", true, 0)
				Citizen.Wait(300)			
				-- Photo Event HERE
			end	
			
			if PromptHasHoldModeCompleted(CameraHigher) then
				Citizen.InvokeNative(0x67C540AA08E4A6F5, "lens_up", "Photo_Mode_Sounds", true, 0)
				camerahigher = true
			end	
		end		
	end
end)

Citizen.CreateThread(function(source)			
	while true do
		Citizen.Wait(800)
		if camerahigher then
			PromptSetVisible(CameraLeave, false)
			PromptSetEnabled(CameraLeave, false)				
			PromptSetVisible(CameraHigher, true)
			PromptSetEnabled(CameraHigher, true)
			PromptSetVisible(CameraLower, true)
			PromptSetEnabled(CameraLower, true)
			camera1normal = false
		end	
		if PromptHasHoldModeCompleted(CameraLower) then				
			Citizen.InvokeNative(0x67C540AA08E4A6F5, "lens_down", "Photo_Mode_Sounds", true, 0)
			camerahigher = false
			PromptSetVisible(CameraLeave, true)
			PromptSetEnabled(CameraLeave, true)			
			PromptSetVisible(CameraHigher, true)
			PromptSetEnabled(CameraHigher, true)
			PromptSetVisible(CameraLower, false)
			PromptSetEnabled(CameraLower, false)			
			camera1normal = true				
		end	
	end			
end)

Citizen.CreateThread(function()
	while true do				
		Citizen.Wait(500)
		if camera1normal then
		local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.0))	
			StartCam(x, y, z+0.8, GetEntityHeading(PlayerPedId()), -5)
		end		
	end
end)

Citizen.CreateThread(function()	
	while true do	
		Citizen.Wait(500)
		if camerahigher then
		local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.0))	
			StartCam(x, y, z+3, GetEntityHeading(PlayerPedId()), -5)
		end		
	end
end)

function SetupCameraPrompt()
    Citizen.CreateThread(function()
        local str = Config.CameraPickup
        CameraPickup = PromptRegisterBegin()
        PromptSetControlAction(CameraPickup, Config.CameraPickupKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraPickup, str)
        PromptSetEnabled(CameraPickup, false)
        PromptSetVisible(CameraPickup, false)
        PromptSetHoldMode(CameraPickup, true)
        PromptRegisterEnd(CameraPickup)
    end)
end

function SetupUsePrompt()
    Citizen.CreateThread(function()
        local str = Config.CameraUse
        CameraUse = PromptRegisterBegin()
        PromptSetControlAction(CameraUse, Config.CameraUseKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraUse, str)
        PromptSetEnabled(CameraUse, false)
        PromptSetVisible(CameraUse, false)
        PromptSetHoldMode(CameraUse, true)
        PromptRegisterEnd(CameraUse)
    end)
end

function SetupLeavePrompt()
    Citizen.CreateThread(function()
        local str = Config.CameraLeave
        CameraLeave = PromptRegisterBegin()
        PromptSetControlAction(CameraLeave, Config.CameraLeaveKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraLeave, str)
        PromptSetEnabled(CameraLeave, false)
        PromptSetVisible(CameraLeave, false)
        PromptSetHoldMode(CameraLeave, true)
        PromptRegisterEnd(CameraLeave)
    end)
end

function SetupShootPrompt()
    Citizen.CreateThread(function()
        local str = Config.CameraPhoto
        CameraShoot = PromptRegisterBegin()
        PromptSetControlAction(CameraShoot, Config.CameraPhotoKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraShoot, str)
        PromptSetEnabled(CameraShoot, false)
        PromptSetVisible(CameraShoot, false)
        PromptSetHoldMode(CameraShoot, true)
        PromptRegisterEnd(CameraShoot)
    end)
end

function SetupFiterPrompt()
    Citizen.CreateThread(function()
        local str = Config.CameraFilter
        CameraFilter = PromptRegisterBegin()
        PromptSetControlAction(CameraFilter, Config.CameraFilterKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraFilter, str)
        PromptSetEnabled(CameraFilter, false)
        PromptSetVisible(CameraFilter, false)
        PromptSetHoldMode(CameraFilter, true)
        PromptRegisterEnd(CameraFilter)
    end)
end

function SetupFiterPrompt2()
    Citizen.CreateThread(function()
        local str = Config.CameraNooFilter
        CameraFilter2 = PromptRegisterBegin()
        PromptSetControlAction(CameraFilter2, Config.CameraNoFilterKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraFilter2, str)
        PromptSetEnabled(CameraFilter2, false)
        PromptSetVisible(CameraFilter2, false)
        PromptSetHoldMode(CameraFilter2, true)
        PromptRegisterEnd(CameraFilter2)
    end)
end

function SetupHigher()
    Citizen.CreateThread(function()
        local str = Config.CameraUp
        CameraHigher = PromptRegisterBegin()
        PromptSetControlAction(CameraHigher, Config.CameraUpKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraHigher, str)
        PromptSetEnabled(CameraHigher, false)
        PromptSetVisible(CameraHigher, false)
        PromptSetHoldMode(CameraHigher, true)
        PromptRegisterEnd(CameraHigher)
    end)
end

function SetupLower()
    Citizen.CreateThread(function()
        local str = Config.CameraDown
        CameraLower = PromptRegisterBegin()
        PromptSetControlAction(CameraLower, Config.CameraDownKey)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(CameraLower, str)
        PromptSetEnabled(CameraLower, false)
        PromptSetVisible(CameraLower, false)
        PromptSetHoldMode(CameraLower, true)
        PromptRegisterEnd(CameraLower)
    end)
end

function ScreenEffect(effect)
	AnimpostfxPlay(effect)
end

function ScreenEffectStop(effect)
	AnimpostfxStop(effect)
end

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

function StartCam(x,y,z, heading, zoom)
    DestroyAllCams(true)
    local camera_pos = GetObjectOffsetFromCoords(x,y,z ,0.0 ,1.0, 1.0, 1.0)
    photocam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", x,y,z, 0.0, 00.00, heading, zoom, true, 0)
    SetCamActive(photocam,true)
    RenderScriptCams(true, true, 500, true, true)
end

function EndCam()
    RenderScriptCams(false, true, 500, true, false)
    DestroyCam(photocam, false)
    DestroyAllCams(true)
end


AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end	
	DeleteEntity(camera)
	SetEntityAsNoLongerNeeded(camera)	
	camera = nil
	EndCam()
	ScreenEffectStop()
end)
