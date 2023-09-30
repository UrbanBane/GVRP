--[[
-- Author: Tim Plate
-- Project: visn_telegram
-- Copyright (c) 2023 Tim Plate Solutions
--]]

Config = {}

Config.Language = "en"
Config.CharNamesAllowedAsReciever = false -- If true, char names can also be receiver instead of the post office number only (Char Name will be resolved to the post office number)
Config.Year = 1907 -- Year of the telegram (used for the letter)
Config.PostOffices = {
    {
        coords = vector3(2749.57, -1399.69, 46.19), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Saint Denis Post Office", -- Name of the blip
        },
        location = "Saint Denis", -- Location of the post office (used for the letter)
        area = "Lemoyne", -- Area of the post office (used for the letter)
        idCode = "SDC", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(1225.53, -1293.97, 76.91), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Rhodes Post Office", -- Name of the blip
        },
        location = "Rhodes", -- Location of the post office (used for the letter)
        area = "Lemoyne", -- Area of the post office (used for the letter)
        idCode = "RHO", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(2939.34, 1288.61, 44.65), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Annesburg Post Office", -- Name of the blip
        },
        location = "Annesburg", -- Location of the post office (used for the letter)
        area = "Roanoke Ridge", -- Area of the post office (used for the letter)
        idCode = "ANN", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(-178.95, 626.69, 114.09), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Valentine Post Office", -- Name of the blip
        },
        location = "Valentine", -- Location of the post office (used for the letter)
        area = "New Hanover", -- Area of the post office (used for the letter)
        idCode = "VAL", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(-875.14, -1328.73, 43.96), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Blackwater Post Office", -- Name of the blip
        },
        location = "Blackwater", -- Location of the post office (used for the letter)
        area = "Great Plains", -- Area of the post office (used for the letter)
        idCode = "BLW", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(-1094.08, -574.78, 82.31), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Riggs Station Post Office", -- Name of the blip
        },
        location = "Riggs Station", -- Location of the post office (used for the letter)
        area = "West Elizabeth", -- Area of the post office (used for the letter)
        idCode = "RGS", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(-1301.08, 398.88, 95.43), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Wallace Station Post Office", -- Name of the blip
        },
        location = "Wallace Station", -- Location of the post office (used for the letter)
        area = "Big Valley", -- Area of the post office (used for the letter)
        idCode = "WLS", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(1521.81, 439.53, 90.63), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Emerald Station Post Office", -- Name of the blip
        },
        location = "Emerald Station", -- Location of the post office (used for the letter)
        area = "Heartlands", -- Area of the post office (used for the letter)
        idCode = "ERS", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(2985.95, 568.19, 44.58), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Van Horn Post Office", -- Name of the blip
        },
        location = "Van Horn", -- Location of the post office (used for the letter)
        area = "New Hanover", -- Area of the post office (used for the letter)
        idCode = "VAN", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(-5227.27, -3470.56, -20.57), -- Location of the post office (blip and marker)
        blip = {
            enabled = true, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Benedict Point Post Office", -- Name of the blip
        },
        location = "Benedict Point", -- Location of the post office (used for the letter)
        area = "Río Bravo", -- Area of the post office (used for the letter)
        idCode = "BPS", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(1932.28, 1946.24, 266.1), -- Location of the post office (blip and marker)
        blip = {
            enabled = false, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Ranger Tower Telegram Point", -- Name of the blip
        },
        location = "Ranger Station", -- Location of the post office (used for the letter)
        area = "Ambarino", -- Area of the post office (used for the letter)
        idCode = "AMB", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },

    {
        coords = vector3(1303.39, -6866.31, 43.26), -- Location of the post office (blip and marker)
        blip = {
            enabled = false, -- Enable or disable the blip
            sprite = 1861010125,
            name = "Guarma Telegram Point", -- Name of the blip
        },
        location = "Guarma", -- Location of the post office (used for the letter)
        area = "Guarma", -- Area of the post office (used for the letter)
        idCode = "GUA", -- Used for telegram id creation
        price = 1.0, -- Price of a telegram to send (in dollars)
    },
}