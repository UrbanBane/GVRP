Config = {}

-- Default time when the server starts
Config.Time = HMSToTime(6, 0, 0)

-- Default ratio of in-game seconds to real seconds. Standard game time is 30:1, or 1 in-game minute = 2 real secons
Config.Timescale = 24

-- Whether time is frozen at server start
Config.TimeIsFrozen = false

-- Default weather when the server starts
Config.Weather = 'sunny'

-- The interval (in-game time) between weather changes
Config.WeatherInterval = HMSToTime(1, 0, 0)

-- Whether weather is frozen at server start
Config.WeatherIsFrozen = false

-- Whether to permanently add snow on the ground, or only during snowy weather
Config.PermanentSnow = false

-- Number of weather intervals to queue up
Config.MaxForecast = 23

-- Default wind direction when the server starts
Config.WindDirection = 0.0

-- Default wind speed when the server starts
Config.WindSpeed = 0.0

-- Whether wind direction is frozen when the server starts
Config.WindIsFrozen = false

-- How often in milliseconds to sync with clients
Config.SyncDelay = 5000

-- The following table describes the weather pattern of the world. For every type of weather that may occur, the types of weather that may follow are given with a number representing the percentage of their likeliness. For example:
--
--     ['sunny'] = {
--         ['sunny'] = 50
--         ['clouds'] = 50
--     }
--
-- means that when the weather is sunny, the next stage is 50% likely to be sunny or 50% likely to be cloudy.
--
-- All the numbers for the next stages must add up to 100.
Config.WeatherPattern = {
	['sunny'] = {
        ['sunny']  = 80,
        ['clouds'] = 20
    },

    ['clouds'] = {
        ['clouds']       = 25,
        ['sunny']        = 60,
        ['misty']        = 0,
        ['fog']          = 0,
        ['overcastdark'] = 15,
    },

    ['overcastdark'] = {
        ['overcastdark'] 	= 10,
        ['clouds']       	= 50,
        ['overcast']     	= 40,
    },

    ['misty'] = {
        ['misty']  = 15,
        ['clouds'] = 60,
        ['fog']    = 25
    },

    ['fog'] = {
        ['fog']      = 25,
        ['clouds']   = 25,
        ['misty']    = 25,
        ['overcast'] = 25
    },

    ['overcast'] = {
        ['overcast']     = 50,
        ['overcastdark'] = 30,
        ['drizzle']      = 10,
        ['shower']       = 5,
        ['rain']         = 5,
    },

    ['drizzle'] = {
        ['drizzle']      = 10,
        ['overcast']     = 10,
        ['rain']         = 5,
        ['shower']       = 5,
        ['overcastdark'] = 35,
        ['clouds']       = 35
    },

    ['rain'] = {
        ['rain']         = 10,
        ['overcastdark'] = 50,
        ['drizzle']      = 5,
        ['shower']       = 25,
        ['thunderstorm'] = 5,
        ['hurricane']    = 5,
    },

    ['thunder'] = {
        ['thunder']      = 10,
        ['overcastdark'] = 60,
        ['thunderstorm'] = 30
    },

    ['thunderstorm'] = {
        ['thunderstorm'] = 10,
        ['thunder']      = 30,
        ['rain']         = 10,
        ['drizzle']      = 20,
        ['shower']       = 30
    },

    ['hurricane'] = {
        ['hurricane'] = 5,
        ['rain']      = 30,
        ['drizzle']   = 65
    },

    ['shower'] = {
        ['shower']       = 5,
        ['overcast']     = 10,
        ['overcastdark'] = 85
    },


	['snow'] = {
		['snow']		= 30,
		['snowlight'] 	= 50,
		['blizzard']    = 20
	},

	['blizzard'] = {
		['blizzard'] 		= 5,
		['groundblizzard'] 	= 5,
		['whiteout'] 		= 5,
		['snow'] 			= 45,
		['snowlight'] 		= 40
	},

	['groundblizzard'] = {
		['groundblizzard'] 	= 5,
		['blizzard'] 		= 5,
		['whiteout'] 		= 5,
		['snow'] 			= 45,
		['snowlight'] 		= 40
	},

	['hail'] = {
		['thunderstorm']	= 30,
		['rain'] 			= 35,
		['shower'] 			= 35
	},
	
	['snowlight'] = {
		['snowlight'] 	= 25,
		['snow'] 		= 25,
		['sunny'] 		= 25,
		['overcast'] 	= 25

	},

	['whiteout'] = {
		['groundblizzard'] 	= 5,
		['blizzard'] 		= 5,
		['whiteout'] 		= 5,
		['snow'] 			= 45,
		['snowlight'] 		= 40
	},

}

Config.WeatherIcons = {
	['blizzard']       = '❄️',
	['clouds']         = '⛅',
	['drizzle']        = '🌧️',
	['fog']            = '🌫️',
	['groundblizzard'] = '❄️',
	['hail']           = '🌨️',
	['highpressure']   = '☀️',
	['hurricane']      = '🌪️',
	['misty']          = '🌫️',
	['overcast']       = '☁️',
	['overcastdark']   = '☁️',
	['rain']           = '🌧️',
	['sandstorm']      = '🌬️',
	['shower']         = '🌧️',
	['sleet']          = '🌧️',
	['snow']           = '🌨️',
	['snowlight']      = '🌨️',
	['sunny']          = '☀️',
	['thunder']        = '🌩️',
	['thunderstorm']   = '⛈️',
	['whiteout']       = '❄️'
}
