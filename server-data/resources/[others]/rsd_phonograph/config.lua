--DO NOT RENAME RESSOURCE !!

-- YOU HAVE TO DOWNLOAD "xsound" and ensure the ressource --> https://github.com/Xogy/xsound

Config = {}

Config.VORP = true -- If you use VORP FRAMEWORK
Config.rsdNUI = false -- If you use our "rsd_NUI"

Config.Command = 'startphonograph' -- If you don't use VORP FRAMEWORK, start with a command
Config.Command2 = 'putsoundphono' -- If you want to put sound with a command, set the song and press the button to play music

--ITEMS & PROPS
Config.Item = "phonograph" -- ITEM phonograph
Config.PropGram = "p_phonograph01x" -- PROPS
Config.Range = 2 --Range for props
Config.RangeMusic = 20 -- Range to hear the music
Config.OffSetPlace = 1.0 --Distance in front of your ped when you're placing the props 

--KEY & Controls
Config.PlaceKey = 0x760A9C6F --G"
Config.Rot1 = 5 --Step for the rotation when you're placing the props 
Config.Rot2 = 5 --Step for the rotation when you're placing the props 

Config.DefaultSound = 0.1 -- 0.1 = 10% // 1 = 100%


--LANGUAGE
Config.Language = {
	[1] = "Play music",
	[2] = "Remove",
	[3] = "[~e~G~q~] Place",
	[33] = "G",
	[34] = "Place",
	[4] = "Phonograph",
	[5] = "You already have a phonograph",
	[6] = "Stop music",
	[7] = "Volume",
	[9] = "Phonograph on",
	[10] = "Phonograph off",
	[11] = "Volume: ",
	[12] = "Phonograph placed",
	[13] = "Phonograph recovery",
	[14] = "You can only carry one phonograph",
	[15] = "Inventory full",
	[16] = "URL Youtube",
	[17] = "Confirm",

}


--KEY DON'T TOUCH !!!
Config.WheelUp   = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`} -- Page Up, Mouse Wheel Up  !DONT TOUCH!
Config.WheelDown   = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`} -- Page Down, Mouse Wheel Down !DONT TOUCH!
