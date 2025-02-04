MACRO move
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power (0 for status moves, 1 for nonstandard base power)
	db \3 ; type
	db \4 ; accuracy (-1 for moves that ignore accuracy checks)
	db \5 ; pp
	db \6 ; effect chance
	db \7 ; category
ENDM

Moves::
	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries NUM_ATTACKS, Moves1
	indirect_table_end
Moves1:
; entries correspond to move ids (see constants/move_constants.asm)
	move EFFECT_CONDITIONAL_BOOST,  55, FLYING,    100, 15,   0, PHYSICAL ; ACROBATICS
	move EFFECT_NORMAL_HIT,         50, FIGHTING,  100, 25,   0, PHYSICAL ; KARATE_CHOP
	move EFFECT_MULTI_HIT,          15, NORMAL,     85, 10,   0, PHYSICAL ; DOUBLE_SLAP
	move EFFECT_ALWAYS_HIT,         60, FLYING,     -1, 20,   0, PHYSICAL ; AERIAL_ACE
	move EFFECT_NORMAL_HIT,         80, DRAGON,    100, 15,   0, PHYSICAL ; DRAGON_CLAW
	move EFFECT_PAY_DAY,            40, NORMAL,    100, 20,   0, PHYSICAL ; PAY_DAY
	move EFFECT_BURN_HIT,           75, FIRE,      100, 15,  10, PHYSICAL ; FIRE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,       100, 15,  10, PHYSICAL ; ICE_PUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC,  100, 15,  10, PHYSICAL ; THUNDERPUNCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,    100, 35,   0, PHYSICAL ; SCRATCH
	move EFFECT_NORMAL_HIT,         80, BUG,       100, 15,   0, PHYSICAL ; X_SCISSOR
	move EFFECT_NORMAL_HIT,         70, DARK,      100, 15,   0, PHYSICAL ; NIGHT_SLASH
	move EFFECT_FLINCH_HIT,         75, FLYING,     95, 15,  30, SPECIAL ; AIR_SLASH
	move EFFECT_ATTACK_UP_2,         0, NORMAL,     -1, 20,   0, STATUS ; SWORDS_DANCE
if DEF(FAITHFUL)
	move EFFECT_NORMAL_HIT,         50, NORMAL,     95, 30,   0, PHYSICAL ; CUT
else
	move EFFECT_NORMAL_HIT,         60, STEEL,     100, 30,   0, PHYSICAL ; CUT
endc
	move EFFECT_GUST,               40, FLYING,    100, 35,   0, SPECIAL ; GUST
	move EFFECT_NORMAL_HIT,         60, FLYING,    100, 35,   0, PHYSICAL ; WING_ATTACK
	move EFFECT_SUCKER_PUNCH,       70, DARK,      100,  5,   0, PHYSICAL ; SUCKER_PUNCH
if DEF(FAITHFUL)
	move EFFECT_FLY,                90, FLYING,     95, 15,   0, PHYSICAL ; FLY
else
	move EFFECT_FLY,                90, FLYING,    100, 15,   0, PHYSICAL ; FLY
endc
	move EFFECT_NORMAL_HIT,         80, FAIRY,     100, 10,   0, SPECIAL ; DAZZLINGLEAM
	move EFFECT_SWITCH_HIT,         70, ELECTRIC,  100, 20,   0, SPECIAL ; VOLT_SWITCH
	move EFFECT_NORMAL_HIT,         45, GRASS,     100, 25,   0, PHYSICAL ; VINE_WHIP
	move EFFECT_STOMP,              65, NORMAL,    100, 20,  30, PHYSICAL ; STOMP
	move EFFECT_DOUBLE_HIT,         30, FIGHTING,  100, 30,   0, PHYSICAL ; DOUBLE_KICK
	move EFFECT_FLARE_BLITZ,       120, FIRE,      100, 15,  10, PHYSICAL ; FLARE_BLITZ
	move EFFECT_NORMAL_HIT,        100, ROCK,       80,  5,   0, PHYSICAL ; STONE_EDGE
	move EFFECT_SP_DEF_DOWN_HIT,   120, FIGHTING,   70,  5,  10, SPECIAL ; FOCUS_BLAST
	move EFFECT_TOXIC_SPIKES,        0, POISON,     -1, 20,   0, STATUS ; TOXIC_SPIKES
	move EFFECT_FLINCH_HIT,         70, NORMAL,    100, 15,  30, PHYSICAL ; HEADBUTT
	move EFFECT_NORMAL_HIT,         65, NORMAL,    100, 25,   0, PHYSICAL ; HORN_ATTACK
	move EFFECT_TRICK,               0, PSYCHIC,   100, 10,   0, STATUS ; TRICK
	move EFFECT_CONDITIONAL_BOOST,  65, GHOST,     100, 10,   0, SPECIAL ; HEX
	move EFFECT_NORMAL_HIT,         40, NORMAL,    100, 35,   0, PHYSICAL ; TACKLE
	move EFFECT_BODY_SLAM,          85, NORMAL,    100, 15,  30, PHYSICAL ; BODY_SLAM
	move EFFECT_TRAP,               15, NORMAL,     90, 20,   0, PHYSICAL ; WRAP
