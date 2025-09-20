IndigoPlateau_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauFlyPoint
	callback MAPCALLBACK_NEWMAP, EliteFauxRematchAvailable

	def_warp_events
	warp_event 11,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 12,  5, INDIGO_PLATEAU_POKECENTER_1F, 2

	def_coord_events

	def_bg_events
	bg_event 13,  7, BGEVENT_JUMPTEXT, IndigoPlateauSignText

	def_object_events
	object_event  9,  5, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IndigoPlateauAshScript, -1
	object_event  7,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IndigoPlateauKateScript, -1
	object_event 16,  7, SPRITE_VETERAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IndigoPlateauTripScript, -1
	object_event 14,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IndigoPlateauFedmaeScript, -1
	
	object_const_def
	const INDIGO_PLATEAU_ASH
	const INDIGO_PLATEAU_KATE
	const INDIGO_PLATEAU_TRIP
	const INDIGO_PLATEAU_FEDMAE

IndigoPlateauFlyPoint:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
EliteFauxRematchAvailable:
    checkflag ENGINE_DAILY_ELITE_FAUX_RESET
    iftruefwd .NoRematch
	clearevent EVENT_BEAT_ASH
	clearevent EVENT_BEAT_KATE
	clearevent EVENT_BEAT_FEDMAE
	clearevent EVENT_BEAT_TRIP
	setflag ENGINE_DAILY_ELITE_FAUX_RESET
.NoRematch
	endcallback


IndigoPlateauSignText:
	text "Indigo Plateau"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#mon League HQ"
	done

IndigoPlateauAshScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ASH
	iftruefwd .AlreadyBeatAsh
	checkevent EVENT_LISTENED_TO_ASH
	iftruefwd .BattleAsh
	writetext .IntroAshText
	waitbutton
	setevent EVENT_LISTENED_TO_ASH
	closetext
	end

.BattleAsh:
	faceplayer
	opentext
	checkevent EVENT_INITIAL_BATTLE_ASH
	iftruefwd .RematchAsh
	writetext .BattleAshText
	yesorno
	iffalse_jumpopenedtext .RefusedAshText
	writetext .AcceptedAshText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Ash3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Ash2
	winlosstext .BeatenAshText, 0
	setlasttalked INDIGO_PLATEAU_ASH
	loadtrainer ASH, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ASH
	setevent EVENT_INITIAL_BATTLE_ASH
	opentext
	writetext .AshFarewellText
	waitbutton
	closetext
	end

.RematchAsh
	writetext .RematchAshText
	yesorno
	iffalse_jumpopenedtext .RefusedAshText
	writetext .AcceptedAshRematchText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Ash3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Ash2
	winlosstext .BeatenAshText, 0
	setlasttalked INDIGO_PLATEAU_ASH
	loadtrainer ASH, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ASH
	setevent EVENT_INITIAL_BATTLE_ASH
	opentext
	writetext .AshFarewellText
	waitbutton
	closetext
	end

.Ash3
	winlosstext .BeatenAshText, 0
	setlasttalked INDIGO_PLATEAU_ASH
	loadtrainer ASH, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ASH
	opentext
	writetext .AshFarewellText2
	waitbutton
	closetext
	end

.Ash2
	winlosstext .BeatenAshText, 0
	setlasttalked INDIGO_PLATEAU_ASH
	loadtrainer ASH, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ASH
	opentext
	writetext .AshFarewellText2
	waitbutton
	closetext
	end
	
.AlreadyBeatAsh:
	writetext .BattleAshWonText
	waitbutton
	closetext
	end

.IntroAshText:
	text "Hey there!"
	
	para "My name's Ash"
	line "Ketchum, and I am"
	cont "going to be the"
	cont "world's best"
	cont "#mon master!"
	done

.BattleAshText:
	text "Ash: Would you"
	line "like to have a"
	cont "friendly battle?"
	done

.RematchAshText:
	text "Ash: Ready for"
	line "another great"
	cont "battle?"
	done
	
.RefusedAshText:
	text "Oh? Okay then."
	
	para "Maybe next time!"
	done

.AcceptedAshText:
	text "Ash: Sweet! Can't"
	line "wait to see what"
	cont "kind of #mon"
	cont "you have!"
	done

.AcceptedAshRematchText:
	text "Ash: Awesome! I"
	line "hope this one is"
	cont "just as fun as"
	cont "the last battle!"
	done

.BeatenAshText:
	text "You're really"
	line "good at this!"
	
	para "I'd like to"
	line "battle you again"
	cont "tomorrow, OK?"
	done

