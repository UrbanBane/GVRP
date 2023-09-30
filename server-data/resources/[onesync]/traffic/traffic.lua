-- the following values must satisfy the condtions (let x be the frequency) 
-- x ≥ 0.0
-- x must be a float type

local config = {
    pedFrequency = 1.25,
    trafficFrequency = 0.15,
    animalFrequency = 0.5,
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        
        -- Peds
        Citizen.InvokeNative(0xAB0D553FE20A6E25,config.pedFrequency) -- SetAmbientPedDensityMultiplierThisFrame
        Citizen.InvokeNative(0x7A556143A1C03898,config.pedFrequency) -- SetScenarioPedDensityMultiplierThisFrame
        -- Citizen.InvokeNative(0x95423627A9CA598E, GetHashKey(DEFAULT))
        -- 0x95423627A9CA598E SetScenarioPedDensityThisFrame(configHash ) 
        --Valid configs:
        -- BLACKWATER
        -- DEFAULT
        -- NEWBORDEAUX
        -- RHODES
        -- STRAWBERRY
        -- TUMBLEWEED
        -- VALENTINE
        -- VANHORN

        -- Humans
        Citizen.InvokeNative(0xBA0980B5C0A11924,config.pedFrequency) -- SetAmbientHumanDensityMultiplierThisFrame
        Citizen.InvokeNative(0x28CB6391ACEDD9DB,config.pedFrequency) -- SetScenarioHumanDensityMultiplierThisFrame

        -- Animals
        Citizen.InvokeNative(0xC0258742B034DFAF,config.animalFrequency) -- SetAmbientAnimalDensityMultiplierThisFrame
        Citizen.InvokeNative(0xDB48E99F8E064E56,config.animalFrequency) -- SetScenarioAnimalDensityMultiplierThisFrame

        -- Vehicles
        Citizen.InvokeNative(0xFEDFA97638D61D4A,config.trafficFrequency) -- SetParkedVehicleDensityMultiplierThisFrame
        Citizen.InvokeNative(0x1F91D44490E1EA0C,config.trafficFrequency) -- SetVehicleDensityMultiplierThisFrame

    end 
end)
