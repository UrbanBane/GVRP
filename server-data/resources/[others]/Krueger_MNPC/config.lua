Config = {}

Config.ShopAlign = 'top-right'

Config.npcs = {
    [1] = {-- Saloon Blackwater
        pos = {x = -814.89, y = -1313.59, z = 43.68},--Position BEFORE the seat at the piano where the NPCS stops running
        exitpos = {x = -825.55, y = -1319.4, z = 47.89},--Position where the NPCs spwant and despawn again
        playpos = {x = -814.97, y = -1313.03, z = 43.19},--Position from the seat at the piano
        menupos = {x = -823.58, y = -1323.01, z = 43.68},--The menu position to select the instrument
        AllowedJobs = {'government','saloon','showman'},--What jobs can open the menu
        headingpiano = 357.46,--heading when the NPC plays piano
        headingother = 178.06,--heading with other instruments for example guitar
        model = "MSP_TRELAWNY1_MALES_01",--NPC Model
    },
    [2] = {-- Saloon SD
        pos = {x = 2632.25, y = -1232.39, z = 54.19},
        exitpos = {x = 2640.58, y = -1230.26, z = 58.0},
        playpos = {x = 2631.81, y = -1232.3,  z = 53.69},
        menupos = {x = 2640.27, y = -1222.81, z = 53.38},
        AllowedJobs = {'government','saloon','showman'},
        headingpiano = 60.01,
        headingother = 269.04,
        model = "CS_bandpianist",
    },
    [3] = {-- Saloon Valentine
        pos = {x = -311.78, y = 799.17, z = 118.99},
        exitpos = {x = -315.89, y = 818.01, z = 121.98},
        playpos = {x = -312.35, y = 799.02,  z = 118.48},
        menupos = {x = -313.61, y = 804.65, z = 118.98},
        AllowedJobs = {'government','saloon','showman'},
        headingpiano = 100.04,
        headingother = 298.53,
        model = "U_M_M_ValPokerPlayer_01",
    },
    [4] = {-- Saloon Rhodes
        pos = {x = 1346.91, y = -1371.67, z = 80.49},
        exitpos = {x = 1337.21, y = -1372.39, z = 80.49},
        playpos = {x = 1346.96, y = -1371.08, z = 79.98},
        menupos = {x = 1338.62, y = -1373.55, z = 80.48},
        AllowedJobs = {'government','saloon','showman'},
        headingpiano = 350.0,
        headingother = 165.34,
        model = "RE_FOOTROBBERY_MALES_01",
    },
    [5] = {-- Saloon Armadillo
        pos = {x = -3706.09, y = -2589.38, z = -13.32},
        exitpos = {x = -3698.52, y = -2585.9, z = -13.32},
        playpos = {x = -3706.37, y = -2588.99, z = -13.82},
        menupos = {x = -3699.89, y = -2597.83, z = -13.32},
        AllowedJobs = {'government','saloon','showman'},
        headingpiano = 0.0,
        headingother = 197.17,
        model = "U_M_M_AsbGunsmith_01",
    },
    [6] = {-- Saloon Tumbleweed
        pos = {x = -5515.63, y = -2914.25, z = -1.73},
        exitpos = {x = -5522.11, y = -2908.79, z = -2.44},
        playpos = {x = -5516.02, y = -2914.53, z = -2.26},
        menupos = {x = -5520.85, y = -2906.47, z = -1.75},
        AllowedJobs = {'government','saloon','showman'},
        headingpiano = 120.0,
        headingother = 338.94,
        model = "S_M_M_VHTDEALER_01",
    }
}

Config.Texts = {--translation
    musician = "Musician",
    button = "Open",
    stop = "Stop",
    piano = "Piano",
    banjo = "Banjo",
    mandolin = "Mandolin",
    bluesguitar = "Blues Guitar",
    guitar = "Guitar",
    harmonica = "Harmonica",
    accordion = "Accordion",
    jewsharp = "Jaw Harp",
    menu = "Musicians menu",
    menusub = "Choose an instrument"
}

Config.Scenarios = {--Do not touch!
    [1] = "PROP_HUMAN_SEAT_BENCH_MANDOLIN",
    [2] = "PROP_HUMAN_SEAT_BENCH_MANDOLIN_DOWNBEAT",
    [3] = "PROP_HUMAN_SEAT_BENCH_MANDOLIN_UPBEAT",
    [4] = "PROP_HUMAN_SEAT_CHAIR_GUITAR",
    [5] = "PROP_HUMAN_SEAT_CHAIR_BLUES_GUITAR",
    [6] = "PROP_HUMAN_SEAT_CHAIR_BANJO",
    [7] = "PROP_HUMAN_SEAT_CHAIR_BANJO_UPBEAT",
    [8] = "PROP_HUMAN_SEAT_CHAIR_BANJO_DOWNBEAT",
    [9] = "WORLD_HUMAN_TRUMPET",
    [10] = "WORLD_HUMAN_SEAT_LEDGE_HARMONICA",
    [11] = "PROP_HUMAN_PIANO_SKETCHY",
    [12] = "PROP_HUMAN_PIANO_UPPERCLASS",
    [13] = "PROP_HUMAN_PIANO_RIVERBOAT",
    [14] = "WORLD_HUMAN_SEAT_LEDGE_JAW_HARP",
    [15] = "PROP_HUMAN_SEAT_BENCH_JAW_HARP_DOWNBEAT",
    [16] = "PROP_HUMAN_SEAT_BENCH_JAW_HARP_UPBEAT",
    [17] = "PROP_HUMAN_SEAT_BENCH_JAW_HARP",
    [18] = "PROP_HUMAN_SEAT_BENCH_HARMONICA_DOWNBEAT",
    [19] = "PROP_HUMAN_SEAT_BENCH_HARMONICA_UPBEAT",
    [20] = "PROP_HUMAN_SEAT_BENCH_HARMONICA",
    [21] = "PROP_HUMAN_SEAT_BENCH_FIDDLE_UPBEAT",
    [22] = "PROP_HUMAN_SEAT_BENCH_FIDDLE_DOWNBEAT",
    [23] = "PROP_HUMAN_SEAT_BENCH_FIDDLE",
    [24] = "PROP_HUMAN_SEAT_BENCH_CONCERTINA_UPBEAT",
    [25] = "PROP_HUMAN_SEAT_BENCH_CONCERTINA_DOWNBEAT",
    [26] = "PROP_HUMAN_SEAT_BENCH_CONCERTINA"
}