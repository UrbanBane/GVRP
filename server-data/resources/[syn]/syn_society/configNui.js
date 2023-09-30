
var configs = {
    theme: {
        "primary_color": "#d41919",
        "secondary_color": "#d41919"
    },
    jobs: [
        // Whitelisted jobs
        {
            "title": "Blacksmith",
            "shortDescription": "Make useful things",
            "description": "Craft tools, smelt metals, get swole",
            "group": "blacksmith",
            "whitelisted": true,
            "iconName": "miner.png",
            requirements: ["You must fill out a job application for this role"]
        },
        {
            "title": "Lawman", // title to show in html nui in game
            "shortDescription": "Sheriff", // short description 
            "description": "catch bad guys", // long description 
            "group": "police", // the job title they will gain in db
            "whitelisted": true, // if true players wont be able to select this, rather they will only see that it is an available option on your server
            "iconName": "police.png", // the logo of the job, you can add logos in this path syn_society\client\html\icons
            requirements: ["You must fill out a job application for this role"] // any special requirements you want listed 
        },
        {
            "title": "Doctor / Medic",
            "shortDescription": "Heal people",
            "description": "Help people in need",
            "group": "doctor",
            "whitelisted": true,
            "iconName": "doctor.png",
            requirements: ["You must fill out a job application for this role"]
        },
        {
            "title": "Gunsmith",
            "shortDescription": "Make guns",
            "description": "Craft and customise guns",
            "group": "gunsmith",
            "whitelisted": true,
            "iconName": "miner.png",
            requirements: ["You must fill out a job application for this role"]
        },
        {
            "title": "Horse Trainer",
            "shortDescription": "Train horses",
            "description": "Break and sell wild horses",
            "group": "horsetrainer",
            "whitelisted": true,
            "iconName": "horsetrainer.png",
            requirements: ["You must fill out a job application for this role"]
        },
        {
            "title": "Journalist",
            "shortDescription": "Write about the news",
            "description": "Keep the newspaper updated with all the latest!",
            "group": "news",
            "whitelisted": true,
            "iconName": "newspaper.png",
            requirements: ["You must fill out a job application for this role"]
        },

        // Unwhitelisted jobs
        {
            "title": "Barkeeper",
            "shortDescription": "Get people drunk!",
            "description": "Serve drinks, entertain customers",
            "group": "saloon",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
        {
            "title": "Bounty Hunter",
            "shortDescription": "Hunt bounties",
            "description": "Find and capture or kill baddies",
            "group": "bountyhunter",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        }, 
/*         {
            "title": "Construction",
            "shortDescription": "Build stuff",
            "description": "Do some manual labour and build stuff",
            "group": "construction",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        }, */
/*         {
            "title": "Delivery Driver",
            "shortDescription": "Deliver stuff",
            "description": "Deliver stuff for money",
            "group": "delivery",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        }, */
        {
            "title": "Farmer",
            "shortDescription": "Grow things",
            "description": "Own a ranch and grow things",
            "group": "farmer",
            "whitelisted": false,
            "iconName": "horsetrainer.png",
            requirements: ["none"]
        },
        {
            "title": "Lumberjack",
            "shortDescription": "Cut trees",
            "description": "Get wood, and sell it!",
            "group": "lumberjack",
            "whitelisted": false,
            "iconName": "horsetrainer.png",
            requirements: ["none"]
        },
        // {
        //     "title": "Train Conductor",
        //     "shortDescription": "Drive trains",
        //     "description": "Drive trains around New Cumbernauld!",
        //     "group": "conductor",
        //     "whitelisted": true,
        //     "iconName": "horsetrainer.png",
        //     requirements: ["You must fill out a job application for this role"]
        // },
        {
            "title": "Miner",
            "shortDescription": "Mine stuff",
            "description": "Hit the mountains and mine stuff",
            "group": "miner",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
        {
            "title": "Moonshiner",
            "shortDescription": "Totally legal",
            "description": "shhhh it's a secret",
            "group": "moonshiner",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
/*         {
            "title": "Showman",
            "shortDescription": "Make movie magic!",
            "description": "Schedule vaudeville shows and magic lantern movies.",
            "group": "showman",
            "whitelisted": false,
            "iconName": "showman.png",
            requirements: ["none"]
        }, */
        {
            "title": "Stage Coach Driver",
            "shortDescription": "Taxi anyone?",
            "description": "Taxi anyone?",
            "group": "stagecoach",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
        {
            "title": "Undertaker",
            "shortDescription": "Bury bodies",
            "description": "The graveyard shift",
            "group": "undertaker",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
        {
            "title": "Unemployed",
            "shortDescription": "Do nothing!",
            "description": "Get a job ya bum",
            "group": "unemployed",
            "whitelisted": false,
            "iconName": "miner.png",
            requirements: ["none"]
        },
        /* { // addjobs by copy pasting whats between the stars *
            "title": "Miner",
            "shortDescription": "Repara vehiculos",
            "description": "Repara vehiculos y turbinas",
            "group": "mecanico",
            "whitelisted": false,
            "iconName": "police.jpg",
            requirements: ["Ninguna"]
        }, */
    ]
}