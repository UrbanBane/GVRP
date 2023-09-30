Config = {}
Config.Framework        = "vorp" -- possible values: "vorp", "vorp2", "redemrp", "redemrp2", "custom". See documentation how to configure for "custom" frameworks.
-- LOGGING AND DEBUG
Config.Logmanager       = false -- send log data to logmanager (https://github.com/kibook/logmanager)
Config.Console          = false  -- debug output on server console
-- GAME NAME AND RULES
Config.Title            = "Liar's Dice"
Config.RuleIcon         = "nui://tm_liarsdice/html/img/liarsdice.png"
Config.Rules            = "Multiple players play against each other. Each player has a certain number of dice and the players roll their dice secretly in front of themselves."..
                          "In each round, a player makes a guess about how many dice with a certain face value are on the table in total. The next player can either call out a bluff, make a higher bid, or declare a 'spot-on'."..
                          "If a player calls out a bluff, all players must reveal their dice and count them. If the guess was correct, the player who challenged the guess loses one die."..
                          "If a player declares a bid as 'spot-on', all players must reveal their dice and count them. If the guess was correct, the player who made the bid loses one die. If not, ALL OTHER PLAYERS lose one die!"..
                          "The game ends when a player has lost all their dice or there is only one player left. The last remaining player wins the game. If at the end, two players remain with each only having one die left, the total face value on the table is estimated. The player who is closer to the actual number wins."
Config.Okay             = "Okay"
-- IDLE GAME STATE
Config.Start            = "Play";                            
Config.StartKey         = 0xEB2AC491 -- R
Config.Info             = "Rules";                             
Config.InfoKey          = 0x1ECA87D4 -- Q
Config.Ready            = "Ready";                             
Config.ReadyKey         = 0xC7B5340A -- RETURN
-- MAIN GAME STATE, PLAYER TURN
Config.Face             = "Change die face";                  
Config.FaceUKey         = 0x6319DB71 -- ARROW UP
Config.FaceDKey         = 0x05CA7C52 -- ARROW DOWN
Config.Amount           = "Change quantity";                      
Config.AmountUKey       = 0x65F9EC5B -- ARROW RIGHT 
Config.AmountDKey       = 0xAD7FCC5B -- ARROW LEFT
Config.Bet              = "Enter bid";                             
Config.BetKey           = 0xEB2AC491 -- R
Config.ChallengeBet     = "Call out bluff";                     
Config.ChallengeBetKey  = 0xD596CFB0 -- F
Config.SpotOn           = "Declare bid spot-on";    
Config.SpotOnKey        = 0x17BEC168 -- E
-- SHOWDOWN GAME STATE, PLAYER TURN
Config.SDAmount         = "Change quantity";                      
Config.SDAmountUKey     = 0x65F9EC5B -- ARROW RIGHT 
Config.SDAmountDKey     = 0xAD7FCC5B -- ARROW LEFT
-- ADDITIONAL
Config.Dice             = "Look at your dice";                       
Config.DiceKey          = 0x07B8BEAF -- Left Click
Config.Surrender        = "Surrender";                           
Config.SurrenderKey     = 0x156F7119 -- Backspace
-- ADDITIONAL DICE IMAGES, GAMEPLAY SETTINGS AND INSPECT MECHANICS
Config.InspectVisuals   = true  -- display a NUI overlay with own dices above the ingame dices. Better to see especially in dark environments!
Config.HoldToSeeDices   = true  -- true = Hold DiceKey to see under own cup. | false = click to toggle and see under own cup.
Config.Graveyard        = true  -- display die on the "graveyard" in center of the table. These are the dices which were removed from players in the current running game. Just cosmetics, but if disabled keeps local object limit low.
Config.UseCloseupCams   = true  -- Shows a closeup of each players dice on reveal.
-- TIMINGS AND TABLE RADIUS
Config.Radius           = 2.15  -- Radius for all tables to participate and leave a game 
Config.TipTime          = 3500  -- Tip time. This value determines the base time how long a tip is show. Some tips are using this time to multiply by 2 or 3 to display the notification longer
Config.ActionTimer      = 240   -- Time in seconds(!) to take an action. If timer runs up, player is forced to leave the table
Config.RevealTime       = 4000  -- Reveal time per player in ms. Game looks at remaining dices for this time for each player on dice reveal
-- TEXTS AND NOTIFICATIONS
Config.GetReady         = "~t8~Get ready!~q~"
Config.ActionReminder   = "~t8~Make a move or you're kicked from the table!~q~" 
Config.ActionKick       = "~t8~You were kicked from the table...~q~"
Config.CantJoinTable    = "~t8~A game is currently running or every seat is taken!~q~" 
Config.TakeAction       = "~t8~Choose an action!~q~"
Config.InitalBid        = "~t8~Enter initial bid.~q~"
Config.BidOrChallenge   = "~t8~Enter new bid or call out bluff.~q~"
Config.NotSameBet       = "~t8~Your bid needs to be higher than the last bid from ~t2~%s ~t8~: ~t2~%s~q~"
Config.ShowdownSum      = "~t8~Your bid needs to be between ~t2~2~t8~ and ~t2~12~t8~ .~q~"
Config.PlayerLeftTable  = "~t2~%s ~t8~left the game.~q~"
Config.Win              = "~t2~%s ~t6~won the game!~q~"
Config.Tie              = "~t2~%s ~t6~and ~t2~%s~t6~ finished the game with a tie!~q~"
Config.LookAtDice       = "~t6~Only you can see your dice.~q~"
Config.MakeNewBet       = "~t2~%s ~t8~bids %s~q~"
Config.ChallengeOldBet  = "~t2~%s ~t8~calls out ~t2~%s~t8~ bid is a bluff!~q~"
Config.SpotOnBet        = "~t2~%s ~t8~declares the bid of ~t2~%s~t8~ spot-on!~q~"
Config.RevealingDices   = "~t2~%s ~t8~has %s, totaling: ~t2~%d~q~" 
Config.LostBluff        = "~t2~%s ~t8~Loses a die, because %s bluffed.~q~"
Config.LostBet          = "~t2~%s ~t8~Loses a die, because %s called out a bluff on a valid bid.~q~"
Config.LostSpotOnWrong  = "~t2~%s ~t8~Loses a die, because the bet was dead wrong.~q~"
Config.LostSpotOnRight  = "~t2~%s ~t8~was caught by a 'spot-on'. %s loses a die.~q~"
Config.IsOut            = "~t2~%s ~t8~has no more dice!"
Config.Showdown         = "~t6~As there are only ~t2~2~t6~ players left with 1 die each, you bid on the total face value on the table! Closest player wins!"
Config.DiceThrow        = "~t6~The dice are rolling!~q~"
Config.UpdatedLastBet   = "~t8~Last valid bid was from ~t2~%s~t8~!~q~"
Config.RevealShowdown   = "~t8~The remaining dice get revealed.~q~"
Config.AmountShowdown   = "~t8~%s says that the total face value of both dice is ~t2~%s~t8~.\nSo the difference to the correct sum is ~t2~%s~t8~!~q~"
-- PRONOUNS FOR NOTIFICATION -- (e.g. "he lost...")
Config.Male             = "he"
Config.Female           = "she"
-- PLAYER STATES FOR NUI -- (HTML allowed)
Config.PlayerStates     = {
    idleWait            = "Waiting…",
    generalWait         = "Waiting…",
    animReady           = "Is thinking…",
    madeLastBet         = "Bid: ",
    revealDices         = "",
    playerOut           = "Out!",
    playerIsReady       = "Ready",
    playerTurnMe        = "Your turn…",
    playerTurnOther     = "…'s turn'",
    initialDiceRoll     = "Throws a ",
    showdown            = "Throws a ",
    playerPosition      = "Position: ",
    playerThrowDice     = "Rolls…",
    playerMakesBet      = "Bids: ",
    playerChallenge     = "calls out a bluff…",
    playerOnSpot        = "declares a 'spot-on'",
    showdownBet         = "Guessed ",
    graveyardReady      = "Waiting…",
    graveyard           = "Removes a die...",
    playerWins          = " won!"
}
-- NAMING THE DICE FACES AND AMOUNTS
Config.DiceResult       = "%s %s" -- Result: e.g. "Four Sixes". 
Config.Amounts          = {
    none = "no", 
    numbers = { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twwenty" },
    showdownNone = "Zero",
    showdown = { "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve"}
}
Config.DiceFaces        = {
    singular = {"One", "Two", "Three", "Four", "Five", "Six"},
    plural = {"Ones", "Twos", "Threes", "Fours", "Fives", "Sixes"}
}
-- OFFSETS AND ROTATION FOR DICES BELOW EACH CUP -- 0.0/0.0 IS CENTER -- OFFSET X, OFFSET Y, ROTATION (YAW)
Config.DiceOffsets      = { 
    ["dice_1"] = {0.0, 0.0, -8.10776710510253},
    ["dice_2"] = {0.00036283960798, -0.02511487528681, 5.892258644104},
    ["dice_3"] = {0.01248945016413, 0.02127651497721, -20.1077880859375},
    ["dice_4"] = {0.02328402921557, -0.00438683293759, -94.10779571533203},
    ["dice_5"] = {-0.0252922642976, 0.00160699721891, 10.89229583740234}
}
-- LOCATIONS
Config.Locations        = {
    -- Unique name for location. Gets also displayed in the prompt group
    ["Doyles Tavern"] = {
        -- Distance to show the blip on map. 
        -- Possible values: -1 = always, 0 = disabled, X.X = disctance in meters.centimeters
        showBlip = -1,
        -- Blip sprite to display
        blipSprite = -1236018085,
        -- Location for the Blip to appear on the map
        blipLocation = {x = 2797.7353515625, y=-1163.62451171875, z=46.97897338867187}, 
        -- Gets displayed in the game prompts
        Name = "Play Liar's Dice",
        -- Center of the table on ground. 
        promptLocation = {x = 2797.7353515625, y=-1163.62451171875, z=46.97897338867187}, 
        -- Min player to start a game. 
        minPlayers = 2,
        -- Max players on this table. Its not recommended to go higher than 4. For each player you need a position in the "seats" part of the table config.
        maxPlayers = 4,
        -- Start amount of dices per player. Config.DiceOffsets needs to reflect entries for this number. 
        -- It doesnt make sense to go higher than 5, because there is not much space below the cup
        dicePerPlayer = 5,
        -- Probably enter here a custom dice model if you have any (not included in this script). Default is "p_dice01x"
        diceModel = "p_dice01x", 
        -- Z position for dynamic objects on table (dices and cups)
        objZ = 47.736, 
        -- Teleporting the player directly on the seat instead of beside it to animate seating. 
        -- This setting is only neccessary if you have issues in custom interiors/MLOs where RedM can't find the position in a usually "non existing" areas for the player
        -- It isn't actually an issue with the script or MLO, but with how RedM handles mappings and lets a ped find valid teleport locations which are not available in custom MLOs. 
        -- This setting is just a way to work around it.
        forceTeleportOnSeat = false,
        -- Seat positions. These are only positions for placing a player. For spawning chair objects (if needed), use the props table or use own mappings
        -- heading/yaw is not needed as the rotation of the player will always point towards the "promptLocation.x/.y" configuration listed above.
        seats = {
            [1] = {x= 2797.35986328125,  y= -1162.707763671875, z= 46.92414474487305 }, 
            [2] = {x= 2798.608154296875, y= -1163.2705078125,   z= 46.92399978637695 }, 
            [3] = {x= 2798.143310546875, y= -1164.563232421875, z= 46.92399978637695 }, 
            [4] = {x= 2796.783203125,    y= -1163.931396484375, z= 46.92399978637695 }  
        },
        -- Spawn additional prop objects when near the table. Optional
        props = {
            ["cup1"] = {model= "p_gen_dicecup01x", x= 2797.58349609375,  y=-1163.6614990234375, z=47.7188491821289,  pitch=0.0,   roll=0.0,   yaw= -31.20509338378906 } 
        }, 
        -- Remove existing objects in the world. Optional
        delete = {}
    }
}
-- Wrapper event names. Only used when Config.Framework is set to "custom"
Wrapper = {}
Wrapper.objectiveEvent = "myFrameWork:Objective"
Wrapper.TipEvent       = "myFrameWork:Tip"
Wrapper.HudOverride    = "myFrameWork:OverrideHUD"
Wrapper.getCharFromId  = "tm_liarsdice:custom:getCharacterFromId" -- calls wrapper function from compatibility.lua