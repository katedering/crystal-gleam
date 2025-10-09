RedsHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, RedsHouse1FTVScript

	def_object_events
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1

RedsMom:
    checkevent EVENT_GOT_MYSTICTICKET_FROM_RED
	iftruefwd .RedPika
	checkevent EVENT_MET_REDS_MOM
	iftrue_jumptextfaceplayer .Text2
	setevent EVENT_MET_REDS_MOM
	jumpthistextfaceplayer

	text "Hi!"

	para "Red's been away"
	line "for a long time."

	para "He hasn't called"
	line "either, so I have"

	para "no idea where he"
	line "is or what he's"
	cont "been doing."

	para "They say that no"
	line "word is proof that"

	para "he's doing fine,"
	line "but I do worry"
	cont "about him."
	done

.Text2:
	text "I worry about Red"
	line "getting hurt or"

	para "sick, but he's a"
	line "boy. I'm proud"

	para "that he is doing"
	line "what he wants to"
	cont "do."
	done

.RedPika
    faceplayer
	opentext
	checkevent EVENT_GOT_REDS_PIKACHU
	iftruefwd .AlreadyGotPika
	checkevent EVENT_REDS_PIKA_INTRO
	iftruefwd .ListenedToIntro
	writetext .RedsPikaIntroText
	waitbutton
	setevent EVENT_REDS_PIKA_INTRO
.ListenedToIntro
	writetext .PikaQuestionText
	yesorno
	iffalse_jumpopenedtext .PikaNoText
	writetext .PikaYesText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .PikaNoRoom
	givepoke PIKACHU, PIKACHU_PARTNER_FORM, 5, LIGHT_BALL, CHERISH_BALL, FLASH_CANNON
	setevent EVENT_GOT_REDS_PIKACHU
	writetext .PikaGoodbyeText
	waitbutton
	closetext
	end
.AlreadyGotPika
	writetext .AlreadyHavePikaText
	waitbutton
	closetext
	end
	
.PikaNoRoom
	jumpthisopenedtext

	text "Make sure you"
	line "have room in"
	cont "your party!"
	done

.RedsPikaIntroText
	text "Hi!"
	
	para "Red finally"
	line "called home!"
	
	para "He told me about"
	line "you, and said"
	cont "to entrust this"
	cont "Pikachu to you."
	
	para "It's a special"
	line "Pikachu that he"
	cont "hatched from an"
	cont "Egg."
	done
	
	
.PikaQuestionText
	text "Do you want to"
	line "be this Pikachu's"
	cont "new partner?"
	done

.PikaNoText
	text "You don't want"
	line "it? I'll hold it"
	cont "until you do."
	done

.PikaYesText
	text "I'm sure you will"
	line "take good care of"
	cont "this Pikachu"
	done

.PikaGoodbyeText
	text "Be sure to say"
	line "hello to Red for"
	cont "me, next time you"
	cont "see him."
	done

.AlreadyHavePikaText
	text "I'm glad that Red"
	line "is still doing"
	cont "well out there."
	
	para "He's not like"
	line "any other boy,"
	cont "but I still worry"
	cont "at times."
	done

RedsHouse1FTVScript:
	jumpthistext

	text "They have programs"
	line "that aren't shown"
	cont "in Johto…"
	done
