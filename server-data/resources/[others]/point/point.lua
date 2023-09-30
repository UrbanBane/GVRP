Citizen.CreateThread(function()
    while true do
        Citizen.Wait(8)
        if (IsControlJustPressed(0,0x4CC0E2FE)) and IsInputDisabled(0) then --g
            local ped = PlayerPedId()
            if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then

                RequestAnimDict( "ai_react@point@base" )

                while ( not HasAnimDictLoaded( "ai_react@point@base" ) ) do
                    Citizen.Wait( 100 )
                end

                if IsEntityPlayingAnim(ped, "ai_react@point@base", "point_fwd", 3) then
                    ClearPedTasks(ped)
                    RemoveAnimDict("ai_react@point@base")
                else
                    TaskPlayAnim(ped, "ai_react@point@base", "point_fwd", 8.0, -8.0, 120000, 31, 0, true, 0, false, 0, false)
                end
            end
        end
    end
end)