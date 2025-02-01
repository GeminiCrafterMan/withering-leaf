if DEF(FAITHFUL)
	db 100,  50,  80,  50,  60,  80 ; 420 BST
	;   hp  atk  def  spe  sat  sdf
else
	db 100,  50,  80,  50,  90,  80 ; 450 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WATER, FAIRY ; type
	db 75 ; catch rate
if DEF(FAITHFUL)
	db 153 ; base exp
else
	db 183 ; base exp
endc
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for AZUMARILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	ev_yield 3 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, FOCUS_BLAST, SCALD, WATER_PULSE, GIGA_IMPACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, AQUA_TAIL, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
