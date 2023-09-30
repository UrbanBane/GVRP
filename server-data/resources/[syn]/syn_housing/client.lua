local houses = {}
local doorlocksevent = false
local doorlocksevent2 = false
local doorhash
local objc
local doorname
local entit
local objYaw3
local objYaw1
local objYaw2
local coord
local show3d = false
local changeloc = false
local changeloc2 = false
local o,p,q
local doorinfo = {}
local doorset = Config.Language.notset
local secondarydoors = {}
local next = next 
local editeddoor
local range = 0
local price = 0
local charid
local id
local pricex 
local taxx 
local houseidx
local sellercharid
local sellerid
local houseid
local typez
local secid
local blips = {}
local soldhousing = 0
local ledger = 0
local onhold = false
local rangex
local findchangingroom = false
local findinventory = false
local housex
local housey
local housez
local poutifts = 0
local playerskin
local tax = 0
local repo
local invspace = 0
local invspacex
local furniturex = {}
local playerjob
local playerrank
local upgradex
local furniturecatagory = {}
local furniturepiece = {}
local furnitem -- findme 2
local furnitemcost
local placefurniture = false
local xx,yy,zz,hh
local furniname
local objectxyz 
local int = 0.5
local soldfurni
local soldfurni
local keyholdersx
local owner = false
local onhold2 = false
local insidemotel = false
local roomid
local onhold3 = false
local hasLoaded = false


function GetPlayers()
	local players = {}
    for i = 0, 256 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, GetPlayerServerId(i))
        end
    end
    return players
end

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

function getEntity(player)                                          
    local result, entity = GetEntityPlayerIsFreeAimingAt(player)    
    return entity                                                   
end  

function contains(table, element)

		for k, v in pairs(table) do
	  		if v[2] == element then
				return true
			end
		end

	return false
end

function contains3(table, element)
    for k, v in pairs(table) do
          if v.id == element then
            return false
        end
    end
return true
end

local function DrawTexture(textureStreamed,textureName,x, y, width, height,rotation,r, g, b, a, p11)
	if not HasStreamedTextureDictLoaded(textureStreamed) then
	   RequestStreamedTextureDict(textureStreamed, false);
	else
		DrawSprite(textureStreamed, textureName, x, y, width, height, rotation, r, g, b, a, p11);
	end
end

function drawtext(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    if enableShadow then 
        SetTextDropshadow(1, 0, 0, 0, 255)
    end
    Citizen.InvokeNative(0xADA9255D, 10);
    DisplayText(str, x, y)
  end

function drawicon(x, y, z, text , state)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoord())
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(1)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
    if state then
        DrawSprite("generic_textures", "lock", _x, _y+0.0125, 0.04, 0.045, 0.1, 100, 1, 1, 255, 0)
    else
        DrawSprite("generic_textures", "lock", _x, _y+0.0125, 0.04, 0.045, 0.1, 67, 160, 71, 255, 0)
    end
end 

function GetClosestPlayer()
    local players, closestDistance, closestPlayer = GetActivePlayers(), -1, -1
    local playerPed, playerId = PlayerPedId(), PlayerId()
    local coords, usePlayerPed = coords, false
 
    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        usePlayerPed = true
        coords = GetEntityCoords(playerPed)
    end
 
    for i=1, #players, 1 do
        local tgt = GetPlayerPed(players[i])
        if not usePlayerPed or (usePlayerPed and players[i] ~= playerId) then
 
            local targetCoords = GetEntityCoords(tgt)
            local distance = #(coords - targetCoords)
 
            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = players[i]
                closestDistance = distance
                playerid = GetPlayerServerId(players[i])
                tgt1 = GetPlayerPed(players[i])
            end
        end
    end
    return closestPlayer, closestDistance,  playerid, tgt1
end

function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
	local px,py,pz=table.unpack(GetGameplayCamCoord())  
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
	if onScreen then
	  SetTextScale(0.30, 0.30)
	  SetTextFontForCurrentCommand(1)
	  SetTextColor(255, 255, 255, 215)
	  SetTextCentre(1)
	  DisplayText(str,_x,_y)
	  local factor = (string.len(text)) / 225
	  DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
	end
