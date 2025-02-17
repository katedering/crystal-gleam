Route35CoastNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 22, ROUTE_35_NATIONAL_PARK_GATE, 5
	warp_event 13, 23, ROUTE_35_NATIONAL_PARK_GATE, 6
	warp_event  4, 10, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event  6, 21, BGEVENT_JUMPTEXT, Route35CoastNorthPokeathlonDomeSignText
	bg_event  6, 12, BGEVENT_JUMPTEXT, Route35CoastNorthAdvancedTipsSignText
	bg_event  3, 11, BGEVENT_ITEM + BIG_PEARL, EVENT_ROUTE_35_COAST_NORTH_HIDDEN_BIG_PEARL
	bg_event  5, 23, BGEVENT_ITEM + SOFT_SAND, EVENT_ROUTE_35_COAST_NORTH_HIDDEN_SOFT_SAND
	bg_event  4,  9, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_35_COAST
	bg_event  5,  9, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_35_COAST

	def_object_events
	smashrock_event  3, 21
	smashrock_event 11, 20
	object_event 8, 15, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35CoastNorthTutorScript, -1

Route35CoastNorthPokeathlonDomeSignText:
	text "The #athlon"
	line "Project Has"
	cont "Started!"
	done

Route35CoastNorthAdvancedTipsSignText:
	text "Advanced Tips!"

	para "You can cast a"
	line "fishing line even"

	para "from a Surfing"
	line "#mon's back!"
	done

Route35CoastNorthTutorScript:
	faceplayer
	opentext
;	checkevent EVENT_LISTENED_TO_AGILITY_INTRO
	iftruefwd Route35CoastNorthTutorAgilityScript
	writetext Route35CoastNorthTutorText
	waitbutton
;	setevent EVENT_LISTENED_TO_AGILITY_INTRO
Route35CoastNorthTutorAgilityScript:
	writetext Text_Route35CoastNorthTutorAgility
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_Route35CoastNorthTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval AGILITY
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Route35CoastNorthTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_Route35CoastNorthTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_Route35CoastNorthTutorTaught

Route35CoastNorthTutorText:
	text "Have you seen that"
	line "#athlon sign?"

	para "I bet you have to"
	line "be fast to partici-"
	cont "pate in it."

	para "Sort of like the"
	line "move Agility!"
	done
	
Text_Route35CoastNorthTutorAgility:
	text "I can teach your"
	line "#mon how to use"

	para "Agility, if you"
	line "give me a Silver"
	cont "Leaf."
	done

Text_Route35CoastNorthTutorNoSilverLeaf:
	text "But, where's the"
	line "Silver Leaf?"
	done

Text_Route35CoastNorthTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Agility?"
	done

Text_Route35CoastNorthTutorRefused:
	text "You just can't"
	line "feel the beat!"
	done

Text_Route35CoastNorthTutorTaught:
	text "Now your #mon"
	line "knows how to use"
	cont "Metronome!"
	done