if DEF(FAITHFUL)
	move EFFECT_RECOIL_HIT,         90, NORMAL,     85, 20,   0, PHYSICAL ; TAKE_DOWN
else
	move EFFECT_RECOIL_HIT,         90, NORMAL,    100, 15,   0, PHYSICAL ; TAKE_DOWN
endc
	move EFFECT_RAMPAGE,           120, NORMAL,    100, 10,   0, PHYSICAL ; THRASH
	move EFFECT_RECOIL_HIT,        120, NORMAL,    100, 15,   0, PHYSICAL ; DOUBLE_EDGE
	move EFFECT_HAIL,                0, ICE,        -1, 10,   0, STATUS ; HAIL
	move EFFECT_POISON_HIT,         15, POISON,    100, 35,  30, PHYSICAL ; POISON_STING
	move EFFECT_SWITCH_HIT,         70, BUG,       100, 20,   0, PHYSICAL ; U_TURN
	move EFFECT_MULTI_HIT,          25, BUG,        95, 20,   0, PHYSICAL ; PIN_MISSILE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,    100, 30,   0, STATUS ; LEER
	move EFFECT_FLINCH_HIT,         60, DARK,      100, 25,  30, PHYSICAL ; BITE
	move EFFECT_ATTACK_DOWN,         0, NORMAL,    100, 40,   0, STATUS ; GROWL
	move EFFECT_ROAR,                0, NORMAL,     -1, 20,   0, STATUS ; ROAR
if DEF(FAITHFUL)
	move EFFECT_SLEEP,               0, NORMAL,     55, 15,   0, STATUS ; SING
	move EFFECT_CONFUSE,             0, NORMAL,     55, 20,   0, STATUS ; SUPERSONIC
else
	move EFFECT_SLEEP,               0, NORMAL,     75, 15,   0, STATUS ; SING
	move EFFECT_CONFUSE,             0, NORMAL,     65, 20,   0, STATUS ; SUPERSONIC
endc
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,     90, 20,   0, SPECIAL ; SONIC_BOOM
	move EFFECT_DISABLE,             0, NORMAL,    100, 20,   0, STATUS ; DISABLE
	move EFFECT_SP_DEF_DOWN_HIT,    40, POISON,    100, 30,  10, SPECIAL ; ACID
	move EFFECT_BURN_HIT,           40, FIRE,      100, 25,  10, SPECIAL ; EMBER
	move EFFECT_BURN_HIT,           90, FIRE,      100, 15,  10, SPECIAL ; FLAMETHROWER
	move EFFECT_CALM_MIND,           0, PSYCHIC,    -1, 20,   0, STATUS ; CALM_MIND
	move EFFECT_NORMAL_HIT,         40, WATER,     100, 25,   0, SPECIAL ; WATER_GUN
	move EFFECT_NORMAL_HIT,        110, WATER,      80,  5,   0, SPECIAL ; HYDRO_PUMP
	move EFFECT_NORMAL_HIT,         90, WATER,     100, 15,   0, SPECIAL ; SURF
	move EFFECT_FREEZE_HIT,         90, ICE,       100, 10,  10, SPECIAL ; ICE_BEAM
	move EFFECT_FREEZE_HIT,        110, ICE,        70,  5,  10, SPECIAL ; BLIZZARD
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC,   100, 20,  10, SPECIAL ; PSYBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,     100, 20,  10, SPECIAL ; BUBBLE_BEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,       100, 20,  10, SPECIAL ; AURORA_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,     90,  5,   0, SPECIAL ; HYPER_BEAM
	move EFFECT_NORMAL_HIT,         35, FLYING,    100, 35,   0, PHYSICAL ; PECK
	move EFFECT_NORMAL_HIT,         80, FLYING,    100, 20,   0, PHYSICAL ; DRILL_PECK
	move EFFECT_CLOSE_COMBAT,      120, FIGHTING,  100,  5,   0, PHYSICAL ; CLOSE_COMBAT
	move EFFECT_LOW_KICK,            1, FIGHTING,  100, 20,  30, PHYSICAL ; LOW_KICK
	move EFFECT_COUNTER,             1, FIGHTING,   -1, 20,   0, PHYSICAL ; COUNTER
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING,  100, 20,   0, PHYSICAL ; SEISMIC_TOSS
if DEF(FAITHFUL)
	move EFFECT_NORMAL_HIT,         80, NORMAL,    100, 15,   0, PHYSICAL ; STRENGTH
