	db  33, 136,   0,  29,   6,   6
	;   hp  atk  def  spe  sat  sdf

	db FLYING, NORMAL ; type
	db 1 ; catch rate
	db 255 ; base exp
	db ALWAYS_ITEM_2, LUM_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

	abilities_for MISSINGNO_, NO_ABILITY, NO_ABILITY, NO_ABILITY
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 

	; tm/hm learnset
	tmhm CUT, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	; end
