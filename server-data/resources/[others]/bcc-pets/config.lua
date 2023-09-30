-- Based on Malik's and Blue's animal shelters and vorp animal shelter --


Config = {}

Config.Locale = "en"

Config.TriggerKeys = {
    OpenShop = 'E',
    CallPet = 'G'
}

Config.CallPetKey = false

Config.Shops = {
    {
        Name = 'Exotic Pet Store',
        Ring = false,
        ActiveDistance = 5.0,
        Coords = {
            vector3(2558.93, -798.47, 42.36)
        },
        Spawndog = vector4( 2555.48, -796.51, 42.46, 237.4 ),
        Blip = { sprite = -1406874050, x = 2558.98, y = -798.47, z = 42.36 }
    }
}

Config.PetAttributes = {
    FollowDistance = 3,
    Invincible = true,
    SpawnLimiter = 2 -- set to 0 if you do not want a spawn limiter
}

-- Pets availability will only be limited if the object exists in the pet config.
Config.Pets = {
    {
        Text = "$250 - Cat",
        SubText = "",
        Desc = "Pspspsps.",
        Param = {
            Price = 250,
            Model = "A_C_Cat_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$200 - Pig",
        SubText = "",
        Desc = "Oink.",
        Param = {
            Price = 200,
            Model = "A_C_Pig_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$150 - Squirrel",
        SubText = "",
        Desc = "Aw nuts.",
        Param = {
            Price = 150,
            Model = "A_C_Squirrel_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$150 - Rabbit",
        SubText = "",
        Desc = "Hippity hoppity this bunny's your property.",
        Param = {
            Price = 150,
            Model = "A_C_Rabbit_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$125 - Chipmunk",
        SubText = "",
        Desc = "Doesn't sing. We don't think.",
        Param = {
            Price = 125,
            Model = "a_c_chipmunk_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$10 - Rat",
        SubText = "",
        Desc = "Uh, sure, if you want?",
        Param = {
            Price = 10,
            Model = "A_C_Rat_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$350 - Fox",
        SubText = "",
        Desc = "Not compatible with hounds",
        Param = {
            Price = 350,
            Model = "A_C_Fox_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$500 - Armadillo",
        SubText = "",
        Desc = "Robust lil critters.",
        Param = {
            Price = 500,
            Model = "a_c_armadillo_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$350 - Virginia Opossum",
        SubText = "",
        Desc = "What's it doing at a shoe shop?",
        Param = {
            Price = 350,
            Model = "A_C_Possum_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$300 - Raccoon",
        SubText = "",
        Desc = "Trash bandits are expensive.",
        Param = {
            Price = 300,
            Model = "A_C_Raccoon_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$500 - Beaver",
        SubText = "",
        Desc = "Make dam good pets.",
        Param = {
            Price = 500,
            Model = "A_C_Beaver_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$150 - Bullfrog",
        SubText = "",
        Desc = "Ribbet Ribbet.",
        Param = {
            Price = 150,
            Model = "a_c_frogbull_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$50 - Toad",
        SubText = "",
        Desc = "Don't lick it.",
        Param = {
            Price = 50,
            Model = "a_c_toad_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$650 - Gila Monster",
        SubText = "",
        Desc = "Less monsterish than you'd think.",
        Param = {
            Price = 650,
            Model = "a_c_gilamonster_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$1500 - Desert Iguana",
        SubText = "",
        Desc = "That's one pricey lizard.",
        Param = {
            Price = 1500,
            Model = "a_c_iguanadesert_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$250 - Snapping Turtle",
        SubText = "",
        Desc = "Ain't all that snappy.",
        Param = {
            Price = 250,
            Model = "a_c_turtlesnapping_01",
            Level = 1
        },
        Availability = {
            1
        },
    },
    {
        Text = "$1000 - Hawk",
        SubText = "",
        Desc = "Flightless but adorable.",
        Param = {
            Price = 1000,
            Model = "A_C_Hawk_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$800 - Owl",
        SubText = "",
        Desc = "Flightless but adorable.",
        Param = {
            Price = 800,
            Model = "A_C_Owl_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$85 - Duck",
        SubText = "",
        Desc = "Quack.",
        Param = {
            Price = 85,
            Model = "A_C_Duck_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$60 - Chicken",
        SubText = "",
        Desc = "Eggs not included.",
        Param = {
            Price = 60,
            Model = "a_c_chicken",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$2500 - Parrot",
        SubText = "",
        Desc = "Flightless but adorable.",
        Param = {
            Price = 2500,
            Model = "A_C_Parrot_01",
            Level = 1
        },
        Availability = {
            1
        }
    },
    {
        Text = "$550 - Carolina Parakeet",
        SubText = "",
        Desc = "Flightless but adorable.",
        Param = {
            Price = 550,
            Model = "A_C_CarolinaParakeet_01",
            Level = 1
        },
        Availability = {
            1
        }
    }
}

Config.Keys = { ['G'] = 0x760A9C6F, ["B"] = 0x4CC0E2FE, ['S'] = 0xD27782E3, ['W'] = 0x8FD015D8, ['H'] = 0x24978A28, ['G'] = 0x5415BE48, ["ENTER"] = 0xC7B5340A, ['E'] = 0xDFF812F9, ["J"] = 0xF3830D8E }