else
	move EFFECT_NORMAL_HIT,         80, FIGHTING,  100, 15,   0, PHYSICAL ; STRENGTH
endc
	move EFFECT_LEECH_HIT,          20, GRASS,     100, 25,   0, SPECIAL ; ABSORB
	move EFFECT_LEECH_HIT,          40, GRASS,     100, 15,   0, SPECIAL ; MEGA_DRAIN
	move EFFECT_LEECH_SEED,          0, GRASS,      90, 10,   0, STATUS ; LEECH_SEED
	move EFFECT_GROWTH,              0, NORMAL,     -1, 20,   0, STATUS ; GROWTH
	move EFFECT_NORMAL_HIT,         55, GRASS,      95, 25,   0, PHYSICAL ; RAZOR_LEAF
	move EFFECT_SOLAR_BEAM,        120, GRASS,     100, 10,   0, SPECIAL ; SOLAR_BEAM
	move EFFECT_POISON,              0, POISON,     75, 35,   0, STATUS ; POISONPOWDER
	move EFFECT_PARALYZE,            0, GRASS,      75, 30,   0, STATUS ; STUN_SPORE
	move EFFECT_SLEEP,               0, GRASS,      75, 15,   0, STATUS ; SLEEP_POWDER
	move EFFECT_RAMPAGE,           120, GRASS,     100, 10,   0, SPECIAL ; PETAL_DANCE
	move EFFECT_SPEED_DOWN_2,        0, BUG,        95, 40,   0, STATUS ; STRING_SHOT
	move EFFECT_STATIC_DAMAGE,      40, DRAGON,    100, 10,   0, SPECIAL ; DRAGON_RAGE
if DEF(FAITHFUL)
	move EFFECT_TRAP,               35, FIRE,       85, 15,   0, SPECIAL ; FIRE_SPIN
else
	move EFFECT_TRAP,               40, FIRE,       90, 15,   0, SPECIAL ; FIRE_SPIN
endc
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC,  100, 30,  10, SPECIAL ; THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       90, ELECTRIC,  100, 15,  10, SPECIAL ; THUNDERBOLT
	move EFFECT_PARALYZE,            0, ELECTRIC,   90, 20,   0, STATUS ; THUNDER_WAVE
	move EFFECT_THUNDER,           110, ELECTRIC,   70, 10,  30, SPECIAL ; THUNDER
	move EFFECT_NORMAL_HIT,         50, ROCK,       90, 15,   0, PHYSICAL ; ROCK_THROW
	move EFFECT_EARTHQUAKE,        100, GROUND,    100, 10,   0, PHYSICAL ; EARTHQUAKE
	move EFFECT_CONDITIONAL_BOOST,  60, ICE,       100, 10,   0, PHYSICAL ; AVALANCHE
if DEF(FAITHFUL)
	move EFFECT_FLY,                80, GROUND,    100, 10,   0, PHYSICAL ; DIG
else
	move EFFECT_FLY,                90, GROUND,    100, 10,   0, PHYSICAL ; DIG
