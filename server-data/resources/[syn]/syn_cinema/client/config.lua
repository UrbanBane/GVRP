Config = {}

Config.RandomTransitions = false
Config.job = "cinema"
Config.Shows = Globals.Shows
Config.Projections = Globals.Projections
Config.Movies = Globals.Movies
Config.Language = "you do not have the correct job: "
Config.Curtains = {
	["SAINTDENIS"] = vector3(2546.522, -1307.835, 48.26664)
}

Config.Soundsets = {
	["Curtain_Open_Music"] = "3160317806_action",
	["Curtain_Opens_Music"] = "2245181467_action",
	["Escape_Noose_Curtain_Music"] = "4224921010_action"
}

Config.Prompts = {
    { label = ("Buy a ticket for the show (%s$)"):format(Globals.Price), id = "BUY_TICKET" },
}

Config.CreatedEntries = {}