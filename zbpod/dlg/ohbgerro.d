// creator  : weidu (version 24900)
// argument : OHBGERRO.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBGERRO~

IF ~  Global("OHB_FINALE","GLOBAL",0)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1295 /* Don't touch me! Stay back! */
  IF ~~ THEN REPLY @1296 /* Relax, friend. I mean you no harm. */ GOTO 3
  IF ~~ THEN REPLY @1297 /* What's wrong? */ GOTO 2
  IF ~~ THEN REPLY @1298 /* Would you like me to come back later? */ GOTO 1
  IF ~~ THEN REPLY @1299 /* Okaaay. Sure thing, I'll leave you alone. */ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1300 /* That would be for the best. I don't want to hurt you. */
  IF ~~ THEN REPLY @1301 /* Is there anything I can do to help you? */ GOTO 3
  IF ~~ THEN REPLY @1302 /* You won't hurt me, I assure you. */ GOTO 2
  IF ~~ THEN REPLY @1303 /* Goodbye, then. */ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1304 /* Sometimes I hurt people without meaning to. They said they'd help. "Come with us; we can help you," they said. Lies, all lies. */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 50
END

IF ~~ THEN BEGIN 3
  SAY @1305 /* They said they'd help me. Lies. There is no one here who can help me. Here or anywhere. */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 50
END

IF ~~ THEN BEGIN 4
  SAY @1306 /* They tricked me. The Winged said she knew someone who could teach me to control the fire, the explosions, all the magic that comes out of me. */
  IF ~~ THEN DO ~AddJournalEntry(95946,INFO)
~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1307 /* I've burned down villages, killed hundreds of innocent people, turned flocks of sheep into rattlesnakes and farmers into chickens. */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1308 /* I've had enough of it. Nobody— */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 51
END

IF ~~ THEN BEGIN 7
  SAY @1309 /* Thank you, Molzahn. I do hope she smiles upon me. Someone's got to, surely. */
  IF ~~ THEN REPLY @1310 /* Why did the Hunters bring you here? */ GOTO 8
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @1311 /* I was thinking I'd ask you to join me in the arena. */ GOTO 9
  IF ~  !Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_BANNOR_SWITCH","GLOBAL",1)
~ THEN REPLY @1312 /* Are you able to prepare scrolls, by any chance? */ GOTO 18
  IF ~~ THEN REPLY @1313 /* Good luck. */ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1314 /* Certainly not to help me. I suspect they or Dennaton thought it would be entertaining to have a wild mage in the arena. */
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @1315 /* I was thinking I'd ask you to join me in my next battle. */ GOTO 9
  IF ~  !Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_BANNOR_SWITCH","GLOBAL",1)
~ THEN REPLY @1312 /* Are you able to prepare scrolls, by any chance? */ GOTO 18
  IF ~~ THEN REPLY @1313 /* Good luck. */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1316 /* You're mad, <PRO_MANWOMAN>. Why would you want that? */
  IF ~~ THEN REPLY @1317 /* Dennaton wouldn't have brought you here if he thought you posed a real threat. */ GOTO 10
  IF ~~ THEN REPLY @1318 /* What can I say? I'm a risk-taker. */ GOTO 11
  IF ~~ THEN REPLY @1319 /* I love the idea that everything could blow up at any time. It's exciting. */ GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @1320 /* Well, if that's what you believe, all right, I'll join you for your next fight. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @1321 /* Well, as long as you realize what you're getting into. All right, I'll join you for your next fight in the arena. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @1322 /* I used to think that too. It's less amusing after you've accidentally wiped out an entire bloodline. But, all right, I'll join you in the arena if you truly want me to. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @1323 /* Given the risk you're taking, I don't feel right asking you for the going rate for allies. How about we say 500 gold pieces? */
  IF ~  PartyGoldGT(499)
~ THEN REPLY @1324 /* Sounds good to me. */ DO ~TakePartyGold(500)
~ GOTO 14
  IF ~  Global("OHB_GERRO_FREE","LOCALS",0)
~ THEN REPLY @1325 /* It's a good offer, but I don't have that much gold on me. */ GOTO 15
  IF ~  Global("OHB_GERRO_FREE","LOCALS",1)
