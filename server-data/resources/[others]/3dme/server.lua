local logEnabled = true
local melogs = "https://discord.com/api/webhooks/977987740434051082/4LsoWxZwRVGtTk-O4ox-9jHdZl4kHFBH4_CBWZxjQ8UjVlzF8NoIiCc3ws6s7T7zJtIb"

RegisterServerEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text)
	TriggerClientEvent('3dme:triggerDisplay', -1, text, source)
	if logEnabled then
		setLog(text, source)
	end
end)

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
	Discord(melogs, name, '/me '..text, 0)
end


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