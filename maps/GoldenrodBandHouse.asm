GoldenrodBandHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 20
	warp_event  3,  7, GOLDENROD_CITY, 20

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodBandHouseRocker1Text, -1
	object_event  6,  4, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodBandHouseRocker2Text, -1
	object_event  2,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodBandHouseCooltrainerFText, -1
	object_event  4,  1, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodBandHouseTutorScript, -1

GoldenrodBandHouseRocker1Text:
	text "I play guitar in"
	line "our cover band."

	para "Give us a listen"
	line "on the Variety"
	cont "Channel!"
	done

GoldenrodBandHouseRocker2Text:
	text "Music and passion"
	line "are always in"

	para "fashion. Don't"
	line "you forget it!"
	done

GoldenrodBandHouseCooltrainerFText:
	text "People like diff-"
	line "erent types of"
	cont "music, but every-"

	para "one's entitled to"
	line "their own opinion."

	para "Don't be a hater!"
	done

GoldenrodBandHouseTutorScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_IRON_HEAD_INTRO
	iftruefwd GoldenrodBandHouseTutorMetronomeScript
	writetext GoldenrodBandHouseTutorText
	waitbutton
	setevent EVENT_LISTENED_TO_IRON_HEAD_INTRO
GoldenrodBandHouseTutorMetronomeScript:
	writetext Text_GoldenrodBandHouseTutorMetronome
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_GoldenrodBandHouseTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval METRONOME
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GoldenrodBandHouseTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_GoldenrodBandHouseTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GoldenrodBandHouseTutorTaught

GoldenrodBandHouseTutorText:
	text "As musicians, we"
	line "use metronomes to"
	cont "help stay on beat."

	para "Metronome is also"
	line "a #mon move!"

	para "What it does is"
	line "all up to chance."
	done
	
Text_GoldenrodBandHouseTutorMetronome:
	text "If you give me a"
	line "Silver Leaf, I'll"

	para "teach your #mon"
	line "to use Metronome!"
	done

Text_GoldenrodBandHouseTutorNoSilverLeaf:
	text "But you don't have"
	line "a Silver Leaf."
	done

Text_GoldenrodBandHouseTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Metronome?"
	done

Text_GoldenrodBandHouseTutorRefused:
	text "You just can't"
	line "feel the beat!"
	done

Text_GoldenrodBandHouseTutorTaught:
	text "Now your #mon"
	line "knows how to use"
	cont "Metronome!"
	done