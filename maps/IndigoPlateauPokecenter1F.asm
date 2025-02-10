IndigoPlateauPokecenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PrepareEliteFourCallback

	def_warp_events
	warp_event  9, 13, INDIGO_PLATEAU, 1
	warp_event 10, 13, INDIGO_PLATEAU, 2
	warp_event  0, 13, POKECENTER_2F, 1
	warp_event 12,  3, WILLS_ROOM, 1

	def_coord_events
	coord_event 14,  4, 0, PlateauRivalBattleTrigger1
	coord_event 15,  4, 0, PlateauRivalBattleTrigger2

	def_bg_events
	bg_event 13,  7, BGEVENT_READ, PokemonJournalGiovanniScript

	def_object_events
	object_event 14,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	object_event 14,  9, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_LYRA
	object_event 10,  9, SPRITE_YELLOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauYellowScript, EVENT_INDIGO_PLATEAU_POKECENTER_YELLOW
	pc_nurse_event  9, 7
	object_event 10,  7, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IndigoPlateauCheatClubScript, -1
	mart_clerk_event  1,  9, MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	object_event  6,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IndigoPlateauTeleportGuyScript, -1
	pokemon_event  5,  9, ABRA, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, IndigoPlateauAbraText, -1
	object_event  5, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IndigoPlateauCooltrainermText, -1
	object_event 13, 12, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IndigoPlateauGirlScript, -1

	object_const_def
	const INDIGOPLATEAUPOKECENTER1F_RIVAL
	const INDIGOPLATEAUPOKECENTER1F_LYRA
	const INDIGOPLATEAUPOKECENTER1F_YELLOW

PrepareEliteFourCallback:
	setmapscene WILLS_ROOM, $0
	setmapscene KOGAS_ROOM, $0
	setmapscene BRUNOS_ROOM, $0
	setmapscene KARENS_ROOM, $0
	setmapscene LANCES_ROOM, $0
	setmapscene HALL_OF_FAME, $0
	clearevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_WILLS_ROOM_EXIT_OPEN
	clearevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KOGAS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KARENS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_ELITE_4_WILL
	clearevent EVENT_BEAT_ELITE_4_KOGA
	clearevent EVENT_BEAT_ELITE_4_BRUNO
	clearevent EVENT_BEAT_ELITE_4_KAREN
	clearevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_LANCES_ROOM_OAK_AND_MARY
	endcallback

PlateauRivalBattleTrigger1:
	moveobject INDIGOPLATEAUPOKECENTER1F_RIVAL, 15, 9
	moveobject INDIGOPLATEAUPOKECENTER1F_LYRA, 15, 9
PlateauRivalBattleTrigger2:
	checkevent EVENT_FINAL_BATTLE_WITH_LYRA
	iftruefwd .LyraFight
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .MaybeRivalFight
	ifequalfwd TUESDAY, .MaybeLyraFight
	ifequalfwd WEDNESDAY, .MaybeRivalFight
	ifequalfwd THURSDAY, .MaybeLyraFight
	ifequalfwd FRIDAY, .MaybeRivalFight
	ifequalfwd SATURDAY, .MaybeLyraFight
	end

.MaybeRivalFight:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse DoNothingScript
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue DoNothingScript
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalApproachesMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceobject INDIGOPLATEAUPOKECENTER1F_RIVAL, PLAYER
	faceobject PLAYER, INDIGOPLATEAUPOKECENTER1F_RIVAL
	showtext PlateauRivalText1
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .RivalTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .RivalChikorita
	; Cyndaquil
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 6
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .RivalPostBattle

.RivalTotodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .RivalPostBattle

.RivalChikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
.RivalPostBattle:
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	showtext PlateauRivalText2
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_RIVAL
	setscene $0
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	end

.MaybeLyraFight:
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iffalse DoNothingScript
	checkflag ENGINE_INDIGO_PLATEAU_LYRA_FIGHT
	iftrue DoNothingScript
.LyraFight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear INDIGOPLATEAUPOKECENTER1F_LYRA
	applymovement INDIGOPLATEAUPOKECENTER1F_LYRA, PlateauRivalApproachesMovement
	faceobject INDIGOPLATEAUPOKECENTER1F_LYRA, PLAYER
	faceobject PLAYER, INDIGOPLATEAUPOKECENTER1F_LYRA
	opentext
	writetext PlateauLyraText1
	waitbutton
	playmusic MUSIC_WALLY_BATTLE_ORAS
	writetext PlateauLyraText2
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_LYRA
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .LyraTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .LyraChikorita
	; Cyndaquil
	winlosstext PlateauLyraWinText, PlateauLyraLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .LyraPostBattle

.LyraTotodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .LyraPostBattle

.LyraChikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
.LyraPostBattle:
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	showtext PlateauLyraText3
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_LYRA, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_LYRA
	setscene $0
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_LYRA_FIGHT
	clearevent EVENT_FINAL_BATTLE_WITH_LYRA
	end

