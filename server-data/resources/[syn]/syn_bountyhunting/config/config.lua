Config = {}
Config.vorp = true 
Config.redem = false
Config.onesync = true

Config.maxfine = 10000 -- 50$ max file 
Config.maxtime = 60

Config.joblocked = true -- false allows anyone to start the missions.
------------------------ newlines
Config.joblocked2 = true  -- false allows anyone to take on bounties.
Config.joblocked3 = true -- false allows anyone to add and set up bounties, be careful as this can get abused easily. 
-----------------------------
Config.police = {"police","marshal"}
Config.bountyhunters = {"bountyhunter","cumberlandguild","omenbounty","pinkerton","beanbounty"}

Config.showenemyblips = true
Config.cooldown = 20 -- minutes 
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["F"] = 0xB2F377E8,
}

Config.gumjail = false 
Config.police_job = true 
Config.customjail = false -- use this to insert your own send to jail trigger 
Config.pokejail = false 

--Config.sendtojail(id,time)
Config.sendtojail = function(id, time)
    if Config.gumjail then 
        ExecuteCommand("jail",id,time)
    elseif Config.police_job then 
        TriggerServerEvent('lawmen:JailPlayer', tonumber(id), tonumber(time))
    elseif Config.pokejail then 
        TriggerServerEvent("poke_adminjail:jail", id, time)
    elseif Config.customjail then 
    -- insert your jail script function here 

    end
end

Config.Locations = {
    { x = -767.144, y = -1261.2151, z = 43.6312, town = "blackwater"},  
    { x = 1353.38, y = -1304.39, z = 76.87, town = "rhodes"},
    { x = 2514.1569, y = -1320.5446, z = 48.5353, town = "saintdenis"},
 --   { x = -1416.40, y = -2285.74, z = 43.11, town = "thieveslanding"},
    { x = -2220.14, y = 741.62, z = 123.52, town = "huntinglodge"},
    --{ x = 2908.1873, y = 1312.6338, z = 45.1383, town = "annesburg"},
	{ x = -270.21, y = 804.4065, z = 119.4683, town = "valentine"},
}

Config.deliveryLocations = {
    { x = -767.144, y = -1261.2151, z = 43.6312, town = "blackwater"},  
    { x = 1361.6379, y = -1302.7885, z = 77.9819, town = "rhodes"},
    { x = 2514.3620, y = -1320.5814, z = 48.5271, town = "saintdenis"},
 --   { x = -1416.40, y = -2285.74, z = 43.11, town = "thieveslanding"},
    { x = -2220.14, y = 741.62, z = 123.52, town = "huntinglodge"},
    --{ x = 2908.1873, y = 1312.6338, z = 45.1383, town = "annesburg"},
	{ x = -270.21, y = 804.4065, z = 119.4683, town = "valentine"},
}


Config.language = { 
    bountyboard = "Bounty Board",
    openmenu = "Open Menu",
    endmission = "End Mission",
    deliver = "Deliver",
    bh = "Bounty Hunting",
    mist1 = "Go To Marked Location And Kill The Criminals.",
    known = "Known Bounty Location",
    gotomarked = "Go To Marked Location And Arrest The Wanted Criminal.",
    escort = "Go To Marked Location To Escort The Client.",
    client = "Client Location",
    nojob = "No Available Jobs Check later",
    dontkill = "Dont kill marked Targets, Deliver them to location",
    delivery = "Delivery Location",
    esdist = "Escort Client to their destination",
    cldist = "Client Destination",
    failed = "You Failed.",
    missionover = "Mission Over",
    gtd = "Go To Delivery Location.",
    startmission = "Start Mission",
    vary = "A varaity of different missions",
    checkbb = "Check Bounty Board",
    checkbb2 = "Check The Bounty Board",
    addbt = "Add New Bounty",
    addbt2 = "Add A New Bounty To The Board.",
    rbt = "Remove Bounty",
    rbt2 = "Remove a Bounty from The Board.",
    bhmen = 'Bounty Hunter Menu',
    options = "Options",
    dollar = " $",
    crimdesc = "Crime Description",
    fine = "Fine",
    jt = "Jail Time",
    minutes = " minutes",
    confirm = "Confirm",
    imgurl = "Image URL",
    sdes = "Short Description of the crime",
    fine2 = "Fine taken from bounty and paid to bounty hunter",
    jt2 = "Amount of time in minutes the bounty will be sent off",
    imgurl2 = "Image URL if any",
    confirm2 = "View & Confirm Details",
    string4 = "4th Player ID",
    man1 = "1 player",
    man2 = "2 players",
    man3 = "3 players",
    man4 = "4 players",
    tman1 = "1 Bounty Hunter",
    tman2 = "2 Bounty Hunter",
    tman3 = "3 Bounty Hunter",
    tman4 = "4 Bounty Hunter",
    ptsize = 'Select Party Size',
    ptsize2 = 'Party Size Determines payout and difficulty',
    string2 = "2nd Player ID",
    string3 = "3rd Player ID",
    bountycreated = "Bounty Created",
    youcollected = "You Collected $ ",
    youfined = "You were fined $ ",
    devpaid1 = "You Delivered and got paid $",
    devpaid2 = "You Delivered and got paid ",
    gold = " Gold",
}