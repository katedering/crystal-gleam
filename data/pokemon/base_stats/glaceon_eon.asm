	db  80,  75, 125,  80, 145, 110 ; 615 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_SLOWER ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for GLACEON_EON, SNOW_CLOAK, SNOW_CLOAK, EON_FORCE
else
	abilities_for GLACEON_EON, SNOW_CLOAK, SNOW_WARNING, EON_FORCE
endc
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, WATER_PULSE, AVALANCHE, GIGA_IMPACT, STRENGTH, AQUA_TAIL, BATON_PASS, CHARM, DOUBLE_EDGE, ENDURE, HEADBUTT, HYPER_VOICE, ICY_WIND, PAY_DAY, SLEEP_TALK, SWAGGER
	; end
