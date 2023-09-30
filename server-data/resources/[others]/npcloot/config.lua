-- by outsider

Config = {}

--name of items like in the DB
------------------------ ITEMS -----------------------------------
Config.canreceiveItems = true
Config.receiveItem = 20 -- percentage out of 100

Config.items = {
    { name = "water", label = "Water" }, --you get a random item from the list
    { name = "cigarette", label = "a Cigarette" }, -- add more 
    { name = "cigar", label = "a Cigar" },
    { name = "consumable_chocolate", label = "Chocolate" },
    { name = "weddingband", label = "a Wedding Ring" },
    { name = "consumable_kidneybeans_can", label = "Kidney Beans" },
    { name = "consumable_peach", label = "a Peach" },
    { name = "consumable_pear", label = "a Pear" },
    { name = "consumable_game", label = "Jerky" },
    { name = "consumable_salmon_can", label = "Canned Salmon" },
    { name = "consumable_oatcakes", label = "Oatcakes" },
    { name = "peacockfeather", label = "a Peacock Feather" },
    { name = "goldtooth", label = "a Gold Tooth" },
    { name = "oldwatch", label = "a Tarnished Watch" },
    { name = "oldbuckle", label = "a Rusty Belt Buckle" },
}

------------------------ MONEY -----------------------------------
Config.canreceiveMoney = true
Config.receiveMoney = 100 -- percentage out of 100

Config.money = { 0.11,0.25,0.37,0.45,0.55,0.69,0.72,0.88,0.96,1.0,1.14,1.22,5.0} -- random amount from the list add more if needed 

------------------------ GOLD -----------------------------------
Config.canreceiveGold = false
Config.receiveGold = 5 -- percentage out of 100

Config.gold = {  1, 2, 3}

----------------------- WEAPONS --------------------------------------
Config.canreceiveWeapons = true
Config.receiveWeapon = 5 -- percentage 1 out of 100
Config.weapons = {
    { name = "WEAPON_REVOLVER_CATTLEMAN", label = "a Cattleman Revolver" }, --you get a random weapon from the list
    { name = "WEAPON_THROWN_THROWING_KNIVES", label = "Throwing Knives" },
    { name = "WEAPON_THROWN_TOMAHAWK", label = "Throwing Tomahawk" },
    { name = "WEAPON_LASSO", label = "a Lasso" },
    { name = "WEAPON_MELEE_KNIFE_RUSTIC", label = "a Rustic Knife" },
}
