--DO NOT RENAME RESSOURCE !!

Config = {}

Config.VORP = true -- If you use VORP FRAMEWORK
Config.Freeze = false -- If you want a option to freeze the screen when you look through the viewfinder
Config.CommandHideUi = 'hideui' --To Hide UI when you look through the viewfinder
Config.Command = 'startcam' -- If you don't use VORP FRAMEWORK, start with a command

--ITEMS & PROPS
Config.Item = "camera" -- ITEM
Config.PropCam = "p_camera01x" -- PROPS
Config.PropFlash = "p_cameraflash01x" -- PROPS
Config.CameraWep = {'WEAPON_KIT_CAMERA', 'WEAPON_KIT_CAMERA_ADVANCED'} --WEAPON_KIT for camera
Config.Range = 1.2 --Range for props
Config.ZposeBase = 1.5 --Starting Z pose of the camera
Config.ZposeBase2 = 0.5 --Starting Z pose of the camera (weapon)
Config.OffSetPlace = 1.0 --Distance in front of your ped when you're placing the props 

--FX
Config.AimScreen2 = "CameraViewfinderStudioPosse" --Base Screen Effect for Camera
Config.AimScreen = "CameraViewfinderStudioPosse" --Base Screen Effect for little Camera
Config.EnterCam = "MP_CampWipeDown" --Screen Effect when you look through the viewfinder
Config.FiltersFX = "MP_CampWipeUp" --Screen Effect when you change filters

--KEY & Controls
Config.PlaceKey = 0x760A9C6F --G
Config.HideKey = 0x7F8D09B8 --V
Config.ZoomIn = 5 --Value of the Zoom step
Config.ZoomOut = 5 --Value of the Zoom step
Config.GoUp = 0.05 --Value of the height step for the tripod / --Value of the rotation step for cameras
Config.GoDown = 0.05 --Value of the height step for the tripod / --Value of the rotation step for cameras
Config.GoUp2 = 0.5 --Value of the second rotation step for cameras
Config.GoDown2 = 0.5 --Value of the second rotation step for cameras

--PHOTO 
Config.WaitForScreen = 3000 --3 sec.

--LANGUAGE
Config.Language = {
	[1] = "Use",
	[2] = "Remove",
	[3] = "[~e~G~q~] Place",
	[4] = "Camera",
	[5] = "You already have a camera",
	[6] = "Aim",
	[7] = "Stop",
	[8] = "Take a photo",
	[9] = "Previous filter",
	[10] = "Next filter",
	[11] = "Freeze",
	[12] = "[~e~V~q~] To hide the keys",
	[13] = "[~e~Directional arrows~q~] To manage the tripod",
	[14] = "[~e~Wheel~q~] To Zoom",
	[15] = "Camera placed",
	[16] = "Camera recovery",
	[17] = "Too many cameras on you",
	[18] = "Inventory full",
}

--FILTERS
Config.Filters = { -- You can enable/disable/add/remove all fx you want
	"CameraViewfinder",
	--"cameraviewfinderadv", 
	--"CameraViewfinderStudio", 
	"PhotoMode_FilterGame01",
	"PhotoMode_FilterGame02",
	"PhotoMode_FilterGame03",
	"PhotoMode_FilterGame04",
	--"PhotoMode_FilterGame05",
	--"PhotoMode_FilterGame06",
	--"PhotoMode_FilterGame08",
	"PhotoMode_FilterGame09",
	"PhotoMode_FilterGame10",
	"PhotoMode_FilterModern01",
	"PhotoMode_FilterModern02",
	"PhotoMode_FilterModern03",
	"PhotoMode_FilterModern04",
	"PhotoMode_FilterModern05",
	"PhotoMode_FilterModern06",
	"PhotoMode_FilterModern07",
	"PhotoMode_FilterModern08",
	"PhotoMode_FilterModern09",
	--"PhotoMode_FilterModern10",
	"PhotoMode_FilterVintage01",
	--"PhotoMode_FilterVintage02",
	"PhotoMode_FilterVintage03",
	"PhotoMode_FilterVintage04",
	"PhotoMode_FilterVintage05",
	"PhotoMode_FilterVintage06",
	"PhotoMode_FilterVintage07",
	"PhotoMode_FilterVintage08",
	"PhotoMode_FilterVintage09",
	--"PhotoMode_FilterVintage10",
	--"PhotoMode_Bounds",
	--"PhotoMode_TakePicture",
	"PhotoMode_FilterGame11",
	--"PhotoMode_FilterGame12",
	"PhotoMode_FilterGame13",
	--"PhotoMode_FilterGame14",
	--"PhotoMode_FilterGame15",
	--"PhotoMode_FilterGame16",
	"PhotoMode_FilterGame17",
	"PhotoMode_FilterGame18",
}

--KEY DON'T TOUCH !!!
Config.WheelUp   = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`} -- Page Up, Mouse Wheel Up  !DONT TOUCH!
Config.WheelDown   = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`} -- Page Down, Mouse Wheel Down !DONT TOUCH!
Config.Up = `INPUT_FRONTEND_UP` -- Up arrow key !DONT TOUCH!
Config.Down = `INPUT_FRONTEND_DOWN` -- Down arrow key !DONT TOUCH!
Config.Left = `INPUT_FRONTEND_LEFT` -- Left arrow key !DONT TOUCH!
Config.Right = `INPUT_FRONTEND_RIGHT` -- Right arrow key !DONT TOUCH!