end  

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(0)
        local sleep = true 
        if doorlocksevent then
            sleep = false 
            drawtext(Config.Language.aimingatdoor, 0.15, 0.10, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)
            drawtext(Config.Language.createhousecancel, 0.15, 0.13, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
            if IsPlayerFreeAiming(PlayerId()) then         
                local entity = getEntity(PlayerId())       
                local coords = GetEntityCoords(entity) 
                local player = GetEntityCoords(PlayerPedId())       
                local heading = GetEntityHeading(entity)    
                local model = GetEntityModel(entity) 
                if model ~= 0 and model ~= nil then
                    if contains(DOOR_HASHES, model) then
                        for k,v in pairs(DOOR_HASHES) do 
                            if model == v[2] then
                                local doorcoords = vector3(v[4],v[5], v[6])
                                local a,b,c = table.unpack(doorcoords)
                                local d,f,g = table.unpack(coords)
                                local distance = GetDistanceBetweenCoords(a, b, c, d, f, g, false)
                                if 1 > distance then
                                    doorname = v[3]
                                    doorhash = v[2]
                                    objc = v[1]
                                    entit = entity
                                end
                            end
                        end
                        DrawTexture("inventory_items", "consumable_lock_breaker", 0.5, 0.5, 0.05, 0.05, 0.0, 255, 0, 0, 180, true)
                        if whenKeyJustPressed(Config.keys["G"]) then
                            local x,y,z = table.unpack(GetEntityRotation(entit))
                            objYaw3 = z
                            objYaw1= x
                            objYaw2 = y
                            coord = GetEntityCoords(entit)
                            o,p,q = table.unpack(coord)
                            show3d = true
                            WarMenu.OpenMenu('createhousemenu')
                            doorlocksevent = false 
                        end
                    end
                end
            end
        end  
        if doorlocksevent2 then
            sleep = false 
            drawtext(Config.Language.aimingatdoor, 0.15, 0.10, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)
            drawtext(Config.Language.createhousecancel, 0.15, 0.13, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
            if IsPlayerFreeAiming(PlayerId()) then         
                local entity = getEntity(PlayerId())       
                local coords = GetEntityCoords(entity) 
                local heading = GetEntityHeading(entity)    
                local model = GetEntityModel(entity)        
                if model ~= 0 and model ~= nil then
                    if contains(DOOR_HASHES, model) then
                        for k,v in pairs(DOOR_HASHES) do 
                            if model == v[2] then
                                local doorcoords = vector3(v[4],v[5], v[6])
                                local a,b,c = table.unpack(doorcoords)
                                local d,f,g = table.unpack(coords)
                                local distance = GetDistanceBetweenCoords(a, b, c, d, f, g, false)
                                if 1 > distance then
                                    doorname = v[3]
                                    doorhash = v[2]
                                    objc = v[1]
                                    entit = entity
                                end
                            end
                        end
                        DrawTexture("inventory_items", "consumable_lock_breaker", 0.5, 0.5, 0.05, 0.05, 0.0, 255, 0, 0, 180, true)
                        if whenKeyJustPressed(Config.keys["G"]) then
                            local x,y,z = table.unpack(GetEntityRotation(entit))
                            objYaw3 = z
                            objYaw1= x
                            objYaw2 = y
                            coord = GetEntityCoords(entit)
                            o,p,q = table.unpack(coord)
                            show3d = true
                            WarMenu.OpenMenu('door3')
                            doorlocksevent2 = false 

                        end
                    end
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)  


Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(0)
        local sleep = true 
        if show3d then
            sleep = false 
            drawicon(o, p, q, " " ,true)
            if changeloc or changeloc2 then 
                drawtext(Config.Language.pressenterconfirm, 0.15, 0.13, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.createhousecancel, 0.15, 0.16, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.uparrowicon, 0.15, 0.19, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.downarrowicon, 0.15, 0.22, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.rightarrowicon, 0.15, 0.25, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.leftarrowicon, 0.15, 0.28, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.bracketrighticon, 0.15, 0.31, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.bracketlefticon, 0.15, 0.34, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                if whenKeyJustPressed(Config.keys["UP"]) then
                    q = q + 0.1
                end
                if whenKeyJustPressed(Config.keys["DOWN"]) then
                    q = q-0.1
                end
                if whenKeyJustPressed(Config.keys["LEFTBRACKET"]) then
                    p = p+0.1
                end
                if whenKeyJustPressed(Config.keys["RIGHTBRACKET"]) then
                    p = p-0.1
                end
                if whenKeyJustPressed(Config.keys["RIGHT"]) then
                    o = o+0.1
                end
                if whenKeyJustPressed(Config.keys["LEFT"]) then
                    o = o-0.1
                end
                if whenKeyJustPressed(Config.keys["ENTER"]) then
                    if changeloc then
                        changeloc = false
                        WarMenu.OpenMenu('door')
                    elseif changeloc2 then
                        changeloc2 = false
                        WarMenu.OpenMenu('door3')
                    end
                end
            end
        end
        if sleep then 
            Wait(500)
        end
    end
end)


Citizen.CreateThread(function() 
    local pos2 = {x = 0, y = 0, z = 0}
    local placedobject = false
    local x,y,z = 0,0,0
    local h = 0
    while true do 
        Citizen.Wait(0)
        local sleep = true
        if placefurniture then
            sleep = false
            local myPed = PlayerPedId()
            local pHead = GetEntityHeading(myPed)
            local pos = GetEntityCoords(PlayerPedId(), true)
            local dist = GetDistanceBetweenCoords(housex,housey,housez, pos.x,pos.y,pos.z, 1)
            if dist > rangex then
                drawtext(Config.Language.outofrange, 0.15, 0.10, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.fourtocancel, 0.15, 0.13, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                if whenKeyJustPressed(Config.keys["4"]) then
                    placefurniture = false
                    placedobject = false
                    if objectxyz ~= nil then
                        DeleteObject(objectxyz)
                    end
                end
            else
                drawtext(Config.Language.gitemplace, 0.15, 0.10, 0.1, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.fourtocancel, 0.15, 0.13, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.bonground, 0.15, 0.16, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.changemoverate, 0.15, 0.19, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.rotateitem1, 0.15, 0.22, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.rotateitem2, 0.15, 0.25, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem1, 0.15, 0.28, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem2, 0.15, 0.31, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem3, 0.15, 0.34, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem4, 0.15, 0.37, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem5, 0.15, 0.40, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.moveitem6, 0.15, 0.43, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                drawtext(Config.Language.pressenterconfirm, 0.15, 0.46, 0.3, 0.3, true, 255, 255, 255, 255, true, 10000)
                

                if not HasModelLoaded(furnitem) then
                    RequestModel(furnitem)
                end
            
                while not HasModelLoaded(furnitem) do
                    Citizen.Wait(1)
                end
                if whenKeyJustPressed(Config.keys["G"]) then
                    if not placedobject then
                        objectxyz = CreateObject(furnitem, pos.x+1, pos.y+1, pos.z, true, true, false)
                        PlaceObjectOnGroundProperly(objectxyz)
                        SetEntityAsMissionEntity(objectxyz, true)
                        FreezeEntityPosition( objectxyz, true)
                        SetEntityAlpha(objectxyz, 100)
                        placedobject = true
                        pos2 = GetEntityCoords(objectxyz, true)
                        x,y,z = table.unpack(pos2)
                        h = GetEntityHeading(objectxyz)


                    end
                end
                if whenKeyJustPressed(Config.keys["B"]) then
                    if placedobject then
                        PlaceObjectOnGroundProperly(objectxyz)
                        local pos3 = GetEntityCoords(objectxyz, true)
                        z = pos3.z
                    end
                end
                if whenKeyJustPressed(Config.keys["UP"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x, y, z + int, true, true, true, false)
                        z = z + int
                    end
                end
                if whenKeyJustPressed(Config.keys["DOWN"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x, y, z - int, true, true, true, false)
                        z = z - int
                    end
                end
                if whenKeyJustPressed(Config.keys["LEFT"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x- int, y , z , true, true, true, false)
                        x = x - int
                    end
                end
                if whenKeyJustPressed(Config.keys["RIGHT"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x+ int, y , z , true, true, true, false)
                        x = x + int
                    end
                end
                if whenKeyJustPressed(Config.keys["LEFTBRACKET"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x, y - int, z , true, true, true, false)
                        y = y - int
                    end
                end
                if whenKeyJustPressed(Config.keys["RIGHTBRACKET"]) then
                    if placedobject then
                        SetEntityCoords(objectxyz, x, y + int, z , true, true, true, false)
                        y = y + int
                    end
                end
                if whenKeyJustPressed(Config.keys["1"]) then
                    if placedobject then
                        h = h + 5
                        SetEntityHeading(objectxyz, h % 360)
                    end
                end
                if whenKeyJustPressed(Config.keys["2"]) then
                    if placedobject then
                        h = h - 5
                        SetEntityHeading(objectxyz, h % 360)
                    end
                end
                if whenKeyJustPressed(Config.keys["3"]) then
                    if Config.vorp then
                     TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.changerateinfo, function(cb)
                         local testint =     tonumber(cb)
                         if testint ~= nil and testint ~= 0  then
                            if testint > 5 then
                                int = 5 
                            elseif 0 > testint then
                                int = 0.5
                            else
                                int = testint
                            end
                         end
                    end)
                elseif Config.redem then
                    TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.changerateinfo, function(cb)
                        local testint =     tonumber(cb)
                        if testint ~= nil and testint ~= 0  then
                           if testint > 5 then
                               int = 5 
                           elseif 0 > testint then
                               int = 0.5
                           else
                               int = testint
                           end
                        end
                   end)
                end
                end
                if whenKeyJustPressed(Config.keys["4"]) then
                    placefurniture = false
                    placedobject = false
                    if objectxyz ~= nil then
                        DeleteObject(objectxyz)
                    end
                end
                if whenKeyJustPressed(Config.keys["ENTER"]) then
                    if placedobject then
                        xx = x
                        yy = y
                        zz = z
                        hh = h
                        placefurniture = false
                        placedobject = false
                        DeleteObject(objectxyz)
                        Citizen.Wait(500)
                        WarMenu.OpenMenu('confirmfurniturebuy')
                    end
                end
            end
        end  
        if sleep then
            Citizen.Wait(500)
        end
    end
end)

RegisterNetEvent("syn_housing:createhouse")
AddEventHandler("syn_housing:createhouse", function()
    if doorlocksevent and not doorlocksevent2 then 
        doorlocksevent = false
    elseif doorlocksevent2 then
        doorlocksevent2 = false
    else
        doorlocksevent = true
    end
    if show3d  then 
        show3d = false
    end
    range = 0   
    price = 0   
    tax = 0
    invspace = 0
    doorset = Config.Language.notset
    secondarydoors = {}
    doorinfo = {}
    changeloc = false   
    changeloc2 = false
end)

RegisterNetEvent("syn_housing:getplayeridentifier") -- findme
AddEventHandler("syn_housing:getplayeridentifier", function(identifier,charidentifier)
    charid = charidentifier
    id = identifier
end)

RegisterNetEvent("syn_housing:getplayerjobinfo") 
AddEventHandler("syn_housing:getplayerjobinfo", function(job, rank)
    playerjob = job
    playerrank = rank
end)

RegisterNetEvent("syn_housing:ledger")
AddEventHandler("syn_housing:ledger", function(ledgers)
    ledger = ledgers
end)

RegisterNetEvent("syn_housing:soldhouses")
AddEventHandler("syn_housing:soldhouses", function(soldhouses)
    soldhousing = soldhouses
end)

RegisterNetEvent("syn_housing:listoutfits")
AddEventHandler("syn_housing:listoutfits", function(playeroutfits)
    poutifts = playeroutfits
end)

RegisterNetEvent("syn_housing:getskins")
AddEventHandler("syn_housing:getskins", function(skin)
    playerskin = skin
end)


RegisterNetEvent("syn_housing:sellfurnis")
AddEventHandler("syn_housing:sellfurnis", function()
    for k, v in pairs(furniturex) do 
        if v.id == soldfurni then
            local exists = DoesObjectOfTypeExistAtCoords(v.x, v.y, v.z, 0.5, v.furnitem, 0) -- prop required to interact
            if exists then 
                local object = GetClosestObjectOfType(v.x, v.y, v.z, 0.5, v.furnitem, 0)
                SetEntityAsMissionEntity(object)
                DeleteObject(object)
            end
        end
    end
end)

RegisterNetEvent("syn_housing:spawnfurni") 
AddEventHandler("syn_housing:spawnfurni", function()
    for k, v in pairs(furniturex) do 
        local exists = DoesObjectOfTypeExistAtCoords(v.x, v.y, v.z, 0.5, v.furnitem, 0) -- prop required to interact
        if exists then 
            local object = GetClosestObjectOfType(v.x, v.y, v.z, 0.5, v.furnitem, 0)
            SetEntityAsMissionEntity(object)
            DeleteObject(object)
            Citizen.Wait(100) 
            local object2 = CreateObject(v.furnitem, v.x, v.y, v.z, true, true, false)
            SetEntityAsMissionEntity(object2, true)
            FreezeEntityPosition( object2, true)
            SetEntityHeading(object2, v.h)
        else
            local object2 = CreateObject(v.furnitem, v.x, v.y, v.z, true, true, false)
            SetEntityAsMissionEntity(object2, true)
            FreezeEntityPosition( object2, true)
            SetEntityHeading(object2, v.h)
        end
    end
end)

RegisterNetEvent("syn_housing:despawnfurni") 
AddEventHandler("syn_housing:despawnfurni", function()
    for k, v in pairs(furniturex) do 
        local exists = DoesObjectOfTypeExistAtCoords(v.x, v.y, v.z, 1.0, v.furnitem, 0) -- prop required to interact
        if exists then 
            local object = GetClosestObjectOfType(v.x, v.y, v.z, 1.0, v.furnitem, 0)
            SetEntityAsMissionEntity(object)
            DeleteObject(object)
            Citizen.Wait(50) 
        end
    end
end)

RegisterNetEvent("syn_housing:confirmfurniturebuy") 
AddEventHandler("syn_housing:confirmfurniturebuy", function()
    local furniturecount
    if next(furniturex) == nil then
        local object = CreateObject(furnitem, xx, yy, zz, true, true, false)
        SetEntityAsMissionEntity(object, true)
        FreezeEntityPosition( object, true)
        SetEntityHeading(object, hh)
        table.insert(furniturex, {
            furnitem = furnitem,
                x = xx,
                y = yy,
                z = zz,
                h = hh,
                id = #furniturex+1,
                price = furnitemcost,
                name = furniname
        })
        TriggerServerEvent("syn_housing:addfurni",furniturex,houseidx,furnitemcost,GetPlayers())
    else
        local counter = 0
        for k, v in pairs(furniturex) do 
            counter = counter + 1
        end
        
        if Config.furniturelimit >= counter then
            local object = CreateObject(furnitem, xx, yy, zz, true, true, false)
            SetEntityAsMissionEntity(object, true)
            FreezeEntityPosition( object, true)
            SetEntityHeading(object, hh)
            furniturex[#furniturex+1] = {
                furnitem = furnitem,
                x = xx,
                y = yy,
                z = zz,
                h = hh,
                id = #furniturex+1,
                price = furnitemcost,
                name = furniname
            }
            TriggerServerEvent("syn_housing:addfurni",furniturex,houseidx,furnitemcost,GetPlayers()) 
        else
            if Config.vorp then
            TriggerEvent("vorp:TipBottom", Config.Language.furnilimit..Config.furniturelimit, 4000)
            elseif Config.redem then
                TriggerEvent("redem_roleplay:ShowObjective", Config.Language.furnilimit..Config.furniturelimit, 4000)
            end
        end
    end
end)

RegisterNetEvent("syn_housing:finddoorclient")
AddEventHandler("syn_housing:finddoorclient", function()
    TriggerServerEvent("syn_housing:find", 1)
end)


if Config.vorp then
    RegisterNetEvent("vorp:SelectedCharacter")
    AddEventHandler("vorp:SelectedCharacter", function(charid)
        local type = 1
        TriggerServerEvent("syn_housing:find", type)
        TriggerServerEvent("syn_housing:getplayerid")
        Citizen.Wait(2000) 
        TriggerEvent("syn_housing:createblips")
        TriggerEvent("syn_housing:createblips2")
    end)
end

if Config.redem then
    RegisterNetEvent("syn_housing:PlayerSelected")
    AddEventHandler("syn_housing:PlayerSelected", function()
        hasLoaded = true
        local type = 1
        TriggerServerEvent("syn_housing:find", type)
        TriggerServerEvent("syn_housing:getplayerid")
        Citizen.Wait(2000) 
        TriggerEvent("syn_housing:createblips")
        TriggerEvent("syn_housing:createblips2")
    end)      
end


AddEventHandler(
    "onResourceStart",
    function(resourceName)
        if resourceName == GetCurrentResourceName() then
            local type = 1
            TriggerServerEvent("syn_housing:find", type)
            TriggerServerEvent("syn_housing:getplayerid")
            Citizen.Wait(2000)
            TriggerEvent("syn_housing:createblips")
            TriggerEvent("syn_housing:createblips2")
        end
    end
)

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName == GetCurrentResourceName() then
            for k,v in pairs(blips) do
                RemoveBlip(v.blip)
            end
            if tempObj ~= nil then
                DeleteObject(tempObj)
            end
        end
    end
)



RegisterNetEvent("syn_housing:finddoors")
AddEventHandler("syn_housing:finddoors", function(doorslocations)
    houses = doorslocations
end)

Citizen.CreateThread( function()
    WarMenu.CreateMenu('createhousemenu', Config.Language.createhousemenu)
    WarMenu.CreateMenu('buy', Config.Language.buyhouse)
    WarMenu.CreateMenu('manage', Config.Language.managehouse)
    WarMenu.CreateMenu('soldhomeledger', Config.Language.soldhomeledger)
    WarMenu.CreateMenu('confirmfurniturebuy', Config.Language.buyfurni) -- findme
    WarMenu.CreateMenu('changingroom', Config.Language.changingroom)
    WarMenu.CreateSubMenu('door', 'createhousemenu', Config.Language.setupprimdoor)
    WarMenu.CreateSubMenu('door2', 'createhousemenu', Config.Language.extradoorsetup)
    WarMenu.CreateSubMenu('door3', 'createhousemenu', Config.Language.extradoorsetup)
    WarMenu.CreateSubMenu('cancel', 'createhousemenu', Config.Language.aresure)
    WarMenu.CreateSubMenu('confirm', 'createhousemenu', Config.Language.confirm)
    WarMenu.CreateSubMenu('confirm2', 'buy', Config.Language.confirm)
    WarMenu.CreateSubMenu('confirm4', 'buy', Config.Language.confirm)
    WarMenu.CreateSubMenu('confirm3', 'manage', Config.Language.confirm)
    if Config.vorp then
        WarMenu.CreateSubMenu('upgradestorage', 'manage', Config.Language.upstore)
    end
    WarMenu.CreateSubMenu('furniture', 'manage', Config.Language.furni)
    WarMenu.CreateSubMenu('furniturecata', 'manage', Config.Language.furnicata)
    WarMenu.CreateSubMenu('sellfurni', 'manage',  Config.Language.sellfurni)
    WarMenu.CreateSubMenu('takekeys', 'manage', Config.Language.keyholders)
    WarMenu.CreateSubMenu('ledger', 'manage', Config.Language.ledger)
    
    while true do
        if WarMenu.IsMenuOpened('createhousemenu') then
            if doorset == Config.Language.notset then
                if WarMenu.MenuButton(Config.Language.setupprimodoor..doorset, 'door') then end
            else
                if WarMenu.MenuButton(Config.Language.setupotherdoors, 'door2') then end
                if WarMenu.Button(Config.Language.range..range) then
                    if Config.vorp then 
                        TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.furnirange, function(cb)
                            local testrange =     tonumber(cb)
                            if testrange ~= nil and testrange ~= 0 and testrange > 0 then
                                range = testrange
                            end
                        end)
                    elseif Config.redem then
                        TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.furnirange, function(cb)
                            local testrange =     tonumber(cb)
                            if testrange ~= nil and testrange ~= 0 and testrange > 0 then
                                range = testrange
                            end
                       end)
                    end
                end
                if WarMenu.Button(Config.Language.taxrate..tax) then 
                    if Config.vorp then
                    TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.taxrate2, function(cb)
                        local testtax =     tonumber(cb)
                        if testtax ~= nil and testtax ~= 0 and testtax > 0 then
                            tax = testtax
                        end
                   end)
                    elseif Config.redem then
                        TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.taxrate2, function(cb)
                            local testtax =     tonumber(cb)
                            if testtax ~= nil and testtax ~= 0 and testtax > 0 then
                                tax = testtax
                            end
                        end)
                    end
                end
                if WarMenu.Button(Config.Language.price.." : "..price) then 
                    if Config.vorp then
                    TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.price, function(cb)
                        local testprice =     tonumber(cb)
                        if testprice ~= nil and testprice ~= 0 and testprice > 0 then
                            price = testprice
                        end
                    end)
                    elseif Config.redem then
                        TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.price, function(cb)
                            local testprice =     tonumber(cb)
                            if testprice ~= nil and testprice ~= 0 and testprice > 0 then
                                price = testprice
                            end
                       end)
                    end
                end
                if Config.vorp then
                    if WarMenu.Button(Config.Language.inventoryspace.." : "..invspace) then 
                        if Config.vorp then
                            TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.inventoryspace, function(cb)
                                local testinvspace =     tonumber(cb)
                                if testinvspace ~= nil and testinvspace ~= 0 and testinvspace > 0 then
                                    invspace = testinvspace
                                end
                            end)
                        elseif Config.redem then
                            TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.inventoryspace, function(cb)
                                local testinvspace =     tonumber(cb)
                                if testinvspace ~= nil and testinvspace ~= 0 and testinvspace > 0 then
                                    invspace = testinvspace
                                end
                        end)
                        end
                    end
                end
                if WarMenu.MenuButton(Config.Language.confirm, 'confirm') then end
                if WarMenu.MenuButton(Config.Language.cancel, 'cancel') then end
            end
        elseif WarMenu.IsMenuOpened('cancel') then

            if WarMenu.Button(Config.Language.yes) then 
                WarMenu.CloseMenu()      
                doorlocksevent = false
                doorlocksevent2 = false
                show3d = false
                changeloc = false   
                changeloc2 = false
                range = 0   
                price = 0   
                tax = 0
                invspace = 0
                doorset = Config.Language.notset
                secondarydoors = {}
                doorinfo = {}
            end
            if WarMenu.MenuButton(Config.Language.no, 'createhousemenu') then end

            
        elseif WarMenu.IsMenuOpened('confirm') then
            if WarMenu.Button(Config.Language.yes) then 
                TriggerServerEvent("syn_housing:registerhouse", doorinfo,secondarydoors, range, price, tax, invspace,GetPlayers()) 
                doorlocksevent = false
                doorlocksevent2 = false
                show3d = false
                changeloc = false   
                changeloc2 = false   
                range = 0   
                price = 0   
                tax = 0
                invspace = 0
                doorset = Config.Language.notset
                secondarydoors = {}
                doorinfo = {}
                WarMenu.CloseMenu()      
            end
            if WarMenu.MenuButton(Config.Language.no, 'createhousemenu') then end
        elseif WarMenu.IsMenuOpened('door') then
            if WarMenu.Button(Config.Language.doorname..doorname.."") then end
            if WarMenu.Button(Config.Language.changedooriconloc) then 
                changeloc = true
                WarMenu.CloseMenu()
            end
            if WarMenu.MenuButton(Config.Language.confirmdoor..": "..doorset, 'createhousemenu') then
                show3d = false
                doorset = Config.Language.set
                local x,y,z = table.unpack(coord)
                table.insert(doorinfo, {
                    o = o,
                    p = p,
                    q = q,
                    x = x,
                    y = y,
                    z = z,
                    doorname = doorname, 
                    doorhash = doorhash,
                    objc = objc,
                    entit = entit,
                    objYaw3 = objYaw3,
                    objYaw1 = objYaw1,
                    objYaw2 = objYaw2,  
                    locked = true,
                })
            end
        elseif WarMenu.IsMenuOpened('door2') then
            if next(secondarydoors) == nil then
                if WarMenu.Button(Config.Language.addadoor) then 
                    doorlocksevent2 = true
                    WarMenu.CloseMenu()
                end
                if WarMenu.MenuButton(Config.Language.returntomainmenu, 'createhousemenu') then end

            else 
                if WarMenu.Button(Config.Language.addeditdoor) then 
                    doorlocksevent2 = true
                    WarMenu.CloseMenu()
                end
                for k,v in pairs(secondarydoors) do 
                    if WarMenu.Button(Config.Language.otherdoor.." ("..k..") : "..v.doorname.." "..v.entit) then end
                end
                if WarMenu.MenuButton(Config.Language.returntomainmenu, 'createhousemenu') then end
            end
        elseif WarMenu.IsMenuOpened('door3') then
            if WarMenu.Button(Config.Language.doorname..doorname.."") then end
            if WarMenu.Button(Config.Language.changedooriconloc) then 
                changeloc2 = true
                WarMenu.CloseMenu()
            end
            if WarMenu.MenuButton(Config.Language.confirmdoor, 'door2') then
                show3d = false
                if contains2(doorinfo, entit) then

                else
                    if next(secondarydoors) == nil then
                        local x,y,z = table.unpack(coord)
                        table.insert(secondarydoors, {
                            doorname = doorname, 
                            doorhash = doorhash,
                            objc = objc,
                            entit = entit,
                            objYaw3 = objYaw3,
                            objYaw1 = objYaw1,
                            objYaw2 = objYaw2,
                            locked = true,
                            o = o,
                            p = p,
                            q = q,
                            x = x,
                            y = y,
                            z = z,
                            secondarydoorid = 1
                        })
                    else
                        if contains2(secondarydoors, entit) then
                            for k,v in pairs(secondarydoors) do
                                if v.entit == entit then 
                                    local x,y,z = table.unpack(coord)
                                    v.doorname = doorname
                                    v.doorhash = doorhash
                                    v.objc = objc
                                    v.entit = entit
                                    v.objYaw3 = objYaw3
                                    v.objYaw1 = objYaw1
                                    v.objYaw2 = objYaw2
                                    v.x = x
                                    v.y = y
                                    v.z = z
                                    v.o = o
                                    v.p = p
                                    v.q = q
                                    v.locked = true
                                    v.secondarydoorid = v.secondarydoorid
                                end
                            end
                        else
                            local  x,y,z = table.unpack(coord)  
                            secondarydoors[#secondarydoors+1] = { 
                                o = o,
                                p = p,
                                q = q,
                                x = x,
                                y = y,
                                z = z,
                                objc = objc,
                                doorname = doorname, 
                                doorhash = doorhash,
                                entit = entit,
                                objYaw3 = objYaw3,
                                objYaw1 = objYaw1,
                                objYaw2 = objYaw2,
                                locked = true,
                                secondarydoorid = #secondarydoors+1
                            }
                        end
                    end
                end
            end 
        elseif WarMenu.IsMenuOpened('buy') then 
            if WarMenu.Button(Config.Language.houseid..houseidx) then end
            if WarMenu.Button(Config.Language.price..": "..pricex) then end
            if WarMenu.Button(Config.Language.taxrate..taxx) then end
            if Config.vorp then
                if WarMenu.Button(Config.Language.inventoryspace.." : "..invspacex) then end
            end
            if WarMenu.MenuButton(Config.Language.buyhouse, 'confirm2') then end
            if playerjob == Config.synsocietyjob and playerrank >= Config.synsocietyjobrank then
                if WarMenu.MenuButton(Config.Language.delhouse, 'confirm4') then end
            end
        elseif WarMenu.IsMenuOpened('confirm4') then
            if WarMenu.Button(Config.Language.yes) then 
                onhold = true
                TriggerServerEvent("syn_housing:deletehouse", houseidx,GetPlayers())
                TriggerServerEvent("syn_housing:removeblip", houseidx)
                WarMenu.CloseMenu()      
            end
            if WarMenu.MenuButton(Config.Language.no, 'buy') then end

        elseif WarMenu.IsMenuOpened('confirm2') then
            if WarMenu.Button(Config.Language.yes) then 
                onhold = true
                TriggerServerEvent("syn_housing:buyhome", houseidx,pricex, sellercharid, sellerid, repo,GetPlayers())
                TriggerServerEvent("syn_housing:removeblip", houseidx)
                TriggerServerEvent("syn_housing:createblip") 
                WarMenu.CloseMenu()      
            end
            if WarMenu.MenuButton(Config.Language.no, 'buy') then end


        elseif WarMenu.IsMenuOpened('manage') then -- findme
            if WarMenu.Button(Config.Language.houseid..houseidx) then end
            if WarMenu.Button(Config.Language.taxrate..taxx) then end
            if Config.vorp then
                if WarMenu.Button(Config.Language.inventoryspace.." : "..invspacex) then end
            end
            if owner then
                if WarMenu.Button(Config.Language.givekey) then 
                    WarMenu.CloseMenu()    
                    if Config.vorp then  
                        TriggerEvent("vorpinputs:getInput",Config.Language.confirm, Config.Language.id, function(cb)
                            local testid =     tonumber(cb)
                            if testid ~= nil and testid ~= 0 and testid > 0 then
                                local playerid = testid
                                TriggerServerEvent("syn_housing:givekey", playerid, houseidx, keyholdersx,GetPlayers())
                            end
                            onhold = true
                        end)
                    elseif Config.redem then
                        TriggerEvent("syn_inputs:sendinputs",Config.Language.confirm, Config.Language.id, function(cb)
                            local testid =     tonumber(cb)
                            if testid ~= nil and testid ~= 0 and testid > 0 then
                                local playerid = testid
                                TriggerServerEvent("syn_housing:givekey", playerid, houseidx, keyholdersx,GetPlayers())
                            end
                            onhold = true
                        end)
                    end
                end
                if WarMenu.MenuButton(Config.Language.takekey, 'takekeys') then end
                if WarMenu.MenuButton(Config.Language.ledger, 'ledger') then end
                if WarMenu.Button(Config.Language.setchangeroomloc) then
                    findchangingroom = true
                    WarMenu.CloseMenu()      
                end
                if WarMenu.Button(Config.Language.setinvloc) then
                    findinventory = true
                    WarMenu.CloseMenu()      
                end
                if WarMenu.MenuButton(Config.Language.sellhouse, 'confirm3') then end
            end
            if WarMenu.Button(Config.Language.spawnfurni) then
                TriggerEvent("syn_housing:spawnfurni")
                WarMenu.CloseMenu()      
            end
            if WarMenu.Button(Config.Language.despawnfurni) then
                TriggerEvent("syn_housing:despawnfurni")
                WarMenu.CloseMenu()      
            end            
            if WarMenu.MenuButton(Config.Language.buyfurni, 'furniture') then end
            if WarMenu.MenuButton(Config.Language.sellfurni, 'sellfurni') then end
            if Config.vorp then
                if WarMenu.MenuButton(Config.Language.upstore, 'upgradestorage') then end
            end
        elseif WarMenu.IsMenuOpened('takekeys') then 
            if next(keyholdersx) ~= nil then
                for k, v in pairs(keyholdersx) do 
                    if WarMenu.Button(""..v.name.."") then
                        local takeid = v.identifier
                        local takecharid = v.charidentifier
                        local name = v.name
                        TriggerServerEvent("syn_housing:takekey",keyholdersx,houseidx,takeid,takecharid,name,GetPlayers())
                        onhold = true
                        WarMenu.CloseMenu()      
                    end
                end
            end
        elseif WarMenu.IsMenuOpened('sellfurni') then 
            if next(furniturex) ~= nil then
                for k, v in pairs(furniturex) do 
                    local price = v.price * Config.furnituresellrate
                    local id = v.id
                    if WarMenu.Button(v.name..Config.Language.price2..price) then
                        TriggerServerEvent("syn_housing:sellfurni",furniturex,price, id,houseidx,GetPlayers())
                        soldfurni = id
                        TriggerEvent("syn_housing:sellfurnis")
                        onhold = true
                        WarMenu.CloseMenu()      
                    end
                end
            end
        elseif WarMenu.IsMenuOpened('furniture') then 
            for k,v in pairs(Config.furniture) do
                if WarMenu.MenuButton(""..k.."", 'furniturecata') then 
                    furniturecatagory = v
                end 
            end
        elseif WarMenu.IsMenuOpened('furniturecata') then 
            for k,v in pairs(furniturecatagory) do
                if WarMenu.Button(k..Config.Language.cost2..v.cost.." $") then 
                    furnitem = v.hash
                    furnitemcost = v.cost
                    furniname = k
                    placefurniture = true
                    WarMenu.CloseMenu()      
                end
            end
        elseif WarMenu.IsMenuOpened('confirmfurniturebuy') then
            if WarMenu.Button(Config.Language.yes) then
                TriggerServerEvent("syn_housing:buyfurni",furnitemcost)
                WarMenu.CloseMenu()      
            end
            if WarMenu.Button(Config.Language.no) then
                WarMenu.CloseMenu()      
            end

        elseif WarMenu.IsMenuOpened('upgradestorage') then
            for k,v in pairs(Config.Storageupgrades) do 
                if v.num == upgradex + 1 then
                    if WarMenu.Button(v.title..Config.Language.increaseby..v.slotamount) then 
                    TriggerServerEvent("syn_housing:inventoryupgradeslots",v.materials,v.slotamount,houseidx,GetPlayers())
                    WarMenu.CloseMenu()      
                    end
                    for l, m in pairs(v.materials) do
                        if WarMenu.Button(m.name..": "..m.amount) then end
                    end
                end
            end
        elseif WarMenu.IsMenuOpened('confirm3') then
            if WarMenu.Button(Config.Language.yes) then
                onhold = true
                TriggerServerEvent("syn_housing:sellhome", houseidx,pricex,GetPlayers())
                TriggerServerEvent("syn_housing:removeblip", houseidx)
                TriggerServerEvent("syn_housing:createblip") 
                WarMenu.CloseMenu()      
            end
            if WarMenu.MenuButton(Config.Language.no, 'manage') then end
        elseif WarMenu.IsMenuOpened('ledger') then
            if WarMenu.Button(Config.Language.ledgercash..ledger..Config.Language.dollar) then
            end
            if WarMenu.Button(Config.Language.ledgerdepo) then
                local closestPlayer, closestDistance, playerid, tgt1 = GetClosestPlayer()
                if Config.vorp then
                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                        TriggerEvent("vorp:TipBottom", Config.Language.tooclose, 4000)
                    else
                        TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.ledgerdepo, function(cb)
                            local depositedcash =     tonumber(cb)
                            if depositedcash ~= nil and depositedcash ~= 0 and depositedcash > 0 then
                                TriggerServerEvent("syn_housing:depositcash", depositedcash, houseidx)
                            end
                        end)
                        WarMenu.CloseMenu()      
                    end
                elseif Config.redem then
                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                        TriggerEvent("redem_roleplay:ShowObjective", Config.Language.tooclose, 4000)
                    else
                        TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.ledgerdepo, function(cb)
                            local depositedcash =     tonumber(cb)
                            if depositedcash ~= nil and depositedcash ~= 0 and depositedcash > 0 then
                                TriggerServerEvent("syn_housing:depositcash", depositedcash, houseidx)
                            end
                        end)
                        WarMenu.CloseMenu()      
                    end
                end
            end
            if WarMenu.Button(Config.Language.ledgerwithdraw) then
                local closestPlayer, closestDistance, playerid, tgt1 = GetClosestPlayer()
                if Config.vorp then
                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                        TriggerEvent("vorp:TipBottom", Config.Language.tooclose, 4000)
                    else
                        TriggerEvent("vorpinputs:getInput", Config.Language.confirm, Config.Language.ledgerwithdraw, function(cb)
                            local withdraw =     tonumber(cb)
                            if withdraw ~= nil and withdraw ~= 0 and withdraw > 0 then
                                TriggerServerEvent("syn_housing:withdrawcash", withdraw, houseidx)
                            end
                        end)
                        WarMenu.CloseMenu()      
                    end
                elseif Config.redem then
                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                        TriggerEvent("redem_roleplay:ShowObjective", Config.Language.tooclose, 4000)
                    else
                        TriggerEvent("syn_inputs:sendinputs", Config.Language.confirm, Config.Language.ledgerwithdraw, function(cb)
                            local withdraw =     tonumber(cb)
                            if withdraw ~= nil and withdraw ~= 0 and withdraw > 0 then
                                TriggerServerEvent("syn_housing:withdrawcash", withdraw, houseidx)
                            end
                        end)
                        WarMenu.CloseMenu()      
                    end
                end
            end
        elseif WarMenu.IsMenuOpened('soldhomeledger') then
            if soldhousing ~= 0 then
                for i = 1, #soldhousing do
                    if WarMenu.Button(Config.Language.soldhouseid..soldhousing[i].id..Config.Language.profit..soldhousing[i].amount..Config.Language.dollar) then
                        local id = soldhousing[i].id
                        local amount = soldhousing[i].amount
                        WarMenu.CloseMenu()
                        TriggerServerEvent("syn_housing:takecash", id, amount)
                        onhold3 = true
                        TriggerServerEvent("syn_housing:findsoldhouseinfo")
                    end
                end
            else
                if WarMenu.Button(Config.Language.nosold) then end
            end
            
        elseif WarMenu.IsMenuOpened('changingroom') then

            if poutifts ~= 0 then
                if Config.vorp then
                    for i = 1, #poutifts do
                        if WarMenu.Button(poutifts[i].title) then
                            local jsonCloths = poutifts[i].comps
                            TriggerEvent("vorpcharacter:loadPlayerSkin", playerskin, jsonCloths)
                            TriggerServerEvent("syn_housing:setoutfit", jsonCloths)
                            WarMenu.CloseMenu()
                        end
                    end
                elseif Config.redem then
                    TriggerServerEvent('redemrp_clothing:getOutfits')
                    WarMenu.CloseMenu()
                end
            else
                if WarMenu.Button(Config.Language.nooutfits) then end
            end              
        end ----- end of menu
        WarMenu.Display()
        Citizen.Wait(0)
    end