.AshFarewellText:
	text "Ash: By the way,"
	line "what's your name?"
	
	para "<PLAYER>?"
	
	para "Alright, I'll re-"
	line "member that for"
	cont "sure!"
	
	para "See you later,"
	line "<PLAYER>!"
	done
	
.AshFarewellText2:
	text "Ash: That was"
	line "another fun bat-"
	cont "-tle, don't you"
	cont "agree? See you"
	cont "again tomorrow!"
	done
	
.BattleAshWonText:
	text "Ash: <PLAYER>, maybe"
	line "you should wait"
	cont "until tomorrow. I"
	cont "can battle again"
	cont "then, OK?"
	done
	
IndigoPlateauKateScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KATE
	iftruefwd .AlreadyBeatKate
	checkevent EVENT_LISTENED_TO_KATE
	iftruefwd .BattleKate
	writetext .IntroKateText
	waitbutton
	setevent EVENT_LISTENED_TO_KATE
	closetext
	end

.BattleKate:
	faceplayer
	opentext
	checkevent EVENT_INITIAL_BATTLE_KATE
	iftruefwd .RematchKate
	writetext .BattleKateText
	yesorno
	iffalse_jumpopenedtext .RefusedKateText
	writetext .AcceptedKateText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Kate3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Kate2
	winlosstext .BeatenKateText, 0
	setlasttalked INDIGO_PLATEAU_KATE
	loadtrainer KATE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KATE
	setevent EVENT_INITIAL_BATTLE_KATE
	opentext
	writetext .KateFarewellText
	waitbutton
	closetext
	end

.RematchKate
	writetext .RematchKateText
	yesorno
	iffalse_jumpopenedtext .RefusedKateText
	writetext .AcceptedKateRematchText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Kate3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Kate2
	winlosstext .BeatenKateText, 0
	setlasttalked INDIGO_PLATEAU_KATE
	loadtrainer KATE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KATE
	setevent EVENT_INITIAL_BATTLE_KATE
	opentext
	writetext .KateFarewellText
	waitbutton
	closetext
	end

.Kate3
	winlosstext .BeatenKateText, 0
	setlasttalked INDIGO_PLATEAU_KATE
	loadtrainer KATE, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KATE
	opentext
	writetext .KateFarewellText2
	waitbutton
	closetext
	end

.Kate2
	winlosstext .BeatenKateText, 0
	setlasttalked INDIGO_PLATEAU_KATE
	loadtrainer KATE, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KATE
	opentext
	writetext .KateFarewellText2
	waitbutton
	closetext
	end

	
.AlreadyBeatKate:
	writetext .BattleKateWonText
	waitbutton
	closetext
	end
	
.IntroKateText:
	text "Hello there,"
	line "trainer."
	
	para "If you haven't"
	line "yet beaten the"
	cont "Elite Four, then"
	cont "I don't think"
	cont "you are ready"
	cont "to face me."
	
	para "Sorry. But I"
	line "can easily"
	cont "defeat them, so"
	cont "you would pose no"
	cont "challenge."
	
	para "But if you insist,"
	line "then I suppose it"
	cont "is time, trainer."

	para "My name is Kate."

	para "I am what you can"
	line "consider a #-"
	cont "mon master."

	para "I know that you"
	line "really want to"
	cont "battle with me."
	
	para "But be ready."

	para "If you're not"
	line "completely pre-"
	cont "pared for this,"
	
	para "There's a zero"
	line "percent chance"
	cont "that you'll win."
	done

.BattleKateText:
	text "Kate: So then, are"
	line "you one hundred"
	cont "percent ready?"
	done

.RematchKateText:
	text "Kate: Oh, you are"
	line "back for more"
	cont "battles."

	para "In that case I am"
	line "more than happy to"
	cont "oblige."

	para "I hope your team"
	line "is ready for this."
	done
	
.RefusedKateText:
	text "Kate: Smart kid."
	done

.AcceptedKateText:
	text "Kate: Alright,"
	line "trainer."

	para "Try not to disap-"
	line "point me too much."
	done

.AcceptedKateRematchText:
	text "Kate: Alright,"
	line "trainer."

	para "Let's go all out"
	line "for this battle!"
	done

.BeatenKateText:
	text "Kid, you may just"
	line "have what it takes"
	cont "to go all the way."
	
	para "I'll be here if"
	line "you ever want a"
	cont "rematch."
	done