PlateauRivalText1:
	text "Hold it."

	para "You're going to"
	line "take the #mon"

	para "League challenge"
	line "now?"

	para "That's not going"
	line "to happen."

	para "My super well-"
	line "trained #mon"

	para "are going to pound"
	line "you."

	para "<PLAYER>!"
	line "I challenge you!"
	done

PlateauRivalWinText:
	text "…"

	para "OK--I lost…"
	done

PlateauRivalText2:
	text "…Darn… I still"
	line "can't win…"

	para "I… I have to think"
	line "more about my"
	cont "#mon…"

	para "Humph! Try not to"
	line "lose!"
	done

PlateauRivalLoseText:
	text "…"

	para "Whew…"
	line "With my partners,"

	para "I'm going to be"
	line "the Champion!"
	done

PlateauLyraText1:
	text "<PLAYER>!"

	para "I've been travel-"
	line "ing around Johto,"

	para "earning badges and"
	line "gaining strength."

	para "You know what"
	line "that's like,"
	cont "<PLAYER>."

	para "And now…"

	para "Here I am, at the"
	line "Indigo Plateau."

	para "Do you know what"
	line "this means?"

	para "I get to challenge"
	line "you, not only as"
	cont "my friend, but"
	done

PlateauLyraText2:
	text "as the #mon"
	line "League Champion!"
	done

PlateauLyraWinText:
	text "So you're still"
	line "stronger than me…"
	done

PlateauLyraLoseText:
	text "…I won?"
	done

PlateauLyraText3:
	text "I'm not angry that"
	line "I lost."

	para "I got to explore"
	line "Johto, meet new"
	cont "people, raise my"

	para "#mon to be"
	line "stronger than I"

	para "thought they could"
	line "ever be…"

	para "And I got to"
	line "battle you at my"
	cont "very best."

	para "You beat me--now"
	line "go beat the #-"
	cont "mon League!"
	done

PlateauRivalApproachesMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

PlateauRivalLeavesMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

PokemonJournalGiovanniScript:
	setflag ENGINE_READ_GIOVANNI_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Boss Giovanni!"

	para "When police sear-"
	line "ched the abandoned"
	cont "Viridian Gym, they"

	para "discovered that"
	line "its Leader,"
	cont "Giovanni, had"

	para "also been the"
	line "Team Rocket Boss."
	done

IndigoPlateauYellowScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_YELLOW_INTRO
	iftruefwd .HeardIntro
	writetext .GreetingText
	waitbutton
	setevent EVENT_LISTENED_TO_YELLOW_INTRO
.HeardIntro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .GiveStarterText
	promptbutton
	waitsfx
	checkevent EVENT_GOT_BULBASAUR_FROM_IVY
	iftruefwd .Squirtle
	checkevent EVENT_GOT_CHARMANDER_FROM_IVY
	iftruefwd .Bulbasaur
	givepoke CHARMANDER, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname CHARMANDER, STRING_BUFFER_3
	sjumpfwd .Finish

.Bulbasaur:
	givepoke BULBASAUR, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname BULBASAUR, STRING_BUFFER_3
	sjumpfwd .Finish

.Squirtle:
	givepoke SQUIRTLE, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname SQUIRTLE, STRING_BUFFER_3
.Finish:
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement INDIGOPLATEAUPOKECENTER1F_YELLOW, step_left
.noleftstep
	applymovement INDIGOPLATEAUPOKECENTER1F_YELLOW, .DownMovement
	playsound SFX_EXIT_BUILDING
	disappear INDIGOPLATEAUPOKECENTER1F_YELLOW
	setevent EVENT_GOT_A_POKEMON_FROM_YELLOW
	waitsfx
	end

.PartyAndBoxFullText:
	text "Yellow: Oh…"
	line "You can't carry"

	para "another #mon"
	line "either…"

	para "And your Box is"
	line "full, too…"
	done

.GreetingText:
	text "Yellow: Hi,"
	line "<PLAYER>!"

	para "I was watching the"
	line "Elite Four fight."

	para "They're so intense…"
	line "And they have such"

	para "strong bonds with"
	line "their #mon…"

	para "One day I'm going"
	line "to reach their"
	cont "level."
	done

.QuestionText:
	text "Yellow: <PLAYER>,"
	line "can you do me a"
	cont "favor?"

	para "I have a #mon"
	line "that I can't raise"
	cont "myself, and I don't"

	para "want to leave it"
	line "in PC storage."

	para "Will you take it,"
	line "please?"
	done

.GiveStarterText:
	text "Yellow: Thanks,"
	line "<PLAYER>! Here"
	cont "you go!"
	done

.RefusedText:
	text "Yellow: Oh…"
	line "But what about the"
	cont "#mon?"
	done

.GoodbyeText:
	text "Yellow: You take"
	line "good care of that"

	para ""
	text_ram wStringBuffer3
	text ","
	line "<PLAYER>!"

	para "I hope we'll meet"
	line "again."
	cont "Bye-bye!"
	done

.DownMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

IndigoPlateauTeleportGuyScript:
	faceplayer
	opentext
	writetext .Text
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 15, 6
	end

