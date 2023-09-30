var currentGame = {}
var PlayerStates = {}
var Amounts = {}
var Faces = {}
var myId = -1

$(function() {
    // fade in/out wrapper element (show/hide NUI)
    function display(bool) {
        if (bool) {
            $("#liarsdice-wrapper").fadeIn(400);
        } else {
            $("#liarsdice-wrapper").fadeOut(250);
            currentGame = {}
        }
    };

    // display bet interface
    function showBet(bool, showdown) {
        if (showdown) {
            updateBet(2)
            $("#bet-face").hide()
            $("#bet-times").hide()
        }
        if (bool) {
            $("#dice-bet").fadeIn(250);
        } else {
            $("#dice-bet").fadeOut(250);
        }
        if (!showdown) {
            setTimeout(function() { 
                $("#bet-face").show()
                $("#bet-times").show()
            }, 250)
        }
    }

    // change bet amount andface
    function updateBet(amount, face) {
        if (typeof face !== "undefined") {
            $("#bet-amount").html(amount).css("margin-right", "4px")
            $("#bet-face").html("<img src='img/dices/dices_1/dice_" + face + ".png' class='animate__animated animate__headShake' />")
        } else {
            $("#bet-amount").html("<span style='font-size: 32px;'>" + PlayerStates.showdownBet + "</span>" + amount).css("margin-right", "-30px")
        }  
    }

    // display your die underthe cup
    function showHand(bool) {
        if (bool) {
            var dices = currentGame.players[myId].dices
            var diceHTML = ""
            for (let i=0; i < dices.length; i++) {
                diceHTML = diceHTML + '<div id="own_dice_' + i+1 + '" class="dice"> <div class="side"></div> <div class="side"></div> <div class="side"></div> <div class="side"></div> <div class="side"></div> <div class="side"></div> </div>'
            }
            $("#dice-container .inner").html(diceHTML) 
            $("#dice-container").fadeIn(400);
            setTimeout(function() { 
                for (let i=0; i < dices.length; i++) {
                    $("#own_dice_"+ i+1).addClass("show-" + dices[i])
                }
            }, 100)
        } else {
            $("#dice-container").fadeOut(400);
        }
    }

    // dice face and amount naming
    function getBetNaming(amount, face) {
        if (amount > 1) { 
            return Amounts.numbers[amount-1] + " " + Faces.plural[face-1]
        } else if (amount == 1) { 
            return Amounts.numbers[amount-1] + " " + Faces.singular[face-1]
        } else {
            return Amounts.none + " " + Faces.singular[face-1]
        }
    }

    // count the dices of a specific face
    function getAmountOfChallengedDices(dices, face) {
        var amount = 0
        for (let i=0; i < dices.length; i++) { 
            if (dices[i] == face) { 
                amount += 1
            }
        }
        return getBetNaming(amount, face) 
    }

    // fet amount name
    function getAmountNaming(amount) {
        return Amounts.numbers[0] + " " + Amounts.showdown[amount-1]
    }

    // play a single dice sound  (amount of dice currently not used)
    function playDiceSound(amount) {
        diceaudio.currentTime = 0;
        diceaudio.play();
    }

     // play a single dice sound  (amount of dice currently not used)
     function playCupSound(amount) {
        var cupaudio = Math.floor(Math.random() * 2)
        if (cupaudio == 1) {
            cupaudio1.currentTime = 0;
            cupaudio1.play();
        } else {
            cupaudio2.currentTime = 0;
            cupaudio2.play();
        }
    }

    // sort array by key parameter asc 
    // https://koukia.ca/sorting-an-array-of-objects-with-jquery-d01e12047ce4
    function sortByKeyAsc(array, key) {
        return array.sort(function (a, b) {
            var x = a[key]; var y = b[key];
            return ((x > y) ? -1 : ((x < y) ? 1 : 0));
        });
    }

    //  generate player name html
    function getPlayerNameHTML(name) {
        return "<li class='name redtext'>" + name + "</li>";
    }
            
    // dice html
    function getDiceHTML(seat) {
        return "<li id='dice_container_" + seat + "' class='start_dice'> <div id='start_dice_" + seat + "' class='dice'> <div class='side'></div> <div class='side'></div> <div class='side'></div> <div class='side'></div> <div class='side'></div> <div class='side'></div> </div> </li>";
    }

    // audio handling
    var diceaudio = document.getElementById('dice-audio');
    diceaudio.volume = 0.5;
    var cupaudio1 = document.getElementById('cup1-audio');
    cupaudio1.volume = 0.7;
    var cupaudio2 = document.getElementById('cup2-audio');
    cupaudio2.volume = 0.7;

    // listen for NUI events
    window.addEventListener("message", function(event) {
        //show/hide the whole NUI 
        if (event.data.type === "ui") {
            display(event.data.status)
        } 
        else if (event.data.type === "gamestate") {
            if (event.data.state) {
                currentGame = event.data.state
                updatePlayer(currentGame.players)
            }
            if (event.data.playerId) { 
                myId = event.data.playerId
            }
        }
        else if (event.data.type === "ownhand") {
            showHand(event.data.state)
        }
        else if (event.data.type === "localization") {
            PlayerStates = event.data.playerstates
            Amounts      = event.data.amounts
            Faces        = event.data.faces
        }
        else if (event.data.type === "showBet") {
            showBet(event.data.state, event.data.showdown)
        }
        else if (event.data.type === "updateBet") {
            updateBet(event.data.amount, event.data.face)
        }
        else if (event.data.type === "CupSound") {
            playCupSound(event.data.state)
        }
        else if (event.data.type === "updateShowdownBet") {
            updateBet(event.data.amount)
        }        
    })

    //update player list
    function updatePlayer(players) {
        var playerHTML = ""
        $("#players").html(playerHTML)
        // playerlist needs to be sorted. So for that we build an Array out of that object
        var playerlist = []
        for (const [key, value] of Object.entries(players)) {
            value.id = key
            playerlist.push(value)
        }
        playerlist = sortByKeyAsc(playerlist, "seat");
        $.each( playerlist, function( _, data ) {
            // setting css classes to identify active, waiting and loser players
            var state       = ""
            var gamestate   = currentGame.state
            var playerstate = data.playerstate
            if      (playerstate == "player turn" && myId == data.id )          { state = "active yourself" } 
            else if (playerstate == "player turn"  && myId != data.id )         { state = "active otherplayer" } 
            else if (playerstate == "out")                                      { state = "out" } 
            // localozation of player states
            if      (playerstate == "idle wait")                                { playerstate = PlayerStates.idleWait; } 
            else if (playerstate == "start_dice")                               { playerstate = PlayerStates.initialDiceRoll + "<span class='animate__animated animate__bounce animate__delay-1s'>" + Faces.singular[data.initialDiceRoll-1] + "</span>"; }
            else if (playerstate == "player_order_" + data.position)            { playerstate = PlayerStates.playerPosition + "<span class='redtext'>" +  data.position + "</span>"; }
            else if (playerstate == "throwing remaining dice")                  { playerstate = PlayerStates.playerThrowDice; } 
            else if (playerstate == "move:MakeNewBet")                          { playerstate = PlayerStates.playerMakesBet + getBetNaming(currentGame.lastBet[0], currentGame.lastBet[1]) } 
            else if (playerstate == "move:ChallengeOldBet")                     { playerstate = PlayerStates.playerChallenge; } 
            else if (playerstate == "move:OnSpotBet")                           { playerstate = PlayerStates.playerOnSpot; } 
            else if (playerstate == "win")                                      { playerstate = PlayerStates.playerWins; }
            else if (playerstate == "revealdices" && gamestate   == "main")     { playerstate = PlayerStates.revealDices + getAmountOfChallengedDices(data.dices, currentGame.lastBet[1]) } 
            else if (playerstate == "revealdices" && gamestate   == "showdown") { playerstate = PlayerStates.revealDices + getAmountNaming(data.dices[0])} 
            else if (playerstate == "out")                                      { playerstate = PlayerStates.playerOut; } 
            else if (playerstate == "ready")                                    { playerstate = PlayerStates.playerIsReady; } 
            else if (playerstate == "showdown")                                 { playerstate = PlayerStates.showdown + "<span class='animate__animated animate__bounce animate__delay-1s'>" + Faces.singular[data.ShowdownDiceRoll-1] + "</span>";}
            else if (playerstate == "move:ShowDownBet")                         { playerstate = PlayerStates.showdownBet + getAmountNaming(data.currentBet[0]); } 
            else if (playerstate == "graveyard")                                { playerstate = PlayerStates.graveyard; } 
            else if (playerstate == "animation ready")                          { playerstate = PlayerStates.animReady; } 
            else if (playerstate == "graveyard ready")                          { playerstate = PlayerStates.graveyardReady; } 
            else if (playerstate == "waiting for turn") 
            {
                if (parseInt(currentGame.lastBet[2]) == data.id) {
                    playerstate = PlayerStates.madeLastBet + getBetNaming(currentGame.lastBet[0], currentGame.lastBet[1])
                    data.playerstate = "waiting for turn last player"
                } else {
                    playerstate = PlayerStates.generalWait; 
                }
            } 
            else if (data.playerstate == "player turn")             
            {
                if (myId == data.id) {
                    playerstate = PlayerStates.playerTurnMe; 
                } else {
                    playerstate = PlayerStates.playerTurnOther; 
                }
            } 
            // create the player box with info and append it to the main player container
            playerHTML = "<div class='player' id='player-"+data.id+"'><div id='player-"+data.id+"-pic' class='player-pic playerstate-"+ data.playerstate.replace(/\s+/g, '-').toLowerCase() +" "+ state +"'>" + data.seat + "</div><ul class='player-dice "+state+"' id='pDice-"+data.id+"'></ul><div class='playerinfo "+ state +"'><span>" + playerstate + "</span></div></div>"
            $("#players").append(playerHTML)
        });

        $.each( players, function( id, data ) {   
            var $pDice = $("#pDice-" + id);
            // append player information
            if (currentGame.state == "idle" || ( currentGame.state == "start" && data.playerstate == "idle wait")) {
                var playerName = getPlayerNameHTML(data.name)
                $pDice.html(playerName)
            } else if (currentGame.state == "start" && data.playerstate == "start_dice" ) {
                playDiceSound(1)
                var playerName = getDiceHTML(data.seat)
                $pDice.html(playerName)
                setTimeout(function() { 
                    $("#start_dice_" + data.seat).addClass("show-" + data.initialDiceRoll)
                    $("#dice_container_" + data.seat).addClass("animate__animated").addClass("animate__pulse")
                }, 10)
            } else if (currentGame.state == "showdown" && data.playerstate == "showdown" ) {
                playDiceSound(1)
                var playerName = getDiceHTML(data.seat)
                $pDice.html(playerName)
                setTimeout(function() { 
                    $("#start_dice_" + data.seat).addClass("show-" + data.ShowdownDiceRoll)
                    $("#dice_container_" + data.seat).addClass("animate__animated").addClass("animate__pulse")
                }, 10)
            } else if (currentGame.state == "start" && data.playerstate == "player_order_" + data.position ) {
                var playerName = getPlayerNameHTML(data.name)
                $pDice.html(playerName)
            } else if (currentGame.state == "main") {
                if (data.playerstate == "move:MakeNewBet") {
                    var playerName = getPlayerNameHTML(data.name) + "<li class='dicelist' id='dicelist-" + id + "'></li>"
                    var amount = data.currentBet[0]
                    var face = data.currentBet[1]
                    var dices = ""
                    for (let i=0; i < amount; i++) { dices = dices + "<img src='img/dices/dices_1/dice_" + face + ".png' class='currentbetdice' />" }
                    $pDice.html(playerName)
                    $("#dicelist-" + id).html(dices)
                } else if (data.playerstate == "waiting for turn last player" && parseInt(currentGame.lastBet[2]) == data.id) {
                    var playerName = getPlayerNameHTML(data.name) + "<li class='dicelist' id='dicelist-" + id + "'></li>"
                    var amount = currentGame.lastBet[0]
                    var face = currentGame.lastBet[1]
                    var dices = ""
                    for (let i=0; i < amount; i++) { dices = dices + "<img src='img/dices/dices_1/dice_" + face + ".png' class='currentbetdice'/>" }
                    $pDice.html(playerName)
                    $("#dicelist-" + id).html(dices)
                } else if (data.playerstate == "move:ChallengeOldBet") {
                    var playerName = getPlayerNameHTML(data.name)
                    $pDice.html(playerName)
                } else if (data.playerstate == "revealdices") {
                    var playerName = getPlayerNameHTML(data.name) + "<li class='dicelist' id='dicelist-" + id + "'></li>"
                    var dices = ""
                    for (let i=0; i < data.dices.length; i++) {
                        var animClass = ""
                        if (data.dices[i] == currentGame.lastBet[1]) { animClass = "animate__animated animate__infinite animate__pulse" }
                        dices = dices + "<img src='img/dices/dices_1/dice_" + data.dices[i] + ".png' class='currentbetdice " + animClass + "'/>"
                    }
                    $pDice.html(playerName)
                    $("#dicelist-" + id).html(dices)
                } else {
                    var playerName = getPlayerNameHTML(data.name)
                    $pDice.html(playerName)
                }
            } else if (currentGame.state == "showdown") {
                if (data.playerstate == "waiting for turn" || data.playerstate == "player turn" || data.playerstate == "move:ShowDownBet") {
                    var playerName = getPlayerNameHTML(data.name)
                    $pDice.html(playerName)
                } else if (data.playerstate == "revealdices") {
                    var playerName = getPlayerNameHTML(data.name) + "<li class='dicelist' id='dicelist-" + id + "'></li>"
                    var dices = "<img src='img/dices/dices_1/dice_" + data.dices[0] + ".png' class='currentbetdice'/>"
                    $pDice.html(playerName)
                    $("#dicelist-" + id).html(dices)
                } else {
                    var playerName = getPlayerNameHTML(data.name)
                    $pDice.html(playerName)
                }
            } else if (currentGame.state == "end") {
                var playerName = getPlayerNameHTML(data.name)
                $pDice.html(playerName)
            } 
        });
    }
})