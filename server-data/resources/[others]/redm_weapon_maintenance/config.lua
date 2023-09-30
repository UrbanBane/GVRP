Config = {}

Config.Debug = false
Config.EnableNotifications = true

--[[ Integrations config ]]--
Config.UseIntegration = vorp -- 'redemrp' / 'vorp' / false 
Config.StatsSyncInterval = 30000
Config.EnableGunOilCheck = true
Config.GunOilItemName = 'gun_oil'
Config.EnableWeaponMalfunctions = true
Config.EnableSynScriptsCompatibility = false -- only for vorp users | read README.md before using

--[[ Malfunctions config ]]--
Config.MalfunctionMinDegradation = 0.7 -- 0.0 (good condition) - 1.0 (poor condition) | default: 0.3
Config.MalfunctionChanceMultiplier = 1.0
Config.MalfunctionNotification = 'Weapon is jammed and needs cleaning.'
Config.MalfunctionEnableJammedSound = true