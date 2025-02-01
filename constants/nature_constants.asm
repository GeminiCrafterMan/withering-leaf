; nature constants
; NatureNames indexes (see data/natures.asm)
; NatureIndicators indexes (see data/natures.asm)
	const_def
	const HARDY
	const LONELY
	const BRAVE
	const ADAMANT
	const NAUGHTY
	const BOLD
	const DOCILE
	const RELAXED
	const IMPISH
	const LAX
	const TIMID
	const HASTY
	const SERIOUS
	const JOLLY
	const NAIVE
	const MODEST
	const MILD
	const QUIET
	const BASHFUL
	const RASH
	const CALM
	const GENTLE
	const SASSY
	const CAREFUL
	const QUIRKY
DEF NUM_NATURES EQU const_value
DEF NO_NATURE   EQU const_value

DEF NAT_ATK_UP_DEF_DOWN   EQU LONELY
DEF NAT_ATK_UP_SPE_DOWN   EQU BRAVE
DEF NAT_ATK_UP_SATK_DOWN  EQU ADAMANT
DEF NAT_ATK_UP_SDEF_DOWN  EQU NAUGHTY
DEF NAT_DEF_UP_ATK_DOWN   EQU BOLD
DEF NAT_DEF_UP_SPE_DOWN   EQU RELAXED
DEF NAT_DEF_UP_SATK_DOWN  EQU IMPISH
DEF NAT_DEF_UP_SDEF_DOWN  EQU LAX
DEF NAT_SPE_UP_ATK_DOWN   EQU TIMID
DEF NAT_SPE_UP_DEF_DOWN   EQU HASTY
DEF NAT_SPE_UP_SATK_DOWN  EQU JOLLY
DEF NAT_SPE_UP_SDEF_DOWN  EQU NAIVE
DEF NAT_SATK_UP_ATK_DOWN  EQU MODEST
DEF NAT_SATK_UP_DEF_DOWN  EQU MILD
DEF NAT_SATK_UP_SPE_DOWN  EQU QUIET
DEF NAT_SATK_UP_SDEF_DOWN EQU RASH
DEF NAT_SDEF_UP_ATK_DOWN  EQU CALM
DEF NAT_SDEF_UP_DEF_DOWN  EQU GENTLE
DEF NAT_SDEF_UP_SPE_DOWN  EQU SASSY
DEF NAT_SDEF_UP_SATK_DOWN EQU CAREFUL
DEF NAT_NEUTRAL           EQU HARDY ; 0