.KateFarewellText:
	text "Kate: Yes, I do"
	line "believe you are"
	cont "a contender."

	para "Go on then, and"
	line "challenge the"
	cont "Elite Four."

	para "You should be"
	line "able to easily"
	cont "win against them."
	done
	
.KateFarewellText2:
	text "See you around,"
	line "trainer."
	
	para "I'll be here"
	line "whenever you are"
	cont "ready to play"
	cont "again."

	para "Until next time,"
	line "goodbye."
	done
	
.BattleKateWonText:
	text "Kate: I'll battle"
	line "you again tomor-"
	cont "row, trainer."
	done

IndigoPlateauTripScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TRIP
	iftrue .AlreadyBeatTrip
	checkevent EVENT_LISTENED_TO_TRIP
	iftruefwd .BattleTrip
	checkevent EVENT_INITIAL_BATTLE_KATE
	iftruefwd .FoughtKateFirst
	checkevent EVENT_LISTENED_TO_KATE
	iftruefwd .TalkedToKateAtLeast
	writetext .IntroTripText
	waitbutton
	setevent EVENT_LISTENED_TO_TRIP
	closetext
	end

.FoughtKateFirst
	writetext .IntroTrip2Text
	waitbutton
	setevent EVENT_LISTENED_TO_TRIP
	closetext
	end
	
.TalkedToKateAtLeast
	writetext .IntroTrip3Text
	waitbutton
	setevent EVENT_LISTENED_TO_TRIP
	closetext
	end

.BattleTrip:
	faceplayer
	opentext
	checkevent EVENT_INITIAL_BATTLE_TRIP
	iftruefwd .RematchTrip
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Trip3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Trip2
	writetext .BattleTripText
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripText
	waitbutton
	closetext
	winlosstext .BeatenTripText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	setevent EVENT_INITIAL_BATTLE_TRIP
	opentext
	writetext .TripFarewellText
	waitbutton
	closetext
	end

.RematchTrip
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .RematchTrip3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .RematchTrip2
	writetext .RematchTripText
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripRematchText
	winlosstext .BeatenTripRematchText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	opentext
	writetext .TripFarewell2Text
	waitbutton
	closetext
	end

.Trip3
	writetext .BattleTrip3Text
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripText
	waitbutton
	winlosstext .BeatenTripText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	setevent EVENT_INITIAL_BATTLE_TRIP
	opentext
	writetext .TripFarewellText
	waitbutton
	closetext
	end

.Trip2
	writetext .BattleTrip2Text
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripText
	waitbutton
	winlosstext .BeatenTripText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	setevent EVENT_INITIAL_BATTLE_TRIP
	opentext
	writetext .TripFarewellText
	waitbutton
	closetext
	end

.RematchTrip3
	writetext .RematchTrip3Text
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripRematchText
	waitbutton
	winlosstext .BeatenTripRematchText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	opentext
	writetext .TripFarewell2Text
	waitbutton
	closetext
	end

.RematchTrip2
	writetext .RematchTrip2Text
	yesorno
	iffalse_jumpopenedtext .RefusedTripText
	writetext .AcceptedTripRematchText
	waitbutton
	winlosstext .BeatenTripRematchText, 0
	setlasttalked INDIGO_PLATEAU_TRIP
	loadtrainer TRIP, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TRIP
	opentext
	writetext .TripFarewell2Text
	waitbutton
	closetext
	end

.AlreadyBeatTrip:
	writetext .BattleTripWonText
	waitbutton
	closetext
	end
	
.IntroTripText:
	text "Hello, trainer."
	
	para "Have you happened"
	line "to battle with a"
	cont "green-haired girl"
	cont "by the name of"
	cont "Kate?"
	
	para "Oh, you haven't?"
	
	para "That's fine. She's"
	line "my little sister,"
	cont "and I like to see"
	cont "how people fare"
	cont "against her."
	
	para "My name is Trip."
	line "What's yours?"
	
	para "<PLAYER>?"
	
	para "Trip: OK then,"
	line "<PLAYER>."
	cont "I look forward to"
	cont "seeing how you"
	cont "battle!"
	done