endc
	move EFFECT_TOXIC,               0, POISON,     90, 10,   0, STATUS ; TOXIC
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC,   100, 25,  10, SPECIAL ; CONFUSION
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC,   100, 10,  10, SPECIAL ; PSYCHIC_M
	move EFFECT_SLEEP,               0, PSYCHIC,    60, 20,   0, STATUS ; HYPNOSIS
	move EFFECT_HONE_CLAWS,          0, DARK,       -1, 40,   0, STATUS ; HONE_CLAWS
	move EFFECT_SPEED_UP_2,          0, PSYCHIC,    -1, 30,   0, STATUS ; AGILITY
	move EFFECT_PRIORITY_HIT,       40, NORMAL,    100, 30,   0, PHYSICAL ; QUICK_ATTACK
	move EFFECT_RAGE,               20, NORMAL,    100, 20,   0, PHYSICAL ; RAGE
	move EFFECT_TELEPORT,            0, PSYCHIC,    -1, 20,   0, STATUS ; TELEPORT
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,     100, 15,   0, SPECIAL ; NIGHT_SHADE
	move EFFECT_NORMAL_HIT,         85, DRAGON,    100, 10,   0, SPECIAL ; DRAGON_PULSE
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,     85, 40,   0, STATUS ; SCREECH
	move EFFECT_EVASION_UP,          0, NORMAL,     -1, 15,   0, STATUS ; DOUBLE_TEAM
	move EFFECT_HEAL,                0, NORMAL,     -1, 5,    0, STATUS ; RECOVER
	move EFFECT_MULTI_HIT,          25, ROCK,       90, 25,   0, PHYSICAL ; ROCK_BLAST
	move EFFECT_MINIMIZE,            0, NORMAL,     -1, 10,   0, STATUS ; MINIMIZE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,    100, 20,   0, STATUS ; SMOKESCREEN
	move EFFECT_CONFUSE,             0, GHOST,     100, 10,   0, STATUS ; CONFUSE_RAY
	move EFFECT_NORMAL_HIT,         90, WATER,      90, 10,   0, PHYSICAL ; AQUA_TAIL
	move EFFECT_DEFENSE_CURL,        0, NORMAL,     -1, 40,   0, STATUS ; DEFENSE_CURL
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC,    -1, 20,   0, STATUS ; BARRIER
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC,    -1, 30,   0, STATUS ; LIGHT_SCREEN
	move EFFECT_HAZE,                0, ICE,        -1, 30,   0, STATUS ; HAZE
	move EFFECT_REFLECT,             0, PSYCHIC,    -1, 20,   0, STATUS ; REFLECT
	move EFFECT_FOCUS_ENERGY,        0, NORMAL,     -1, 30,   0, STATUS ; FOCUS_ENERGY
	move EFFECT_SP_DEF_DOWN_HIT,    80, STEEL,     100, 10,  10, SPECIAL ; FLASH_CANNON
if DEF(FAITHFUL)
	move EFFECT_METRONOME,           0, NORMAL,     -1, 10,   0, STATUS ; METRONOME
else
	move EFFECT_METRONOME,           0, UNKNOWN_T,  -1, 20,   0, STATUS ; METRONOME
endc
if DEF(FAITHFUL)
	move EFFECT_BURN_HIT,           80, WATER,     100, 15,  30, SPECIAL ; SCALD
else
	move EFFECT_BURN_HIT,           70, WATER,     100, 15,  30, SPECIAL ; SCALD
