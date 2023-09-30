Config = {}

Config.defaultlang = "en_lang"

-- Crafting Key
Config.keys = {
    G = 0x760A9C6F
}

-- Options: s, m, l
Config.styles = {
    fontSize = 'l'
}

Config.commands = {
    campfire = true,
    extinguish = true
}

-- distance to interact with Location
Config.interactiondist = 1.5

-- Craftable Locations
Config.locations = {
    Location1 = {
        name = 'Crafting Express',
        x = 499.64, 
        y = 677.99, 
        z = 117.45
    },
    Location2 = {
        name = 'Crafting Express',
        x = 2266.73,
        y = -767.57,
        z = 42.32
    },
}

Config.PlaceableCampfire = "p_campfire05x"

-- Props the user can use to craft with
Config.craftingProps = {"p_campfire05x"}

-- How long the progressbar will show when crafting
Config.CraftTime = 10000

-- Craftable item categories. ident and Config.crafting.Category must equal eachother.
Config.categories = {
    {
        ident = 'food', 
        text = 'Craft Food'
    },
    {
        ident = 'items',
        text = 'Craft Item'
    }
}

Config.crafting = {
    {
        Text = "Campfire Stew", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Meat, 1x Salt, 1x Carrots, 2x Potatoes",
        Items = {
            {
                name = "meat",
                count = 3
            },
            {
                name = "salt",
                count = 1
            }, 
            {
                name = "carrots",
                count = 1
            }, 
            {
                name = "potato",
                count = 2
            }
        },
        Reward = {
            {
                name = "campfire_stew",
                count = 1
            }
        },
        Job = 0, -- 0 for no job, list for jobs: Job = {"cinema", "chef"}, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Jerky",
        SubText = "InvMax = 10",
        Desc = "Recipe: 1 x Meat, 1 x Salt",
        Items = {
            {
                name = "meat",
                count = 1
            },
            {
                name = "salt",
                count = 1
            }
        },
        Reward ={
            {
                name = "consumable_game",
                count = 1
            }
        },
        Job = 0, -- the job required
        Location = 0, -- keep 0 to allow crafting from any marked Location
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "PickAxe ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 10x Iron, 2x Wood",
        Items = {
            {
                name = "iron",
                count = 10
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward = {
            {
                name = "pickaxe",
                count = 1
            }
        },
        Job = 0,
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Category = "items"
    },
    {
        Text = "Axe ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 10x Iron, 2x Wood",
        Items = {
            {
                name = "iron",
                count = 10
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward ={
            {
                name = "Axe",
                count = 1
            }
        },
        Job = 0,
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Category = "items"
    },
    {
        Text = "Campfire ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 1x Rock, 1x Wood",
        Items = {
            {
                name = "rock",
                count = 1
            },
            {
                name = "wood",
                count = 1
            }
        },
        Reward ={
            {
                name = "campfire",
                count = 1
            }
        },
        Job = 0,
        Location = 0, -- this item can only be crafted in Location 1 and 2  
        Category = "items"
    },
    {
        Text = "Veggie Stew", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Chanterelles, 1x Salt, 2x Carrots, 2x Potatoes",
        Items = {
            {
                name = "consumable_herb_chanterelles",
                count = 2
            },
            {
                name = "salt",
                count = 1
            }, 
            {
                name = "carrots",
                count = 2
            }, 
            {
                name = "potato",
                count = 2
            }
        },
        Reward = {
            {
                name = "veggie_stew",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Apple Pie", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 2x Apples, 1x Sugar, 1x Flour, 1x Vanilla Flower",
        Items = {
            {
                name = "apple",
                count = 2
            },
            {
                name = "sugar",
                count = 1
            }, 
            {
                name = "flour",
                count = 1
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1
            }
        },
        Reward = {
            {
                name = "apple_pie",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Pork n Beans", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Meat, 1x Kidney Beans, 1x Oregano, 2x Salt",
        Items = {
            {
                name = "meat",
                count = 3
            },
            {
                name = "consumable_kidneybeans_can",
                count = 1
            }, 
            {
                name = "consumable_herb_oregano",
                count = 1
            }, 
            {
                name = "salt",
                count = 2
            }
        },
        Reward = {
            {
                name = "pork_n_beans",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Cornbread", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Corn, 1x Salt, 1x Sugar",
        Items = {
            {
                name = "corn",
                count = 3
            },
            {
                name = "salt",
                count = 1
            }, 
            {
                name = "sugar",
                count = 1
            }
        },
        Reward = {
            {
                name = "cornbread",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Hushpuppies", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 2x Corn, 2x flour, 1x Salt",
        Items = {
            {
                name = "corn",
                count = 2
            },
            {
                name = "flour",
                count = 2
            }, 
            {
                name = "salt",
                count = 1
            }
        },
        Reward = {
            {
                name = "hush_puppies",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Corned Beef Hash", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Potatoes, 1x Corned Beef, 1x Salt",
        Items = {
            {
                name = "potato",
                count = 3
            },
            {
                name = "corned_beef",
                count = 1
            }, 
            {
                name = "salt",
                count = 1
            }
        },
        Reward = {
            {
                name = "corned_beef_hash",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Peach Cobbler", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 2x Peaches, 1x Sugar, 1x Flour, 1x Vanilla Flower",
        Items = {
            {
                name = "consumable_peach",
                count = 2
            },
            {
                name = "sugar",
                count = 1
            }, 
            {
                name = "flour",
                count = 1
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1
            }
        },
        Reward = {
            {
                name = "peach_cobbler",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Polenta", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 3x Corn, 2x Water, 1x Salt",
        Items = {
            {
                name = "corn",
                count = 3
            },
            {
                name = "water",
                count = 2
            }, 
            {
                name = "salt",
                count = 1
            }, 
        },
        Reward = {
            {
                name = "polenta",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Cake", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 2x Flour, 2x Sugar, 2x Chocolate, 1x Vanilla Flower",
        Items = {
            {
                name = "flour",
                count = 2
            },
            {
                name = "sugar",
                count = 2
            }, 
            {
                name = "consumable_chocolate",
                count = 2
            }, 
            {
                name = "consumable_herb_vanilla_flower",
                count = 1
            }
        },
        Reward = {
            {
                name = "cake",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Hard Candy", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 2x Sugar, 1x Water, 1x Pear",
        Items = {
            {
                name = "sugar",
                count = 1
            }, 
            {
                name = "water",
                count = 1
            }, 
            {
                name = "consumable_pear",
                count = 1
            }
        },
        Reward = {
            {
                name = "hardcandy",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Candy Apple", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 1x Sugar, 1x Water, 1x Apple",
        Items = {
            {
                name = "sugar",
                count = 1
            }, 
            {
                name = "water",
                count = 1
            }, 
            {
                name = "apple",
                count = 1
            }
        },
        Reward = {
            {
                name = "candyapple",
                count = 1
            }
        },
        Job = 0, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    },
    {
        Text = "Popped Corn", -- name of item to craft on list
        SubText = "InvMax = 12",
        Desc = "Recipe: 1x Corn",
        Items = {
            {
                name = "corn",
                count = 1
            }, 
        },
        Reward = {
            {
                name = "poppedcorn",
                count = 1
            },
        },
        Job = {"cinema"}, 
        Location = 0, -- this item can only be crafted in Location 1 and 2
        Category = "food",
        Animation = 'knifecooking'
    }
}