.IntroTrip2Text:
	text "Hello, trainer."
	
	para "Have you happened"
	line "to battle with a"
	cont "green-haired girl"
	cont "by the name of"
	cont "Kate?"
	
	para "You beat her in a"
	line "#mon battle?"
	
	para "Interesting."
	
	para "She's my little"
	line "sister, and she"
	cont "really likes to"
	cont "brag about her"
	cont "skill."
	
	para "Though if you've"
	line "managed to beat"
	cont "her in battle,"
	cont "then she has a"
	cont "very long way to"
	cont "go before she can"
	cont "be considered"
	cont "a #mon Master."
	
	para "My name is Trip."
	line "What's yours?"
	
	para "<PLAYER>?"
	
	para "Trip: OK then,"
	line "<PLAYER>."
	cont "I look forward to"
	cont "seeing how you"
	cont "battle!"
	done
	
.IntroTrip3Text:
	text "Hello, trainer."
	
	para "Have you happened"
	line "to battle with a"
	cont "green-haired girl"
	cont "by the name of"
	cont "Kate?"
	
	para "You've spoken to"
	line "her before?"
	
	para "I bet she spoke"
	line "very highly of"
	cont "herself."
	
	para "She's my little"
	line "sister, and she"
	cont "really likes to"
	cont "brag about her"
	cont "skill."
	
	para "However, she"
	line "still has a long"
	cont "way to go before"
	cont "she can really"
	cont "be considered"
	cont "a #mon Master."
	
	para "My name is Trip."
	line "What's yours?"
	
	para "<PLAYER>?"
	
	para "Trip: OK then,"
	line "<PLAYER>."
	cont "I look forward to"
	cont "seeing how you"
	cont "battle!"
	done

.BattleTripText:
	text "Trip: So then."

	para "Would you like"
	line "to battle with"
	cont "me? I must warn"
	cont "you, while my"
	cont "sister is more"
	cont "of a braggart,"
	
	para "My own #mon"
	line "have been trained"
	cont "to the absolute"
	cont "limit."
	
	para "Are you ready?"
	done

.BattleTrip2Text:
	text "Trip: So then."

	para "Would you like"
	line "to battle with"
	cont "me? I must warn"
	cont "you, while my"
	cont "sister is more"
	cont "of a braggart,"
	
	para "My own #mon"
	line "have been trained"
	cont "beyond normal"
	cont "limits!"
	
	para "Are you ready?"
	done
	
.BattleTrip3Text:
	text "Trip: So then."

	para "Would you like"
	line "to battle with"
	cont "me? I must warn"
	cont "you, while my"
	cont "sister is more"
	cont "of a braggart,"
	
	para "My own party"
	line "have reached the"
	cont "final limit of"
	cont "#mon."
	
	para "Yes, they are all"
	line "Level 100."
	
	para "Are you ready?"
	done
	
.RematchTripText:
	text "Trip: Hello again,"
	line "<PLAYER>."
	
	para "Ready for another"
	line "great battle?"
	
	para "My own #mon"
	line "have been trained"
	cont "to the absolute"
	cont "limit."
	
	para "Are you ready?"
	done

.RematchTrip2Text:
	text "Trip: Hello again,"
	line "<PLAYER>."
	
	para "Ready for another"
	line "great battle?"
	
	para "My own #mon"
	line "have been trained"
	cont "beyond normal"
	cont "limits!"
	
	para "Are you ready?"
	done

.RematchTrip3Text:
	text "Trip: Hello again,"
	line "<PLAYER>."
	
	para "Ready for another"
	line "great battle?"
	
	para "My own party"
	line "have reached the"
	cont "final limit of"
	cont "#mon."
	
	para "Yes, they are all"
	line "Level 100."
	
	para "Are you ready?"
	done

.RefusedTripText:
	text "Trip: That is"
	line "perfectly fine."
	
	para "I won't hold it"
	line "against you if"
	cont "you wish to"
	cont "train more first."
	done

.AcceptedTripText
	text "Trip: Very well."
	
	para "I do hope you"
	line "enjoy this battle."
	done

.AcceptedTripRematchText
	text "Trip: Very well."
	
	para "It will definitely"
	line "be another wonder-"
	cont "ful battle!"
	done

.BeatenTripText
	text "Splendid! That"
	line "was indeed a"
	cont "lovely battle!"
	
	para "Congratulations!"
	done
	
.BeatenTripRematchText
	text "Once again, you"
	line "have triumphed,"
	cont "<PLAYER>."
	
	para "I can't wait"
	line "to see just how"
	cont "far you go!"
	done
	

.TripFarewellText
	text "Trip: Indeed,"
	line "you are splendid."
	
	para "You're more than"
	line "a match for me."
	cont "You'll go far,"
	cont "<PLAYER>."
	done

