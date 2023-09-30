Config = { }

Config.metadata = false -- set to true when using meta data inventory update 


Config.webhook = true -- turn on webhook 
Config.adminwebhooklink = "https://discord.com/api/webhooks/977987740434051082/4LsoWxZwRVGtTk-O4ox-9jHdZl4kHFBH4_CBWZxjQ8UjVlzF8NoIiCc3ws6s7T7zJtIb"
Config.webhookavater = "https://media.discordapp.net/attachments/805495169901789194/911350679447150603/unknown.png"

Config.handcuff = true ---- show search if player is handcuffed
Config.hogtie = true    ---- show search if player is hogtied 
Config.isDead = true    ---- show search if player is dead

Config.jobs = {"police","marshal"} -- jobs 
Config.jobonly = false -- only people with listen jobs will get prompt to search
Config.jobonlytake = false -- only people with listen jobs will be able to take stuff 


Config.stealcash = true  -- allow taking money 
Config.stealgold = true  -- allow taking money 
Config.stealitems = true  -- allow taking items 
Config.stealguns = true  -- allow taking guns


-- bypass configs above for players with the jobs listed
Config.bypasscash = false 
Config.bypassgold = false 
Config.bypassitems = false 
Config.bypassguns = true 

Config.newcharactersafetimer = 180-- 3 hrs cant be robbed or rob people. 

Config.norobjob = {"police","marshal","doctor"} -- jobs that cant be robbed keep as {} to disable 
Config.dutycheck = true -- use this so that the the jobs marked as norob must be on duty not to get robbed (syn society only)
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["F"] = 0xB2F377E8,
	["BACKSPACE"] = 0x156F7119,
    ["ENTER"] = 0xC7B5340A,

}

Config.blacklistedweapons = {
    "WEAPON_MELEE_HAMMER",
}

Config.blacklisteditems= {
    "bountylicns",
    
}

Config.language = {
    search = "Search",
    taken = "Lost ",
    cantcarry = "Cannot carry any more items",
    takecash = "Take Cash",
    takegold = "Take Gold",
    cash = "Cash: $",
    gold = "Gold: ",
    beingsearched = "Currently being searched",
    cantsearchjob = "Cannot search people with this job",
    inventory = "Inventory",
    searchinv = "Search Inventory",
    searchmenu = "Search Menu",
    searchmenusub = "Search Person",
    confirm = "Confirm",
    amount = "Amount",
    tookcash = "You Got $",
    tookgold = "You Got ",
    takencash = "You Lost $",
    takengold = "You Lost ",
    goldd = " Gold",
    qt = "Invalid quantity",
    carry = "You cannot carry more items",
    limit = "You reached the limit for this item",
    maxslots = "Your Hideout cannot store more items. Slot limit is ",	
    tookwep = "You took a weapon",
    weptaken = "A weapon was taken from you",
    tookitem = "You took an item",
    itemtaken = "An item was taken from you",
    onlyview = "You can only view items",
    cantitems = "You cannot take items",
    cantweapons = "You cannot take weapons",
    searchlogs = "Search Logs",
    searched = " Searched ",
    cashtaken = " Cash was taken ",
    dollar = "$",
    cash2 = "Cash",
    goldtaken = "Gold was taken",
    gold2 = "Gold",
    weptaken = "A weapon Was taken",
    itemtaken = "An item was taken",
    footer = "Syn search",
	blacklisted = "You Cant Take This Item",
    cantrobnew = "You Cant Rob New Players, You Cant Rob As a New player, make sure you read the rules!",
}