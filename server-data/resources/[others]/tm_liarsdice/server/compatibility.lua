--[[ 
    This file is unenctypted and should give you the possibility to adapt to internal event calls with your framework.
    See documentation for how to use it.
    ----
    custom wrapper function for YOUR framework. Adapt to your needs 
    ----
    user    :   the player requested (source)
    cb      :   callback function   
  ]]
if Config.Framework == "custom" then
    local Framework = {}
    TriggerEvent("getFrameworkCore", function(core)                                                 -- <- ADAPT THE EVENT OR REWRITE TO GET YOUR FRAMEWORKS CORE FUNCTIONS
        Framework = core
    end)
    AddEventHandler("tm_liarsdice:custom:getCharacterFromId", function(source, cb)
        local _source = source
        local char = Framework.GetPlayer(_source)                                                   -- <- ADAPT THE FUNCTION ON THE RIGHT OF "=" TO RETURN CHARACTER OBJECT
        if char then
            local user = {}
            -- wrapper functions to return and set data from custom framework
            user.getName      = function() return char.data.firstname.." "..char.data.lastname end  -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO RETURN FULL NAME
            user.getFirstname = function() return char.data.firstname end                           -- <- ADAPT THE FUNCTIONS ON THE RIGHT OF "=" TO RETURN FIRSTNAME 
            cb(user)
        else
            cb(nil)
        end
    end)
end