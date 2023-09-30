local Scenes = {}
local scenelogs = "https://discord.com/api/webhooks/977987740434051082/4LsoWxZwRVGtTk-O4ox-9jHdZl4kHFBH4_CBWZxjQ8UjVlzF8NoIiCc3ws6s7T7zJtIb"

SendScenes = function(ply)
    TriggerClientEvent("nh-scenes:send", ply, Scenes)
end

LogScene = function(ply, text, coords)
    local f, err = io.open("textfiles/scenes.txt", "a")
    if not f then return print(err) end
    f:write("Player: [" .. ply .. "] Name: [" .. GetPlayerName(ply) .. "] Placed Scene: [" .. text .. "] At Coords = " .. coords .. "\n")
    f:close()
	local plyname = GetPlayerName(ply)
    Discord(scenelogs, plyname, 'Scene placed ('..coords..') : '..text, 0)
end

RegisterNetEvent("nh-scenes:fetch", function()
    local src = source
    TriggerClientEvent("nh-scenes:sendgamename", src, GetConvar("gamename", "gta5"))
    SendScenes(src)
end)

RegisterNetEvent("nh-scenes:add", function(x, y, z, message, color, distance)
    if not x or not y or not z or not color or not message or not distance then return end
    table.insert(Scenes, {
        message = message,
        color = color,
        distance = distance,
        x = x,
        y = y,
        z = z,
    })
    SendScenes(-1)
    LogScene(source, message, vector3(x, y, z))
end)

RegisterNetEvent("nh-scenes:delete", function(key)
    table.remove(Scenes, key)
    SendScenes(-1)
end)

function Discord(webhook, title, description, color)
	local _source = source
	  local logs = {
		  {
			  ["color"] = color,
			  ["title"] = title,
			  ["description"] = description,
		  }
	  }
  
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({embeds = logs}), { ['Content-Type'] = 'application/json' })
  end
