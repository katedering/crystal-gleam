	db  75, 100,  66, 115,  60,  66 ; 482 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 186 ; base exp
	db ALWAYS_ITEM_2, SITRUS_BERRY ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for AMBIPOM, TECHNICIAN, PICKUP, SKILL_LINK
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ACROBATICS, WATER_PULSE, SHADOW_CLAW, GIGA_IMPACT, U_TURN, THUNDER_WAVE, CUT, STRENGTH, AGILITY, BATON_PASS, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, KNOCK_OFF, METRONOME, SEED_BOMB, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
