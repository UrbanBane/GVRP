Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),169,true) -- Disable Grapple  
    end
end)

--[[ Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),218,true) -- Disable Pickups  
    end
end) ]]

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),305,true) -- Disable Head Gore  
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),306,true) -- Disable Limb Gore  
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),445,true) -- Disable door barge
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),421,true) -- Allow Door Barging Under Combat
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),65,true) -- Prevent Auto Shuffle to Drivers Seat
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedConfigFlag(PlayerPedId(),546,true) -- Disable Ownership for Horse Feed & Brush  
    end
end)

-- https://github.com/kibook/spooner/blob/master/data/rdr3/pedConfigFlags.lua