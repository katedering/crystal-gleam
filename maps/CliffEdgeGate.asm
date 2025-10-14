CliffEdgeGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, RematchAvailable

	def_warp_events
	warp_event 17, 19, CIANWOOD_CITY, 8
	warp_event  3, 19, ROUTE_47, 1

	def_coord_events

	def_bg_events
	bg_event 17,  6, BGEVENT_ITEM + OVAL_STONE, EVENT_CLIFF_EDGE_GATE_HIDDEN_OVAL_STONE

	def_object_events
	object_event 11, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CliffEdgeGateReceptionistText, EVENT_YELLOW_FOREST_ROCKET_TAKEOVER
	object_event  3,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfOaksAide3Script, EVENT_YELLOW_FOREST_ROCKET_TAKEOVER
	object_event 17, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM12, EVENT_CLEARED_YELLOW_FOREST
	object_event 17,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffEdgeGateRocketScript, EVENT_YELLOW_FOREST_ROCKET_TAKEOVER
	
	object_const_def
	const CLIFF_EDGE_GATE_ROCKET
	
RematchAvailable:
    checkflag ENGINE_DAILY_CLIFF_GATE_RESET
	iftruefwd .NoRematch
	clearevent EVENT_BEAT_ROCKET_IN_CLIFF_GATE
	setflag ENGINE_DAILY_CLIFF_GATE_RESET
.NoRematch
	endcallback
	
	
ProfOaksAide3Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_MACHO_BRACE_FROM_PROF_OAKS_AIDE
	iftruefwd .Explain
	writetext ProfOaksAide3HiText
	waitbutton
	setval16 45
	special CountCaught
	iftruefwd .HereYouGo
.UhOh
	jumpopenedtext ProfOaksAide3UhOhText

.HereYouGo
	writetext ProfOaksAide3HereYouGoText
	waitbutton
	verbosegiveitem MACHO_BRACE
	iffalsefwd .NoRoom
	setevent EVENT_GOT_MACHO_BRACE_FROM_PROF_OAKS_AIDE
.Explain
	jumpopenedtext ProfOaksAide3ExplainText

.NoRoom
	jumpopenedtext ProfOaksAide3NoRoomText

GenericTrainerGruntM12:
	generictrainer GRUNTM, 12, EVENT_BEAT_ROCKET_GRUNTM_12, GruntM12SeenText, GruntM12BeatenText

	text "Yellow Forest is"
	line "full of rare"
	cont "#mon."

	para "We're nabbing them"
	line "all for ourselves!"
	done

CliffEdgeGateReceptionistText:
	text "Yellow Forest is"
	line "this way!"

	para "It's a popular"
	line "tourist sight!"
	done

ProfOaksAide3HiText:
	text "Hello there! I'm"
	line "Prof.Oak's aide."

	para "If you caught 45"
	line "kinds of #mon,"

	para "I'm supposed to"
	line "give you an item."

	para "So, <PLAYER>,"
	line "have you caught"

	para "at least 45 kinds"
	line "of #mon?"
	done

ProfOaksAide3UhOhText:
	text "Let's see…"
	line "Uh-oh! You've only"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Come back and see"
	line "me when you catch"
	cont "45 kinds."
	done

ProfOaksAide3HereYouGoText:
	text "Let's see…"
	line "Great job! You've"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Congratulations!"
	line "Here you go!"
	done

ProfOaksAide3NoRoomText:
	text "Oh! I see you"
	line "don't have any"
	cont "room for this."
	done

ProfOaksAide3ExplainText:
	text "That Macho Brace"
	line "helps a #mon"

	para "grow more from"
	line "battling, but"
	cont "slows it down."
	done

GruntM12SeenText:
	text "You're curious"
	line "about our plans?"

	para "Beat me and I'll"
	line "tell you!"
	done

GruntM12BeatenText:
	text "You were supposed"
	line "to lose!"
	done

CliffEdgeGateRocketScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_IN_CLIFF_GATE
	iftruefwd .AlreadyBeatRocket
	checkevent EVENT_LISTENED_TO_ROCKET_IN_CLIFF_GATE
	iftruefwd .BattleRocket
	writetext .IntroRocketText
	waitbutton
	setevent EVENT_LISTENED_TO_ROCKET_IN_CLIFF_GATE
	closetext
	end

.BattleRocket:
	checkevent EVENT_INITIAL_BATTLE_ROCKET
	iftruefwd .RematchRocket
	writetext .BattleRocketText
	yesorno
	iffalse_jumpopenedtext .RefusedRocketText
	writetext .AcceptedRocketText
	waitbutton
	closetext
	winlosstext .BeatenRocketText, 0
	setlasttalked CLIFF_EDGE_GATE_ROCKET
	loadtrainer ROCKET, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_IN_CLIFF_GATE
	setevent EVENT_INITIAL_BATTLE_ROCKET
	opentext
	writetext .RocketFarewellText
	waitbutton
	closetext
	end
	
.RematchRocket
	writetext .RematchRocketText
	yesorno
	iffalse_jumpopenedtext .RefusedRocketText
	writetext .AcceptedRocketRematchText
	waitbutton
	closetext
	winlosstext .BeatenRocketText, 0
	setlasttalked CLIFF_EDGE_GATE_ROCKET
	loadtrainer ROCKET, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_IN_CLIFF_GATE
	setevent EVENT_INITIAL_BATTLE_ROCKET
	opentext
	writetext .RocketFarewellText2
	waitbutton
	closetext
	end
	
.AlreadyBeatRocket:
	writetext .BattleRocketWonText
	waitbutton
	closetext
	end
	
	
.IntroRocketText:
	text "Wait!"
	line "Don't leave yet!"
	
	para "I know I look"
	line "like I work for"
	cont "Team Rocket, but"
	cont "trust me - I left"
	cont "that life behind."
	
	para "My name's Susan."
	line "I decided to train"
	cont "and help others to"
	cont "train, to try and"
	cont "atone for my mis-"
	cont "deeds as a Grunt."
	done

.BattleRocketText:
	text "Susan: Would you"
	line "like to battle"
	cont "with me? I prom-"
	cont "ise that I won't"
	cont "steal your #-"
	cont "mon from you."
	done

.RematchRocketText:
	text "Susan: Would you"
	line "like to battle"
	cont "with me again"
	cont "today?"
	done
	
.RefusedRocketText:
	text "Right."
	
	para "Fair enough."
	
	para "Just don't turn"
	line "me in, okay?"
	done

.AcceptedRocketText:
	text "Susan: Oh! Thank"
	line "you. I promise"
	cont "you, this will"
	cont "be a good match!"
	done

.AcceptedRocketRematchText:
	text "Susan: Oh! Thank"
	line "you. I'm sure"
	cont "you've grown"
	cont "stronger since"
	cont "our last battle."
	done

.BeatenRocketText:
	text "And so our match"
	line "ends."
	
	para "I hope we can have"
	line "more enjoyable"
	cont "battles like this"
	cont "in the future."
	done

.RocketFarewellText:
	text "Susan: Also,"
	line "what's your name?"
	
	para "<PLAYER>?"
	
	para "Alright, I'll be"
	line "sure to remember"
	cont "that."
	
	para "See you again,"
	line "<PLAYER>!"
	done
	
.RocketFarewellText2:
	text "Susan: That was"
	line "exhilirating."
	
	para "I look forward"
	line "to battling you,"
	cont "<PLAYER>."
	
	para "Let's meet up"
	line "again tomorrow?"
	done
	
.BattleRocketWonText:
	text "Susan: <PLAYER>,"
	line "my party needs to"
	cont "rest. Come see me"
	cont "again tomorrow,"
	cont "alright?"
	done

