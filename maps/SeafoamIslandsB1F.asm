SeafoamIslandsB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 35, 15, SEAFOAM_ISLANDS_1F, 3
	warp_event  3,  3, SEAFOAM_ISLANDS_1F, 5
	warp_event 27, 15, SEAFOAM_ISLANDS_B2F, 1
	warp_event 18,  5, SEAFOAM_ISLANDS_B2F, 2
	warp_event 15, 11, SEAFOAM_ISLANDS_B2F, 3
	warp_event  7, 15, SEAFOAM_ISLANDS_B2F, 4

	def_coord_events

	def_bg_events
	bg_event 20, 11, BGEVENT_ITEM + ICE_HEAL, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_ICE_HEAL

	def_object_events
	itemball_event 20,  3, GRIP_CLAW, 1, EVENT_SEAFOAM_ISLANDS_B1F_GRIP_CLAW
	itemball_event 24,  5, ICE_HEAL, 1, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
	strengthboulder_event 30,  9
	strengthboulder_event 31,  9
	strengthboulder_event 32, 10
	strengthboulder_event 12,  8
	strengthboulder_event  7, 11
	strengthboulder_event 13, 15
	object_event 12,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FScientistScript, -1
	
	object_const_def
	const SEAFOAMISLANDSB1F_SCIENTIST
	
SeafoamIslandsB1FScientistScript:
	faceplayer
	opentext
	checkevent EVENT_HEARD_ABOUT_GLITCH
	iffalsefwd .ScientistIntro
	checkflag ENGINE_PLAYER_CAUGHT_GLITCH
	iftruefwd .StrangeMon
	writetext .HaveYouSeenItText
	waitbutton
	closetext
	end
	
.ScientistIntro:
	writetext .ScientistIntroText
	setevent EVENT_HEARD_ABOUT_GLITCH
	waitbutton
	closetext
	end

.StrangeMon:
	writetext .StrangeMonText
	waitbutton
	closetext

.ScientistIntroText
	text "Hello! Cold in"
	line "here, isn't it?"
	
	para "I'm researching"
	line "reports of an odd"
	cont "phenomena that"
	cont "used to be found"
	cont "on Cinnabar."
	
	para "But since the vol-"
	line "cano erupted, my"
	cont "research hasn't"
	cont "had much success,"
	
	para "since I'm not sup-"
	line "posed to be there"
	cont "without proper"
	cont "authorization."
	done
	
.HaveYouSeenItText
	text "From what I heard,"
	line "it used to be seen"
	cont "along Cinnabar's"
	cont "east coast, but"
	cont "ever since the"
	cont "volcano eruption,"
	cont "it seems to have"
	cont "vanished."
	
	para "Perhaps it's gone"
	line "into hiding within"
	cont "that old mansion"
	cont "there?"
	
	para "If you happen to"
	line "go check it out,"
	cont "be sure to prepare"
	cont "to battle."
	
	para "The rumors all say"
	line "things about a"
	cont "crazy powerful"
	cont "#mon."
	done
	
.StrangeMonText
	text "So you ran into"
	line "that mysterious"
	cont "#mon? Did you"
	cont "catch it? Wow."
	
	para "You must be the"
	line "best trainer in"
	cont "the whole world."
	done