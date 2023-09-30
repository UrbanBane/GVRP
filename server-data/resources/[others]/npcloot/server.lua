local VORPcore = {}
local Inventory
local money = Config.money
local gold = Config.gold

TriggerEvent("getCore", function(core)
    VORPcore = core
end)

Inventory = exports.vorp_inventory:vorp_inventoryApi()

local function Keysx(table)
    local keys = 0
    for k, v in pairs(table) do
        keys = keys + 1
    end
    return keys
end

RegisterServerEvent('npcloot:give_reward', function()
    local _source = source
    local chance = math.random(1, 100)
    local Character = VORPcore.getUser(_source).getUsedCharacter

    if Config.canreceiveWeapons then
        if chance < Config.receiveWeapon then
            local ammo = { ["nothing"] = 0 }
            local reward1 = {}

            for k, v in pairs(Config.weapons) do
                table.insert(reward1, v)
            end
            local chance1 = math.random(1, Keysx(reward1))
            Inventory.canCarryWeapons(_source, 1, function(canCarry)

                if canCarry then
                    Inventory.createWeapon(_source, reward1[chance1].name, ammo, {})
                    VORPcore.NotifyRightTip(_source, "You looted " .. reward1[chance1].label, 3000)
                else
                    return VORPcore.NotifyRightTip(_source, "You can't carry any more weapons", 3000)
                end
            end)
        end
    end

    if Config.canreceiveMoney then
        if chance < Config.receiveMoney then
            local item_type = math.random(1, #money)
            Character.addCurrency(0, money[item_type])
            VORPcore.NotifyRightTip(_source, "You looted " .. string.format("%.2f", money[item_type]) .. "$", 2000)
        end
    end

    if Config.canreceiveGold then
        if chance < Config.receiveGold then
            local item_type = math.random(1, #gold)
            Character.addCurrency(1, gold[item_type])
            VORPcore.NotifyRightTip(_source, "You looted " .. gold[item_type] .. " nugget.", 2000)
        end
    end

    if Config.canreceiveItems then
        if chance < Config.receiveItem then
            local reward = {}

            for k, v in pairs(Config.items) do
                table.insert(reward, v)
            end

            local chance2 = math.random(1, Keysx(reward))
            local count = 1
            local canCarry = Inventory.canCarryItems(_source, count) --can carry inv space
            local canCarry2 = Inventory.canCarryItem(_source, reward[chance2].name, count) --cancarry item limit

            if not canCarry then
                return VORPcore.NotifyRightTip(_source, "You can't carry any more " .. reward[chance2].label, 30000)
            end

            if not canCarry2 then
                return VORPcore.NotifyRightTip(_source, "You can't carry any more " .. reward[chance2].label, 30000)
            end

            Inventory.addItem(_source, reward[chance2].name, count)
            VORPcore.NotifyRightTip(_source, "You looted " .. reward[chance2].label, 3000)
        end
    end
end)
