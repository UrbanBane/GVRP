Config = {}

Config.defaultlang = "en_lang"

Config.Webhook = '' -- WEBHOOK VORPCORE


Config.Keys = {
    G = 0x760A9C6F -- Crafting Key
}


Config.Styles = {
    fontSize = 'm', -- Options: s, m, l
    descriptionsidebar = true
}

Config.Commands = {
    campfire = false,
    extinguish = true
}

Config.Distances = { -- distance to interact with Locations and campfires
    campfire = 1.0,
    locations = 1.0
}

Config.PlaceableCampfire = "p_campfire05x"

Config.CampfireJobLock = 0
-- Restrict campfire usage to specific roles or set to 0 to allow any role
-- Example: { "butcher" }
-- set to 0 to allow any jobs, or like { "butcher" } to job restriction

Config.KneelingAnimation = false -- Disables/Enables the kneeling animation when crafting

Config.CraftingPropsEnabled = true
-- Crafting Prop Location is resource intensive, turn this to false if you want to use less resources.
-- Disables/Enables Crafting Props

Config.Locations = {
--EXAMPLE: 
-- {
    -- name = 'Blackwater Crafting Station',
    -- id = 'blackwater',
    -- Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    -- x = -872.222, 
    -- y = -1390.924, 
    -- z = 43.573,
    -- Blip = {
    --     Hash = 1754365229
    -- },
    -- Categories = 0, -- set to 0 to allow all categories or like {"food"} to restrict
-- }
    {
        name = 'Pharmacy',
        id = 'valpharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -284.62, 
        y = 807.5, 
        z = 119.39,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'sdpharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2733.81, 
        y = -1231.4, 
        z = 50.37,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'rhopharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1372.24, 
        y = -1305.62, 
        z = 77.97,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'strawpharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -1805.71, 
        y = -428.47, 
        z = 158.83,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'bwpharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -784.81, 
        y = -1305.01, 
        z = 43.8,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'armapharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -3651.28, 
        y = -2653.73, 
        z = -13.46,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Pharmacy',
        id = 'guapharm',
        Job = { "doctor" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1385.24, 
        y = -7011.0, 
        z = 57.08,
        Blip = {
            Hash = -1739686743
        },
        Categories = { "ammo", "pharmacy", "resources", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'valforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -369.13, 
        y = 796.39, 
        z = 116.2,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'rhoforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1328.69, 
        y = -1323.44, 
        z = 77.89,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'strawbforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -1819.7, 
        y = -568.09, 
        z = 155.99,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'sdforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2514.54, 
        y = -1455.49, 
        z = 46.31,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'bwforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -869.18, 
        y = -1393.39, 
        z = 43.51,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'vhforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2962.59, 
        y = 792.04, 
        z = 51.3,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'erforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1416.93, 
        y = 279.26, 
        z = 89.45,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'prongforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -2591.92, 
        y = 407.65, 
        z = 148.79,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'macforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -2395.56, 
        y = -2378.53, 
        z = 61.19,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'tumforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -5514.89, 
        y = -3039.42, 
        z = -2.49,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'armforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -3680.75, 
        y = -2565.52, 
        z = -13.66,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge',
        id = 'guaforge',
        Job = { "blacksmith" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1491.3, 
        y = -7164.35, 
        z = 72.68,
        Blip = {
            Hash = 1754365229
        },
        Categories = { "ammo", "hardware", "jewelry", "resources", "smelting", "weapons" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
}

Config.CraftingProps = {
-- List of porps you can use for crafting
-- "P_CAMPFIRECOMBINED01X","p_campfirefresh01x","p_fireplacelogs01x","p_woodstove01x","p_stove04x","p_campfire04x","p_campfire05x","p_campfire02x","p_campfirecombined02x","p_campfirecombined03x","p_kettle03x","p_campfirecombined04x", "P_CAMPFIRECOOK02X","P_CAMPFIRE_WIN2_01X","P_CRAFTINGPOT01X"

    {
        title = "Campfire",
        prop = "p_campfire05x"
    },
    {
        title = "Campfire",
        prop = "p_campfire04x"
    },
    {
        title = "Campfire",
        prop = "p_campfire02x"
    },
    {
        title = "Campfire",
        prop = "p_campfire02x_script"
    },
    {
        title = "Oven",
        prop = "p_furnace01x"
    },
    {
        title = "Stove",
        prop = "p_woodstove01x"
    },
    {
        title = "Stove",
        prop = "p_woodburningstove01x"
    },
    {
        title = "Stove",
        prop = "p_stove05x"
    },
    {
        title = "Stove",
        prop = "p_stove06x"
    },
    {
        title = "Stove",
        prop = "p_stove07x"
    },
    {
        title = "Stove",
        prop = "p_stove09x"
    },
    {
        title = "Stove",
        prop = "p_stove04x"
    },
    {
        title = "Stove",
        prop = "p_stove01x"
    },
    {
        title = "Cooking Pot",
        prop = "P_CAMPFIRECOMBINED01X",
    },
    {
        title = "Cooking Pot",
        prop = "p_campfirecombined02x"
        
    },
    {
        title = "Cooking Pot",
        prop = "p_campfirecombined03x"
        
    },
    {
        title = "Cooking Pot",
        prop = "p_campfirecombined04x"
        
    }
}

Config.CraftTime = 10000 -- How long the progressbar will show when crafting

Config.Categories = {
--EXAMPLE: 
-- {
--     ident = 'food', -- Categories.ident and Crafting.category must equal eachother.
--     text = 'Craft Food',
--     Location = { 'campfire' }, -- set to 0 to allow any locations from Config.Locations
--     Job = { 'butcher' } -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
-- },

    {
        ident = 'food', 
        text = 'Food',
        Location = 0,
        Job = 0
    },
    {
        ident = 'drinks',
        text = 'Drinks',
        Location = 0,
        Job = 0
    },
    {
        ident = 'ammo',
        text = 'Ammo',
        Location = 0,
        Job = 0,
    },
    {
        ident = 'hardware',
        text = 'Hardware',
        Location = 0,
        Job = 0,
    },
    {
        ident = 'resources',
        text = 'Resources',
        Location = 0,
        Job = 0
    },
    {
        ident = 'weapons',
        text = 'Weapons',
        Location = 0,
        Job = 0,
    },
    {
        ident = 'smelting',
        text = 'Smelting',
        Location = { 'rhoforge', 'valforge', 'strawbforge', 'sdforge', 'bwforge', 'erforge', 'macforge' },
        Job = { 'blacksmith' }
    },
    {
        ident = 'jewelry',
        text = 'Jewelry',
        Location = { 'rhoforge', 'valforge', 'strawbforge', 'sdforge', 'bwforge', 'erforge', 'macforge' },
        Job = { 'blacksmith' }
    },
    {
        ident = 'misc',
        text = 'Miscellaneous',
        Location = 0,
        Job = 0,
    },
    {
        ident = 'pharmacy',
        text = 'Pharmacy',
        Location = 0,
        Job = { 'doctor' }
    },
    {
        ident = 'horses',
        text = 'Horse Care',
        Location = 0,
        Job = { 'horsetrainer' }
    }
}

Config.Crafting = {

--EXAMPLE: 
-- {
--     Text = "Meat Bfast ",
--     SubText = "InvMax: 10",
--     Desc = "Recipe: 1x Meat, 1x Salt",
--     Items = {
--         {
--             name = "meat",
--             count = 1
--         },
--         {
--             name = "salt",
--             count = 1
--         }
--     },
--     Reward = {
--         {
--             name = "consumable_breakfast", -- if you use the currency mode, you don't need a name section inside the reward section
--             count = 1
--         }
--     },
--     Job = { 'butcher' }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
--     Location = { 'blackwater' }, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
--     UseCurrencyMode = false, -- true if you want to use the currency mode otherwise set this to false
--     CurrencyType = 0, -- 0 => money, 1 => gold
--     Category = "food",
--     Animation = 'knifecooking' -- set what animation should play when crafting (if this is not set it has a default animation). Animations can be found below in Config.Animations
-- }
--------------------------------------------------------------------- FOOD ---------------------------------------------------------------------
    {
        Text = "Campfire Stew", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 3x Meat, 1x Salt, 1x Carrots, 2x Potatoes",
        Items = {
            {
                name = "meat",
                count = 3,
                take = true
            },
            {
                name = "salt",
                count = 1,
                take = true
            }, 
            {
                name = "carrots",
                count = 1,
                take = true
            }, 
            {
                name = "potato",
                count = 2,
                take = true
            },
        },
        Reward = {
            {
                name = "campfire_stew",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
    },
    {
        Text = "Veggie Stew", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 2x Chanterelles, 1x Salt, 2x Carrots, 2x Potatoes",
        Items = {
            {
                name = "consumable_herb_chanterelles",
                count = 2,
                take = true
            },
            {
                name = "salt",
                count = 1,
                take = true
            }, 
            {
                name = "carrots",
                count = 2,
                take = true
            }, 
            {
                name = "potato",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "veggie_stew",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
    },
    {
        Text = "Pork n Beans", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 3x Meat, 1x Kidney Beans, 1x Oregano, 2x Salt",
        Items = {
            {
                name = "meat",
                count = 3,
                take = true
            },
            {
                name = "consumable_kidneybeans_can",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_herb_oregano",
                count = 1,
                take = true
            }, 
            {
                name = "salt",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "pork_n_beans",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
    },
    {
        Text = "Cornbread", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 3x Corn, 1x Salt, 1x Sugar",
        Items = {
            {
                name = "corn",
                count = 3,
                take = true
            },
            {
                name = "salt",
                count = 1,
                take = true
            }, 
            {
                name = "sugar",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "cornbread",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },
    {
        Text = "Hushpuppies", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 2x Corn, 2x flour, 1x Salt",
        Items = {
            {
                name = "corn",
                count = 2,
                take = true
            },
            {
                name = "flour",
                count = 2,
                take = true
            }, 
            {
                name = "salt",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "hush_puppies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },
    {
        Text = "Corned Beef Hash", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 3x Potatoes, 1x Corned Beef, 1x Salt",
        Items = {
            {
                name = "potato",
                count = 3,
                take = true
            },
            {
                name = "corned_beef",
                count = 1,
                take = true
            }, 
            {
                name = "salt",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "corned_beef_hash",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
    },
    {
        Text = "Polenta", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 3x Corn, 2x Water, 1x Salt",
        Items = {
            {
                name = "corn",
                count = 3,
                take = true
            },
            {
                name = "water",
                count = 2,
                take = true
            }, 
            {
                name = "salt",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "polenta",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
    },
    {
        Text = "Sandwich", -- name of item to craft on list
        SubText = "Makes: 1 Sandwich, InvMax: 12",
        Desc = "Recipe: 2x Bread, 1x Meat, 1x Lettuce",
        Items = {
            {
                name = "bread",
                count = 2,
                take = true
            }, 
            {
                name = "meat",
                count = 1,
                take = true
            }, 
            {
                name = "lettuce",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "sandwich",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },
    {
        Text = "Flo's Special Sandwich", -- name of item to craft on list
        SubText = "Makes: 1 Sandwich, InvMax: 12",
        Desc = "Recipe: 2x Bread, 1x Carrot",
        Items = {
            {
                name = "bread",
                count = 2,
                take = true
            }, 
            {
                name = "carrots",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "flossandwich",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },
    {
        Text = "Oatmeal", -- name of item to craft on list
        SubText = "Makes: 2 Bowls, InvMax: 12",
        Desc = "Recipe: 1x Rolled Oats, 1x Water",
        Items = {
            {
                name = "rolledoats",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 

        },
        Reward = {
            {
                name = "oatmeal",
                count = 2
            },
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'potcooking',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Loaf of Bread", -- name of item to craft on list
        SubText = "Makes: 10 Slices, InvMax: 20",
        Desc = "Recipe: 1x Yeast, 1x Flour, 1x Water",
        Items = {
            {
                name = "yeast",
                count = 1,
                take = true
            }, 
            {
                name = "flour",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 

        },
        Reward = {
            {
                name = "bread",
                count = 10
            },
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },
    {
        Text = "Meat & Potato Pie", -- name of item to craft on list
        SubText = "Makes: 3 Slices, InvMax: 12",
        Desc = "Recipe: 3x Meat, 2x Potato, 1x Salt, 1x Flour, 1x Water",
        Items = {
            {
                name = "meat",
                count = 3,
                take = true
            }, 
            {
                name = "potato",
                count = 2,
                take = true
            },
            {
                name = "salt",
                count = 1,
                take = true
            }, 
            {
                name = "flour",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 

        },
        Reward = {
            {
                name = "meatpotatopie",
                count = 3
            },
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
    },

--------------------------------------------------------------------- SNACKS ---------------------------------------------------------------------

    {
        Text = "Apple Pie", -- name of item to craft on list
        SubText = "Makes: 3 Slices, InvMax: 12",
        Desc = "Recipe: 2x Apples, 1x Sugar, 1x Flour, 1x Vanilla Flower",
        Items = {
            {
                name = "apple",
                count = 2,
                take = true
            },
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "flour",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "apple_pie",
                count = 3
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Blueberry Pie", -- name of item to craft on list
        SubText = "Makes: 3 Slices, InvMax: 12",
        Desc = "Recipe: 4x Blueberries, 1x Sugar, 1x Flour, 1x Vanilla Flower",
        Items = {
            {
                name = "blueberry",
                count = 4,
                take = true
            },
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "flour",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "blueberrypie",
                count = 3
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Jerky",
        SubText = "Makes: 5 Portions, InvMax: 10",
        Desc = "Recipe: 1 x Meat, 1 x Seasoning",
        Items = {
            {
                name = "meat",
                count = 1,
                take = true
            },
            {
                name = "seasoning",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "consumable_game",
                count = 5,
                take = true
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'knifecooking',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Peach Cobbler", -- name of item to craft on list
        SubText = "Makes: 3 Slices, InvMax: 12",
        Desc = "Recipe: 2x Peaches, 1x Sugar, 1x Flour, 1x Vanilla Flower",
        Items = {
            {
                name = "consumable_peach",
                count = 2,
                take = true
            },
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "flour",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "peach_cobbler",
                count = 3
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Chocolate Cake", -- name of item to craft on list
        SubText = "Makes: 4 Slices, InvMax: 12",
        Desc = "Recipe: 2x Flour, 2x Sugar, 2x Chocolate, 1x Vanilla Flower",
        Items = {
            {
                name = "flour",
                count = 2,
                take = true
            },
            {
                name = "sugar",
                count = 2,
                take = true
            }, 
            {
                name = "consumable_chocolate",
                count = 2,
                take = true
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "cake",
                count = 4
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
--[[     {
        Text = "Hard Candy", -- name of item to craft on list
        SubText = "Makes: 2 Candies, InvMax: 12",
        Desc = "Recipe: 1x Sugar, 1x Water, 1x Pear",
        Items = {
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_pear",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "hardcandy",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "confectioner" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    }, ]]
    {
        Text = "Candy Apple", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 1x Sugar, 1x Water, 1x Apple",
        Items = {
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 
            {
                name = "apple",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "candyapple",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Popped Corn", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax: 12",
        Desc = "Recipe: 1x Corn",
        Items = {
            {
                name = "corn",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "poppedcorn",
                count = 1
            },
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Smores", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax = 12",
        Desc = "Recipe: 1x Marshmallow, 1x Biscuit, 1x Chocolate Bar",
        Items = {
            {
                name = "marshmallow",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_biscuits",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_chocolate",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "smores",
                count = 1
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'marshmallow',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Toasted Marshmallow", -- name of item to craft on list
        SubText = "Makes: 1 Portion, InvMax = 12",
        Desc = "Recipe: 1x Marshmallow",
        Items = {
            {
                name = "marshmallow",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "toastedmarshmallow",
                count = 1
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'marshmallow',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Chocolate Strawberries", -- name of item to craft on list
        SubText = "Makes: 3 Portions, InvMax = 20",
        Desc = "Recipe: 3x Strawberries, 1x Chocolate",
        Items = {
            {
                name = "strawberry",
                count = 3,
                take = true
            }, 
            {
                name = "consumable_chocolate",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "chocstrawberry",
                count = 3
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'craft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
--[[     {
        Text = "Caramel", -- name of item to craft on list
        SubText = "InvMax: 12",
        Desc = "Recipe: 1x Sugar, 1x Vanilla Flower",
        Items = {
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "consumable_caramel",
                count = 1
            },
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "confectioner" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'knifecooking',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    }, ]]
--[[     {
        Text = "Taffy", -- name of item to craft on list
        SubText = "InvMax: 12",
        Desc = "Recipe: 1x Butter, 1x Sugar, 1x Water",
        Items = {
            {
                name = "sugar",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 
            {
                name = "butter",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "consumable_taffy",
                count = 1
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "confectioner" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "food",
        Animation = 'knifecooking',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    }, ]]
    --------------------------------------------------------------------- DRINKS ---------------------------------------------------------------------
    {
        Text = "Coffee", -- name of item to craft on list
        SubText = "Makes: 4 Cups, InvMax: 12",
        Desc = "Recipe: 1x Coffee Beans, 1x Water",
        Items = {
            {
                name = "coffee",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 

        },
        Reward = {
            {
                name = "consumable_coffee",
                count = 4
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "drinks",
        Animation = 'drinkcraft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },
    {
        Text = "Cocoa", -- name of item to craft on list
        SubText = "Makes: 4 Cups, InvMax: 12",
        Desc = "Recipe: 1x Cocoa, 1x Water, 1x Marshmallow",
        Items = {
            {
                name = "cocoa",
                count = 1,
                take = true
            }, 
            {
                name = "water",
                count = 1,
                take = true
            }, 
            {
                name = "marshmallow",
                count = 1,
                take = true
            }, 
        },
        Reward = {
            {
                name = "consumable_cocoa",
                count = 4
            },
        }, 
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0, -- 0 = money, 1 = gold
        Category = "drinks",
        Animation = 'drinkcraft',
        TakeItems = true -- This determines if recipe items will be taken from inventory after crafting. If ommited, it will default to true.
    },

        ------------------------------------------------ [ RESOURCES ] ------------------------------------------------
        {
            Text = "Charcoal", -- name of item to craft on list
            SubText = "Makes: 4, InvMax: 20",
            Desc = "Recipe: 2x Hard Wood, 1x Clay, 3x Coal",
            Items = {
                {
                    name = "hwood",
                    count = 2,
                    take = true
                },
                {
                    name = "clay",
                    count = 1,
                    take = true
                },
                {
                    name = "coal",
                    count = 3,
                    take = true
                }
            },
            Reward = {
                {
                    name = "charcoal",
                    count = 4
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = { "blacksmith" },
            Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
            UseCurrencyMode = false,
            CurrencyType = 0,
            Category = "resources",
            Animation = 'blacksmithing',
        },
        {
        Text = "Cloth",
        SubText = "Makes: 2, InvMax: 20",
        Desc = "Recipe: 10x Fibers",
        Items = {
            {
                name = "fibers",
                count = 10,
                take = true
            }
        },
        Reward ={
            {
                name = "cloth",
                count = 2
            }
        },
        Type = "item",
        Job = 0,
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'craft',
    },
    {
        Text = "Copper Tube", -- name of item to craft on list
        SubText = "Makes: 4, InvMax: 20",
        Desc = "Recipe: 1x Copper Bar, 1x Clay, 1x Coal",
        Items = {
            {
                name = "copperbar",
                count = 1,
                take = true
            },
            {
                name = "clay",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "coppertube",
                count = 4
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'blacksmithing',
    },
    {
        Text = "Glass Bottle", -- name of item to craft on list
        SubText = "Makes: 2, InvMax: 20",
        Desc = "Recipe: 2x Quartz, 1x Clay, 1x Hard Wood",
        Items = {
            {
                name = "quartz",
                count = 2,
                take = true
            },
            {
                name = "clay",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "glassbottle",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'blacksmithing',
    },
    {
        Text = "Gunpowder", -- name of item to craft on list
        SubText = "Makes: 4, InvMax: 20",
        Desc = "Recipe: 1x Saltpeter, 1x Sulfur, 2x Charcoal",
        Items = {
            {
                name = "saltpeter",
                count = 1,
                take = true
            },
            {
                name = "sulfur",
                count = 1,
                take = true
            },
            {
                name = "charcoal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "gunpowder",
                count = 4
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith", "gunsmith" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'craft',
    },
    {
        Text = "Nitroglycerin", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 2x Saltpeter, 2x Sulfur, 1x Glass Bottle",
        Items = {
            {
                name = "saltpeter",
                count = 2,
                take = true
            },
            {
                name = "sulfur",
                count = 2,
                take = true
            },
            {
                name = "glassbottle",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "nitroglycerin",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'pharmacy',
    },
    {
        Text = "Paper",
        SubText = "Makes: 2, InvMax: 20",
        Desc = "Recipe: 2x Pulp, 1x Water",
        Items = {
            {
                name = "pulp",
                count = 2,
                take = true
            },
            {
                name = "water",
                count = 1,
                take = true
            },
        },
        Reward ={
            {
                name = "paper",
                count = 2
            }
        },
        Type = "item",
        Job = 0,
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'craft',
    },
    {
        Text = "Rope",
        SubText = "Makes: 1, InvMax: 20",
        Desc = "Recipe: 2x Cloth",
        Items = {
            {
                name = "cloth",
                count = 2,
                take = true
            }
        },
        Reward ={
            {
                name = "rope",
                count = 1
            }
        },
        Type = "item",
        Job = 0,
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "resources",
        Animation = 'craft',
    },
--[[     {
        Text = "Cigar",
        SubText = "InvMax: 20",
        Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        Items = {
            {
                name = "Indian_Tobbaco",
                count = 1
            },
            {
                name = "fibers",
                count = 1
            }
        },
        Reward ={
            {
                name = "cigar",
                count = 1
            }
        },
        Type = "item",
        Job = 0,
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "items"
    },
    {
        Text = "Cigarette ",
        SubText = "InvMax: 20",
        Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        Items = {
            {
                name = "Indian_Tobbaco",
                count = 1
            },
            {
                name = "fibers",
                count = 1
            }
        },
        Reward ={
            {
                name = "cigarette",
                count = 1
            }
        },
        Type = "item",
        Job = 0,
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "items"
    }, ]]

------------------------------------------------ [ MISC ] ------------------------------------------------

{
    Text = "Dandy Bouquet", -- name of item to craft on list
    SubText = "Makes: 1, InvMax: 10",
    Desc = "Recipe: 4x Dandy Flower",
    Items = {
        {
            name = "dandyflwr",
            count = 4,
            take = true
        }
    },
    Reward ={
        {
            name = "dandybouquet",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0,
    Location = 0,
    UseCurrencyMode = false,
    CurrencyType = 0, 
    Category = "misc",
    Animation = 'craft',
},
{
    Text = "Lupin Bouquet", -- name of item to craft on list
    SubText = "Makes: 1, InvMax: 10",
    Desc = "Recipe: 4x Lupin Flower",
    Items = {
        {
            name = "lupinflwr",
            count = 4,
            take = true
        }
    },
    Reward ={
        {
            name = "lupinbouquet",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0,
    Location = 0,
    UseCurrencyMode = false,
    CurrencyType = 0, 
    Category = "misc",
    Animation = 'craft',
},
{
    Text = "Milkweed Bouquet", -- name of item to craft on list
    SubText = "Makes: 1, InvMax: 10",
    Desc = "Recipe: 4x Milkweed Flower",
    Items = {
        {
            name = "milkweedflwr",
            count = 4,
            take = true
        }
    },
    Reward ={
        {
            name = "milkweedbouquet",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0,
    Location = 0,
    UseCurrencyMode = false,
    CurrencyType = 0, 
    Category = "misc",
    Animation = 'craft',
},
{
    Text = "Poppy Bouquet", -- name of item to craft on list
    SubText = "Makes: 1, InvMax: 10",
    Desc = "Recipe: 4x Poppy Flower",
    Items = {
        {
            name = "poppyflwr",
            count = 4,
            take = true
        }
    },
    Reward ={
        {
            name = "poppybouquet",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0,
    Location = 0,
    UseCurrencyMode = false,
    CurrencyType = 0, 
    Category = "misc",
    Animation = 'craft',
},
{
    Text = "Wildflower Bouquet", -- name of item to craft on list
    SubText = "Makes: 1, InvMax: 10",
    Desc = "Recipe: 1x Dandy Flower, 1x Lupin Flower, 1x Milkweed Flower, 1x Poppy Flower",
    Items = {
        {
            name = "dandyflwr",
            count = 1,
            take = true
        },
        {
            name = "lupinflwr",
            count = 1,
            take = true
        },
        {
            name = "poppyflwr",
            count = 1,
            take = true
        },
        {
            name = "milkweedflwr",
            count = 1,
            take = true
        }
    },
    Reward ={
        {
            name = "wildflowerbouquet",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0,
    Location = 0,
    UseCurrencyMode = false,
    CurrencyType = 0, 
    Category = "misc",
    Animation = 'craft',
},

------------------------------------------------ [ PHARMACY ] ------------------------------------------------
{
        Text = "Bandages", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 5x Cloth, 1x Honey",
        Items = {
            {
                name = "cloth",
                count = 5,
                take = true
            },
            {
                name = "honey",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "bandage",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'craft',
    },
    {
        Text = "Medicine", -- name of item to craft on list
        SubText = "Makes: 10, InvMax: 10",
        Desc = "Recipe: 1x Opium, 2x Zinc, 1x Glass Bottle",
        Items = {
            {
                name = "opium",
                count = 1,
                take = true
            },
            {
                name = "zinc",
                count = 2,
                take = true
            },
            {
                name = "glassbottle",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "consumable_medicine",
                count = 10
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'pharmacy',
    },
    {
        Text = "Opium", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 4x Poppy Flowers",
        Items = {
            {
                name = "poppyflwr",
                count = 4,
                take = true
            }
        },
        Reward = {
            {
                name = "opium",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'pharmacy',
    },
    {
        Text = "Saline", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 1x Salt, 4x Water, 1x Glass Bottle",
        Items = {
            {
                name = "salt",
                count = 1,
                take = true
            },
            {
                name = "water",
                count = 4,
                take = true
            },
            {
                name = "glassbottle",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "saline",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'pharmacy',
    },
    {
        Text = "Syringe", -- name of item to craft on list
        SubText = "Makes: 10, InvMax: 20",
        Desc = "Recipe: 2x Opium, 2x Saline, 2x Copper Tube, 2x Rubber",
        Items = {
            {
                name = "opium",
                count = 2,
                take = true
            },
            {
                name = "saline",
                count = 2,
                take = true
            },
            {
                name = "coppertube",
                count = 2,
                take = true
            },
            {
                name = "rubber",
                count = 2,
                take = true
            },
        },
        Reward = {
            {
                name = "syringe",
                count = 10
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'pharmacy',
    },
    {
        Text = "Snake Oil", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 1x Alcohol, 1x Horse Stimulant, 1x Charcoal, 1x Glass Bottle",
        Items = {
            {
                name = "alcohol",
                count = 1,
                take = true
            },
            {
                name = "stim",
                count = 1,
                take = true
            },
            {
                name = "charcoal",
                count = 1,
                take = true
            },
            {
                name = "glassbottle",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "consumable_snake_oil",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "pharmacy",
        Animation = 'pharmacy',
    },

------------------------------------------------ [ HARDWARE ] ------------------------------------------------

    {
        Text = "Campfire", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 5",
        Desc = "Recipe: 1x Rock, 1x Hard Wood",
        Items = {
            {
                name = "rock",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "campfire",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0,
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "hardware",
        Animation = 'craft',
    },
    {
        Text = "Davy Lantern",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Iron Bar, 3x Quartz, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true                
            },
            {
                name = "quartz",
                count = 3,
                take = true                
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_melee_davy_lantern",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
        TakeItems = true 
    },  
    {
        Text = "Fishing Rod",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_fishingrod",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
    },
    {
        Text = "Goldpan", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 5",
        Desc = "Recipe: 1x Iron Bar, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "goldpan",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
    },
    {
        Text = "Hatchet", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 5",
        Desc = "Recipe: 1x Iron Bar, 1x Hard Wood, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 2,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "hatchet",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
    },
    {
        Text = "Improved Binoculars",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Iron Bar, 3x Quartz, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true                
            },
            {
                name = "quartz",
                count = 3,
                take = true                
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_kit_binoculars_improved",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
        TakeItems = true 
    },  
    {
        Text = "Lantern",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Iron Bar, 1x Quartz, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true                
            },
            {
                name = "quartz",
                count = 1,
                take = true                
            }
        },
        Reward = {
            {
                name = "weapon_melee_lantern",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
        TakeItems = true 
    },
    {
        Text = "Lockpick", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 5",
        Desc = "Recipe: 1x Iron Bar, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "lockpick",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing'
    },
    {
        Text = "Nails", -- name of item to craft on list
        SubText = "Makes: 10, InvMax: 40",
        Desc = "Recipe: 1x Iron Bar, 1x Clay, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "clay",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "nails",
                count = 10
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
    },
    {
        Text = "Pickaxe ", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 5",
        Desc = "Recipe: 1x Iron Bar, 1x Hard Wood, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "pickaxe",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing',
    },
    {
        Text = "Torch", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Cloth, 1x Hard Wood",
        Items = {
            {
                name = "cloth",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "weapon_melee_torch",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = 0,
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "hardware",
        Animation = 'craft',
    },
    {
        Text = "Watering Can", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 1x Iron Bar, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "wateringcan",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'blacksmithing'
    },
    {
        Text = "Wooden Boards", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 20",
        Desc = "Recipe: 5x Hard Wood",
        Items = {
            {
                name = "hwood",
                count = 5,
                take = true
            },
        },
        Reward = {
            {
                name = "wooden_boards",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "lumberjack" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "hardware",
        Animation = 'sawing',
    },
        
    ------------------------------------------------ [ HORSE CARE ]------------------------------------------------

--[[     {
        Text = "Fruit Treat", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 2x Rolled Oats, 1x Apple, 1x Pear",
        Items = {
            {
                name = "rolledoats",
                count = 2,
                take = true
            },
            {
                name = "consumable_apple",
                count = 1,
                take = true
            },
            {
                name = "consumable_pear",
                count = 1,
                take = true
            },
            {
                name = "water",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "horse_fruit_treat",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    }, ]]
    {
        Text = "Horsebrush", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 10",
        Desc = "Recipe: 1x Soft Wood, 20x Fibers",
        Items = {
            {
                name = "softwood",
                count = 1,
                take = true
            },
            {
                name = "fibers",
                count = 20,
                take = true
            }
        },
        Reward ={
            {
                name = "horsebrush",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    },
    {
        Text = "Horse Stimulant", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 10",
        Desc = "Recipe: 2x Opium, 2x Saline, 2x Zinc, 2x Copper Tube",
        Items = {
            {
                name = "opium",
                count = 2,
                take = true
            },
            {
                name = "zinc",
                count = 2,
                take = true
            },
            {
                name = "saline",
                count = 2,
                take = true
            },
            {
                name = "coppertube",
                count = 2,
                take = true
            },
        },
        Reward = {
            {
                name = "stim",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    },
--[[     {
        Text = "Sugarcube", -- name of item to craft on list
        SubText = "Makes: 10, InvMax: 20",
        Desc = "Recipe: 2x Sugar, 2x Water",
        Items = {
            {
                name = "sugar",
                count = 2,
                take = true
            },
            {
                name = "water",
                count = 2,
                take = true
            },
        },
        Reward = {
            {
                name = "consumable_sugarcube",
                count = 10
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    },
    {
        Text = "Fruit Treat", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 2x Rolled Oats, 1x Apple, 1x Pear",
        Items = {
            {
                name = "rolledoats",
                count = 2,
                take = true
            },
            {
                name = "sweetpotatoes",
                count = 1,
                take = true
            },
            {
                name = "corn",
                count = 1,
                take = true
            },
            {
                name = "water",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "horse_veggie_treat",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    },

        {
        Text = "Fruit Treat", -- name of item to craft on list
        SubText = "Makes: 5, InvMax: 20",
        Desc = "Recipe: 2x Rolled Oats, 1x Apple, 1x Pear",
        Items = {
            {
                name = "rolledoats",
                count = 2,
                take = true
            },
            {
                name = "consumable_apple",
                count = 1,
                take = true
            },
            {
                name = "consumable_pear",
                count = 1,
                take = true
            },
            {
                name = "water",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "horse_fruit_treat",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "horsetrainer" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "horses",
        Animation = 'craft',
    }, ]]
        ------------------------------------------------ [ WEAPONS ]------------------------------------------------

    {
        Text = "Bolas",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 2x Cloth, 2x Rope, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "cloth",
                count = 2,
                take = true
            },
            {
                name = "rope",
                count = 2,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_thrown_bolas",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Bow",
        SubText = "Makes: 1 Bow, InvMax: 1",
        Desc = "Recipe: 2x Hard Wood, 5x Fibers",
        Items = {
            {
                name = "hwood",
                count = 2,
                take = true
            },
            {
                name = "fibers",
                count = 5,
                take = true
            },
        },
        Reward ={
            {
                name = "WEAPON_BOW",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = 0, 
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Cleaver",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "WEAPON_MELEE_CLEAVER",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Collectors Machete",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 5x Soft Wood, 2x Hard Wood, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "wood",
                count = 5,
                take = true
            },
            {
                name = "hwood",
                count = 2,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_melee_machete_collector",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Dynamite Detonator",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Paper, 1x Nitroglycerin, 1x Gunpowder, 1x Pulp, 2x Rope, 2x Coal",
        Items = {
            {
                name = "paper",
                count = 1,
                take = true
            },
            {
                name = "nitroglycerin",
                count = 1,
                take = true
            },
            {
                name = "gunpowder",
                count = 1,
                take = true
            },
            {
                name = "pulp",
                count = 1,
                take = true
            },
            {
                name = "rope",
                count = 2,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_thrown_dynamite",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Fire Bottle Sling",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 3x Glass Bottle, 3x Cloth, 2x Sap, 2x Rope, 1x Alcohol",
        Items = {
            {
                name = "glassbottle",
                count = 3,
                take = true
            },
            {
                name = "cloth",
                count = 3,
                take = true
            },
            {
                name = "sap",
                count = 2,
                take = true
            },
            {
                name = "rope",
                count = 2,
                take = true
            },
            {
                name = "alcohol",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_thrown_molotov",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "saloon", "moonshiner" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Hammer",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "WEAPON_MELEE_HAMMER",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Hunter Hatchet",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "WEAPON_MELEE_HATCHET_HUNTER",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Knife",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 1x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "WEAPON_MELEE_KNIFE",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },
    {
        Text = "Lasso",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 5x Rope",
        Items = {
            {
                name = "rope",
                count = 5,
                take = true
            },
        },
        Reward ={
            {
                name = "weapon_lasso",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = 0, 
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Poison Bottle Sling",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 3x Glass Bottle, 3x Cloth, 2x Sap, 2x Rope, 1x Snake Oil, 1x Sulfur",
        Items = {
            {
                name = "glassbottle",
                count = 3,
                take = true
            },
            {
                name = "cloth",
                count = 3,
                take = true
            },
            {
                name = "sap",
                count = 2,
                take = true
            },
            {
                name = "rope",
                count = 2,
                take = true
            },
            {
                name = "consumable_snake_oil",
                count = 1,
                take = true
            },
            {
                name = "sulfur",
                count = 1,
                take = true
            },
        },
        Reward = {
            {
                name = "weapon_thrown_poisonbottle",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Throwing Knives Holster",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Iron Bar, 1x Rope, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "rope",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_thrown_throwing_knives",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Tomahawk Holster",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe: 1x Iron Bar, 1x Rope, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "rope",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_thrown_tomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'craft',
    },
    {
        Text = "Traders Knife",
        SubText = "Makes: 1, InvMax: 1",
        Desc = "Recipe 1x Iron Bar, 1x Hard Wood, 1x Soft Wood, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "hwood",
                count = 1,
                take = true
            },
            {
                name = "wood",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "weapon_melee_knife_trader",
                count = 1
            }
        },
        Type = "weapon", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "weapons",
        Animation = 'blacksmithing',
    },

    ------------------------------------------------ [ AMMO ] ------------------------------------------------
    {
        Text = "Arrow Normal", -- name of item to craft on list
        SubText = "Makes: 2, InvMax: 10",
        Desc = "Recipe: 1x Soft Wood, 3x Feathers",
        Items = {
            {
                name = "wood",
                count = 1,
                take = true
            },
            {
                name = "feather",
                count = 3,
                take = true
            }
        },
        Reward ={
            {
                name = "ammoarrmownormal",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0,
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "ammo",
        Animation = 'craft',
    },
    {
        Text = "Arrow Fire", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 1x Soft Wood, 3x Feathers, 2x Cloth, 1x Alcohol",
        Items = {
            {
                name = "wood",
                count = 1,
                take = true
            },
            {
                name = "feather",
                count = 3,
                take = true
            },
            {
                name = "cloth",
                count = 2,
                take = true
            },
            {
                name = "alcohol",
                count = 1,
                take = true
            },
        },
        Reward ={
            {
                name = "ammoarrowfire",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "ammo",
        Animation = 'craft',
    },
    {
        Text = "Arrow Small Game", -- name of item to craft on list
        SubText = "Makes: 2, InvMax: 10",
        Desc = "Recipe: 1x Soft Wood, 1x Feather",
        Items = {
            {
                name = "wood",
                count = 1,
                take = true
            },
            {
                name = "feather",
                count = 1,
                take = true
            }
        },
        Reward ={
            {
                name = "ammoarrowsmallgame",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0,
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0, 
        Category = "ammo",
        Animation = 'craft',
    },
    {
        Text = "Bolas Ammo",
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe 1x Iron Ore, 1x Rope, 1x Coal",
        Items = {
            {
                name = "iron",
                count = 1,
                take = true
            },
            {
                name = "rope",
                count = 1,
                take = true
            }
        },
        Reward = {
            {
                name = "ammobolla",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'blacksmithing',
    },
    {
        Text = "Dynamite Ammo",
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 3x Paper, 3x Nitroglycerin, 3x Gunpowder, 3x Pulp, 3x Rope, 2x Coal",
        Items = {
            {
                name = "paper",
                count = 3,
                take = true
            },
            {
                name = "nitroglycerin",
                count = 3,
                take = true
            },
            {
                name = "gunpowder",
                count = 3,
                take = true
            },
            {
                name = "pulp",
                count = 3,
                take = true
            },
            {
                name = "rope",
                count = 3,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "ammodynamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'craft',
    }, 
    {
        Text = "Fire Bottle Ammo",
        SubText = "Makes: 3 Charges, Max: 10",
        Desc = "Recipe 3x Alcohol, 3x Cloth, 3x Sap, 3x Glass Bottle",
        Items = {
            {
                name = "alcohol",
                count = 3,
                take = true
            },
            {
                name = "cloth",
                count = 3,
                take = true
            },
            {
                name = "sap",
                count = 3,
                take = true
            }, 
            {
                name = "glassbottle",
                count = 3,
                take = true
            }, 
        },
        Reward = {
            {
                name = "ammomolotov",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "saloon", "moonshiner" },
        Location = 0,
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'craft',
    },
    {
        Text = "Poison Bottle Ammo",
        SubText = "Makes: 5 Charges, InvMax: 10",
        Desc = "Recipe 3x Snake Oil, 3x Sulfur, 5x Glass Bottle",
        Items = {
            {
                name = "consumable_snake_oil",
                count = 3,
                take = true
            },
            {
                name = "sulfur",
                count = 3,
                take = true
            },
            {
                name = "glassbottle",
                count = 5,
                take = true
            },
        },
        Reward = {
            {
                name = "ammopoisonbottle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "doctor" },
        Location = { "valpharm", "sdpharm", "rhopharm", "strawpharm", "bwpharm", "armapharm" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'craft',
    },
    {
        Text = "Throwing Knives Ammo",
        SubText = "Makes: 5, InvMax: 10",
        Desc = "Recipe: 1x Iron Bar, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "ammoknives",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'craft',
    }, 
    {
        Text = "Tomahawk Ammo",
        SubText = "Makes: 5, InvMax: 10",
        Desc = "Recipe: 1x Iron Bar, 2x Coal",
        Items = {
            {
                name = "ironbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward = {
            {
                name = "ammotomahawk",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "ammo",
        Animation = 'craft',
    }, 

    ------------------------------------------------ [ JEWELRY ] ------------------------------------------------

    {
        Text = "Sapphire Bracelet", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 5",
        Desc = "Recipe: 1x Gold Bar, 1x Sapphire, 2x Coal",
        Items = {
            {
                name = "goldbar",
                count = 1,
                take = true
            },
            {
                name = "sapphire",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward ={
            {
                name = "sapphirebracelet",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "jewelry",
        Animation = 'blacksmithing',
    },
    {
        Text = "Wedding Band Set", -- name of item to craft on list
        SubText = "Makes: 2, InvMax: 2",
        Desc = "Recipe: 1x Gold Bar, 2x Coal",
        Items = {
            {
                name = "goldbar",
                count = 1,
                take = true
            },
            {
                name = "coal",
                count = 2,
                take = true
            }
        },
        Reward ={
            {
                name = "weddingband",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "jewelry",
        Animation = 'blacksmithing',
    },

    ------------------------------------------------ [ SMELTING ] ------------------------------------------------

    {
        Text = "Copper Bar", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 5x Copper Ore, 3x Coal",
        Items = {
            {
                name = "copper",
                count = 5,
                take = true
            },
            {
                name = "coal",
                count = 3,
                take = true
            }
        },
        Reward ={
            {
                name = "copperbar",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "smelting",
        Animation = 'blacksmithing',
    },
    {
        Text = "Gold Bar", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 4x Gold Nugget, 3x Coal",
        Items = {
            {
                name = "goldnugget",
                count = 4,
                take = true
            },
            {
                name = "coal",
                count = 3,
                take = true
            }
        },
        Reward ={
            {
                name = "goldbar",
                count = 1
            },
         },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "smelting",
        Animation = 'blacksmithing',
    },
    {
        Text = "Iron Bar", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 5x Iron Ore, 3x Coal",
        Items = {
            {
                name = "iron",
                count = 5,
                take = true
            },
            {
                name = "coal",
                count = 3,
                take = true
            }
        },
        Reward ={
            {
                name = "ironbar",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "smelting",
        Animation = 'blacksmithing',
    },
    {
        Text = "Silver Bar", -- name of item to craft on list
        SubText = "Makes: 1, InvMax: 10",
        Desc = "Recipe: 4x Silver Ore, 3x Coal",
        Items = {
            {
                name = "silver",
                count = 4,
                take = true
            },
            {
                name = "coal",
                count = 3,
                take = true
            }
        },
        Reward ={
            {
                name = "silverbar",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = { "blacksmith" },
        Location = { "valforge", "rhoforge", "strawbforge", "sdforge", "bwforge", "erforge", "macforge", "vhforge", "prongforge", "tumforge", "armforge", "guaforge" },
        UseCurrencyMode = false,
        CurrencyType = 0,
        Category = "smelting",
        Animation = 'blacksmithing',
    },
}

Config.Animations = {
    ["craft"] = { --Default Animation
        dict = "mech_inventory@crafting@fallbacks",
        name = "full_craft_and_stow", 
        flag = 27, --upper body only
        type = 'standard'
    },
    ["spindlecook"] = {
        dict = "amb_camp@world_camp_fire_cooking@male_d@wip_base",
        name = "wip_base",
        flag = 17,  --full body
        type = 'standard',
        prop = {
            model = 'p_stick04x',
            coords = {
                x = 0.2, 
                y = 0.04,
                z = 0.12,
                xr = 170.0,
                yr = 50.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 's_meatbit_chunck_medium01x',
                coords = {
                    x = -0.30, 
                    y = -0.08,
                    z = -0.30,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 70.0
                }
            }
        }
    },
    ["marshmallow"] = {
        dict = "amb_camp@world_camp_fire_cooking@male_d@wip_base",
        name = "wip_base",
        flag = 17,
        type = 'standard',
        prop = {
            model = 'p_stick04x',
            coords = {
                x = 0.2, 
                y = 0.04,
                z = 0.12,
                xr = 170.0,
                yr = 50.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 'p_garlic_02x',
                coords = {
                    x = -0.49, 
                    y = -0.1,
                    z = -0.49,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 0.0
                }
            }
        }
    },
    ["knifecooking"] = {
        dict = "amb_camp@world_player_fire_cook_knife@male_a@wip_base",
        name = "wip_base", 
        flag = 17,
        type = 'standard',
        prop = {
            model = 'w_melee_knife06',
            coords = {
                x = -0.01, 
                y = -0.02,
                z = 0.02,
                xr = 190.0,
                yr = 0.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 'p_redefleshymeat01xa',
                coords = {
                    x = 0.00, 
                    y = 0.02,
                    z = -0.20,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 0.0
                }
            }
        }
    },
    ["blacksmithing"] = {
        dict = "mini_games@story@beechers@build_foundations@charles",
        name = "hammer_loop_good",
        flag = 17,
        type = 'standard',
        prop = {
            model = 'p_hammer01x',
            coords = {
                x = 0.01, 
                y = -0.06,
                z = 0.08,
                xr = 160.0,
                yr = 6.0,
                zr = -96.0
            },
            bone = 'SKEL_R_Finger13',
        }
    },
    ["pharmacy"] = {
        dict = "amb_work@world_human_mortar_pestle@female_a@wip_base",
        name = "wip_base",
        flag = 27,
        type = 'standard',
        prop = {
            model = 'p_pestle_01',
            coords = {
                x = 0.00, 
                y = -0.01,
                z = 0.07,
                xr = 5.0,
                yr = 180.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
        }
    },
    ["sawing"] = {
        dict = "amb_work@world_human_saw_wood@male_a@idle_a",
        name = "idle_a",
        flag = 27,
        type = 'standard',
        prop = {
            model = 'p_sawhand01x',
            coords = {
                x = 0.24, 
                y = 0.09,
                z = 0.0,
                xr = 0.0,
                yr = 0.0,
                zr = -63.0
            },
            bone = 'SKEL_R_Finger02',
        }
    },

    ["campfire"] = {
        dict = "script_campfire@lighting_fire@male_male",
        name = "light_fire_b_p2_male_b", 
        flag = 17,
        type = 'standard'
	},
    ["drinkcraft"] = {
        dict = "mech_dynamic@world_player_dynamic_kneel_ground@trans@kneel1@male_a",
        name = "kneel1_trans_brewcoffee_kneel1", 
        flag = 17,
        type = 'standard'
	},
    ["potcooking"] = {
        dict = "amb_camp@prop_camp_cauldron_stir@male_a@idle_c",
        name = "idle_g", 
        flag = 17,
        type = 'standard'
	}
    
}