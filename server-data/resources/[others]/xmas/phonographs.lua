local Phonographs = {
	vector3(2743.02, -1265.43, 30.0), -- Saint Denis Church (Below)
	vector3(-222.70, 807.62, 105.80), -- Valentine
	vector3(-974.92, -1188.76, 38.0), -- Blackwater
}

function GetListenerCoords()
	local cam = GetRenderingCam()

	if cam == -1 then
		local ped = PlayerPedId()

		if IsPedDeadOrDying(ped) then
			return GetGameplayCamCoord()
		else
			return GetEntityCoords(ped)
		end
	else
		return GetCamCoord(cam)
	end
end

CreateThread(function()
	while true do
		Wait(100)

		local pos = GetListenerCoords()

		local minDistance = nil

		for _, phonograph in ipairs(Phonographs) do
			local distance = #(pos - phonograph)

			if not minDistance or distance < minDistance then
				minDistance = distance
			end
		end

		SendNUIMessage({
			type = 'updateDistance',
			distance = minDistance
		})
	end
end)
