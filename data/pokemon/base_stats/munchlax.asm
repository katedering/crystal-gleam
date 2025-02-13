	db 135,  85,  45,   5,  40,  85 ; 395 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 94 ; base exp
	db NO_ITEM, LEFTOVERS ; held items
	dn GENDER_F12_5, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for MUNCHLAX, PICKUP, THICK_FAT, GLUTTONY
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, BULLDOZE, SOLAR_BEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, WATER_PULSE, SURF, STRENGTH, WHIRLPOOL, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, METRONOME, PAY_DAY, ROLLOUT, SEED_BOMB, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZEN_HEADBUTT
	; end
