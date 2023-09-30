Config = {}

Config.SizeDropzone = 2.0
Config.MaxCarcass = 6
Config.DisplayTip = function(text,duration)
  TriggerEvent('vorp:TipBottom', text, duration)
end
