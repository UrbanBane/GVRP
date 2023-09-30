function update()
    print("removing default horse from vorp stables")
    TriggerServerEvent("defaulthorse:update")
end

RegisterNUICallback('update', update)