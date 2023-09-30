local VORPcore = nil
local RSGCore = nil
local RedEM = nil

local num = tonumber
local encode = json.encode
local decode = json.decode
local spawnedWagons = {}

if BMConfig.Framework == 'vorp' then
    VORPcore = {}

    TriggerEvent("getCore", function(core)
        VORPcore = core
    end)
end

if BMConfig.Framework == 'rsg' then
    RSGCore = exports['rsg-core']:GetCoreObject()
end

if BMConfig.Framework == 'redemrp' then
    RedEM = exports["redem_roleplay"]:RedEM()
end



--[[ Events: Start ]]--

-- Spawn Wagon
RegisterNetEvent('bm-huntingwagon:server:SpawnWagon')
AddEventHandler('bm-huntingwagon:server:SpawnWagon', function(coords)
    local src = source
    local Player = nil

    if not src then return end

    if BMConfig.Framework == 'vorp' then
        Player = VORPcore.getUser(src).getUsedCharacter
    end

    if BMConfig.Framework == 'rsg' then
        Player = RSGCore.Functions.GetPlayer(src)
    end

    if BMConfig.Framework == 'redemrp' then
        Player = RedEM.GetPlayer(src)
    end

    if not Player then return end

    if coords then
        TriggerClientEvent('bm-huntingwagon:client:SpawnWagon', src, coords)

        return
    end

    TriggerClientEvent('bm-huntingwagon:client:SpawnWagon', src)
end)

-- Get Wagon Contents
RegisterNetEvent('bm-huntingwagon:server:GetWagonContents')
AddEventHandler('bm-huntingwagon:server:GetWagonContents', function()
    local src = source
    local Player = nil
    local citizenid = nil
    local data = {}

    if BMConfig.Framework == 'vorp' then
        Player = VORPcore.getUser(src).getUsedCharacter
        citizenid = Player.charIdentifier
    end

    if BMConfig.Framework == 'rsg' then
        Player = RSGCore.Functions.GetPlayer(src)
        citizenid = Player.PlayerData.citizenid
    end

    if BMConfig.Framework == 'redemrp' then
        Player = RedEM.GetPlayer(src)
        citizenid = Player.citizenid
    end

    local wagoncontents = MySQL.Sync.fetchAll('SELECT * FROM hunting_wagon WHERE citizenid = ?', {citizenid})

    if not wagoncontents[1] then
        TriggerClientEvent('bm-huntingwagon:client:GetWagonContents', src, data)

        return
    end

    data = decode(wagoncontents[1].contents)

    TriggerClientEvent('bm-huntingwagon:client:GetWagonContents', src, data)
end)

-- Save Wagon Contents
RegisterNetEvent('bm-huntingwagon:server:SaveWagonContents')
AddEventHandler('bm-huntingwagon:server:SaveWagonContents', function(contents)
    local src = source
    local Player = nil
    local citizenid = nil
    local data = {}

    if BMConfig.Framework == 'vorp' then
        Player = VORPcore.getUser(src).getUsedCharacter
        citizenid = Player.charIdentifier
    end

    if BMConfig.Framework == 'rsg' then
        Player = RSGCore.Functions.GetPlayer(src)
        citizenid = Player.PlayerData.citizenid
    end

    if BMConfig.Framework == 'redemrp' then
        Player = RedEM.GetPlayer(src)
        citizenid = Player.citizenid
    end

    if contents then
        for k, v in pairs(contents) do
            if k then
                data[#data + 1] = v
            end
        end
    end

    local wagoncontents = MySQL.Sync.fetchAll('SELECT contents FROM hunting_wagon WHERE citizenid = ?', {citizenid})
    data = encode(data)

    if not wagoncontents[1] then
        MySQL.Async.insert('INSERT INTO hunting_wagon (citizenid, contents) VALUES (?, ?);', {citizenid, data})

        return
    end

    MySQL.Async.execute("UPDATE hunting_wagon SET `contents` = @contents WHERE `citizenid` = @citizenid",
    {
        ['@contents'] = data,
        ['@citizenid'] = citizenid
    })
end)

-- Save Spawned Wagon in Server Tables
RegisterNetEvent('bm-huntingwagon:server:SpawnedWagons', function(wagonid)
    local src = source

    if BMConfig.Debug then
        print('')
        print('src          : '..src)
        print('wagonid      : '..wagonid)
        print('')
    end

    spawnedWagons[#spawnedWagons + 1] =
    {
        source = src,
        wagon = wagonid
    }
end)

-- Remove Wagon
RegisterNetEvent('bm-huntingwagon:server:RemoveWagon', function(wagonid)
    local src = source

    for k, v in pairs(spawnedWagons) do
        local player = v.source
        local wagon = v.wagon

        if num(player) == num(src) then
            if BMConfig.Debug then
                print('')
                print('src          : '..player)
                print('wagon        : '..wagon)
                print('')
            end

            spawnedWagons[k] = nil

            TriggerClientEvent('bm-huntingwagon:client:DespawnWagon', -1, wagonid)
        end
    end
end)

-- Auto Remove Wagon when Player Disconnected
AddEventHandler('playerDropped', function()
    for k, v in pairs(spawnedWagons) do
        local player = v.source
        local wagon = v.wagon

        if num(player) == num(source) then
            if BMConfig.Debug then
                print('')
                print('src          : '..player)
                print('wagon        : '..wagon)
                print('')
            end

            spawnedWagons[k] = nil

            TriggerClientEvent('bm-huntingwagon:client:DespawnWagon', -1, wagon)
        end
    end
end)

--[[ Events: End ]]--



--[[ Commands: Start ]]--

-- Spawn Wagon (Admin Only)
if BMConfig.Framework == 'rsg' then
    RSGCore.Commands.Add('shw', "Spawn Hunting Wagon (Admin Only)", {}, false, function(source)
        local src = source

        TriggerClientEvent('bm-huntingwagon:client:SpawnWagon', src)
    end, 'admin')
end

if BMConfig.Framework == 'vorp' or BMConfig.Framework == 'redemrp' then
    RegisterCommand('shw', function(source, args, rawCommand)
        local src = source

        TriggerClientEvent('bm-huntingwagon:client:SpawnWagon', src)
    end, true)
end

--[[ Commands: End ]]--