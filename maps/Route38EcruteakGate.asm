Route38EcruteakGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_38, 1
	warp_event  0,  5, ROUTE_38, 2
	warp_event  9,  4, ECRUTEAK_CITY, 14
	warp_event  9,  5, ECRUTEAK_CITY, 15

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route38EcruteakGateOfficerText, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateLassScript, -1
	object_event  8,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfOaksAide2Script, -1

Route38EcruteakGateLassScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftruefwd .GoodTrainer
	writetext .OkTrainerText
	waitbutton
	closetext
	end
.GoodTrainer
	checkevent EVENT_GOT_GALARIAN_CORSOLA
	iftruefwd .AlreadyGotIt
	checkevent EVENT_GALARIAN_CORSOLA_INTRO
	iftruefwd .ListenedToIntro
	writetext .GoodTrainerText
	waitbutton
	setevent EVENT_GALARIAN_CORSOLA_INTRO
.ListenedToIntro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .NoRoom
	givepoke CORSOLA, GALARIAN_FORM, 15, LUM_BERRY, PREMIER_BALL
	setevent EVENT_GOT_GALARIAN_CORSOLA
	writetext .GoodbyeText
	waitbutton
	closetext
	end
.AlreadyGotIt
	writetext .AlreadyHaveText
	waitbutton
	closetext
	end
	
.NoRoom
	jumpthisopenedtext

	text "Oh! Hold on a"
	line "moment, it seems"
	cont "that your party"
	cont "is currently full!"
	done

.OkTrainerText
	text "Hello! Oh, you"
	line "haven't beaten"
	cont "Morty yet?"
	
	para "Talk to me after"
	line "you have."
	done

.GoodTrainerText
	text "Hello! Oh, that's"
	line "the Badge from"
	cont "Ecruteak Gym!"
	
	para "You've beaten"
	line "Morty, then?"
	cont "Congratulations!"
	done
	
	
.QuestionText
	text "I think I can"
	line "trust you with"
	cont "this #mon then."
	
	para "It's a Corsola"
	line "from the Galar"
	cont "region. It's"
	cont "very special, so"
	cont "it needs a special"
	cont "trainer to raise"
	cont "it. Will you take"
	cont "this #mon?"
	done

.NoText
	text "You don't want"
	line "it? I'll hold it"
	cont "until you do."
	done

.YesText
	text "I'm sure you will"
	line "take good care of"
	cont "this #mon!"
	done

.GoodbyeText
	text "This Corsola is"
	line "not like the ones"
	cont "you find here in"
	cont "Johto."
	
	para "It's a Ghost-type"
	line "#mon, and very"
	cont "fragile. So please"
	cont "take good care of"
	cont "it, alright?"
	done

.AlreadyHaveText
	text "Did you know that"
	line "Galarian Corsola"
	cont "can evolve?"
	
	para "Normal Corsola"
	line "from Johto can't"
	cont "evolve, though."
	
	para "I wonder why?"
	done

ProfOaksAide2Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_LINKING_CORD_FROM_PROF_OAKS_AIDE
	iftruefwd .Explain
	writetext ProfOaksAide2HiText
	waitbutton
	setval16 30
	special CountCaught
	iftruefwd .HereYouGo
.UhOh
	jumpopenedtext ProfOaksAide2UhOhText

.HereYouGo
	writetext ProfOaksAide2HereYouGoText
	waitbutton
	verbosegiveitem LINKING_CORD
	iffalsefwd .NoRoom
	setevent EVENT_GOT_LINKING_CORD_FROM_PROF_OAKS_AIDE
.Explain
	jumpopenedtext ProfOaksAide2ExplainText

.NoRoom
	jumpopenedtext ProfOaksAide2NoRoomText

Route38EcruteakGateOfficerText:
	text "Where did you say"
	line "you're from?"

	para "New Bark Town?"

	para "Prof.Elm lives"
	line "over there, right?"

	para "You've come a long"
	line "way to get here."
	done

ProfOaksAide2HiText:
	text "Hello there! I'm"
	line "Prof.Oak's aide."

	para "If you caught 30"
	line "kinds of #mon,"

	para "I'm supposed to"
	line "give you an item."

	para "So, <PLAYER>,"
	line "have you caught"

	para "at least 30 kinds"
	line "of #mon?"
	done

ProfOaksAide2UhOhText:
	text "Let's see…"
	line "Uh-oh! You've only"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Come back and see"
	line "me when you catch"
	cont "30 kinds."
	done

ProfOaksAide2HereYouGoText:
	text "Let's see…"
	line "Great job! You've"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Congratulations!"
	line "Here you go!"
	done

ProfOaksAide2NoRoomText:
	text "Oh! I see you"
	line "don't have any"
	cont "room for this."
	done

ProfOaksAide2ExplainText:
	text "That Linking Cord"
	line "gives certain"

	para "#mon a sense"
	line "of connection"

	para "that may help"
	line "them evolve."

	para "Use it to com-"
	line "plete the #dex!"
	done
