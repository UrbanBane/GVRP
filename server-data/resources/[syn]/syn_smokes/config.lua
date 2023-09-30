Config = {}
-- different camera effects
-- https://github.com/femga/rdr3_discoveries/blob/master/graphics/timecycles/timecycles.lua 
Config.pipeitem = "pipe"

Config.smokes = {
    ["cigarette"] = { 
        pipe = false,
        subitem = true,
        typeof = "cigarette",
        high = false,
    },
    ["premiumcigarette"] = { 
        pipe = false,
        subitem = true,
        typeof = "cigarette",
        high = false,
    },
    ["hemp_cig"] = { 
        pipe = false,
        subitem = true,
        typeof = "cigarette",
        high = true,
        hightype = "PlayerDrugsHalluc01",
        highduration = 120,
    },
    ["cigar"] = {
        pipe = false,
        subitem = true,
        typeof = "cigar",
        high = false,
    },
    ["premiumcigar"] = {
        pipe = false,
        subitem = true,
        typeof = "cigar",
        high = false,        
    },
    ["tobacco"] = {
        pipe = true,
        subitem = true,
        typeof = "pipe",
        high = false,
    },
    ["Indian_Tobbaco"] = {
        pipe = true,
        subitem = true,
        typeof = "pipe",
        high = true,
        hightype = "PlayerDrugsHalluc01",
        highduration = 120,
    },
}

Config.language = {
    needpipe = "You need a pipe to smoke this",
}