	db 106,  90, 130, 110,  90, 154 ; 680 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db PSYCHIC, FLYING ; type
else
	db WATER, FLYING ; type
endc
	db 3 ; catch rate
	db 220 ; base exp
	db ALWAYS_ITEM_2, LUM_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for LUGIA, PRESSURE, PRESSURE, MULTISCALE
else
	abilities_for LUGIA, PRESSURE, DRIZZLE, MULTISCALE
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 3 SDf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, STEEL_WING, ROOST, DRAGON_PULSE, WATER_PULSE, AVALANCHE, GIGA_IMPACT, FLASH, THUNDER_WAVE, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL, AQUA_TAIL, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, HEADBUTT, HYPER_VOICE, ICY_WIND, IRON_HEAD, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, ZAP_CANNON, ZEN_HEADBUTT
	; end