endc
	move EFFECT_TRICK_ROOM,          0, PSYCHIC,    -1,  5,   0, STATUS ; TRICK_ROOM
	move EFFECT_SKILL_SWAP,          0, PSYCHIC,    -1, 10,   0, STATUS ; SKILL_SWAP
	move EFFECT_PARALYZE_HIT,       30, GHOST,     100, 30,  30, PHYSICAL ; LICK
	move EFFECT_POISON_HIT,        120, POISON,     80,  5,  30, PHYSICAL ; GUNK_SHOT
	move EFFECT_CONDITIONAL_BOOST,  65, POISON,    100, 10,   0, SPECIAL ; VENOSHOCK
	move EFFECT_SP_DEF_DOWN_HIT,    90, GROUND,    100, 10,  10, SPECIAL ; EARTH_POWER
	move EFFECT_BURN_HIT,          110, FIRE,       85,  5,  10, SPECIAL ; FIRE_BLAST
	move EFFECT_FLINCH_HIT,         80, WATER,     100, 15,  20, PHYSICAL ; WATERFALL
	move EFFECT_FLINCH_HIT,         85, ICE,        90, 10,  30, PHYSICAL ; ICICLE_CRASH
	move EFFECT_ALWAYS_HIT,         60, NORMAL,     -1, 20,   0, SPECIAL ; SWIFT
	move EFFECT_FLINCH_HIT,         80, STEEL,     100, 15,  30, PHYSICAL ; IRON_HEAD
	move EFFECT_MULTI_HIT,          25, ICE,       100, 30,   0, PHYSICAL ; ICICLE_SPEAR
	move EFFECT_SPEED_DOWN_HIT,     60, GROUND,    100, 20, 100, PHYSICAL ; BULLDOZE
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC,    -1, 20,   0, STATUS ; AMNESIA
	move EFFECT_ROOST,               0, FLYING,     -1, 5,    0, STATUS ; ROOST
	move EFFECT_HEAL,                0, NORMAL,     -1, 10,   0, STATUS ; FRESH_SNACK
	move EFFECT_JUMP_KICK,         130, FIGHTING,   90, 10,   0, PHYSICAL ; HI_JUMP_KICK
	move EFFECT_PARALYZE,            0, NORMAL,    100, 30,   0, STATUS ; GLARE
	move EFFECT_DREAM_EATER,       100, PSYCHIC,   100, 15,   0, SPECIAL ; DREAM_EATER
	move EFFECT_POISON_HIT,         80, POISON,    100, 20,  30, PHYSICAL ; POISON_JAB
	move EFFECT_PRIORITY_HIT,       40, STEEL,     100, 30,   0, PHYSICAL ; BULLET_PUNCH
	move EFFECT_LEECH_HIT,          80, BUG,       100, 10,   0, PHYSICAL ; LEECH_LIFE
	move EFFECT_LEECH_HIT,          50, FAIRY,     100, 10,   0, SPECIAL ; DRAINING_KISS
	move EFFECT_RECOIL_HIT,        120, FLYING,    100, 15,   0, PHYSICAL ; BRAVE_BIRD
	move EFFECT_TRANSFORM,           0, NORMAL,     -1, 10,   0, STATUS ; TRANSFORM
	move EFFECT_CONFUSE_HIT,        60, WATER,     100, 20,  20, SPECIAL ; WATER_PULSE
	move EFFECT_CONFUSE_HIT,        70, NORMAL,    100, 10,  20, PHYSICAL ; DIZZY_PUNCH
	move EFFECT_SLEEP,               0, GRASS,     100, 15,   0, STATUS ; SPORE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,    100, 20,   0, STATUS ; FLASH
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,   100, 20,  10, SPECIAL ; EXTRASENSORY
	move EFFECT_SPLASH,              0, NORMAL,     -1, 40,   0, STATUS ; SPLASH
	move EFFECT_DRAGON_DANCE,        0, DRAGON,    100, 20,   0, STATUS ; DRAGON_DANCE
if DEF(FAITHFUL)
	move EFFECT_NORMAL_HIT,        100, WATER,      90, 10,   0, PHYSICAL ; CRABHAMMER
else
	move EFFECT_NORMAL_HIT,        100, WATER,      95, 10,   0, PHYSICAL ; CRABHAMMER
endc
	move EFFECT_EXPLOSION,         250, NORMAL,    100,  5,   0, PHYSICAL ; EXPLOSION
if DEF(FAITHFUL)
	move EFFECT_MULTI_HIT,          18, NORMAL,     80, 15,   0, PHYSICAL ; FURY_STRIKES
else
	move EFFECT_MULTI_HIT,          20, NORMAL,     85, 15,   0, PHYSICAL ; FURY_STRIKES
