Config = {}

-- See folder languages for available locales
Config.language = "en"

Config.DiscordWebhook = {
    active = true,
    webhook_url = "YOUR_WEBHOOK_URL", -- If set, this webhook will be used for all pinboard actions and ignores anonymous setting.
    webhook_url_new = "YOUR_WEBHOOK_URL_FOR_NEW_ITEMS", -- If you want new and removed items in one discord channel set this to the same as webhook_url_remove
    webhook_url_removed = "YOUR_WEBHOOK_URL_FOR_REMOVED_ITEMS",
    anonymous_new = false,
    anonymous_remover = false,
    avatar_url = "YOUR_AVATAR_URL",
    server_icon_url = "YOUR_SERVER_ICON_URL",
    new_text_poster_color_hex = "#00c500",
    new_image_poster_color_hex = "#00c500",
    remove_text_poster_color_hex = "#990000",
    remove_image_poster_color_hex = "#990000",
    system_user_alias = "NssPinboard",
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
Config.UseCustomTips = false

-- See https://github.com/mja00/redm-shit/blob/master/nuiweaponspawner/config.lua for key hashes
Config.OpenKey = 0x760A9C6F -- G

-- Below some examples. All options are combinable.
Config.Posters = {

    -- Example with blip
    {
        city = "Valentine", -- Required: Unique (!!!) name of the board
        group = "Public", -- Required: Name of board group (used for "post at all boards" option with same group)
        coords = { -269.07, 764.85, 117.65 }, -- Required: Coordinates of the board (x, y, z). Ensure that the boards are at least 10 metres away from each other.
    },

    -- Example without blip
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
    },
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
    --["Sheriff"] = 1
}

-- true = group/character name can add notes to all bulletin boards at same time.
Config.PostEverywhereAtOncePermissions = {}

-- Note: Admins can always remove notes
Config.PostEverywhereAtOncePermissions.Groups = {
    --["support"] = true
}

Config.PostEverywhereAtOncePermissions.Names = {
    --["Jules Brown"] = true
}