.TripFarewell2Text
	text "Trip: Amazing!"
	
	para "I never get tired"
	line "of battling with"
	cont "you, <PLAYER>."
	
	para "Come back again"
	line "tomorrow, so we"
	cont "can have another"
	cont "one!"
	done
	
.BattleTripWonText:
	text "Trip: Come back"
	line "tomorrow, and I"
	cont "will be ready"
	cont "for another battle"
	cont "with you!"
	done

IndigoPlateauFedmaeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FEDMAE
	iftruefwd .AlreadyBeatFedmae
	checkevent EVENT_LISTENED_TO_FEDMAE
	iftruefwd .BattleFedmae
	writetext .IntroFedmaeText
	waitbutton
	setevent EVENT_LISTENED_TO_FEDMAE
	closetext
	end

.BattleFedmae:
	faceplayer
	opentext
	checkevent EVENT_INITIAL_BATTLE_FEDMAE
	iftruefwd .RematchFedmae
	writetext .BattleFedmaeText
	yesorno
	iffalse_jumpopenedtext .RefusedFedmaeText
	writetext .AcceptedFedmaeText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Fedmae3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Fedmae2
	winlosstext .BeatenFedmaeText, 0
	setlasttalked INDIGO_PLATEAU_FEDMAE
	loadtrainer FEDMAE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FEDMAE
	setevent EVENT_INITIAL_BATTLE_FEDMAE
	opentext
	writetext .FedmaeFarewellText
	waitbutton
	closetext
	end

.RematchFedmae
	writetext .RematchFedmaeText
	yesorno
	iffalse_jumpopenedtext .RefusedFedmaeText
	writetext .AcceptedFedmaeRematchText
	waitbutton
	closetext
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Fedmae3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Fedmae2
	winlosstext .BeatenFedmaeRematchText, 0
	setlasttalked INDIGO_PLATEAU_FEDMAE
	loadtrainer FEDMAE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FEDMAE
	setevent EVENT_INITIAL_BATTLE_FEDMAE
	opentext
	writetext .FedmaeFarewellText
	waitbutton
	closetext
	end

.Fedmae3
	winlosstext .BeatenFedmaeText, 0
	setlasttalked INDIGO_PLATEAU_FEDMAE
	loadtrainer FEDMAE, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FEDMAE
	opentext
	writetext .FedmaeFarewellText2
	waitbutton
	closetext
	end

.Fedmae2
	winlosstext .BeatenFedmaeText, 0
	setlasttalked INDIGO_PLATEAU_FEDMAE
	loadtrainer FEDMAE, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FEDMAE
	opentext
	writetext .FedmaeFarewellText2
	waitbutton
	closetext
	end
	
.AlreadyBeatFedmae:
	writetext .BattleFedmaeWonText
	waitbutton
	closetext
	end
	
.IntroFedmaeText:
	text "... ... ..."
	
	para "... ... ..."
	
	para "(You get the"
	line "feeling that he"
	cont "doesn't wish to"
	cont "talk with you.)"
	
	para "(Maybe try again.)"
	done

.BattleFedmaeText:
	text "...Fine."
	
	para "I'll battle you."
	
	para "But don't go cry-"
	line "ing when you lose."
	done

.RematchFedmaeText:
	text "Fedmae: ..."
	line "Oh, it's you?"
	
	para "You want..."
	line "...another battle?"
	done

.RefusedFedmaeText:
	text "Whatever."
	
	para "You would have"
	line "lost anyway."
	done

.AcceptedFedmaeText:
	text "Whatever."
	
	para "Get ready."
	done

.AcceptedFedmaeRematchText:
	text "Whatever."
	
	para "Go ahead, then."
	done

.BeatenFedmaeText:
	text "Inconceiveable."
	
	para "A trainer like you"
	line "shouldn't have"
	cont "ever managed to"
	cont "win against me."
	
	para "What even are you?"
	done

.BeatenFedmaeRematchText:
	text "Unreal."
	
	para "You still manage"
	line "to claim victory,"
	cont "even against"
	cont "impossible odds?"
	
	para "You are an enigma."
	done

.FedmaeFarewellText:
	text "...My name is"
	line "Fedmae Vaendin."
	
	para "You'll do well to"
	line "remember that."
	done

.FedmaeFarewellText2:
	text "Fedmae: ..."
	
	para "... ..."
	
	para "... ... ..."
	
	para "...Come back"
	line "tomorrow..."
	done

.BattleFedmaeWonText:
	text "Fedmae: ..."
	
	para "... ..."
	
	para "... ...go away."
	done

