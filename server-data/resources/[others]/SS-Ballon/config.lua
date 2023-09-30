Config = {}

Config.Framework = "vorp" --"vorp" for VORP , "redem" for REDEM:RP
Config.Name = "Balloon Hire" --BLIP NAME AND TITTLE NOTIFICATION
Config.OpenTXT = "OPEN"
Config.Key = 0xD9D0E1C0
Config.Distance = 2

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
if Config.Framework == "redem" then    
TriggerEvent('redem_roleplay:Tip', text, 5000)    
elseif Config.Framework == "vorp" then
TriggerEvent("vorp:TipBottom", text, 5000) 
end        
end 

Config.Pos = {
    [1] = {
    name = "Rent a Balloon", -- Saint Denis
    blip = 1078668923,
    npcmodel = "cs_balloonoperator",   
    pos = {2463.24, -1372.32, 44.31, 286.25},
    spawn = {2459.32, -1350.53, 45.99},   
    price = 200
    },
    [2] = {
    name = "Rent a Balloon", -- Blackwater
    blip = 1078668923,
    npcmodel = "cs_balloonoperator",   
    pos = {-754.43, -1459.51, 54.5, 206.62},
    spawn = {-750.4, -1481.41, 54.04},   
    price = 200
    }
}

Config.Buyed = "You have rented a balloon" --TXT WHEN RENT
Config.NoMoney = "You cannot afford to rent a balloon" --TXT WHEN NO MONEY