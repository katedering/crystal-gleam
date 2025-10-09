PokemonMansionB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 25, 24, POKEMON_MANSION_1F, 3

	def_coord_events

	def_bg_events
	bg_event 26,  4, BGEVENT_ITEM + MAX_ELIXIR, EVENT_POKEMON_MANSION_B1F_HIDDEN_MAX_ELIXIR
	bg_event  8, 13, BGEVENT_ITEM + RARE_CANDY, EVENT_POKEMON_MANSION_B1F_HIDDEN_RARE_CANDY
	bg_event 20, 27, BGEVENT_ITEM + BERSERK_GENE, EVENT_POKEMON_MANSION_B1F_HIDDEN_BERSERK_GENE
	bg_event 20, 27, BGEVENT_JUMPTEXT, PokemonMansion1FMewtwoStatueText
	bg_event 22,  5, BGEVENT_JUMPTEXT, PokemonMansion1FMewtwoStatueText
	bg_event  8, 13, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event  9, 13, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event  4, 17, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event  5, 17, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event  8, 17, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event  9, 17, BGEVENT_JUMPTEXT, PokemonMansion1FFlowerPotText

	def_object_events
	object_event 18,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerScientistBraydon, -1
	object_event 18, 22, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, PokemonMansionDiaryText, -1
	itemball_event 13,  5, CARBOS, 1, EVENT_POKEMON_MANSION_B1F_CARBOS
	itemball_event  7,  6, CALCIUM, 1, EVENT_POKEMON_MANSION_B1F_CALCIUM
	itemball_event 16, 27, HP_UP, 1, EVENT_POKEMON_MANSION_B1F_HP_UP
	keyitemball_event  4, 23, OLD_KEY, EVENT_POKEMON_MANSION_B1F_OLD_KEY

GenericTrainerScientistBraydon:
	generictrainer SCIENTIST, BRAYDON, EVENT_BEAT_SCIENTIST_BRAYDON, ScientistBraydonSeenText, ScientistBraydonBeatenText

	text "This place was"
	line "once the site of"

	para "serious #mon"
	line "research."
	done

ScientistBraydonSeenText:
	text "I miss the old"
	line "Cinnabar Lab…"
	done

ScientistBraydonBeatenText:
	text "Whew!"
	line "Overwhelming!"
	done

PokemonMansionDiaryText:
	text "Diary: July 5"

	para "A new #mon was"
	line "discovered deep in"
	cont "the jungle."

	para "Diary: July 10"

	para "We christened the"
	line "newly discovered"
	cont "#mon, Mew."

	para "Diary: Feb. 6"

	para "Mew gave birth."
	line "We named the"
	cont "newborn Mewtwo."

	para "Diary: Sept. 1"

	para "Mewtwo is far"
	line "too powerful."

	para "We have failed to"
	line "curb its vicious"
	cont "tendencies…"
	done

PokemonMansionB1FMissingnoScript:
	opentext
	checkevent EVENT_HEARD_ABOUT_GLITCH
	iffalsefwd .OddRock
	checkflag ENGINE_PLAYER_CAUGHT_GLITCH
	iftruefwd .OddRock2
	checkevent EVENT_MISSINGNO
	iftruefwd .end
	writetext .GlitchText
	cry MISSINGNO_
	setevent EVENT_MISSINGNO
	pause 15
	loadwildmon MISSINGNO_, PLAIN_FORM, 100
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_GLITCH
.nocatch
	opentext
	writetext .GlitchStillThereText
	waitbutton
	closetext
	end

.end
	opentext
	writetext .GlitchStillThereText
	waitbutton
	closetext
	end
	
.OddRock
	writetext .OddRockText
	waitbutton
	closetext
	end
	
.OddRock2
	writetext .OddRock2Text
	waitbutton
	closetext
	end

.OddRockText
	text "This rock seems"
	line "odd… like it's"
	cont "silently judging"
	cont "you."
	done

.OddRock2Text
	text "This rock seems"
	line "odd… but it's"
	cont "just a rock."
	done

.GlitchText
	text "This rock seems"
	line "odd… like it's"
	cont "silently judging"
	cont "you."
	
	para "!"
	done

.GlitchStillThereText
	text "The rock seems to"
	line "still be judging"
	cont "you…"
	done