end)

function contains2(table, element)
    for k, v in pairs(table) do
        for x, y in pairs(v) do
            if y == element then
		    	return true
            end
        end
	end
	return false
end





Citizen.CreateThread(function()-- door locking
    while true do
        Citizen.Wait(2)
        local playerCoords, letSleep = GetEntityCoords(PlayerPedId()), false
        if next(houses) ~= nil then
            for k,v in pairs(houses) do
                for l ,m in pairs(v.primarydoor) do
                    local doordistance = vector3(m.x, m.y, m.z)
                    local distance = #(playerCoords - doordistance)
                    local maxDistance, displayText = 3, 'open'
                    if distance < 4 then
                        houseid = v.id
                        letSleep = false   
                        typez = 1    
                        secid = 0                     
                        if m.locked then
                            if DoorSystemGetOpenRatio(m.objc) ~= 0.0 then
                                DoorSystemSetOpenRatio(m.objc, 0.0, true)
                                local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                            end
                            if DoorSystemGetDoorState(m.objc) ~= 1 then
                                Citizen.CreateThread(function()
                                    Citizen.InvokeNative(0xD99229FE93B46286,m.objc,1,1,0,0,0,0)
                                end) 
                                local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                                Citizen.InvokeNative(0x6BAB9442830C7F53,m.objc,1)
                            end 
                        else
                            if DoorSystemGetDoorState(m.objc) ~= 0 then
                                Citizen.CreateThread(function()
                                    Citizen.InvokeNative(0xD99229FE93B46286,m.objc,1,1,0,0,0,0)
                                end) 
                                local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                                Citizen.InvokeNative(0x6BAB9442830C7F53,m.objc,0)
                            end 
                        end
                    end
                    if distance < maxDistance then
                        drawicon(m.o, m.p, m.q, " " ,m.locked)
                        if IsControlPressed(0, Config.keys["SHIFT"]) then
                            if IsControlJustReleased(0, Config.keys["ALT"]) then
                                if placefurniture == false then
                                    TriggerServerEvent("syn_housing:updatedoorstate",houseid, typez ,secid,GetPlayers())
                                    ped = PlayerPedId()
                                    ClearPedTasks(ped)
                                    prop_name = 'P_KEY02X'
                                    local x,y,z = table.unpack(GetEntityCoords(ped, true))
                                    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
                                    local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")
                                    local key = false
                                    if not IsEntityPlayingAnim(ped, "script_common@jail_cell@unlock@key", "action", 3) then
                                        local waiting = 0
                                        RequestAnimDict("script_common@jail_cell@unlock@key")
                                        while not HasAnimDictLoaded("script_common@jail_cell@unlock@key") do
                                            waiting = waiting + 100
                                            Citizen.Wait(100)
                                            if waiting > 5000 then
                                                break
                                            end
                                        end
                                        Wait(100)
                                        TaskPlayAnim(ped, 'script_common@jail_cell@unlock@key', 'action', 8.0, -8.0, 2500, 31, 0, true, 0, false, 0, false)
                                        Wait(1000)
                                        AttachEntityToEntity(prop, ped,boneIndex, 0.02, 0.0120, -0.00850, 0.024, -160.0, 200.0, true, true, false, true, 1, true)
                                        key = true
                                        while key do
                                            if IsEntityPlayingAnim(ped, "script_common@jail_cell@unlock@key", "action", 3) then
                                                Wait(100)
                                            else
                                                ClearPedSecondaryTask(ped)
                                                DeleteObject(prop)
                                                RemoveAnimDict("script_common@jail_cell@unlock@key")
                                                key = false
                                                break
                                            end
                                        end
                                    end   
                                end                         
                            end
                        end
                    end
                end
                
            end
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        letSleep = true
        if onhold then 
            letSleep = false
            Citizen.Wait(2000)
            onhold = false
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        letSleep = true
        if onhold2 then 
            letSleep = false
            Citizen.Wait(2000)
            onhold2 = false
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        letSleep = true
        if onhold3 then 
            letSleep = false
            Citizen.Wait(2000)
            onhold3 = false
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function() -- motel door always locked
    -- 1st door
    if DoorSystemGetOpenRatio(3765902977) ~= 0.0 then
        DoorSystemSetOpenRatio(3765902977, 0.0, true)
        local object = Citizen.InvokeNative(0xF7424890E4A094C0, 3765902977, 0)
        SetEntityRotation(object, 0, 0, 100.075, 2, true)
    end
    if DoorSystemGetDoorState(3765902977) ~= 1 then
        Citizen.CreateThread(function()
            Citizen.InvokeNative(0xD99229FE93B46286,3765902977,1,1,0,0,0,0)
        end) 
        local object = Citizen.InvokeNative(0xF7424890E4A094C0, 3765902977, 0)
        SetEntityRotation(object, 0, 0, 100.075, 2, true)
        Citizen.InvokeNative(0x6BAB9442830C7F53,3765902977,1)
    end

    --2nd door
    if DoorSystemGetOpenRatio(238680582) ~= 0.0 then
        DoorSystemSetOpenRatio(238680582, 0.0, true)
        local object = Citizen.InvokeNative(0xF7424890E4A094C0, 238680582, 0)
        SetEntityRotation(object, 0, 0, -79.82, 2, true)
    end
    if DoorSystemGetDoorState(238680582) ~= 1 then
        Citizen.CreateThread(function()
            Citizen.InvokeNative(0xD99229FE93B46286,238680582,1,1,0,0,0,0)
        end) 
        local object = Citizen.InvokeNative(0xF7424890E4A094C0, 238680582, 0)
        SetEntityRotation(object, 0, 0, -79.82, 2, true)
        Citizen.InvokeNative(0x6BAB9442830C7F53,238680582,1)
    end 
end)