~ THEN REPLY @1325 /* It's a good offer, but I don't have that much gold on me. */ GOTO 16
  IF ~~ THEN REPLY @1326 /* Come to think of it, maybe it's not such a great idea. */ GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY @1327 /* Great, this is great. I'll try not to disappoint you, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_GERRO_HIRED","GLOBAL",1)
SetGlobal("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1328 /* Don't worry about it, then. I'll join you for free this time. You're doing me a favor. I'm just happy someone wants me on their side. */
  IF ~~ THEN REPLY @1329 /* Terrific. */ DO ~SetGlobal("OHB_GERRO_FREE","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY @1330 /* On second thought, I think I'd rather go it alone. */ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @1331 /* Hmm... I did join you last time for free. Don't get me wrong, I thought we worked very well together. But I'd like the gold this time. Ask me again when you have enough. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @1332 /* Oh... Okay. That's okay. I understand. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @1333 /* Sometimes...? Why do you ask? */
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY @1334 /* I need a scroll to heal me and my teammates. */ DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY @1335 /* I need something to increase my and my teammates' strength. */ DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY @1336 /* I want to swap the minds of two beings. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY @1337 /* I really want to turn Tartle into a chicken. */ DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY @1338 /* No reason. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1339 /* I don't know anything about healing. Ask Molzahn; I'm sure she can help you. */
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY @1340 /* All right. What about a scroll to give me and my teammates more strength? */ DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY @1341 /* I need a scroll to swap the minds of two beings. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY @1342 /* I need a scroll to turn Tartle into a chicken. */ DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY @366 /* Never mind. */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @1343 /* I've never cast such a spell, intentionally or otherwise. Sorry. */
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY @1334 /* I need a scroll to heal me and my teammates. */ DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY @1341 /* I need a scroll to swap the minds of two beings. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY @1344 /* Could you make a scroll that'd turn Tartle into a chicken? */ DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY @1345 /* I thought as much, but I had to ask. Good <DAYNIGHTALL>. */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @1346 /* Spirit transference. I've dabbled in it in the past. */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @1347 /* I think I could do it. Probably. But, you know, my scrolls are no more reliable than my spells. They generally work as intended... with some unexpected consequences. */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @1348 /* If you're game to try, I'll need an item belonging to the being the caster intends to switch bodies with. This is powerful magic. Only skilled spellcasters will be able to use the scroll. */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @1349 /* Given that I cannot guarantee its effectiveness, I'll only charge you 4,000 gold pieces. You can pay me when you bring me that item. */
  IF ~  PartyHasItem("ohbcom12")
~ THEN REPLY @1350 /* I already have such an item. Here. */ DO ~AddJournalEntry(95782,QUEST)
~ GOTO 27
  IF ~~ THEN REPLY @1351 /* Very well. I'll be back. */ EXIT
  IF ~~ THEN REPLY @1352 /* I need to think about this. */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @1353 /* Yeah, I'd love to see that. Unfortunately, chicken-shifting for me has only ever been an unintended outcome. I couldn't possibly scribe it onto a scroll. */
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY @1354 /* Could you make a scroll to heal me and my teammates? */ DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY @1355 /* What about a scroll to give me and my teammates more strength. Could you do that? */ DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY @1341 /* I need a scroll to swap the minds of two beings. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY @366 /* Never mind. */ EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 26
  SAY @1356 /* Keep your distance, <CHARNAME>! I say that to be safe. There's very little chance I'll go off without casting a spell. */
  IF ~  Global("OHB_BANNOR_SWITCH","GLOBAL",1)
!Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_GERR_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY @1312 /* Are you able to prepare scrolls, by any chance? */ GOTO 18
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom12")
~ THEN REPLY @1357 /* I brought you this. It belongs to the one I want to change bodies with. */ GOTO 27
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",2)
PartyGoldGT(3999)
~ THEN REPLY @1358 /* I have the 4,000 gold pieces for the scroll. */ DO ~TakePartyGold(4000)
~ GOTO 29
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY @948 /* How's the scroll coming? */ GOTO 32
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY @948 /* How's the scroll coming? */ GOTO 33
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",0)
~ THEN REPLY @1359 /* I'd like you to cast a spell—when you fight next to me in the arena. */ GOTO 9
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ THEN REPLY @1359 /* I'd like you to cast a spell—when you fight next to me in the arena. */ GOTO 34
  IF ~~ THEN REPLY @1360 /* I've got to ask: Why did the Hunters bring you here? */ GOTO 8
  IF ~~ THEN REPLY @1361 /* Better safe than sorry. I'll go now. */ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @1362 /* A piece of broken mirror. Interesting. I expected something more personal, but this should do the trick. */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
TakePartyItem("ohbcom12")
DestroyItem("ohbcom12")
~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @1363 /* Now for the matter of the payment... */
  IF ~  PartyGoldGT(3999)
~ THEN REPLY @1364 /* Here are your 4,000 gold pieces. */ DO ~TakePartyGold(4000)
~ GOTO 29
  IF ~~ THEN REPLY @1365 /* I don't have enough gold on me. I will be back. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY @1366 /* On second thought, I'd rather keep my money than risk it on the skills of someone as erratic as you. */ DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",2)
~ GOTO 31
END

IF ~~ THEN BEGIN 29
  SAY @1367 /* Great. I'll get right on it. I'll let you know when it's ready. */
  IF ~~ THEN DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",3)
SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",3)
AddJournalEntry(95787,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @1368 /* I'll be around. Unless I've been brutally slaughtered in the arena. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @1369 /* I am surprised. You seemed pretty keen, and you did bring me that piece of broken mirror. But as you wish. I'll be here if you change your mind. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32
  SAY @1370 /* I've only just started. Give me time. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY @1371 /* It's a complex incantation. It takes time. Don't worry, I'll get it done. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @1372 /* Are you sure about that? */
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ THEN REPLY @1373 /* Absolutely. We made a fine team last time. */ GOTO 35
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",0)
~ THEN REPLY @1002 /* Of course. */ GOTO 35
  IF ~~ THEN REPLY @1374 /* I was. Now I'm not. */ GOTO 17
END

IF ~~ THEN BEGIN 35
  SAY @1375 /* I don't feel right asking you for the going rate, given the risks. How does 500 gold pieces sound to you? */
  IF ~  PartyGoldGT(499)
~ THEN REPLY @1376 /* Sounds good. Here you go. */ DO ~TakePartyGold(500)
~ GOTO 36
  IF ~  Global("OHB_GERRO_FREE","LOCALS",0)
~ THEN REPLY @1377 /* It'd sound better if I had that much gold. */ GOTO 37
  IF ~  Global("OHB_GERRO_FREE","LOCALS",1)
~ THEN REPLY @1377 /* It'd sound better if I had that much gold. */ GOTO 16
  IF ~~ THEN REPLY @1326 /* Come to think of it, maybe it's not such a great idea. */ GOTO 17
END

IF ~~ THEN BEGIN 36
  SAY @1378 /* I'll try not to disappoint you, <CHARNAME>. See you in the arena! */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_GERRO_HIRED","GLOBAL",1)
SetGlobal("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 37
  SAY @1379 /* Well... don't worry about it, then. I'll join you for free this time. You're doing me a favor, really. It's nice to feel wanted for something other than crimes against humanity and elves and that one goblin lair. */
  IF ~~ THEN REPLY @1329 /* Terrific. */ DO ~SetGlobal("OHB_GERRO_FREE","LOCALS",1)
~ GOTO 36
  IF ~~ THEN REPLY @1380 /* Actually, I'd rather not. */ GOTO 17
END

IF ~  Global("ohb_finale_arena","oh8200",4)
~ THEN BEGIN 38
  SAY @1381 /* You're a gift from the gods, <CHARNAME>. Thank you. I foresee a great battle before you. Take these if they'll help. I'll return to the pits and see that no surprises come at you from behind. */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("scrl07",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXIT
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("scrl07",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXTERN ~OHBLEA~ 16
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
~ THEN DO ~GiveItemCreate("scrl07",Player1,1,0,0)
~ GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @1382 /* Before I forget, take this. I finished it yestereve. Do be careful with it, and remember, Bannor is a dangerous wizard, adamantite or otherwise. Best of luck, my friend. */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",4)
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("ohbscrl2",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXIT
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~ClearAllActions()
SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",4)
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("ohbscrl2",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXTERN ~OHBLEA~ 16
END

IF ~~ THEN BEGIN 40
  SAY @1383 /* I foresaw this great day, but that doesn't make its arrival any less sweet! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
END
