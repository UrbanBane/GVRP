Config = {}

-- See folder languages for available locales
Config.language = "en"

Config.DiscordWebhook = {
    active = true,
    webhook_url = "https://discord.com/api/webhooks/977987740434051082/4LsoWxZwRVGtTk-O4ox-9jHdZl4kHFBH4_CBWZxjQ8UjVlzF8NoIiCc3ws6s7T7zJtIb", -- If set, this webhook will be used for all pinboard actions and ignores anonymous setting.
    webhook_url_new = "https://discord.com/api/webhooks/978264343093334056/rNml-qKkikN9yK28MzkjNFz-LhOAuX6o7abkpEQn2q-1fCJjsTNL8H4q2b21RgDYjEry", -- If you want new and removed items in one discord channel set this to the same as webhook_url_remove
    webhook_url_removed = "",
    anonymous_new = true,
    anonymous_remover = false,
    avatar_url = "https://media.discordapp.net/attachments/805495169901789194/911350679447150603/unknown.png",
    server_icon_url = "https://cdn.discordapp.com/attachments/894725874811801633/1115310974405189755/NCRP_logo_square_small.png",
    new_text_poster_color_hex = "#00c500",
    new_image_poster_color_hex = "#00c500",
    remove_text_poster_color_hex = "#990000",
    remove_image_poster_color_hex = "#990000",
    system_user_alias = "Pinboard",
}

-- "newest_first" or "latest_first" (default)
Config.NoticeOrder = "latest_first"

-- 1000 = 1 second
Config.NotificationDurationInMs = 4000

-- Recommended radius is 1.0
Config.OpenPromptRadius = 1.0

-- If not set then no blips will be shown on map
Config.BlipHash = 1735233562

-- If not set then the command will be disabled
Config.ConsoleRemoveCommand = "clear_bulletin_board"

-- Set to 0 if no automatic expiration is desired
Config.AutomaticExpirationAfterDays = 7

-- If true the bulletin board tips are used instead of the vorp ones.
-- The bulletin tips currently are better because they are appearing in the top of all instead behind the bulletin board like vorp.
Config.UseCustomTips = true

-- See https://github.com/mja00/redm-shit/blob/master/nuiweaponspawner/config.lua for key hashes
Config.OpenKey = 0xCEFD9220 -- E