.Text:
	text "Ah! You're chal-"
	line "lenging the Elite"

	para "Four? Are you sure"
	line "you're ready?"

	para "If you need to"
	line "train some more,"

	para "my Abra can help"
	line "you."

	para "It can Teleport"
	line "you home."

	para "Would you like to"
	line "go home now?"
	done

.YesText:
	text "OK, OK. Picture"
	line "your house in your"
	cont "mind…"
	done

.NoText:
	text "OK, OK. The best"
	line "of luck to you!"
	done

IndigoPlateauAbraText:
	text "Abra: Aabra…"
	done

IndigoPlateauCooltrainermText:
	text "At the #mon"
	line "League, you'll get"

	para "tested by the"
	line "Elite Four."

	para "You have to beat"
	line "them all. If you"

	para "lose, you have to"
	line "start all over!"
	done

IndigoPlateauGirlScript:
	faceplayer
	opentext
	checkevent EVENT_INDIGO_PLATEAU_GUIDE_GIRL_INTRO
	iftruefwd .SkipHerIntro
	writetext .IndigoPlateauGirlIntroText
	waitbutton
	setevent EVENT_INDIGO_PLATEAU_GUIDE_GIRL_INTRO
.SkipHerIntro
	writetext .WantInfoText
	yesorno
	iffalse_jumpopenedtext .NotInterestedText
	writetext .WhoAskAboutText
	promptbutton
	loadmenu IndigoPlateauGuideGirl_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .AshInfo
	ifequalfwd $2, .KateInfo
	ifequalfwd $3, .TripInfo
	ifequalfwd $4, .FedmaeInfo
	ifequalfwd $5, .NoInfo
	end
	
.IndigoPlateauGirlIntroText:
	text "Hello!"
	
	para "Have you seen"
	line "those four"
	cont "trainers standing"
	cont "outside?"
	
	para "They're really"
	line "strong, so I don't"
	cont "stand a chance"
	cont "against them."
	
	para "But I can tell you"
	line "about them if you"
	cont "want any info!"
	
	para "So how about it?"
	done

.WantInfoText:
	text "Would you like any"
	line "information about"
	cont "the so-called"
	cont "Elite Faux?"
	done

.WhoAskAboutText:
	text "Who would you like"
	line "to know about?"
	done

.AshInfo:
	writetext .AshInfoText
	waitbutton
	closetext
	end
	
.KateInfo:
	writetext .KateInfoText
	waitbutton
	closetext
	end

.TripInfo:
	writetext .TripInfoText
	waitbutton
	closetext
	end

.FedmaeInfo:
	writetext .FedmaeInfoText
	waitbutton
	closetext
	end
	
.NoInfo:
	writetext .NotInterestedText
	waitbutton
	closetext
	end

.AshInfoText:
	text "Ash Ketchum."
	
	para "He's very easily"
	line "excited when it"
	cont "comes to seeing"
	cont "new #mon."
	
	para "His team is"
	line "well balanced"
	cont "with decent type"
	cont "coverage."
	done

.KateInfoText:
	text "Kate Dering."
	
	para "She is quite the"
	line "impressive #-"
	cont "mon trainer."
	
	para "But she has a bad"
	line "habit of bragging"
	cont "too much before a"
	cont "battle, and so"
	cont "she is easy to"
	cont "distract."
	
	para "Her team makes"
	line "use of some more"
	cont "competitive strat-"
	cont "egies, and she"
	cont "has decent type"
	cont "coverage."
	done

.TripInfoText:
	text "Trip Dering."
	
	para "He is quite"
	line "mysterious, even"
	cont "to me."
	
	para "He uses excellent"
	line "type coverage and"
	cont "highly trained"
	cont "#mon."
	done

.FedmaeInfoText:
	text "Fedmae Vaendin."
	
	para "He considers him-"
	line "self an Archmage."
	
	para "But he is really"
	line "just a high-level"
	cont "Psychic trainer."
	
	para "He also uses the"
	line "Fairy-type, so"
	cont "be prepared for"
	cont "that as well."
	
	para "However, that also"
	line "means he lacks"
	cont "the expert type"
	cont "coverage of the"
	cont "other three."
	done

.NotInterestedText:
	text "Not interested?"
	
	para "Okay then! Good"
	line "luck against them"
	cont "and also against"
	cont "the real Elite"
	cont "Four!"
	done

IndigoPlateauGuideGirl_MenuHeader:
	db $40
	db 00, 11
	db 11, 19
	dw .MenuData
	db 1

.MenuData:
	db $81
	db 5
	db "Ash@"
	db "Kate@"
	db "Trip@"
	db "Fedmae@"
	db "No One@"

IndigoPlateauCheatClubScript:
	faceplayer
	opentext
	writetext IndigoPlateauCheatClubText
	waitbutton
	closetext
	end

IndigoPlateauCheatClubText:
	text "Welcome to the"
	line "Cheater's Club!"
	
	para "I'm sorry, but"
	line "this branch of the"
	cont "Club is currently"
	cont "closed."
	
	para "Feel free to"
	line "check our other"
	cont "locations!"
	
	para "Goodbye for now!"
	done