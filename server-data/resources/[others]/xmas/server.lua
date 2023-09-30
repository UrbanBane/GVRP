CreateThread(function()
	Wait(0)

	exports.weathersync:setWeatherPattern({
		['snowlight'] = {
			['snow'] = 30,
			['snowlight'] = 50,
			['clouds'] = 20
		},
		['snow'] = {
			['snow'] = 20,
			['snowlight'] = 70,
			['blizzard'] = 10
		},
		['blizzard'] = {
			['snow'] = 80,
			['blizzard'] = 20
		},
		['sunny'] = {
			['sunny'] = 40,
			['clouds'] = 60
		},
		['clouds'] = {
			['sunny'] = 40,
			['overcast'] = 60
		},
		['overcast'] = {
			['clouds'] = 40,
			['snowlight'] = 60
		}
	})

	exports.weathersync:setWeather('snowlight', 10.0, false, true)
end)

AddEventHandler('onResourceStop', function(resource)
	if GetCurrentResourceName() ~= resource then
		return
	end

	exports.weathersync:resetWeatherPattern()
	exports.weathersync:resetWeather()
end)

RegisterCommand("xmas_vol", function(source, args, raw)
	local volume = tonumber(args[1])

	if volume == nil then
		volume = 50
	elseif volume > 100 then
		volume = 100
	elseif volume < 0 then
		volume = 0
	end

	TriggerClientEvent("xmas:setMaxVolume", source, volume)
end, true)
