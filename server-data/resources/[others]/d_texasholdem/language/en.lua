Language["en"] = {
    --prompt names
    ["Title"] = "Texas Holdem",
    ["StartPrompt"] = "Play",
    ["InfoPrompt"] = "Rules",
    ["BetPrompt"] = "Value",
    ["PlaceBetPrompt"] = "Bet",
    ["RdyToPlayPrompt"] = "Ready",
    ["FoldPrompt"] = "Fold",
    ["SurrenderPrompt"] = "Surrender",
    ["RebuyPrompt"] = "Rebuy",
    ["ChooseBlindPrompt"] = "Small Blind: ~t2~$~q~{AMOUNT}",
    ["ShowCardsPrompt"] = "Cards",
    ["StartMoney"] = "\n~t2~BuyIn Money: ~q~",
    ["BetTextSet"] = "Set",
    ["BetTextCheck"] = "Check",
    ["BetTextAllIn"] = "All-In",
    ["BetTextCall"] = "Call",
    ["BetTextRaise"] = "Raise",
    --Notifications
    ["CantJoinTable"] = "~t8~The poker table is already full!~q~",
    ["ActionReminder"] = "~t8~Make your turn or you'll be kicked off the table and lose your bet money!~q~",
    ["ActionKick"] = "~t8~You have been kicked off the table...~q~",
    ["TakeAction"] = "~t8~Take an action~q~",
    ["NoBuyInMoney"] = "~t8~Unfortunately, you don't have enough money to take a seat!~q~",
    ["NoReBuyMoney"] = "~t8~Unfortunately, you don't have enough money.~q~",
    ["PlaceBet"] = "~t8~Place your bet~q~",
    ["SetBlindValue"] = "~t8~Choose the value of the small blind~q~",
    ["PlayerPlacedBet"] = "~t8~{PLAYER_NAME}~q~ puts~t6~ {MONEY}$~q~ in the ~t2~{POT_NAME}~q~.",
    ["PlayerFolded"] = "~t8~{PLAYER_NAME}~q~ folded.",
    ["PlayerChecked"] = "~t8~{PLAYER_NAME}~q~ checked.",
    ["PlayerWinsPot"] = "~t8~{PLAYER_NAME}~q~ won ~t6~${MONEY}~q~ of the ~t2~{POT_NAME}~q~.",
    ["PlayerTiePot"] = "~t8~{PLAYER_NAME}~q~ won jeweils ~t6~${MONEY}~q~ of the ~t2~{POT_NAME}~q~.",
    ["GeneralPot"] = "Pot",
    --Card stuff
    ["cardLabels"] = {
        ["2"] = {"two","twos"},
        ["3"] = {"three","threes"},
        ["4"] = {"four","fours"},
        ["5"] = {"five","fives"},
        ["6"] = {"six","sixes"},
        ["7"] = {"seven","sevens"},
        ["8"] = {"eight","eights"},
        ["9"] = {"nine","nines"},
        ["10"] ={"ten","tens"},
        ["J"] = {"jack","jacks"},
        ["Q"] = {"queen","queens"},
        ["K"] = {"king","kings"},
        ["A"] = {"ace","ace"}
    },
    --labels for hand ranks
    ["RoyalFlush"] = "Royal Flush",
    ["StraightFlush"] = "Straight Flush",
    ["FourOfaKind"] = "Four of a Kind, {CARD_LABEL}",
    ["FullHouse"] = "Full House",
    ["Flush"] = "Flush",
    ["Street"] = "Street, highest card {CARD_LABEL}",
    ["ThreeOfaKind"] = "Three of a Kind, {CARD_LABEL}",
    ["TwoPairs"] = "Two pairs, {CARD_LABEL1} and {CARD_LABEL2}",
    ["OnePair"] = "One pair of {CARD_LABEL}",
    ["HighCard"] = "{CARD_LABEL} as highest card",
    --NUI stuff
    ["NoPlayerNamePrefix"] = "ID: {SERVER_ID}",
    ["MainPot"] = "Main Pot",
    ["SidePot"] = "Side Pot",
    ["PotWinning"] = "{CARD_LABEL}, won ${MONEY}",
    ["PotTie"] = "{CARD_LABEL}, draw ${MONEY}",
    ["WaitingForStart"] = "Wait…",
    ["NotRdy"] = "not ready",
    ["IsRdy"] = "ready",
    ["PlayersMove"] = "Your turn…",
    ["OtherPlayersMove"] = "'s turn…",
    ["WaitingForPlayer"] = "waiting for players…",
    ["ShuffleDeck"] = "shuffle deck",
    ["WaitingForCards"] = "waiting for cards…",
    ["MoveCheck"] = "checked",
    ["MoveSet"] = "set",
    ["MoveCall"] = "called",
    ["MoveFold"] = "folded",
    ["MoveRaise"] = "raised",
    ["MoveAllin"] = "All-In",
    --Modal Stuff
    ["ModalClose"] = "Close",
    ["ModalBack"] = "Back",
    ["ModalCards"] = "Cards",
    ["Rules"] = "The goal of poker is to win the pot by having the best cards at the end of the game.<br/><br/>"..
                "Over several rounds, cards are dealt to the center of the table and players can place their bets.<br/>"..
                "A player's hand is a combination of 5 cards, 2 from their own hand and 3 additional ones from the middle of the table."..
                "</div><hr style='border:0px;border-top:2px solid #0a0a0a!important;border-bottom:2px solid #2a2a2a!important;margin-left:-11px!important;margin-right:-11px!important'/>",
    ["CardValues"] = "<hr style='border:0px;border-top:2px solid #0a0a0a!important;border-bottom:2px solid #2a2a2a!important;margin-left:-11px!important;margin-right:-11px!important'/>"..
                "<div style='padding-bottom:20px;height:150px;'>Kombinationen:<br/>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Royal Flush</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.RoyalFlush.."</div>"..
                "<div style='float:left;width:40%;height:50px;line-height:50px;text-align:left'>Straight Flush</div><div style='float:right;width:60%;text-align:right'>"..TexasHoldemConfig.StraightFlush.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Four of a Kind</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.FourKind.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Full House</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.FullHouse.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Flush</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.Flush.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Street</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.Street.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Three of a Kind</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.ThreeKind.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>Two pairs</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.TwoPairs.."</div>"..
                "<div style='float:left;width:30%;height:50px;line-height:50px;text-align:left'>One pair</div><div style='float:right;width:70%;text-align:right'>"..TexasHoldemConfig.OnePair.."</div>"..
                "<div style='float:left;width:40%;height:50px;line-height:50px;text-align:left'>Highest card</div><div style='float:right;width:60%;text-align:right'>"..TexasHoldemConfig.Ace.."</div>"..
                "<br/>"..
                "</div><hr style='border:0px;border-top:2px solid #0a0a0a!important;border-bottom:2px solid #2a2a2a!important;margin-left:-11px!important;margin-right:-11px!important'/>",
}