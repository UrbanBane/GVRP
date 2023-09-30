Config = {}
Config.Blip = false
Config.BlipsName = 'Gifting Tree'
Config.BlipsHash = 214435071 -- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp

Config.Debug = false 

Config.Date = true  -- if you want to reactivate the gifts another date
Config.day = 24
Config.month = 12
Config.year = 22

Config.Volume = 0.1

Config.GiftActivate = false  -- if you want to start the source but not given a gift yet
Config.EffectAndGiveGift = true  -- if you want the fireworks when you receive a gift
Config.EffectSoundAndGiveGift = true  -- if you don't want to play sound when you receive a gift

Config.Framework = 'vorp' -- vorp, redemrp, gum
Config.Control = 0xE8342FF2 -- Key to take the gift

Config.Language = {
    [1] = {text = "Gift", time = 4000},
    [2] = {text = "Take the gift", time = 4000},
    [3] = {text = "You have received x", time = 4000},
    [4] = {text = "You have already received your gift", time = 4000},
    [5] = {text = "There are no gifts under the tree yet", time = 4000},
    [6] = {text = "Your inventory is full", time = 4000}
}

Config.NotificationTexture = "inventory_items"
Config.NotificationTexture2 = "provision_beaus_gift_1"

Config.Gift = {
    [1] = {item = 'tobacco', label = "Fine Tobacco", count = math.random(1, 5)},
    [2] = {item = 'candyapple', label = "A Candy Apple", count = math.random(1, 5)},
    [3] = {item = 'coal', label = "A Lump of Coal", count = math.random(1, 5)},
    [4] = {item = 'consumable_caramel', label = "A Caramel", count = math.random(1, 5)},
    [5] = {item = 'hardcandy', label = "A Hard Candy", count = math.random(1, 5)},
    [6] = {item = 'taffy', label = "Some Taffy", count = math.random(1, 5)},
    [7] = {item = 'marshmallow', label = "A Marshmallow", count = math.random(1, 5)},
    [8] = {item = 'gun_oil', label = "Some Gun Oil", count = math.random(1, 5)},
    [9] = {item = 'beer', label = "A Bottle of Beer", count = math.random(1, 5)},
    [10] = {item = 'whisky', label = "A Bottle of Whisky", count = math.random(1, 5)},
    --[2] = {item = 'water', label = "Eau", count = math.random(1, 5)},
}

Config.CoordsXmasGift = {
    [1] = {coords = vector3(-823.9212, -1388.1550, 43.6520)}, -- Blackwater
    [2] = {coords = vector3(-261.84, 791.98, 118.62)}, -- Valentine
    [3] = {coords = vector3(2730.48, -1257.23, 49.79)}, -- Saint Denis
}