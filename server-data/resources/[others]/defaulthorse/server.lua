local VorpCore = {}
TriggerEvent("getCore",function(core)
    VorpCore = core
end)

RegisterServerEvent('defaulthorse:updatehorse') 
AddEventHandler('defaulthorse:updatehorse', function()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier
	print(charidentifier)
    local Parameters = { ['charidentifier'] = charidentifier}
    exports.ghmattimysql:execute("UPDATE stables Set isDefault=0 WHERE charidentifier=@charidentifier AND isDefault = 1 AND type='horse'", Parameters)
end)

RegisterServerEvent('defaulthorse:updatecart') 
AddEventHandler('defaulthorse:updatecart', function()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local charidentifier = Character.charIdentifier
	print(charidentifier)
    local Parameters = { ['charidentifier'] = charidentifier}
    exports.ghmattimysql:execute("UPDATE stables Set isDefault=0 WHERE charidentifier=@charidentifier AND isDefault = 1 AND type='cart'", Parameters)
end)
