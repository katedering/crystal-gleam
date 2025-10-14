LalasLab1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 21
	warp_event  3,  7, SAFFRON_CITY, 21
;	warp_event  7,  0, LALAS_LAB_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, LalasLab1FTVScript
	bg_event  7,  1, BGEVENT_JUMPTEXT, LalasLab1FPlantPotText

	def_object_events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LalaScript, -1

	object_const_def
	const LALASLAB1F_LALA

LalaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EEVEE_FROM_LALA
	iftruefwd .afterEevee
	checkevent EVENT_LISTENED_TO_LALA_INTRO
	iftruefwd .heardintro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_LALA_INTRO
.heardintro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .NoRoom
	givepoke EEVEE, EON_FORM, 5, EVERSTONE, LUXURY_BALL
	setevent EVENT_GOT_EEVEE_FROM_LALA
	writetext .GoodbyeText
	waitbutton
	closetext
	end

.afterEevee:
	writetext .LalaText
	waitbutton
	closetext
	end

.LalaText:
	text "You know, working"
	line "on coding all by"
	cont "yourself is a"
	cont "very tough job."
	
	para "But it's so re-"
	line "warding when you"
	cont "see everything"
	cont "fall into place!"
	done

.NoRoom:
	jumpthisopenedtext

	text "Oh, hold on! You"
	line "can't carry any"
	cont "more #mon."
	done

.IntroText:
	text "Hi, I'm Lala."
	line "What's your name?"

	para "Oh, <PLAYER>?"
	line "And you came all"
	cont "way from Johto?"

	para "Just to meet me?"

	para "I'm honored. But"
	line "I can't let you"
	cont "visit without at"
	cont "least giving you"
	cont "a gift."
	done

.QuestionText:
	text "Lala: I know!"

	para "I have a very"
	line "special Eevee"
	cont "that needs a good"
	cont "trainer."

	para "I have to stay"
	line "here and work,"

	para "so would you be"
	line "willing to take"
	cont "it and be it's"
	cont "partner?"

	para "Will you do this"
	line "for me,"
	cont "<PLAYER>?"
	done

.YesText:
	text "Lala: Oh, thank"
	line "you so much,"
	cont "<PLAYER>!"

	para "You're amazing!"

	para "I want you to"
	line "take good care of"
	cont "it for me, OK?"
	done

.GoodbyeText:
	text "Lala: Prof.Elm"
	line "mentioned some"
	cont "things about Eevee"
	cont "to me one day."
	
	para "Maybe you should"
	line "pay him a visit."

	para "Thanks again!"
	done

.NoText:
	text "Oh… are you sure?"
	done
	
LalasLab1FPlantPotText:
	text "There's a plant"
	line "pot in the way."
	
	para "You can't go up"
	line "right now."
	done
	
LalasLab1FTVScript:
	jumpthistext

	text "They have programs"
	line "that aren't shown"
	cont "in Johto…"
	done