-- Below some examples. All options are combinable.
Config.Posters = {

    -- Example with blip
    {
        city = "Valentine", -- Required: Unique (!!!) name of the board
        group = "Public", -- Required: Name of board group (used for "post at all boards" option with same group)
        coords = { -186.0, 640.38, 113.47 }, -- Required: Coordinates of the board (x, y, z). Ensure that the boards are at least 10 metres away from each other.
    },

    {
        city = "Rhodes", 
        group = "Public", 
        coords = { 1244.94, -1289.81, 75.87 }, 
    },

    {
        city = "Saint Denis", 
        group = "Public", 
        coords = { 2703.41, -1430.3, 46.08 }, 
    },

    {
        city = "Blackwater", 
        group = "Public", 
        coords = { -802.22, -1245.42, 43.38 }, 
    },

    {
        city = "Strawberry", 
        group = "Public", 
        coords = { -1802.16, -358.23, 163.85 }, 
    },

    {
        city = "Annesburg", 
        group = "Public",
        coords = { 2913.45, 1306.20, 44.35 }, 
    },

    {
        city = "Van Horn", 
        group = "Public", 
        coords = { 2983.03, 571.07, 44.60 }, 
    },

    {
        city = "Armadillo", 
        group = "Public", 
        coords = { -3623.58, -2598.22, -13.83 }, 
    },

    {
        city = "Tumbleweed", 
        group = "Public", 
        coords = { -5525.69, -2926.77, -2.17 }, 
    },

    {
        city = "State Government Notices",
        group = "Public",
        hide_blip = true,
        coords = { 2392.15, -1124.46, 46.67 },

        restrict_create_by_jobs = {
            ["government"] = 0,
        },
    },

    {
        city = "Guarma",
        group = "Guarma",
        hide_blip = true,
        coords = { 1300.89, -6864.6, 43.33 },

        webhook = {
            webhook_url = "https://discord.com/api/webhooks/977987740434051082/4LsoWxZwRVGtTk-O4ox-9jHdZl4kHFBH4_CBWZxjQ8UjVlzF8NoIiCc3ws6s7T7zJtIb",
            webhook_url_new = false,
        },
    },

--[[     -- Example without blip
    {
        city = "Heavytown",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },
        hide_blip = true,
    },

    -- Example to restrict creation of posters only to one or more specific jobs (incl. minimum rank)
    {
        city = "Goverment Board",
        group = "Public Goverment",
        coords = { -269.07, 764.85, 117.65 },
        restrict_create_by_jobs = {
            ["Sheriff"] = 1,
            ["Doctor"] = 1,
        },
    },

    -- Example to restrict creation of posters and hiding blip
    {
        city = "Secret Goverment Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },
        hide_blip = true,
        restrict_create_by_jobs = {
            ["Sheriff"] = 1
        },
    },

    -- Example to restrict view access of board
    {
        city = "Secret Goverment Board",
        group = "Private Goverment",
        coords = { -269.07, 764.85, 117.65 },
        restrict_view_by_jobs = {
            ["Sheriff"] = 1
        },
    },

    -- Example to restrict view & creation access of board
    {
        city = "Secret Sheriffs Doctor Board",
        group = "Private Sheriffs Doctor Boards",
        coords = { -269.07, 764.85, 117.65 },

        -- Sheriffs (min. rank 1) can create
        restrict_create_by_jobs = {
            ["Sheriff"] = 1,
        },

        -- Doktors (min. rank 1) and Sheriffs (min. rank 1) can view
        restrict_view_by_jobs = {
            ["Sheriff"] = 1,
            ["Doctor"] = 1,
        },
    },

    -- Example with custom webhooks each board
    {
        city = "My Personal Board",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },

        -- You can use all options from 'Config.DiscordWebhook' (excluding 'active' and 'system_user_alias') to
        -- overwrite the default settings for this board only. If an option is not set here the default from
        -- 'Config.DiscordWebhook' will be used.
        webhook = {
            webhook_url = 'YOUR CUSTOM WEBHOOK URL FOR NEW AND REMOVED ITEMS FOR THIS BOARD ONLY',
            avatar_url = 'YOUR CUSTOM AVATAR URL FOR THIS BOARD ONLY',
            server_icon_url = 'YOUR CUSTOM SERVER ICON URL FOR THIS BOARD ONLY',
            new_text_poster_color_hex = "#00ff00", -- Custom color for this board only
            new_image_poster_color_hex = "#00ff00", -- Custom color for this board only
            remove_text_poster_color_hex = "#ff0000", -- Custom color for this board only
            remove_image_poster_color_hex = "#ff0000", -- Custom color for this board only
        },
    },

    -- Example 2 with custom webhooks each board
    {
        city = "My Personal Board",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },

        webhook = {
            webhook_url_new = 'YOUR CUSTOM WEBHOOK URL FOR NEW ITEMS FOR THIS BOARD ONLY',
            webhook_url_removed = 'YOUR CUSTOM WEBHOOK URL FOR REMOVED ITEMS FOR THIS BOARD ONLY',
        },
    },

    -- Example 3 with custom webhooks each board
    {
        city = "My Personal Board",
        group = "Public",
        coords = { -269.07, 764.85, 117.65 },

        webhook = {
            webhook_url = 'YOUR CUSTOM WEBHOOK URL FOR NEW AND REMOVED ITEMS FOR THIS BOARD ONLY',
        },
    }, ]]
}

Config.NameOfAdminGroup = 'admin'

-- true = group can remove notes from the bulletin board
-- Note: Admins can always remove notes
Config.GroupRemovePermissions = {
    --["support"] = true
}

-- true = all grades of the job can remove notes from the bulletin board
-- number = only job grade equal or higher can remove notes from the bulletin board
Config.JobRemovePermissions = {
    ["police"] = 0,
    ["government"] = 0
}

-- true = group/character name can add notes to all bulletin boards at same time.
Config.PostEverywhereAtOncePermissions = {}

-- Note: Admins can always remove notes
Config.PostEverywhereAtOncePermissions.Groups = {
    ["user"] = true
}

Config.PostEverywhereAtOncePermissions.Names = {
    --["Jules Brown"] = true
}
