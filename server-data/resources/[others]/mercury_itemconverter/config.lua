Config = {}

Config.WebhookLink = ""
Config.WebhookColor = 11699390 -- number code, get decimal codes from here: https://convertingcolors.com/named-colors.html
Config.WebhookLogo = "https://via.placeholder.com/30x30" -- link
Config.WebhookAvatar = "https://via.placeholder.com/30x30"  -- link
Config.WebhookFooterLogo = "https://via.placeholder.com/30x30" -- link
Config.FooterText = os.date("%x %X %p") -- Operating system date and time

Config.ErrorMsgNoSpace = "You do not have enough space in your inventory" -- Error message if unable to carry item due to either total space or item limitations.
Config.ErrorMsgNoWeaponSpace = "You do not have enough weapon space in your inventory" -- Error message if unable to carry item due to either total space or item limitations.

Config.Collection = {
    {
        UsableItem = "boxedchocs",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have unboxed a box of chocolates.",
        WebhookName = "Unboxing: Box of Chocolates",
        TakenItems = {
            {
                item="boxedchocs",
                count=1
            }
        },
        RewardItems = {
            {
                item="premiumchoc",
                count=12
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "milkweedbouquet",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have separated the bouquet.",
        WebhookName = "Separating flowers",
        TakenItems = {
            {
                item="milkweedbouquet",
                count=1
            }
        },
        RewardItems = {
            {
                item="milkweedflwr",
                count=4
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "dandybouquet",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have separated the bouquet.",
        WebhookName = "Separating flowers",
        TakenItems = {
            {
                item="dandybouquet",
                count=1
            }
        },
        RewardItems = {
            {
                item="dandyflwr",
                count=4
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "poppybouquet",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have separated the bouquet.",
        WebhookName = "Separating flowers",
        TakenItems = {
            {
                item="poppybouquet",
                count=1
            }
        },
        RewardItems = {
            {
                item="poppyflwr",
                count=4
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "lupinbouquet",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have separated the bouquet.",
        WebhookName = "Separating flowers",
        TakenItems = {
            {
                item="lupinbouquet",
                count=1
            }
        },
        RewardItems = {
            {
                item="lupinflwr",
                count=4
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "wildflowerbouquet",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You have separated the bouquet.",
        WebhookName = "Separating flowers",
        TakenItems = {
            {
                item="wildflowerbouquet",
                count=1
            }
        },
        RewardItems = {
            {
                item="poppyflwr",
                count=1
            },
            {
                item="dandyflwr",
                count=1
            },
            {
                item="lupinflwr",
                count=1
            },
            {
                item="milkweedflwr",
                count=1
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "cigarettecheapbox",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You opened a pack of Red Rocket cigarettes.",
        WebhookName = "Unboxing: Red Rocket Cigarettes",
        TakenItems = {
            {
                item="cigarettecheapbox",
                count=1
            }
        },
        RewardItems = {
            {
                item="cigarette",
                count=20
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "cigarettepremiumbox",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You opened a pack of Millicent's cigarettes.",
        WebhookName = "Unboxing: Millicent's Premium Cigarettes",
        TakenItems = {
            {
                item="cigarettepremiumbox",
                count=1
            }
        },
        RewardItems = {
            {
                item="cigarettepremium",
                count=20
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "cigarcheapbox",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You opened a box of American cigars.",
        WebhookName = "Unboxing: Box of American Cigars",
        TakenItems = {
            {
                item="cigarcheapbox",
                count=1
            }
        },
        RewardItems = {
            {
                item="cigarcheap",
                count=20
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },
    {
        UsableItem = "cigarpremiumbox",
        ErrorMsg = "That didn't work.",
        SuccessMsg = "You opened a pack of Millicent's cigarettes.",
        WebhookName = "Unboxing: Millicent's Premium Cigarettes",
        TakenItems = {
            {
                item="cigarpremiumbox",
                count=1
            }
        },
        RewardItems = {
            {
                item="cigarpremium",
                count=20
            }
        },
        WeaponReward = false, -- Set to true if you want weapon rewards
        WeaponRewardAmt = 0, -- How many weapons do you have listed below?
        WeaponItems = { -- You can add weapon rewards.
            {
                weapon=""
            }
        },
        CashReward = 0, -- Change this if you want to give cash as a reward
        GoldReward = 0, -- Change this if you want to give gold as a reward
    },

            --[[ ###########TEMPLATE################
        {
            UsableItem = "", --Item to use to combine taken items
            ErrorMsg = "", -- The error message on screen for if you don't have enough "TakenItems"
            SuccessMsg = "", -- Message shown on screen if successful.
            WebhookName = "", -- Nickname for the webhook
            TakenItems = {
                {
                    item="",
                    count=
                },
                {
                    item="",
                    count=
                }
            },
            RewardItems = { -- You can add multiple rewards.
                {
                    item="",
                    count=
                }
            },
            WeaponReward = false, -- Set to true if you want weapon rewards
            WeaponRewardAmt = 0, -- How many weapons do you have listed below?
            WeaponItems = { -- You can add weapon rewards.
                {
                    weapon=""
                }
            },
            CashReward = 0, -- Change this if you want to give cash as a reward
            GoldReward = 0, -- Change this if you want to give gold as a reward
        },
        ]]
    --[[ --Crate - Rice
        {
            UsableItem = "provision_crate_rice",
            ErrorMsg = "N/A",
            SuccessMsg = "You have unboxed your crate of rice.",
            WebhookName = "Unboxing: Crate of Rice",
            TakenItems = {
                {
                    item="provision_crate_rice",
                    count=1
                }
            },
            RewardItems = {
                {
                    item="provision_rice",
                    count=50
                }
            },
            WeaponReward = false, -- Set to true if you want weapon rewards
            WeaponRewardAmt = 0, -- How many weapons do you have listed below?
            WeaponItems = { -- You can add weapon rewards.
                {
                    weapon=""
                }
            },
            CashReward = 0, -- Change this if you want to give cash as a reward
            GoldReward = 0, -- Change this if you want to give gold as a reward
        },    
    -- Collection - Coin Set
         {
            UsableItem = "kit_collectors_bag_coin_set",
            ErrorMsg = "Not enough items to complete this collection.",
            SuccessMsg= "You completed the coin collection.",
            WebhookName = "COLLECTION: Completed Coin Set", -- Nickname for the webhook
            TakenItems = {
                {
                    item="kit_collectors_bag_coin_set", --Empty Bag
                    count=1
                },
                {item="provision_coin_1700_ny_tkn",count=1},
                {item="provision_coin_1787_cent_tkn",count=1},
                {item="provision_coin_1789_pny",count=1},
                {item="provision_coin_1792_lib_qtr",count=1},
                {item="provision_coin_1792_nickel",count=1},
                {item="provision_coin_1792_qtr",count=1},
                {item="provision_coin_1794_slv_dlr",count=1},
                {item="provision_coin_1795_hlf_eag",count=1},
                {item="provision_coin_1796_hlf_pny",count=1},
                {item="provision_coin_1797_gld_eag",count=1},
                {item="provision_coin_1798_slv_dlr",count=1},
                {item="provision_coin_1800_five_dlr",count=1},
                {item="provision_coin_1800_gld_dlr",count=1},
                {item="provision_coin_1800_gld_qtr",count=1},
                {item="provision_coin_1800_hlf_dime",count=1}
            },
            RewardItems = {
                {
                    item="provision_coin_set",
                    count=1
                }
            },
            WeaponReward = false, -- Set to true if you want weapon rewards
            WeaponRewardAmt = 0, -- How many weapons do you have listed below?
            WeaponItems = { -- You can add weapon rewards.
                {
                    weapon=""
                }
            },
            CashReward = 0, -- Change this if you want to give cash as a reward
            GoldReward = 0, -- Change this if you want to give gold as a reward
        },
    -- Collection - Arrowhead Set
        {
            UsableItem = "kit_collectors_bag_arrowhead_set",
            ErrorMsg = "Not enough items to complete this collection.",
            SuccessMsg= "You completed the arrowhead collection.",
            WebhookName = "COLLECTION: Completed Arrowhead Set", -- Nickname for the webhook
            TakenItems = {
                {
                    item="kit_collectors_bag_arrowhead_set", --Empty Bag
                    count=1
                },
                {item="provision_arrowhead_agate",count=1},
                {item="provision_arrowhead_bone",count=1},
                {item="provision_arrowhead_chipped",count=1},
                {item="provision_arrowhead_crude",count=1},
                {item="provision_arrowhead_feldspar",count=1},
                {item="provision_arrowhead_granite",count=1},
                {item="provision_arrowhead_obsidian",count=1},
                {item="provision_arrowhead_quartz",count=1},
                {item="provision_arrowhead_raw",count=1},
                {item="provision_arrowhead_rough",count=1},
                {item="provision_arrowhead_slate",count=1},
                {item="provision_arrowhead_splintered",count=1}
            },
            RewardItems = {
                {
                    item="provision_arrowhead_set",
                    count=1
                }
            },
            WeaponReward = false, -- Set to true if you want weapon rewards
            WeaponRewardAmt = 0, -- How many weapons do you have listed below?
            WeaponItems = { -- You can add weapon rewards.
                {
                    weapon=""
                }
            },
            CashReward = 0, -- Change this if you want to give cash as a reward
            GoldReward = 0, -- Change this if you want to give gold as a reward
        }, ]]

    
}