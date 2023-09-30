Config = {}

Config.framework = "vorp" --"redemrp" or "vorp" or "qbr"

Config.PrayAnim = {
    { "amb_misc@world_human_pray_rosary@base", "base" },
    { "script_common@shared_scenarios@stand@random@town_burial@stand_mourn@male@react_look@loop@generic", "front" },
    { "amb_misc@world_human_grave_mourning@kneel@female_a@idle_a", "idle_a" },
    { "script_common@shared_scenarios@kneel@mourn@female@a@base", "base" },
    { "amb_misc@world_human_grave_mourning@female_a@idle_a", "idle_a" },
    { "amb_misc@world_human_grave_mourning@male_b@idle_c", "idle_g" },
    { "amb_misc@world_human_grave_mourning@male_b@idle_c", "idle_h" },
}

Config.ShovelItem = "robbingkit" --inventory name of the shovel item for grave dig
Config.DiggingTimer = 20--seconds
Config.Dig = {
    shovel = `p_shovel02x`,
    anim = { "amb_work@world_human_gravedig@working@male_b@idle_a", "idle_a" },
    bone = "skel_r_hand",
    pos = { 0.06, -0.06, -0.03, 270.0, 165.0, 17.0 },
}

Config.Rewards = {
    {item = "oldbuckle", label = "Old Belt Buckle"},
    {item = "oldwatch", label = "Tarnished Watch"},
    {item = "rubyring", label = "Old Ruby Ring"},
    {item = "goldtooth", label = "Gold Tooth"},
    {item = "peacockfeather", label = "Peacock Feather"},
    {item = "piratecoin", label = "Pirate Coin"},
    {item = "bone", label = "Old Bone"},
    {item = "fishbait", label = "Fishbait"},
    {item = "rock", label = "Rock"},
    {item = "nails", label = "Rusty Nail"},
}

Config.Prompts = {
    Prompt1 = 0x05CA7C52, -- Down
    Prompt2 = 0x156F7119, -- Backspace
}

Config.Texts = {
    Prompt1 = "Dig",
    Prompt2 = "Pray",
    GraveRobbery = "Grave Robbery",
    GraveDisplay = "Grave:",
    CantDoThat = "You cannot do that now!",
    DayTime = "You cannot rob in the day!",
    GraveRobbed = "Grave is already robbed!",
    NoShovel = "You need a grave robbing kit!",
    FoundItem = "You have found an item!",
}

Config.Textures = {
    cross = { "scoretimer_textures", "scoretimer_generic_cross" },
    locked = { "menu_textures", "stamp_locked_rank" },
    tick = { "scoretimer_textures", "scoretimer_generic_tick" },
    money = { "inventory_items", "money_moneystack" },
    alert = { "menu_textures", "menu_icon_alert" },
}

Config.JobsToAlert = { "police", "undertaker" } -- to alert these jobs if they are on duty using society
Config.synSociety = true

