DEF NUM_ODD_EGGS EQU 10
DEF ODD_EGG_LENGTH EQU 10

OddEggProbabilities:
	table_width 1
	db 10
	db 24
	db 38
	db 48
	db 60
	db 72
	db 84
	db 91
	db 93
	db 100
	assert_table_length NUM_ODD_EGGS

OddEggMoves:
	dw THUNDERSHOCK, CHARM, DIZZY_PUNCH, NO_MOVE
	dw TACKLE, CHARM, DIZZY_PUNCH, NO_MOVE
	dw SING, CHARM, DIZZY_PUNCH, NO_MOVE
	dw TACKLE, RAGE, FORESIGHT, DIZZY_PUNCH
	dw TACKLE, LICK, DIZZY_PUNCH, NO_MOVE
	dw QUICK_ATTACK, LEER, DIZZY_PUNCH, NO_MOVE
	dw HAZE, LEER, DIZZY_PUNCH, NO_MOVE
	dw BARRIER, CONFUSION, TACKLE, DIZZY_PUNCH
	dw MINIMIZE, TACKLE, METRONOME, DIZZY_PUNCH
	dw SWEET_KISS, METRONOME, TACKLE, DIZZY_PUNCH
	dw GROWL, CHARM, MOONBLAST, AEROBLAST

OddEggs:
	table_width ODD_EGG_LENGTH
	dp PICHU, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp CLEFFA, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp IGGLYBUFF, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp TYROGUE, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp SMOOCHUM, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp ELEKID, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp MAGBY, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp MIME_JR_, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp HAPPINY, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	dp MUNCHLAX, IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality

	assert_table_length NUM_ODD_EGGS

MystriEgg:
	dp TOGEPI, FEMALE | IS_EGG_MASK | PLAIN_FORM
	db NO_MOVE, NO_MOVE, NO_MOVE, NO_MOVE ; Moves, will be filled on load
	db $FF, $FF, $FF ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY ; Personality