Citizen.CreateThread(function()-- secondary door locking
    while true do
        Citizen.Wait(2)
        local playerCoords, letSleep = GetEntityCoords(PlayerPedId()), true
        if next(houses) ~= nil then
            for k,v in pairs(houses) do
                if next(v.otherdoors) ~= nil then
                    for l ,m in pairs(v.otherdoors) do
                            local doordistance = vector3(m.x, m.y, m.z)
                            local distance = #(playerCoords - doordistance)
                            local maxDistance, displayText = 3, 'open'
                            if distance < 4 then
                                houseid = v.id
                                letSleep = false   
                                typez = 2 
                                secid = m.secondarydoorid                       
                                if m.locked then
                                     if DoorSystemGetOpenRatio(m.objc) ~= 0.0 then
                                        DoorSystemSetOpenRatio(m.objc, 0.0, true)
                                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                        SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                                    end
                                    if DoorSystemGetDoorState(m.objc) ~= 1 then
                                        Citizen.CreateThread(function()
                                            Citizen.InvokeNative(0xD99229FE93B46286,m.objc,1,1,0,0,0,0)
                                        end) 
                                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                        SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                                        Citizen.InvokeNative(0x6BAB9442830C7F53,m.objc,1)
                                    end 
                                else
                                    if DoorSystemGetDoorState(m.objc) ~= 0 then
                                        Citizen.CreateThread(function()
                                            Citizen.InvokeNative(0xD99229FE93B46286,m.objc,1,1,0,0,0,0)
                                        end) 
                                        local object = Citizen.InvokeNative(0xF7424890E4A094C0, m.objc, 0)
                                        SetEntityRotation(object, m.objYaw1, m.objYaw2, m.objYaw3, 2, true)
                                        Citizen.InvokeNative(0x6BAB9442830C7F53,m.objc,0)
                                    end 
                                end
                            end
                            if distance < maxDistance then
                                letSleep = false   
                                drawicon(m.o, m.p, m.q, " " ,m.locked)
                                if IsControlPressed(0, Config.keys["SHIFT"]) then
                                    if IsControlJustReleased(0, Config.keys["ALT"]) then
                                        if placefurniture == false then
                                            TriggerServerEvent("syn_housing:updatedoorstate",houseid, typez,secid,GetPlayers())
                                            ped = PlayerPedId()
                                            ClearPedTasks(ped)
                                            prop_name = 'P_KEY02X'
                                            local x,y,z = table.unpack(GetEntityCoords(ped, true))
                                            local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
                                            local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")
                                            local key = false
                                            if not IsEntityPlayingAnim(ped, "script_common@jail_cell@unlock@key", "action", 3) then
                                                local waiting = 0
                                                RequestAnimDict("script_common@jail_cell@unlock@key")
                                                while not HasAnimDictLoaded("script_common@jail_cell@unlock@key") do
                                                    waiting = waiting + 100
                                                    Citizen.Wait(100)
                                                    if waiting > 5000 then
                                                        break
                                                    end
                                                end
                                                Wait(100)
                                                TaskPlayAnim(ped, 'script_common@jail_cell@unlock@key', 'action', 8.0, -8.0, 2500, 31, 0, true, 0, false, 0, false)
                                                Wait(1000)
                                                AttachEntityToEntity(prop, ped,boneIndex, 0.02, 0.0120, -0.00850, 0.024, -160.0, 200.0, true, true, false, true, 1, true)
                                                key = true
                                                while key do
                                                    if IsEntityPlayingAnim(ped, "script_common@jail_cell@unlock@key", "action", 3) then
                                                        Wait(100)
                                                    else
                                                        ClearPedSecondaryTask(ped)
                                                        DeleteObject(prop)
                                                        RemoveAnimDict("script_common@jail_cell@unlock@key")
                                                        key = false
                                                        break
                                                    end
                                                end
                                            end 
                                        end                           
                                    end
                                end
                            end 
                        
                    end
                end
            end
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        local playerCoords, letSleep = GetEntityCoords(PlayerPedId()), true
        if next(houses) ~= nil then
            for k,v in pairs(houses) do
                for l ,m in pairs(v.primarydoor) do
                    local doordistance = vector3(m.x, m.y, m.z)
                    local distance = #(playerCoords - doordistance)
                    local maxDistance = 3
                    local access = false
                    local access1 = false
                    if distance < maxDistance then
                        letSleep = false  
                        if v.owned == 0 and v.type == 0 then 
                            access = true
                            access1 = false
                        elseif v.owned == 1 and charid == v.buyercharidentifier and id == v.buyeridentifier and v.type == 0 then 
                            access = false 
                            access1 = true
                            owner = true
                        else
                            if v.owned == 1 and v.type == 0 then
                                for x,z in pairs(v.keyholders) do 
                                    if z.identifier == id and z.charidentifier == charid then
                                        access = false
                                        access1 = true
                                        owner = false
                                    end
                                end
                            end
                        end
                        if access then
                            if not onhold then
                                DrawText3D(m.o, m.p, m.q+0.2, Config.Language.presstobuy) -- findme
                                if whenKeyJustPressed(Config.keys["G"]) then
                                    if placefurniture == false then
                                        TriggerServerEvent("syn_housing:getplayerjob")
                                        TriggerServerEvent("syn_housing:find", 1)
                                        Citizen.Wait(500)
                                        pricex = v.price
                                        houseidx = v.id
                                        repo = v.repo
                                        taxx = v.tax
                                        sellercharid = v.sellercharidentifier
                                        sellerid = v.selleridentifier
                                        invspacex = v.invspace
                                        WarMenu.OpenMenu('buy')
                                    end
                                end
                            end
                        elseif access1 then
                            if not onhold then
                                DrawText3D(m.o, m.p, m.q+0.2, Config.Language.presstomanage) -- findme
                                if whenKeyJustPressed(Config.keys["G"])  then
                                    if placefurniture == false then
                                        local type = 1
                                        pricex = v.price
                                        houseidx = v.id
                                        rangex = v.range
                                        housex = m.x
                                        housey = m.y
                                        housez = m.z
                                        taxx = v.tax
                                        furniturex = v.furniture
                                        invspacex = v.invspace
                                        upgradex = v.upgrade
                                        keyholdersx = v.keyholders
                                        TriggerServerEvent("syn_housing:findledger", houseidx)
                                        TriggerServerEvent("syn_housing:find", 1)
                                        Citizen.Wait(500)
                                        WarMenu.OpenMenu('manage')
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(2)
        local playerCoords, letSleep = GetEntityCoords(PlayerPedId()), true
        if next(houses) ~= nil then
            for k,v in pairs(houses) do
                local x,y,z = table.unpack(playerCoords)
                local dist = GetDistanceBetweenCoords(x,y,z, v.changingroom.x,v.changingroom.y,v.changingroom.z, 1)
                local access = false
                if 1.5 >= dist then
                    letSleep = false
                    if charid == v.buyercharidentifier and id == v.buyeridentifier and v.type == 0 then 
                        access = true
                    else
                        for x,z in pairs(v.keyholders) do 
                            if z.identifier == id and z.charidentifier == charid and v.type == 0 then
                                access = true
                            end
                        end
                    end
                    if access then
                        drawtext(Config.Language.pressforchangingroom, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
                        if whenKeyJustPressed(Config.keys["G"]) then
                            if placefurniture == false then
                                TriggerServerEvent("syn_housing:getoutfits")
                                if Config.vorp then
                                    TriggerServerEvent("syn_housing:getskin")
                                end
                                Citizen.Wait(500)
                                WarMenu.OpenMenu('changingroom')
                            end
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(2)
        local playerCoords, letSleep = GetEntityCoords(PlayerPedId()), true
        if next(houses) ~= nil then
            for k,v in pairs(houses) do
                local x,y,z = table.unpack(playerCoords)
                local dist = GetDistanceBetweenCoords(x,y,z, v.invlocation.x,v.invlocation.y,v.invlocation.z, 1)
                local access = false
                if 1.5 >= dist then
                    letSleep = false
                    if charid == v.buyercharidentifier and id == v.buyeridentifier and v.type == 0 then 
                        access = true
                    else
                        for x,z in pairs(v.keyholders) do 
                            if z.identifier == id and z.charidentifier == charid and v.type == 0 then
                                access = true
                            end
                        end
                    end
                    if access then
                        drawtext(Config.Language.pressforinvent, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
                        if whenKeyJustPressed(Config.keys["G"]) then
                            if placefurniture == false then
                                local closestPlayer, closestDistance, playerid, tgt1 = GetClosestPlayer()
                                if Config.vorp then
                                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                                        TriggerEvent("vorp:TipBottom", Config.Language.tooclose, 4000)
                                    else
                                        local houseid = v.id
                                        TriggerServerEvent("syn_housing:ReloadHouseInventory", houseid)
                                        TriggerEvent("vorp_inventory:OpenHouseInventory", "House Inventory", houseid)
                                    end
                                elseif Config.redem then
                                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                                        TriggerEvent("redem_roleplay:ShowObjective", Config.Language.tooclose, 4000)
                                    else
                                        local houseid = v.id
                                        TriggerServerEvent("syn_housing:openlocker",houseid)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      local coords, letSleep = GetEntityCoords(PlayerPedId()), true
      for k, v in pairs(Config.Locations) do
        if GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 2 and not onhold3 then
            letSleep = false  
           DrawText3D(v.Pos.x, v.Pos.y, v.Pos.z, Config.Language.pressforsold)
           if whenKeyJustPressed(Config.keys["G"]) then
            TriggerServerEvent("syn_housing:findsoldhouseinfo")
            Citizen.Wait(1000)
            WarMenu.OpenMenu('soldhomeledger')
          end
        end
        if letSleep then
            Citizen.Wait(500)
        end
      end
    end
end)

function contain(table, element)
    for k, v in pairs(table) do
          if v.type == element then
            return true
        end
    end
return false
end

--[[  ]]

Citizen.CreateThread(function() -- motel
    while true do
      Citizen.Wait(0)
      local coords, letSleep = GetEntityCoords(PlayerPedId()), true
        
        if GetDistanceBetweenCoords(coords, -323.707, 767.1247, 121.5827, true) < 1 then
            letSleep = false  
            DrawText3D(-323.707, 767.1247, 121.5827-0.6, Config.Language.presstoexit)
            if whenKeyJustPressed(Config.keys["G"]) then
                insidemotel = false
                Citizen.InvokeNative(0x40C719A5E410B9E4, 500)
                Citizen.Wait(600)
                SetEntityCoords(PlayerPedId(), Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z-0.5 , false, false, false, false)
                Citizen.Wait(100)
                if Config.vorp then
                    TriggerEvent("vorp:setInstancePlayer", false)
                elseif Config.redem then
                    TriggerEvent("syn_housing:instance", false)
                end
                Citizen.InvokeNative(0x6A053CF596F67DF7, 500)
                Citizen.Wait(500)
            end
        end
        if GetDistanceBetweenCoords(coords, -326.82, 764.62, 122.0866, true) < 1 and insidemotel then
            letSleep = false  
            DrawText3D(-326.82, 764.62, 122.0866 - 0.6, Config.Language.pressforchangingroom)
            if whenKeyJustPressed(Config.keys["G"]) then
                TriggerServerEvent("syn_housing:getoutfits")
                if Config.vorp then
                    TriggerServerEvent("syn_housing:getskin")
                end
                Citizen.Wait(500)
                WarMenu.OpenMenu('changingroom')
            end
        end
        if GetDistanceBetweenCoords(coords, -325.4, 767.02, 122.0866, true) < 1 and insidemotel then
            letSleep = false  
            DrawText3D(-325.4, 767.02, 122.0866 - 0.6, Config.Language.pressforinvent)
            if whenKeyJustPressed(Config.keys["G"]) then
                local houseid = roomid
                if Config.vorp then
                    TriggerServerEvent("syn_housing:ReloadHouseInventory", houseid)
                    TriggerEvent("vorp_inventory:OpenHouseInventory", "House Inventory", houseid)
                elseif Config.redem then
                    TriggerEvent("redemrp_inventory:OpenLocker","private")
                end
                Citizen.Wait(500)
            end
        end
        
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function() -- motel
    while true do
      Citizen.Wait(0)
      local coords, letSleep = GetEntityCoords(PlayerPedId()), true
      local foundroom = false
      
        if GetDistanceBetweenCoords(coords, Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z, true) < 1 then
            letSleep = false  
            if not onhold2 and not insidemotel then
                if next(houses) ~= nil then
                    for z,x in pairs(houses) do
                        if contain(houses, 1) then
                            if charid == x.buyercharidentifier and id == x.buyeridentifier and x.type ==1 then 
                                foundroom = true
                                roomid = x.id
                            end
                        else
                            DrawText3D(Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z+0.6, Config.Language.presstobuyroom)
                            if whenKeyJustPressed(Config.keys["G"]) then
                                onhold2 = true
                                local price = Config.motellocation.price
                                local invspace = Config.motellocation.inventorylimit
                                TriggerServerEvent("syn_housing:createmotelroom",price,invspace,GetPlayers())
                                Citizen.Wait(500)
                            end        
                        end
                    end
                else
                    DrawText3D(Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z+0.6, Config.Language.presstobuyroom)
                    if whenKeyJustPressed(Config.keys["G"]) then
                        onhold2 = true
                        local price = Config.motellocation.price
                        local invspace = Config.motellocation.inventorylimit
                        TriggerServerEvent("syn_housing:createmotelroom",price,invspace,GetPlayers())
                        Citizen.Wait(500)
                    end
                end
                if foundroom then
                    DrawText3D(Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z+0.6, Config.Language.presstoaccess)
                    if whenKeyJustPressed(Config.keys["G"]) then
                        onhold2 = true
                        insidemotel = true
                        Citizen.InvokeNative(0x40C719A5E410B9E4, 500)
                        Citizen.Wait(600)
                        SetEntityCoords(PlayerPedId(), -323.707, 767.1247, 121.5827-0.5 , false, false, false, false)
                        Citizen.Wait(100)
                        if Config.vorp then
                            TriggerEvent("vorp:setInstancePlayer", true)
                        elseif Config.redem then
                            TriggerEvent("syn_housing:instance", true)
                        end
                        Citizen.InvokeNative(0x6A053CF596F67DF7, 500)
                        Citizen.Wait(500)
                    end
                else
                    DrawText3D(Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z+0.6, Config.Language.presstobuyroom)
                    if whenKeyJustPressed(Config.keys["G"]) then
                        onhold2 = true
                        local price = Config.motellocation.price
                        local invspace = Config.motellocation.inventorylimit
                        TriggerServerEvent("syn_housing:createmotelroom",price,invspace)
                        Citizen.Wait(500)
                    end
                end
            end
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      local coords, letSleep = GetEntityCoords(PlayerPedId()), true
        if findchangingroom then 
            letSleep = false
            drawtext(Config.Language.presstochangechangingroom, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
            local x,y,z = table.unpack(coords)
            local dist = GetDistanceBetweenCoords(x,y,z, housex,housey,housez, 1)
            if rangex >= dist then
                if whenKeyJustPressed(Config.keys["G"]) then
                    local changingroomx = {x= x, y= y, z= z}
                    if Config.vorp then
                        TriggerEvent("vorp:TipBottom", Config.Language.changingset, 4000)
                    elseif Config.redem then
                        TriggerEvent("redem_roleplay:ShowObjective", Config.Language.changingset, 4000)
                    end
                    TriggerServerEvent("syn_housing:registerchangingroom", houseidx, changingroomx,GetPlayers())
                    local type = 1
                    TriggerServerEvent("syn_housing:find", type)
                    findchangingroom = false
                end
            else
                if Config.vorp then
                    TriggerEvent("vorp:TipBottom", Config.Language.outofhouserange, 4000)
                elseif Config.redem then
                    TriggerEvent("redem_roleplay:ShowObjective", Config.Language.outofhouserange, 4000)
                end
            end
        if letSleep then
            Citizen.Wait(500)
        end
      end
    end
end)

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      local coords, letSleep = GetEntityCoords(PlayerPedId()), true
        if findinventory then 
            letSleep = false
            drawtext(Config.Language.presstochangeinv, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
            local x,y,z = table.unpack(coords)
            local dist = GetDistanceBetweenCoords(x,y,z, housex,housey,housez, 1)
            if rangex >= dist then
                if whenKeyJustPressed(Config.keys["G"]) then
                    local inventoryx = {x= x, y= y, z= z}
                    if Config.vorp then
                        TriggerEvent("vorp:TipBottom", Config.Language.invset, 4000)
                    elseif Config.redem then
                        TriggerEvent("redem_roleplay:ShowObjective", Config.Language.invset, 4000)
                    end
                    TriggerServerEvent("syn_housing:registerinventorylocation", houseidx, inventoryx,GetPlayers())
                    local type = 1
                    TriggerServerEvent("syn_housing:find", type)
                    findinventory = false
                end
            else
                if Config.vorp then
                    TriggerEvent("vorp:TipBottom", Config.Language.outofhouserange, 4000)
                elseif Config.redem then
                    TriggerEvent("redem_roleplay:ShowObjective", Config.Language.outofhouserange, 4000)
                end
            end
        if letSleep then
            Citizen.Wait(500)
        end
      end
    end
end)


RegisterNetEvent("syn_housing:createblips")
AddEventHandler("syn_housing:createblips", function()
    Citizen.Wait(2000)
    local blip
    for k,v in pairs(houses) do
        for l ,m in pairs(v.primarydoor) do
            if contains3(blips, v.id) then
                if Config.showblipsforsale then  
                    if v.owned == 0 and v.type == 0 then
                        v.blip = N_0x554d9d53f696d002(1664425300, m.x, m.y, m.z)
                        SetBlipScale(v.blip, 0.2)
                        SetBlipSprite(v.blip, Config.housebliphash, 1) 
                        Citizen.InvokeNative(0x9CB1A1623062F402, v.blip, Config.Language.hsfrsale)
                    elseif v.owned == 1 and charid == v.buyercharidentifier and id == v.buyeridentifier and v.type == 0 then
                        v.blip = N_0x554d9d53f696d002(1664425300, m.x, m.y, m.z)
                        SetBlipScale(v.blip, 0.2)
                        SetBlipSprite(v.blip, Config.ownedhouseblip, 1)
                        Citizen.InvokeNative(0x9CB1A1623062F402, v.blip, Config.Language.mehome)
                    end 
                    table.insert(blips, {
                        id = v.id,
                        blip = v.blip
                    })
                end
            end
        end
    end
end)

RegisterNetEvent("syn_housing:createblips2")
AddEventHandler("syn_housing:createblips2", function()
    for k, v in pairs(Config.Locations) do
        local blipg = N_0x554d9d53f696d002(1664425300, v.Pos.x, v.Pos.y, v.Pos.z)
        SetBlipSprite(blipg, v.blipsprite, 1)
        SetBlipScale(blipg, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blipg, v.Name)
    end
    local blipg = N_0x554d9d53f696d002(1664425300, Config.motellocation.Pos.x, Config.motellocation.Pos.y, Config.motellocation.Pos.z)
    SetBlipSprite(blipg, Config.motellocation.blipsprite, 1)
    SetBlipScale(blipg, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blipg, Config.motellocation.Name)
end) 

RegisterNetEvent("syn_housing:removeblips")
AddEventHandler("syn_housing:removeblips", function(housingid)
    for k,v in pairs(blips) do
             if v.id == housingid then 
                RemoveBlip(v.blip)
                table.remove(blips,k)
            end 
    end
   
end)

RegisterNetEvent("syn_housing:instance")
AddEventHandler("syn_housing:instance", function(bool)
    if bool == true then
        NetworkStartSoloTutorialSession()
        print("Motel Instance: Started")
    else
        NetworkEndTutorialSession()
        print("Motel Instance: Finished")
    end
end)