Config.Graves = {
    --Rhodes
    [1] = {
        name = "Elsie Feeney",
        coords = vector3(1282.042, -1242.295, 79.989),
        heading = 26.0788,
    },
    [2] = {
        name = "Harvey Feeney",
        coords = vector3(1280.190, -1243.406, 79.721),
        heading = 26.999,
    },
    [3] = {
        name = "Nettie Mae Feeney",
        coords = vector3(1277.646, -1243.937, 79.641),
        heading = 28.891,
    },
    [4] = {
        name = "Stephen Banks",
        coords = vector3(1273.183, -1238.915, 79.715),
        heading = 21.938,
    },
    [5] = {
        name = "Marietta Banks",
        coords = vector3(1275.114, -1237.997, 79.923),
        heading = 17.2695,
    },
    [6] = {
        name = "Charlie Banks",
        coords = vector3(1277.472, -1237.081, 80.183),
        heading = 22.858,
    },
    [7] = {
        name = "Hazel Robertson. Gone Too Soon. Dec 1880 - Nov 1907",
        coords = vector3(1277.429, -1231.219, 80.685),
        heading = 9.5856,
    },
    [8] = {
        name = "Unknown",
        coords = vector3(1273.790, -1229.006, 80.594),
        heading = 5.973,
    },
    [9] = {
        name = "Unknown",
        coords = vector3(1270.969, -1230.913, 80.255),
        heading = 11.065,
    },
    [10] = {
        name = "Unknown",
        coords = vector3(1267.327, -1232.056, 79.946),
        heading = 16.203,
    },
    [11] = {
        name = "Douglas Gray",
        coords = vector3(1268.745, -1228.923, 80.280),
        heading = 15.811,
    },
    [12] = {
        name = "Lucille Braithwaite",
        coords = vector3(1275.525, -1220.127, 81.420),
        heading = 18.769,
    },
    [13] = {
        name = "Unknown",
        coords = vector3(1271.028, -1224.483, 80.772),
        heading = 15.9214,
    },
    [14] = {
        name = "Unknown",
        coords = vector3(1272.812, -1224.395, 80.905),
        heading = 16.95,
    },
    [15] = {
        name = "Unknown",
        coords = vector3(1274.721, -1223.716, 81.162),
        heading = 22.049,
    },
    [16] = {
        name = "Unknown",
        coords = vector3(1279.936, -1214.892, 81.869),
        heading = 14.358,
    },
    [17] = {
        name = "Annabelle Shot Dead -- Sept. 1907",
        coords = vector3(1275.776, -1207.828, 82.502),
        heading = 192.68,
    },
    [18] = {
        name = "Unknown",
        coords = vector3(1292.837, -1214.911, 81.841),
        heading = 358.166,
    },
    [19] = {
        name = "Unknown",
        coords = vector3(1295.810, -1215.574, 81.551),
        heading = 14.873,
    },
    [20] = {
        name = "Unknown",
        coords = vector3(1298.355, -1214.914, 81.341),
        heading = 4.81563,
    },
    [21] = {
        name = "Unknown",
        coords = vector3(1297.090, -1212.736, 81.562),
        heading = 15.6860,
    },
    [22] = {
        name = "Unknown",
        coords = vector3(1295.598, -1213.070, 81.674),
        heading = 103.038,
    },
    [23] = {
        name = "Unknown",
        coords = vector3(1294.745, -1213.792, 81.716),
        heading = 17.239,
    },
    [24] = {
        name = "Unknown",
        coords = vector3(1292.806, -1211.421, 82.019),
        heading = 19.154,
    },
    [25] = {
        name = "Unknown",
        coords = vector3(1293.655, -1210.771, 81.990),
        heading = 11.1098,
    },
    [26] = {
        name = "Unknown",
        coords = vector3(1295.177, -1210.914, 81.834),
        heading = 28.956,
    },
    [27] = {
        name = "William 'Willie' Bowles",
        coords = vector3(1302.913, -1214.625, 80.995),
        heading = 14.057,
    },
    [28] = {
        name = "Unknown",
        coords = vector3(1292.054, -1209.464, 82.274),
        heading = 24.189,
    },
    [29] = {
        name = "Unknown",
        coords = vector3(1290.816, -1210.013, 82.305),
        heading = 17.146,
    },
    [30] = {
        name = "Unknown",
        coords = vector3(1296.455, -1210.326, 81.760),
        heading = 26.106,
    },
    -- Valentine
    [31] = {
        name = "Sarah Worth", 
        coords = vector3(-222.72, 826.27, 124.25),
        heading = 297.83,
    },
    [32] = {
        name = "Zachariah Worth",
        coords = vector3(-224.45, 828.48, 124.33),
        heading = 297.05,
    },
    [33] = {
        name = "Samuel Worth",
        coords = vector3(-225.36, 830.34, 124.36),
        heading = 297.13,
    },
    [34] = {
        name = "Annie Worth",
        coords = vector3(-226.11, 831.97, 124.35),
        heading = 297.68,
    },
    [35] = {
        name = "Samantha Worth",
        coords = vector3(-227.05, 833.57, 124.32),
        heading = 300.7,
    },
    [36] = {
        name = "Unknown",
        coords = vector3(-228.77, 835.27, 124.15),
        heading = 301.61,
    },
    [37] = {
        name = "Sheriff Silas Claus McKinney. 25 Dec 1875 - 21 Jan 1907",
        coords = vector3(-234.38, 837.14, 123.38),
        heading = 303.12,
    },
    [38] = {
        name = "Unknown",
        coords = vector3(-232.45, 835.3, 123.81),
        heading = 306.65,
    },
    [39] = {
        name = "Unknown",
        coords = vector3(-231.55, 833.1, 123.99),
        heading = 300.86,
    },
    [40] = {
        name = "Unknown",
        coords = vector3(-230.39, 829.36, 124.41),
        heading = 293.94,
    },
    [41] = {
        name = "Unknown",
        coords = vector3(-229.49, 826.99, 124.46),
        heading = 292.83,
    },
    [42] = {
        name = "Unknown",
        coords = vector3(-228.44, 824.65, 124.45),
        heading = 294.82,
    },
    [43] = {
        name = "Unknown",
        coords = vector3(-226.4, 819.81, 124.43),
        heading = 294.49,
    },
    [44] = {
        name = "Louisa Keane",
        coords = vector3(-231.8, 814.59, 124.32),
        heading = 296.41,
    },
    [45] = {
        name = "Patrick Keane",
        coords = vector3(-233.35, 816.75, 124.31),
        heading = 294.59,
    },
    [46] = {
        name = "Bernhardt Keane",
        coords = vector3(-234.22, 818.89, 124.26),
        heading = 294.98,
    },
    [47] = {
        name = "Mary Keane",
        coords = vector3(-235.4, 821.52, 124.18),
        heading = 298.34,
    },
    [48] = {
        name = "Stanislaw Keane",
        coords = vector3(-236.54, 824.17, 124.04),
        heading = 299.89,
    },
    [49] = {
        name = "Unknown",
        coords = vector3(-237.22, 826.3, 123.87),
        heading = 293.49,
    },
    [50] = {
        name = "Unknown",
        coords = vector3(-238.84, 829.5, 123.57),
        heading = 291.83,
    },
    [51] = {
        name = "Caroline ?",
        coords = vector3(-243.26, 830.41, 122.84),
        heading = 296.21,
    },
    [52] = {
        name = "August Walker",
        coords = vector3(-241.85, 827.04, 123.22),
        heading = 298.68,
    },
    [55] = {
        name = "Unknown",
        coords = vector3(-240.03, 822.33, 123.62),
        heading = 292.95,
    },
    [54] = {
        name = "Bradshaw Family",
        coords = vector3(-239.24, 819.95, 123.78),
        heading = 295.97,
    },
    [55] = {
        name = "Johannah Malloy",
        coords = vector3(-238.28, 818.05, 123.92),
        heading = 292.64,
    },
    [56] = {
        name = "Victoria Malloy",
        coords = vector3(-237.12, 815.5, 124.04),
        heading = 296.48,
    },
    [57] = {
        name = "Molly Malloy",
        coords = vector3(-235.94, 813.21, 124.02),
        heading = 297.04,
    },
    [58] = {
        name = "Bridget Dunn",
        coords = vector3(-241.27, 809.58, 122.86),
        heading = 294.69,
    },
    [59] = {
        name = "Lucy Dunn",
        coords = vector3(-242.11, 812.79, 123.14),
        heading = 296.35,
    },
    [60] = {
        name = "Mary Dunn",
        coords = vector3(-243.93, 815.48, 123.08),
        heading = 305.17,
    },
    [61] = {
        name = "Unknown",
        coords = vector3(-245.35, 817.31, 122.89),
        heading = 297.05,
    },
    [62] = {
        name = "Thomas Dunn",
        coords = vector3(-246.26, 819.62, 122.69),
        heading = 296.67,
    },
    [63] = {
        name = "Eugene Dunn",
        coords = vector3(-247.98, 823.8, 122.34),
        heading = 298.86,
    },
    [64] = {
        name = "Simon Dalton",
        coords = vector3(-246.39, 828.17, 122.46),
        heading = 295.59,
    },
    [65] = {
        name = "Magdalene Dalton",
        coords = vector3(-245.36, 825.67, 122.71),
        heading = 302.75,
    },
    [66] = {
        name = "Mathius Dalton",
        coords = vector3(-244.34, 823.57, 122.94),
        heading = 295.53,
    },
    [67] = {
        name = "David Douglas",
        coords = vector3(-243.07, 819.73, 123.21),
        heading = 301.72,
    },
    [68] = {
        name = "Unknown",
        coords = vector3(-242.17, 818.3, 123.38),
        heading = 297.77,
    },
    [69] = {
        name = "Clara Douglas",
        coords = vector3(-241.2, 816.41, 123.54),
        heading = 295.16,
    },
    [70] = {
        name = "Unknown",
        coords = vector3(-240.13, 814.69, 123.63),
        heading = 296.7,
    },
    [71] = {
        name = "Harriet Douglas",
        coords = vector3(-239.49, 812.86, 123.55),
        heading = 300.06,
    },
    [72] = {
        name = "Unknown",
        coords = vector3(-247.11, 812.18, 122.44),
        heading = 299.71,
    },
    [73] = {
        name = "Albert Calloway",
        coords = vector3(-248.49, 815.82, 122.46),
        heading = 299.45,
    },
    [74] = {
        name = "Caroline Calloway",
        coords = vector3(-249.33, 817.47, 122.31),
        heading = 298.14,
    },
    [75] = {
        name = "Maggie Calloway",
        coords = vector3(-250.05, 819.18, 122.14),
        heading = 297.18,
    },
    [76] = {
        name = "Unknown",
        coords = vector3(-205.58, 841.56, 132.24),
        heading = 309.48,
    },
    [77] = {
        name = "Unknown",
        coords = vector3(-203.72, 840.09, 132.47),
        heading = 308.3,
    },
    [78] = {
        name = "Unknown",
        coords = vector3(-202.2, 837.47, 132.3),
        heading = 306.15,
    },
    [79] = {
        name = "Unknown",
        coords = vector3(-200.64, 835.87, 132.22),
        heading = 296.47,
    },
    [80] = {
        name = "Unknown",
        coords = vector3(-199.48, 833.12, 131.97),
        heading = 297.82,
    },
    [81] = {
        name = "Unknown",
        coords = vector3(-198.8, 831.68, 131.84),
        heading = 289.71,
    },
    [82] = {
        name = "Unknown",
        coords = vector3(-199.33, 838.81, 132.67),
        heading = 310.09,
    },
    [83] = {
        name = "Unknown",
        coords = vector3(-194.69, 834.75, 132.5),
        heading = 303.52,
    },
    [84] = {
        name = "Unknown",
        coords = vector3(-195.92, 835.79, 132.61),
        heading = 322.32,
    },
    [85] = {
        name = "Unknown",
        coords = vector3(-197.26, 842.24, 133.18),
        heading = 311.49,
    },
    -- Blackwater
    [86] = {
        name = "Unknown",
        coords = vector3(-965.84, -1209.45, 55.97),
        heading = 20.07,
    },
    [87] = {
        name = "Unknown",
        coords = vector3(-962.5, -1209.59, 55.14),
        heading = 8.24,
    },
    [88] = {
        name = "Unknown",
        coords = vector3(-960.04, -1210.06, 54.91),
        heading = 0.73,
    },
    [89] = {
        name = "Unknown",
        coords = vector3(-956.52, -1209.23, 54.97),
        heading = 9.4,
    },
    [90] = {
        name = "Unknown",
        coords = vector3(-954.6, -1203.55, 55.53),
        heading = 354.97,
    },
    [91] = {
        name = "Unknown",
        coords = vector3(-961.25, -1203.56, 55.92),
        heading = 355.76,
    },
    [92] = {
        name = "Unknown",
        coords = vector3(-955.43, -1198.09, 55.38),
        heading = 2.84,
    },
    [93] = {
        name = "Unknown",
        coords = vector3(-959.62, -1198.51, 56.15),
        heading = 10.53,
    },
    [94] = {
        name = "Unknown",
        coords = vector3(-963.06, -1198.77, 56.94),
        heading = 355.26,
    },
    [95] = {
        name = "Unknown",
        coords = vector3(-966.38, -1198.6, 57.89),
        heading = 358.59,
    },
    [96] = {
        name = "Unknown",
        coords = vector3(-963.32, -1193.1, 57.84),
        heading = 0.94,
    },
    [97] = {
        name = "Unknown",
        coords = vector3(-960.65, -1193.03, 57.2),
        heading = 351.31,
    },
    [98] = {
        name = "Unknown",
        coords = vector3(-957.34, -1192.51, 56.61),
        heading = 350.44,
    },
    [99] = {
        name = "Unknown",
        coords = vector3(-954.14, -1192.74, 56.01),
        heading = 5.76,
    },
    [100] = {
        name = "Unknown",
        coords = vector3(-989.31, -1203.27, 58.05),
        heading = 6.81,
    },
    [101] = {
        name = "Seth Trice",
        coords = vector3(-993.93, -1202.85, 58.27),
        heading = 355.95,
    },
    [102] = {
        name = "Unknown",
        coords = vector3(-996.68, -1203.39, 58.62),
        heading = 6.3,
    },
    [103] = {
        name = "Ada Stilman",
        coords = vector3(-999.47, -1203.68, 58.87),
        heading = 22.81,
    },
    [104] = {
        name = "Caroline E. Boardman",
        coords = vector3(-987.98, -1198.57, 58.55),
        heading = 9.33,
    },
    [105] = {
        name = "Unknown",
        coords = vector3(-995.14, -1198.75, 58.69),
        heading = 358.16,
    },
    [106] = {
        name = "Esther Sinclair",
        coords = vector3(-997.3, -1199.08, 59.05),
        heading = 15.91,
    },
    [107] = {
        name = "Unknown",
        coords = vector3(-1002.64, -1200.6, 59.37),
        heading = 4.33,
    },
    [108] = {
        name = "Unknown",
        coords = vector3(-1004.16, -1200.74, 59.45),
        heading = 356.18,
    },
    [109] = {
        name = "Unknown",
        coords = vector3(-1005.68, -1200.91, 59.53),
        heading = 355.45,
    },
    [110] = {
        name = "Belle Finch",
        coords = vector3(-1008.95, -1200.44, 59.62),
        heading = 3.15,
    },
    [111] = {
        name = "Unknown",
        coords = vector3(-1011.75, -1200.13, 59.61),
        heading = 5.47,
    },
    [112] = {
        name = "Elijah Liggons",
        coords = vector3(-1014.81, -1199.34, 59.87),
        heading = 0.94,
    },
    [113] = {
        name = "Eldon Crabb Sr.",
        coords = vector3(-1017.86, -1200.16, 60.2),
        heading = 0.29,
    },
    [114] = {
        name = "Matilda Brines",
        coords = vector3(-1020.1, -1200.53, 60.38),
        heading = 7.04,
    },
    [115] = {
        name = "Colonel Thurston Pope",
        coords = vector3(-989.15, -1194.25, 58.57),
        heading = 3.87,
    },
    [116] = {
        name = "Olive Shipley",
        coords = vector3(-993.37, -1193.83, 58.85),
        heading = 8.9,
    },
    [117] = {
        name = "Stanley Pollard",
        coords = vector3(-996.72, -1194.19, 59.23),
        heading = 1.99,
    },
    [118] = {
        name = "Unknown",
        coords = vector3(-999.95, -1194.08, 59.25),
        heading = 357.17,
    },
    [119] = {
        name = "Phyllis Shodlow",
        coords = vector3(-1003.07, -1194.29, 59.28),
        heading = 359.53,
    },
    [120] = {
        name = "Unknown",
        coords = vector3(-1005.51, -1194.31, 59.35),
        heading = 6.61,
    },
    [121] = {
        name = "Unknown",
        coords = vector3(-1008.42, -1194.15, 59.31),
        heading = 353.28,
    },
    [122] = {
        name = "Georgia Dobbs",
        coords = vector3(-1010.58, -1194.31, 59.25),
        heading = 9.97,
    },
    [123] = {
        name = "Unknown",
        coords = vector3(-1014.78, -1188.91, 59.11),
        heading = 359.99,
    },
    [124] = {
        name = "Myra Leathers",
        coords = vector3(-1012.14, -1188.64, 58.7),
        heading = 358.7,
    },
    [125] = {
        name = "Greta Van Der Linde",
        coords = vector3(-1009.36, -1189.17, 58.72),
        heading = 357.19,
    },
    [126] = {
        name = "Willie Swenson",
        coords = vector3(-1002.44, -1188.95, 58.48),
        heading = 1.14,
    },
    [127] = {
        name = "Clinton Underwood",
        coords = vector3(-999.74, -1188.86, 58.43),
        heading = 359.36,
    },
    [128] = {
        name = "Pearl Palmer",
        coords = vector3(-997.17, -1188.84, 58.43),
        heading = 1.24,
    },
    [129] = {
        name = "Outlaw",
        coords = vector3(-994.2, -1188.75, 58.68),
        heading = 359.56,
    },
    [130] = {
        name = "Unknown",
        coords = vector3(-991.16, -1188.33, 58.9),
        heading = 357.78,
    },
    [131] = {
        name = "Young Black Man",
        coords = vector3(-988.15, -1188.46, 58.75),
        heading = 5.8,
    },
    [132] = {
        name = "Freda Dunbar",
        coords = vector3(-986.36, -1182.8, 58.47),
        heading = 359.47,
    },
    [133] = {
        name = "Beatrice Picket",
        coords = vector3(-989.21, -1182.93, 58.39),
        heading = 2.58,
    },
    [134] = {
        name = "Emma Crawford",
        coords = vector3(-992.31, -1182.96, 58.19),
        heading = 1.76,
    },
    [135] = {
        name = "Minerva Pratt",
        coords = vector3(-994.84, -1182.93, 58.07),
        heading = 1.72,
    },
    [136] = {
        name = "Samuel Makepeace",
        coords = vector3(-997.59, -1183.07, 57.96),
        heading = 2.43,
    },
    [137] = {
        name = "Delilah Gaskell",
        coords = vector3(-1002.43, -1183.61, 57.91),
        heading = 4.7,
    },
    [138] = {
        name = "Unknown",
        coords = vector3(-1005.06, -1183.18, 57.91),
        heading = 17.04,
    },
    [139] = {
        name = "Doris Mosley",
        coords = vector3(-1008.28, -1183.58, 58.01),
        heading = 4.43,
    },
    [140] = {
        name = "Rose Beasley",
        coords = vector3(-1011.86, -1183.75, 58.21),
        heading = 7.35,
    },
    -- Strawberry
    [141] = {
        name = "Unknown",
        coords = vector3(-1766.25, -242.13, 182.27),
        heading = 348.2,
    },
    [142] = {
        name = "Unknown",
        coords = vector3(-1763.3, -242.76, 182.32),
        heading = 349.58,
    },
    [143] = {
        name = "Unknown",
        coords = vector3(-1759.67, -242.38, 182.36),
        heading = 357.76,
    },
    [144] = {
        name = "Unknown",
        coords = vector3(-1756.93, -241.86, 182.56),
        heading = 1.85,
    },
    [145] = {
        name = "Unknown",
        coords = vector3(-1751.69, -237.45, 183.35),
        heading = 1.77,
    },
    [146] = {
        name = "Unknown",
        coords = vector3(-1755.38, -238.56, 183.05),
        heading = 15.83,
    },
    [147] = {
        name = "Unknown",
        coords = vector3(-1758.66, -238.62, 182.92),
        heading = 7.82,
    },
    [148] = {
        name = "Unknown",
        coords = vector3(-1762.31, -238.96, 182.82),
        heading = 347.76,
    },
    [149] = {
        name = "Unknown",
        coords = vector3(-1765.18, -238.79, 182.71),
        heading = 337.07,
    },
    [150] = {
        name = "Unknown",
        coords = vector3(-1763.46, -233.96, 183.15),
        heading = 7.67,
    },
    [151] = {
        name = "Unknown",
        coords = vector3(-1761.28, -234.82, 183.15),
        heading = 348.28,
    },
    -- Rhodes
    [152] = {
        name = "George Drury",
        coords = vector3(1285.23, -1245.57, 79.76),
        heading = 50.17,
    },
    [153] = {
        name = "Garreth Drury",
        coords = vector3(1283.49, -1247.53, 79.38),
        heading = 39.77,
    },
    [154] = {
        name = "Unknown",
        coords = vector3(1269.89, -1234.94, 79.85),
        heading = 29.18,
    },
    --Emerald Ranch
    [155] = {
        name = "Unknown",
        coords = vector3(1455.56, 413.62, 93.54),
        heading = 14.33,
    },
    [156] = {
        name = "Unknown",
        coords = vector3(1456.37, 414.5, 93.49),
        heading = 16.71,
    },
    [157] = {
        name = "Unknown",
        coords = vector3(1458.25, 417.34, 93.53),
        heading = 17.07,
    },
    [158] = {
        name = "Unknown",
        coords = vector3(1456.07, 416.75, 93.57),
        heading = 27.82,
    },
    [159] = {
        name = "Unknown",
        coords = vector3(1453.61, 415.9, 93.63),
        heading = 18.89,
    },
    [160] = {
        name = "Unknown",
        coords = vector3(1451.31, 418.01, 93.68),
        heading = 16.31,
    },
    [161] = {
        name = "Unknown",
        coords = vector3(1453.58, 418.59, 93.64),
        heading = 24.94,
    },
    [162] = {
        name = "Unknown",
        coords = vector3(1456.01, 419.88, 93.57),
        heading = 10.98,
    },
    [163] = {
        name = "Unknown",
        coords = vector3(1458.32, 420.52, 93.5),
        heading = 18.52,
    },
    --Pleasance
    [164] = {
        name = "Edmund Tobin",
        coords = vector3(1736.68, -420.85, 48.08),
        heading = 92.53,
    },
    [165] = {
        name = "Curtis Baines",
        coords = vector3(1735.93, -422.75, 48.13),
        heading = 89.64,
    },
    [166] = {
        name = "Glen Yeatman",
        coords = vector3(1735.53, -424.62, 48.13),
        heading = 90.83,
    },
    [167] = {
        name = "Daniel Curley",
        coords = vector3(1735.69, -426.58, 48.12),
        heading = 96.13,
    },
    [168] = {
        name = "Jimmy Hawson",
        coords = vector3(1735.87, -428.61, 48.12),
        heading = 93.16,
    },
    [169] = {
        name = "Reginald Yeatman",
        coords = vector3(1732.34, -429.2, 48.33),
        heading = 82.37,
    },
    [170] = {
        name = "Amelia Curley",
        coords = vector3(1732.23, -427.38, 48.28),
        heading = 92.7,
    },
    [171] = {
        name = "Asa Hawson",
        coords = vector3(1732.69, -425.49, 48.15),
        heading = 81.54,
    }, 
    [172] = {
        name = "Jessie Yeatman",
        coords = vector3(1732.7, -423.79, 48.07),
        heading = 83.35,
    },
    [173] = {
        name = "Leora Yeatman",
        coords = vector3(1732.23, -427.38, 48.28),
        heading = 83.35,
    },
    --Van Horn
    [174] = {
        name = "Unknown",
        coords = vector3(2899.4, 504.5, 64.79),
        heading = 177.08,
    },
    [175] = {
        name = "Unknown",
        coords = vector3(2902.2, 500.68, 65.21),
        heading = 178.97,
    },
    [176] = {
        name = "Unknown",
        coords = vector3(2900, 500.98, 65.43),
        heading = 182.81,
    },
    [177] = {
        name = "John Doe",
        coords = vector3(2898.95, 501.0, 65.62),
        heading = 175.23,
    },
    [178] = {
        name = "Unknown",
        coords = vector3(2897.12, 499.68, 65.86),
        heading = 189.27,
    },
    [179] = {
        name = "Unknown",
        coords = vector3(2898.34, 495.87, 66.41),
        heading = 175.51,
    },
    [180] = {
        name = "Unknown",
        coords = vector3(2899.34, 496.1, 66.33),
        heading = 191.27,
    },
    [181] = {
        name = "Unknown",
        coords = vector3(2904.22, 495.68, 65.71),
        heading = 172.86,
    },
    [182] = {
        name = "Unknown",
        coords = vector3(2902.2, 492.59, 66.6),
        heading = 178.75,
    },
    [183] = {
        name = "John Doe",
        coords = vector3(2899.27, 492.54, 66.9),
        heading = 172.28,
    },
    [184] = {
        name = "Unknown",
        coords = vector3(2896.18, 490.46, 66.93),
        heading = 174.51,
    },
    [185] = {
        name = "Unknown",
        coords = vector3(2898.64, 487.77, 67.09),
        heading = 176.79,
    },
    [186] = {
        name = "Unknown",
        coords = vector3(2898.64, 487.77, 67.09),
        heading = 176.79,
    },
    [187] = {
        name = "Unknown",
        coords = vector3(2901.13, 487.28, 67.24),
        heading = 181.59,
    },
    [188] = {
        name = "Unknown",
        coords = vector3(2904.5, 486.37, 66.78),
        heading = 169.89,
    },
    [189] = {
        name = "Unknown",
        coords = vector3(2898.74, 483.57, 66.99),
        heading = 187.43,
    },
    [190] = {
        name = "Unknown",
        coords = vector3(2901.09, 483.05, 66.86),
        heading = 167.18,
    },
    [191] = {
        name = "Unknown",
        coords = vector3(2904.62, 490.17, 66.56),
        heading = 177.07,
    },
                                       
}


--[[
    --REDEM:RP INVENTORY 2.0 ITEM

    ["item"] =
    {
        label = "",
        description = "",
        weight = 0.05,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 50,
        imgsrc = "items/item.png",
        type = "item_standard",
    },
]]