endc
	move EFFECT_DOUBLE_HIT,         50, GROUND,     90, 10,   0, PHYSICAL ; BOOMERANG
	move EFFECT_HEAL,                0, PSYCHIC,    -1, 5,    0, STATUS ; REST
	move EFFECT_FLINCH_HIT,         75, ROCK,       90, 10,  30, PHYSICAL ; ROCK_SLIDE
	move EFFECT_FLINCH_HIT,         80, NORMAL,     90, 15,  10, PHYSICAL ; HYPER_FANG
	move EFFECT_BULK_UP,             0, FIGHTING,  100, 20,   0, STATUS ; BULK_UP
	move EFFECT_CONVERSION,          0, NORMAL,     -1, 30,   0, STATUS ; CONVERSION
	move EFFECT_TRI_ATTACK,         80, NORMAL,    100, 10,  20, SPECIAL ; TRI_ATTACK
	move EFFECT_SUPER_FANG,          1, NORMAL,     90, 10,   0, PHYSICAL ; SUPER_FANG
	move EFFECT_NORMAL_HIT,         70, NORMAL,    100, 20,   0, PHYSICAL ; SLASH
	move EFFECT_SUBSTITUTE,          0, NORMAL,     -1, 10,   0, STATUS ; SUBSTITUTE
	move EFFECT_HYPER_BEAM,        150, NORMAL,     90,  5,   0, PHYSICAL ; GIGA_IMPACT
	move EFFECT_SKETCH,              0, NORMAL,     -1,  1,   0, STATUS ; SKETCH
	move EFFECT_LEECH_HIT,          75, FIGHTING,  100, 10,   0, PHYSICAL ; DRAIN_PUNCH
	move EFFECT_THIEF,              60, DARK,      100, 25, 100, PHYSICAL ; THIEF
	move EFFECT_BURN,                0, FIRE,       85, 15,   0, STATUS ; WILL_O_WISP
	move EFFECT_FLINCH_HIT,         80, PSYCHIC,    90, 15,  20, PHYSICAL ; ZEN_HEADBUTT
	move EFFECT_CONDITIONAL_BOOST,  70, NORMAL,    100, 20,   0, PHYSICAL ; FACADE
	move EFFECT_SPEED_UP_HIT,       50, FIRE,      100, 20, 100, PHYSICAL ; FLAME_CHARGE
	move EFFECT_NORMAL_HIT,         90, NORMAL,    100, 10,   0, SPECIAL ; HYPER_VOICE
	move EFFECT_CURSE,               0, GHOST,      -1, 10,   0, STATUS ; CURSE
	move EFFECT_GYRO_BALL,           1, STEEL,     100,  5,   0, PHYSICAL ; GYRO_BALL
	move EFFECT_SP_DEF_DOWN_HIT,    90, GRASS,     100, 10,  10, SPECIAL ; ENERGY_BALL
	move EFFECT_NORMAL_HIT,        100, FLYING,     95,  5,   0, SPECIAL ; AEROBLAST
	move EFFECT_NORMAL_HIT,         80, GRASS,     100, 15,   0, PHYSICAL ; SEED_BOMB
	move EFFECT_REVERSAL,            1, FIGHTING,  100, 15,   0, PHYSICAL ; REVERSAL
	move EFFECT_FLINCH_HIT,         30, GHOST,     100, 15,  30, PHYSICAL ; ASTONISH
	move EFFECT_PRIORITY_HIT,       40, ICE,       100, 30,   0, PHYSICAL ; ICE_SHARD
	move EFFECT_PROTECT,             0, NORMAL,     -1, 10,   0, STATUS ; PROTECT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING,  100, 30,   0, PHYSICAL ; MACH_PUNCH
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,    100, 10,   0, STATUS ; SCARY_FACE
	move EFFECT_ALWAYS_HIT,         60, DARK,       -1, 20,   0, PHYSICAL ; FEINT_ATTACK
	move EFFECT_CONFUSE,             0, FAIRY,      75, 10,   0, STATUS ; SWEET_KISS
	move EFFECT_BELLY_DRUM,          0, NORMAL,     -1, 10,   0, STATUS ; BELLY_DRUM
	move EFFECT_POISON_HIT,         90, POISON,    100, 10,  30, SPECIAL ; SLUDGE_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,    100, 10, 100, SPECIAL ; MUD_SLAP
if DEF(FAITHFUL)
	move EFFECT_ACCURACY_DOWN_HIT,  65, WATER,      85, 10,  50, SPECIAL ; OCTAZOOKA
else
	move EFFECT_ACCURACY_DOWN_HIT,  75, WATER,      95, 10,  30, SPECIAL ; OCTAZOOKA
