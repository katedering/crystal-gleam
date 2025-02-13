	db  91, 134,  95,  80, 100, 100 ; 600 BST
	;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, DRAGON_SCALE ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for DRAGONITE, INNER_FOCUS, INNER_FOCUS, MULTISCALE
else
	abilities_for DRAGONITE, INNER_FOCUS, MARVEL_SCALE, MULTISCALE
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield 3 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, STEEL_WING, ROCK_SLIDE, ROOST, FOCUS_BLAST, DRAGON_PULSE, WATER_PULSE, GIGA_IMPACT, STONE_EDGE, THUNDER_WAVE, CUT, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL, AGILITY, AQUA_TAIL, BODY_SLAM, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, METRONOME, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
