Translations = {}

Translations['en'] = {
	["good"] = "Won",
	["bad"] = "Lost", 
	["impartial"] = "Draw",

    ['press_e_to_play']       = 'Press ~pa~E~q~ to play Blackjack.',
    ['dealer_waiting_bets']         = 'The dealer is waiting for bets.',
    
    ['bets_amount']         = 'Bet $',

    ['button_leave_table'] = 'Give up',
    ['button_amount_bet'] = 'Amount',
    ['button_place_bet'] = 'Bet',

    ['button_hit_game'] = 'Hit',
    ['button_double_game'] = 'Double',
    ['button_stand_game'] = 'Stand',

    ['you_dont_enough_money'] = "You don't have enough money for the bet.",
    ['you_dont_enough_money_double'] = "You don't have enough money to double down.",
    ['make_your_game'] = "MAKE YOUR PLAY | TIME LEFT: ",

    ['player_bets'] = "$ %d bet made",

    ['waiting_player'] =  "[ %s ] Waiting your turn",
    ['waiting_player_action'] =  "[ %s ] Waiting for action",

    
    ['player_brust_with'] =  "Bust with [ %s ]",

    ['player_win_with'] =  "%s with [ %d ]",

    ["let_blackjack"] = "Blackjack!",

    ["idle"] = "",
    ["waiting_players"] = "Waiting for all players to be ready",
    ["betting_round"] = 'The betting round is about to begin...',
    ["place_bets"] = "Make your bets.",
    ["dealing_hand"] = "Distributing the cards",    
    ["dealer_actions"] = "Dealer choosing his stocks",
    ["dealer_checking"] = "The dealer has a 10, he is checking his second card.",
    ["awarding"] = "End of the round, the dealer is picking up the cards.",
    ["dealer_have"] = "Dealer hand [ %d ] ",

    ['you_place_bet'] = "You bet %sx chips",
    ['you_win_amount'] = "You received %sx chips",
}

Translations['pt'] = {
    ["good"] = "Ganhou",
	["bad"] = "Perdeu", 
	["impartial"] = "Empatou",

    ['press_e_to_play']       = 'Aperte ~pa~E~q~ para jogar Blackjack.',
    ['dealer_waiting_bets']         = 'O dealer está aguardando as apostas.',
    
    ['bets_amount']         = 'Apostar $',

    ['button_leave_table'] = 'Levantar',
    ['button_amount_bet'] = 'Quantidade',
    ['button_place_bet'] = 'Apostar',

    ['button_hit_game'] = 'Pedir',
    ['button_double_game'] = 'Dobrar',
    ['button_stand_game'] = 'Parar',

    ['you_dont_enough_money'] = "Você não tem dinheiro suficientes para a aposta.",
    ['you_dont_enough_money_double'] = "Você não tem dinheiro suficiente para dobrar.",
    ['make_your_game'] = "FAÇA SUA JOGADA | TEMPO RESTANTE: ",

    ['player_bets'] = "$ %d Aposta feita",

    ['waiting_player'] =  "[ %s ] Aguardando vez",
    ['waiting_player_action'] =  "[ %s ] Aguardando uma ação",

    
    ['player_brust_with'] =  "Estourou com [ %s ]",

    ['player_win_with'] =  "%s com [ %d ]",

    ["let_blackjack"] = "Blackjack!",

    ["idle"] = "",
    ["waiting_players"] = "Aguardando todos os jogadores estarem prontos",
    ["betting_round"] = 'A rodada de apostas está prestes a começar...',
    ["place_bets"] = "Façam suas apostas.",
    ["dealing_hand"] = "Distribuindo as cartas",    
    ["dealer_actions"] = "Dealer escolhendo suas ações",
    ["dealer_checking"] = "O dealer possúi um 10, ele está checando sua segunda carta.",
    ["awarding"] = "Fim da rodada, o dealer está recolhendo as cartas.",
    ["dealer_have"] = "Cartas do dealer [ %d ] ",

    ['you_place_bet'] = "Você apostou %sx fichas",
    ['you_win_amount'] = "Você recebeu %sx fichas",
}

Locale = Translations[language_selected]

resultNames = {
	["good"] = Locale['good'],
	["bad"] =  Locale['bad'],
	["impartial"] =  Locale['impartial'],
}