endc
	move EFFECT_SPIKES,              0, GROUND,     -1, 20,   0, STATUS ; SPIKES
	move EFFECT_PARALYZE_HIT,      120, ELECTRIC,   50,  5, 100, SPECIAL ; ZAP_CANNON
	move EFFECT_FORESIGHT,           0, NORMAL,     -1, 40,   0, STATUS ; FORESIGHT
	move EFFECT_DESTINY_BOND,        0, GHOST,      -1,  5,   0, STATUS ; DESTINY_BOND
	move EFFECT_PERISH_SONG,         0, NORMAL,     -1,  5,   0, STATUS ; PERISH_SONG
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,        95, 15, 100, SPECIAL ; ICY_WIND
	move EFFECT_NORMAL_HIT,         80, ROCK,      100, 20,   0, SPECIAL ; POWER_GEM
	move EFFECT_RECOIL_HIT,         90, ELECTRIC,  100, 15,   0, PHYSICAL ; WILD_CHARGE
	move EFFECT_NORMAL_HIT,        120, GRASS,      85, 10,   0, PHYSICAL ; POWER_WHIP
	move EFFECT_RAMPAGE,           120, DRAGON,    100, 10,   0, PHYSICAL ; OUTRAGE
	move EFFECT_SANDSTORM,           0, ROCK,       -1, 10,   0, STATUS ; SANDSTORM
	move EFFECT_LEECH_HIT,          75, GRASS,     100, 10,   0, SPECIAL ; GIGA_DRAIN
	move EFFECT_ENDURE,              0, NORMAL,     -1, 10,   0, STATUS ; ENDURE
	move EFFECT_ATTACK_DOWN_2,       0, FAIRY,     100, 20,   0, STATUS ; CHARM
	move EFFECT_ROLLOUT,            30, ROCK,       90, 20,   0, PHYSICAL ; ROLLOUT
	move EFFECT_FALSE_SWIPE,        40, NORMAL,    100, 40,   0, PHYSICAL ; FALSE_SWIPE
	move EFFECT_SWAGGER,             0, NORMAL,     85, 15, 100, STATUS ; SWAGGER
	move EFFECT_SHELL_SMASH,         0, NORMAL,     -1, 15,   0, STATUS ; SHELL_SMASH
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC,  100, 20,  30, PHYSICAL ; SPARK
	move EFFECT_BUG_BITE,           60, BUG,       100, 20,   0, PHYSICAL ; BUG_BITE
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,      90, 25,  10, PHYSICAL ; STEEL_WING
	move EFFECT_MEAN_LOOK,           0, NORMAL,     -1,  5,   0, STATUS ; MEAN_LOOK
	move EFFECT_ATTRACT,             0, NORMAL,    100, 15,   0, STATUS ; ATTRACT
	move EFFECT_SLEEP_TALK,          0, NORMAL,    100, 10,   0, STATUS ; SLEEP_TALK
	move EFFECT_HEAL_BELL,           0, NORMAL,    100,  5,   0, STATUS ; HEAL_BELL
	move EFFECT_RETURN,              1, NORMAL,    100, 20,   0, PHYSICAL ; RETURN
	move EFFECT_PSYSTRIKE,         100, PSYCHIC,   100, 10,   0, SPECIAL ; PSYSTRIKE
	move EFFECT_SP_DEF_DOWN_HIT,    90, BUG,       100, 10,  10, SPECIAL ; BUG_BUZZ
	move EFFECT_SAFEGUARD,           0, NORMAL,     -1, 25,   0, STATUS ; SAFEGUARD
if DEF(FAITHFUL)
	move EFFECT_PAIN_SPLIT,          0, NORMAL,     -1, 20,   0, STATUS ; PAIN_SPLIT
else
	move EFFECT_PAIN_SPLIT,          0, GHOST,      -1, 20,   0, STATUS ; PAIN_SPLIT
endc
	move EFFECT_SACRED_FIRE,       100, FIRE,       95,  5,  50, PHYSICAL ; SACRED_FIRE
	move EFFECT_MAGNITUDE,           1, GROUND,    100, 30,   0, PHYSICAL ; MAGNITUDE
	move EFFECT_CONFUSE_HIT,       100, FIGHTING,   50,  5, 100, PHYSICAL ; DYNAMICPUNCH
	move EFFECT_NORMAL_HIT,        120, BUG,        85, 10,   0, PHYSICAL ; MEGAHORN
	move EFFECT_PARALYZE_HIT,       60, DRAGON,    100, 20,  30, SPECIAL ; DRAGONBREATH
	move EFFECT_BATON_PASS,          0, NORMAL,     -1, 40,   0, STATUS ; BATON_PASS
	move EFFECT_ENCORE,              0, NORMAL,    100,  5,   0, STATUS ; ENCORE
	move EFFECT_PURSUIT,            40, DARK,      100, 20,   0, PHYSICAL ; PURSUIT
if DEF(FAITHFUL)
	move EFFECT_RAPID_SPIN,         50, NORMAL,    100, 40, 100, PHYSICAL ; RAPID_SPIN
