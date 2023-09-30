
RegisterCommand("hr",  function() --Horse Removal
        TriggerServerEvent("hr:checkJob")
end)

RegisterNetEvent("hr:removeHorse") 
AddEventHandler('hr:removeHorse', function()
    local playerPed = PlayerPedId()
    local mount   = GetMount(PlayerPedId())
    TriggerEvent("syn_stable:deletehorse")
    if IsPedOnMount(playerPed) then
        DeleteEntity(mount)
    end
end)

