CeladonUniversityClassroom2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_1F, 7
	warp_event  3, 11, CELADON_UNIVERSITY_1F, 7

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  6,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2Bookshelf1Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2Bookshelf2Text

	def_object_events
	object_event  2,  1, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2BlancheText, -1
	object_event  2,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2TeacherText, -1
	object_event  4,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2YoungsterText, -1
	object_event  2,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2ChildText, -1
	object_event  5,  7, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2LadyText, -1
	object_event  3,  9, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonUniversityClassroom2CooltrainermScript, -1

CeladonUniversityClassroom2BlancheText:
	text "I am Blanche."
	line "I teach History"
	cont "here."

	para "We must learn from"
	line "history, or we"

	para "will be doomed to"
	line "repeat it."
	done

CeladonUniversityClassroom2TeacherText:
	text "I'm subbing for"
	line "right now."

	para "Blanche only"
	line "teaches during"
	cont "the day."
	done

CeladonUniversityClassroom2YoungsterText:
	text "Flipping through"
	line "my notes at the"
	cont "speed of--YOW!"
	cont "Paper cut…"
	done

CeladonUniversityClassroom2ChildText:
	text "We just had a"
	line "lecture on Prof."

	para "Westwood's contri-"
	line "butions to the"
	cont "#dex."

	para "I heard that"
	line "towards the end"

	para "he got lazy and"
	line "just made some of"
	cont "it up!"
	done

CeladonUniversityClassroom2LadyText:
	text "You're from Johto?"
	line "That region has"

	para "such fascinating"
	line "history!"
	done

CeladonUniversityClassroom2CooltrainermScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, UP
	end

.Text1: ; text > text
	text "…Zzz…"
	line "Aah!"
	done

.Text2:
	text "Ahem."

	para "Sorry about that--"
	line "you startled me."

	para "I stayed up late"
	line "to finish an"

	para "assignment, so now"
	line "I'm exhausted."
	done

CeladonUniversityClassroom2BlackboardText:
	text "There's a timeline"
	line "of recent history."

	para "400 years ago:"
	line "Toxic move invent-"
	cont "ed."

	para "71 years ago:"
	line "modern # Ball"
	cont "developed."

	para "27 years ago:"
	line "first Moon land-"
	cont "ing."

	para "Three years ago:"
	line "first virtual"
	cont "#mon created."

	para "“Hypothesis: tech-"
	line "nology grows expo-"
	cont "nentially.”"
	done

CeladonUniversityClassroom2Bookshelf1Text:
	text "It's a book about"
if DEF(FAITHFUL)
	line "how the Brass"
	cont "Tower in Ecruteak"

	para "City burned down"
	line "150 years ago."
else
	line "how the Gong Tower"
	cont "in Ecruteak City"

	para "burned down 150"
	line "years ago."
endc
	done

CeladonUniversityClassroom2Bookshelf2Text:
	text "It's a book of"
	line "slang terms from"
	cont "the 1980s."
	cont "Heavy!"
	done