else
	move EFFECT_RAPID_SPIN,         50, NORMAL,    100, 20, 100, PHYSICAL ; RAPID_SPIN
endc
	move EFFECT_NORMAL_HIT,         70, GHOST,     100, 15,   0, PHYSICAL ; SHADOW_CLAW
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,      75, 15,  30, PHYSICAL ; IRON_TAIL
	move EFFECT_ATTACK_UP_HIT,      50, STEEL,      95, 35,  10, PHYSICAL ; METAL_CLAW
	move EFFECT_ALWAYS_HIT,         80, FIGHTING,   -1, 20,   0, SPECIAL ; AURA_SPHERE
	move EFFECT_HEALING_LIGHT,       0, NORMAL,     -1,  5,   0, STATUS ; HEALINGLIGHT
	move EFFECT_CONFUSE_HIT,       110, FLYING,     70, 10,  30, SPECIAL ; HURRICANE
	move EFFECT_KNOCK_OFF,          65, DARK,      100, 20, 100, PHYSICAL ; KNOCK_OFF
if DEF(FAITHFUL)
	move EFFECT_HIDDEN_POWER,       60, NORMAL,    100, 15,   0, SPECIAL ; HIDDEN_POWER
else
	move EFFECT_HIDDEN_POWER,       70, UNKNOWN_T, 100, 15,   0, SPECIAL ; HIDDEN_POWER
endc
	move EFFECT_NORMAL_HIT,        100, FIGHTING,   80,  5,   0, PHYSICAL ; CROSS_CHOP
	move EFFECT_PRIORITY_HIT,       40, WATER,     100, 20,   0, PHYSICAL ; AQUA_JET
	move EFFECT_RAIN_DANCE,          0, WATER,      -1,  5,   0, STATUS ; RAIN_DANCE
	move EFFECT_SUNNY_DAY,           0, FIRE,       -1,  5,   0, STATUS ; SUNNY_DAY
	move EFFECT_DEFENSE_DOWN_HIT,   80, DARK,      100, 15,  20, PHYSICAL ; CRUNCH
	move EFFECT_MIRROR_COAT,         1, PSYCHIC,    -1, 20,   0, SPECIAL ; MIRROR_COAT
	move EFFECT_SP_ATK_UP_2,         0, DARK,       -1, 20,   0, STATUS ; NASTY_PLOT
	move EFFECT_PRIORITY_HIT,       80, NORMAL,    100,  5,   0, PHYSICAL ; EXTREMESPEED
	move EFFECT_ALL_UP_HIT,         60, ROCK,      100,  5,  10, SPECIAL ; ANCIENTPOWER
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,     100, 15,  20, SPECIAL ; SHADOW_BALL
	move EFFECT_FUTURE_SIGHT,      120, PSYCHIC,   100, 10,   0, SPECIAL ; FUTURE_SIGHT
if DEF(FAITHFUL)
	move EFFECT_DEFENSE_DOWN_HIT,   40, FIGHTING,  100, 15,  50, PHYSICAL ; ROCK_SMASH
else
	move EFFECT_BRICK_BREAK,        75, FIGHTING,  100, 15,   0, PHYSICAL ; BRICK_BREAK
endc
if DEF(FAITHFUL)
	move EFFECT_TRAP,               35, WATER,      85, 15,   0, SPECIAL ; WHIRLPOOL
else
	move EFFECT_TRAP,               40, WATER,      90, 15,   0, SPECIAL ; WHIRLPOOL
endc
	move EFFECT_FLINCH_HIT,         80, DARK,      100, 15,  20, SPECIAL ; DARK_PULSE
	move EFFECT_SP_ATK_DOWN_HIT,    95, FAIRY,     100, 15,  30, SPECIAL ; MOONBLAST
	move EFFECT_ATTACK_DOWN_HIT,    90, FAIRY,      90, 10,  10, PHYSICAL ; PLAY_ROUGH
	move EFFECT_ALWAYS_HIT,         40, FAIRY,      -1, 15,   0, SPECIAL ; DISARM_VOICE
	move EFFECT_RECOIL_HIT,         50, UNKNOWN_T,  -1,  1,   0, PHYSICAL ; STRUGGLE
	;move EFFECT_LEECH_SEED,          0, GRASS,     100, 10,   0, STATUS ; WORRY_SEED