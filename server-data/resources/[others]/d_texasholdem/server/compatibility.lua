--[[ 
    This file is unenctypted and should give you the possibility to adapt to internal event calls with your framework.
    See documentation for how to use it.
    ----
    custom wrapper function for YOUR framework. Adapt to your needs 
    ----
    user    :   the player requested (source)
    cb      :   callback function   
  ]]
if TexasHoldemConfig.Framework == "custom" then
    local Framework = {}
    TriggerEvent("getFrameworkCore", function(core)                                                         -- <- ADAPT THE EVENT OR REWRITE TO GET YOUR FRAMEWORKS CORE FUNCTIONS
        Framework = core
    end)

    AddEventHandler("d_texasholdem:custom:getCharacterFromId", function(source, cb)
        local _source = source
        local char = Framework.GetPlayer(_source)                                                           -- <- ADAPT THE FUNCTION ON THE RIGHT OF "=" TO RETURN CHARACTER OBJECT
        if char then
            local user = {}
            -- wrapper functions to return and set data from custom framework
            user.getName      = function() return char.data.firstname.." "..char.data.lastname end          -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO RETURN FULL NAME
            user.getFirstname = function() return char.data.firstname end                                   -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO RETURN FIRSTNAME 
            user.getMoney     = function() return char.func.getMoney(currency) end                          -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO RETURN PLAYER MONEY 
            user.removeMoney  = function(amount) char.func.removeMoney(currency, amount) end      -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO REMOVE PLAYER MONEY 
            user.addMoney     = function(amount) char.func.addMoney(currency, amount) end         -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO ADD PLAYER MONEY
            cb(user)
        else
            cb(nil)
        end
    end)
end