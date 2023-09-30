Citizen.CreateThread(function()
    local waitTime = tonumber(Config.payTimer)
    while true do 
        Citizen.Wait(60000 * waitTime)
        TriggerServerEvent('paycheck:pay')
    end
end)
