Config = {}

Config.Locale = 'en'

Config.giveItemCount = 1

Config.SaloonLocations = {
    { x = -313.56, y = 806.7, z = 119.03 },   -- Valentines Smithfields
    { x = -238.83, y = 769.91, z = 118.10 },   -- Valentines Keanes
    { x = 2639.92, y = -1225.32, z = 53.43 },  -- St Denis Bastille
    { x = 2792.67, y = -1167.95, z = 47.88 },  -- St Denis Doyles
    { x = 2714.0, y = -1289.3, z = 60.34 },     -- St Denis Gambling Den
    { x = 3961.65, y = -1726.83, z = 35.5 },  -- St Denis Fight Club
    { x = 1340.11, y = -1375.61, z = 80.53 },  -- Rhodes
    { x = 2947.97, y = 528.77, z = 45.33 },    -- Vanhorn
    { x = -819.35, y = -1319.30, z = 43.67 },  -- Black Water
    { x = -3698.45, y = -2594.10, z = -13.31 }, -- Armadillo
    { x = -5519.61, y = -2905.98, z = -1.75 },  -- Tumbleweed
    { x = 2548.3, y = -1284.4, z = 49.22 },  -- St Denis La Raleur Theater
    { x = 1450.98, y = 369.62, z = 89.89 }, -- Emerald Ranch Saloon
    { x = 1300.49, y = -6808.84, z = 43.64 }, -- Guarma Saloon
    { x = 3288.42, y = -1303.85, z = 42.9 }, -- Grand Korrigan
    -- { x = -139.31, y = -22.78, z = 96.04 } -- Horseshoe Overlook
} 

Config.SaloonBlips = { 
    Valentine1 = {
        Pos = { x = -313.60, y = 805.22, z = 119.13 }, -- blip position
        showblip = true, -- blip on/off
        Name = 'Smithfields Saloon', -- blip name 
    },
    Valentine2 = {
        Pos = { x = -238.83, y = 769.91, z = 118.10 }, 
        showblip = true,
        Name = 'Keane\'s Saloon', 
    },
    SD1 = {
        Pos = { x = 2639.87, y = -1224.82, z = 53.33 }, 
        showblip = true, 
        Name = 'The Bastille Saloon', 
    },
    SD2 = {
        Pos = { x = 2792.67, y = -1167.95, z = 47.88 }, 
        showblip = true, 
        Name = 'Doyles Tavern', 
    },    
    SD3 = {
        Pos = { x = 2714.0, y = -1289.3, z = 60.34 },
        showblip = false,
        Name = 'Gambling Den Bar',
    },
    SD4 = {
        Pos = { x = 3961.65, y = -1726.83, z = 35.5 },
        blipsprite = 1879260108,
        showblip = false,
        Name = 'Saint Denis Fight Club Bar',
    },
    SD5 = {
        Pos = { x = 2548.3, y = -1284.4, z = 49.22 },
        showblip = false,
        Name = 'La Raleur Theatre Bar',
    }, 
    Rhodes = {
        Pos = { x = 1344.52, y = -1375.89, z = 80.43 },
        blipsprite = 1879260108,
        showblip = true,
        Name = 'The Rhodes Parlour',
    },
    VanHorn = {
        Pos = { x = 2947.97, y = 528.77, z = 45.33 },
        showblip = true,
        Name = 'Old Light Saloon',
    },
    Blackwater = {
        Pos = { x = -819.35, y = -1319.30, z = 43.67 },
        showblip = true,
        Name = 'The Blackwater Saloon',
    },
    Armadillo = {
        Pos = { x = -3698.45, y = -2594.10, z = -13.31 },
        showblip = true,
        Name = 'Armadillo Saloon',
    },
    Tumbleweed = {
        Pos = { x = -5519.61, y = -2905.98, z = -1.75 },
        showblip = true,
        Name = 'Tumbleweed Saloon',
    },
    EmeraldRanch = {
        Pos = { x = 1450.98, y = 369.62, z = 89.89 },
        showblip = true,
        Name = 'Emerald Ranch Saloon',
    },
     Guarma = {
        Pos = { x = 1300.49, y = -6808.84, z = 43.64 },
        showblip = true,
        Name = 'Guarma Saloon',
    },
--[[     HorseshoeOverlook = {
        Pos = { x = -140.19, y = -22.43, z = 96.04 },
        showblip = false,
        Name = 'Horseshoe Overlook Bar',
    }, ]]

--[[     Korrigan = {
        Pos = { x = 3288.42, y = -1303.85, z = 42.9 },
        showblip = true,
        Name = 'The Grand Korrigan',
    },   ]]     
}