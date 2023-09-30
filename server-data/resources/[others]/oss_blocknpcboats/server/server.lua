AddEventHandler('entityCreating', function(entity)
    if GetEntityType(entity) == 2 then
        if GetVehicleType(entity) == "boat" then
            if GetEntityPopulationType(entity) ~= 7 and GetEntityPopulationType(entity) ~= 8 then
                CancelEvent()
            end
        end
    end
end)