Config = {}

Config.Locale = 'en'

Config.giveItemCount = 10
Config.cooldown = 60 * 1000
Config.MedicLocations = {
    { x = -288.87, y = 808.81, z = 119.39 }, -- Valentine
    { x = -1803.3, y = -432.57, z = 158.83 }, -- Strawberry
    { x = 2730.52, y = -1229.12, z = 50.32 }, -- Saint Denis
    { x = -782.32, y = -1306.7, z = 43.78 }, -- Blackwater
    { x = -3649.0, y = -2646.95, z = -13.46 }, -- Armadillo
    { x = 1937.83, y = 1948.17, z = 266.1 }, -- Ambarino (Rangers Hut)
    { x = 1372.22, y = -1305.56, z = 77.97 }, -- Rhodes
    { x = 2953.46, y = 460.5, z = 49.44 }, -- Van Horn
    { x = 3981.36, y = -1736.65, z = 35.46 }, -- Saint Denis Fight Club
    { x = 1385.62, y = -7000.34, z = 57.08 }, -- Guarma
    -- { x = -148.94, y = -27.15, z = 96.04}, -- Horseshoe Overlook
}
Config.MSG = "You consumed "

Config.medicalitems = {
    {
        ["Name"] = "heroin", 
        ["DisplayName"] = "Heroin", 
        ["Animation"] = "syringe",
        ["PropName"] = "p_bottlemedicine09x",
        ["Metabolism"] = 0,
        ["Hunger"] = 0,
        ["Thirst"] = -5,
        ["InnerCoreStamina"] = 0,
        ["InnerCoreStaminaGold"] = 0,
        ["OuterCoreStaminaGold"] = 75.0,
        ["InnerCoreHealth"] = 50,
        ["OuterCoreHealth"] = 50,
        ["InnerCoreHealthGold"] = 50.0,
        ["OuterCoreHealthGold"] = 100.0,
        ["diff"] = 3000,
        ["Effect"] = "DEADEYE", -- FX Effect you want to add to the consumable
        ["EffectDuration"] = 0, -- Duration of the effect 10000 = 10 seconds


    }, 
    
    {
        ["Name"] = "bandage", 
        ["DisplayName"] = "Bandage", 
        ["Animation"] = "syringe",
        ["PropName"] = "p_bottlemedicine09x",
        ["Metabolism"] = 0,
        ["Hunger"] = 0,
        ["Thirst"] = 0,
        ["InnerCoreStamina"] = 0,
        ["InnerCoreStaminaGold"] = 0,
        ["OuterCoreStaminaGold"] = 0,
        ["InnerCoreHealth"] = 50,
        ["OuterCoreHealth"] = 0,
        ["InnerCoreHealthGold"] = 0,
        ["OuterCoreHealthGold"] = 0,
        ["diff"] = 5000,
        ["Effect"] = "", -- FX Effect you want to add to the consumable
        ["EffectDuration"] = 0, -- Duration of the effect 10000 = 10 seconds


    }, 


    {
        ["Name"] = "morphine", 
        ["DisplayName"] = "Morphine", 
        ["Animation"] = "syringe",
        ["PropName"] = "p_bottlemedicine09x",
        ["Metabolism"] = 0,
        ["Hunger"] = 0,
        ["Thirst"] = -5,
        ["InnerCoreStamina"] = 0,
        ["InnerCoreStaminaGold"] = 0,
        ["OuterCoreStaminaGold"] = 0,
        ["InnerCoreHealth"] = 50,
        ["OuterCoreHealth"] = 50,
        ["InnerCoreHealthGold"] = 50.0,
        ["OuterCoreHealthGold"] = 50.0,
        ["diff"] = 3000,
        ["Effect"] = "DEADEYE", -- FX Effect you want to add to the consumable
        ["EffectDuration"] = 10000, -- Duration of the effect 10000 = 10 seconds


    },

    {
        ["Name"] = "tylenol", 
        ["DisplayName"] = "Tylenol", 
        ["Animation"] = "syringe",
        ["PropName"] = "p_bottlemedicine09x",
        ["Metabolism"] = 0,
        ["Hunger"] = 0,
        ["Thirst"] = 0,
        ["InnerCoreStamina"] = 0,
        ["InnerCoreStaminaGold"] = 0,
        ["OuterCoreStaminaGold"] = 0,
        ["InnerCoreHealth"] = 5,
        ["OuterCoreHealth"] = 5,
        ["InnerCoreHealthGold"] = 0,
        ["OuterCoreHealthGold"] = 0,
        ["diff"] = 5000,
        ["Effect"] = "", -- FX Effect you want to add to the consumable
        ["EffectDuration"] = 10000, -- Duration of the effect 10000 = 10 seconds


    },

    {
        ["Name"] = "herbmed", 
        ["DisplayName"] = "Herbal Remedy", 
        ["Animation"] = "syringe",
        ["PropName"] = "p_bottlemedicine09x",
        ["Metabolism"] = 0,
        ["Hunger"] = 0,
        ["Thirst"] = 10,
        ["InnerCoreStamina"] = 10,
        ["InnerCoreStaminaGold"] = 10,
        ["OuterCoreStaminaGold"] = 0,
        ["InnerCoreHealth"] = 15,
        ["OuterCoreHealth"] = 15,
        ["InnerCoreHealthGold"] = 50.0,
        ["OuterCoreHealthGold"] = 50.0,
        ["diff"] = 4500,
        ["Effect"] = "", -- FX Effect you want to add to the consumable
        ["EffectDuration"] = 0, -- Duration of the effect 10000 = 10 seconds

    },
}
