BEGIN ZBNEPHJ

/// Before Match 1
IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN BEGIN 0
  SAY @34 /* Why hello, <CHARNAME>. I had the pleasure of watching your battle with the animals. Ferocious, aren’t they? Then again, you’ll face much worse in the pits. */
  IF ~~ THEN GOTO 1
END

IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2)~ THEN BEGIN 1
  SAY @35 /* New gladiators always go up against the orc warband. Most people tend to laugh at them—they get resurrected and mocked for every failed match. Remember, in Dennaton’s game, the joke’s always on us. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",3)~ EXIT
END
///

/// After Match 1
IF ~Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)~ THEN BEGIN 1.1
  SAY @128 /* Dennaton will raise them and send them back in. Nothing learned. Nothing gained. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_1","GLOBAL",4)~ EXIT
END
///

/// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)~ THEN BEGIN 2.1
  SAY @41 /* You’ve borne witness to the harshest truth of this place: anyone can be replaced at a moment’s notice, and even the most loyal are enslaved one way or another. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_2","GLOBAL",4)~ EXIT
END
///

/// Before Match 3 - Lizards
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",2)~ THEN BEGIN 3
  SAY @67 /* Lizardfolk are vicious warriors that shouldn’t be underestimated. Be wary—their hides turn blades, and their shamans summon swarms of biting insects. Do me a personal favor and get rid of them, okay? */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",3)~ EXIT
END
///

/// After Match 3
IF ~Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)~ THEN BEGIN 3.1
  SAY @129 /* I don’t envy you. I’d rather keep my boots clean of reptile guts. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_3","GLOBAL",4)~ EXIT
END
///

/// Before Match 4 - Elder Umber Hulks
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",2)~ THEN BEGIN 4
  SAY @45 /* Umber hulks are extremely dangerous and fast to boot, and their elders more so. They can easily overpower those that gaze into their eyes. Luckily for you, I happen to have a potion that’ll defend you from any adverse effects. It’s all yours for a meager 300 gold. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0) SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ GOTO 6
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 6
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ THEN EXIT
END
///

/// After Match 4
IF ~Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 4.1
  SAY @130 /* Well, you seem to be walking straight, so I guess you did okay. Not bad. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_4","GLOBAL",4)~ EXIT
END
///

/// Before Match 5
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",2)~ THEN BEGIN 7
  SAY @60 /* I spotted a war party of drow that were taken by the Planar Hunters. I suspect that you’re about to go face-to-face with a menagerie of spiders and magic, so be careful. They will use every advantage they can get to destroy you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ GOTO 8
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN 8
  SAY @123 /* In fact, perhaps you could use an advantage of your own. While most of these amateur fighters here will charge you for their assistance, I’ll fight with you—free, this time. A favor to my new favorite gladiator. What say you? */
  IF ~~ THEN REPLY @64 /* Your help would be greatly appreciated. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.2
  IF ~Global("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",0)~ THEN REPLY @65 /* How can you assist me? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.5
  IF ~~ THEN REPLY @55 /* We don’t need any dead weight. */ GOTO zbneph5.3
  IF ~~ THEN REPLY @66 /* I appreciate the offer, but we’ll be fine on our own. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.2
  SAY @49 /* You won’t regret it. I’ll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.3
  SAY @51 /* You may find yourself with a whole lot more without my help, but so be it. Good luck out there. */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.4
  SAY @53 /* Suit yourself, <CHARNAME>. I’ll be watching from the sidelines. */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.5
  SAY @54 /* I am a dancer in the shadows, a knife in the dark. Let me show you what I can do on the battlefield, and I promise that you won’t be disappointed. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",1)~ GOTO 8
END
///
