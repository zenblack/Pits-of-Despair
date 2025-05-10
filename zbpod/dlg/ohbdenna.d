BEGIN ~OHBDENNA~

IF ~~ THEN BEGIN 0
  SAY @532 /* I mean, "OUR" wealth, of course. This is a partnership. I need you and you, me. So long as you perform and entertain our audience, you will live a life of comfort, even opulence. */
  IF ~~ THEN REPLY @533 /* You expect us to kill each other for you and your patrons' amusement? */ GOTO 1
  IF ~~ THEN REPLY @534 /* I like comfort and opulence. I like freedom even more. */ GOTO 257
  IF ~~ THEN REPLY @535 /* Forget it. I'm not going through this again! */ GOTO 257
END

IF ~~ THEN BEGIN 1
  SAY @536 /* You won't be fighting each other, at least not often. That would be counterproductive! You are the prize horses, not the mules! */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 2
  SAY @537 /* Don't let that act fool you! Very cagey is the Ancient Threat. Next, we have a <PRO_MANWOMAN> whose deeds are so well known, they hardly need mentioning. A <PRO_MANWOMAN> legendary for prowess in gladiatorial combat. I give you the Champion of Baeloth's Pit, <CHARNAME>! */
  IF ~~ THEN REPLY @538 /* I'll not play your pathetic game, Dennaton! I decide my own fate! */ GOTO 3
  IF ~~ THEN REPLY @539 /* What, no nickname for me? */ GOTO 5
  IF ~~ THEN REPLY @540 /* Let me be clear, Dennaton. I'll fight and I'll kill. It's what I do, but if the coin's not good enough, I'll butcher and stew you in a pot of your own gravy! */ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @541 /* Oh, <CHARNAME>, don't be so naïve. Fighting for a king, country, god, or even an ideal is still fighting for a cause that isn't you. At least this way you get rich in the process. */
  IF ~~ THEN REPLY @542 /* A feeble justification. I'll hear no more of your lies. */ GOTO 4
  IF ~~ THEN REPLY @543 /* Hmm... We shall see. */ GOTO 270
  IF ~~ THEN REPLY @544 /* I'd better. */ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @545 /* You don't have to like it, <CHARNAME>. You just have to fight, and if you don't? Well, then you shall be killed. A shame to lose one of your talent, but the show will go on. */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 5
  SAY @546 /* Of course you shall have one! How about "The Ravager"? No, no, no, no... "Infinite Desolation"? No, I don't like that... Of course! You are "The Scourge of Baeloth"! */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 6
  SAY @547 /* Oh, you'll find the money more than sufficient, don't you worry about that. You just keep them coming back for more. */
  IF ~~ THEN GOTO 270
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_101","GLOBAL",1)
~ THEN BEGIN 7
  SAY @548 /* Lords and ladies, dignitaries and honored guests, today I give you something truly extraordinary—a champion of a rival arena making their debut here in our own! I give you the Scourge of Baeloth's Pits... <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @549 /* In what is sure to be little more than an exhibition, the new challenger will face several orcs captured in the wilds near Nethra. They SEEMED ferocious at the time, but look at them cower now that their challenger has been named! */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @550 /* Before we begin, <CHARNAME>, is there anything you'd like to say to the audience? */
  IF ~~ THEN REPLY @551 /* These foul beasts once committed unspeakable acts of cruelty upon the civilized people of Faerûn. Today, I enact justice in the name of all their innocent victims! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 10
  // IF ~~ THEN REPLY @552 /* This arena is as much a joke as the last. Let's get this over with, Dennaton! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
// ~ GOTO 11
  // IF ~  OR(2)
// Global("ohb_101_item_good","global",0)
// Global("ohb_101_item_great","global",0)
// ~ THEN REPLY @553 /* You expect me to entertain you, yet I have only the most basic of weaponry. Can a chef make a soufleé with only a firepit? Can a painter create a masterpiece with only one color? A symphony of violence requires many instruments. */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 12
//   IF ~~ THEN REPLY @554 /* Not particularly. */ GOTO 13
  IF ~~ THEN REPLY @555 /* Why should I address these peasants? To gaze upon my magnificence is more than they deserve! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY @556 /* We shall sleep better tonight, knowing there are heroes in this world. The time has come! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @557 /* As you wish. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @558 /* My friends, our fledgling composer needs a patron. Will any of you help <PRO_HIMHER> make sweet music for you? For now, we shall let <PRO_HIMHER> demonstrate <PRO_HISHER> talent by hearing the tune <PRO_HESHE> plays with the instruments at hand! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @559 /* Inspiring stuff, <CHARNAME>. Very well, then. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @560 /* Listen to the boos! So raucous! So beautiful! The applause will be thunderous the day you are brought low! Perhaps today? Let's find out! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_102","GLOBAL",1)
~ THEN BEGIN 15
  SAY @561 /* Ladies and gentlemen, I welcome you again to our main event. You've already met our next combatant! Once again, I give you our newest attraction, the Scourge of Baeloth's Pits, <CHARNAME>! */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @562 /* This challenger is entirely homegrown. There's not a craven orc in the bunch! They're the top gladiatorial team out of Raskilov's Academy of Might from right here in Thay. I give you "Raskilov's Ragers!" */
  IF ~  Global("OHB_EVENT_102_DIALOG","MYAREA",0)
~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("OHB_START_BATTLE","GLOBAL",3)
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",1)
SetGlobal("ohb_spawn_gladiators","myarea",0)
StartCutScene("ohbcut09")
~ EXIT
  IF ~!Global("OHB_EVENT_102_DIALOG","MYAREA",0)~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)~ GOTO 21
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",1)
~ THEN BEGIN 17
  SAY @563 /* Everyone, please settle down and return to your seats! I'm afraid we can't pay out the bets on the last match, as it was interfered with. All wagers will be pushed to the next one! */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @564 /* In the meantime, grab another ale or leg of mutton while we do some slight restaging. Our food vendors are coming down the aisles now! */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @565 /* As for you "performers," let this be a lesson to you. There will be no changes to the script, and the script is this: You fight. Fight well, and you live. Fight poorly, you die. It's hardly original, but it's a crowd-pleaser. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",2)
Wait(1)
FadeToColor([30.0],0)
Wait(3)
DayNight(DUSK_END)
CreateCreature("OHBMIN01",[1578.690],SSW)
CreateCreature("OHBMIN01",[1701.786],SSW)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",2)
~ THEN BEGIN 20
  SAY @566 /* *ahem* Attention, everyone! We are ready once more for today's main event. We've decided to keep what remains of "Raskilov's Ragers," and we're throwing in some minotaurs to help them out! */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",3)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @567 /* Before we start, <CHARNAME>, would you like to address your adoring fans? */
  IF ~~ THEN REPLY @568 /* I am a humble <PRO_MANWOMAN>. I scraped by as best I could in Baeloth's Pits. Faced with trained gladiators, I only hope I last long enough to provide the entertainment you deserve. */ DO ~SetGlobal("ohb_raise_hero_score","global",1) SetGlobal("ohb_item_reward","global",1) PlaySound("BP2POS_1")~ GOTO 22
  // IF ~~ THEN REPLY @569 /* Really, Dennaton? You claim to provide entertainment available nowhere else. This fight will be over in seconds, and you know it. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
// ~ GOTO 23
  // IF ~  OR(2)
// Global("ohb_102_item_good","global",0)
// Global("ohb_102_item_great","global",0)
// ~ THEN REPLY @570 /* I destroyed some orcs for your amusement—these gladiators will be no different. But you, my people, deserve more! Give me the proper tools, and I swear the front row will drip red with blood! */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 24
  IF ~~ THEN REPLY @571 /* Not at all. */ GOTO 25
  IF ~~ THEN REPLY @572 /* Thayan gladiators? Ha! A nation of weaklings! No Thayan can stand against me! */ DO ~SetGlobal("ohb_raise_villain_score","global",1) SetGlobal("ohb_item_reward","global",1) PlaySound("BP2NEG_1")~ GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY @573 /* Amazing! The Champion of Baeloth's Pits just convinced the crowd THEY'RE the underdog! Even more amazingly, they've convinced a crowd of Thayans to ROOT for the underdog! Good show! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @574 /* If it would ease your conscience, I can make sure your future battles are VERY DIFFICULT. Now, combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @575 /* How can you resist a champion who begs for the opportunity to entertain you more?! Dig deep, and be generous, but above all, enjoy the show! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @576 /* Boring, boring, boring! But have it your way. All right, combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @577 /* A nation's pride has been wounded! Can Thay's sons and daughters bring honor to our homeland? We shall see! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_103","GLOBAL",1)
~ THEN BEGIN 27
  SAY @578 /* Welcome once more to the unequaled drama of the center arena! Again, I give you a <PRO_MANWOMAN> of unmatched reputation and skill, steadily clawing <PRO_HISHER> way to the top of our ladder. Please give a warm Thayan welcome to the Scourge of Baeloth's Pits—<CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @579 /* Speaking of clawing, our next challengers hail from the marshes of Chult. It takes more than just a scaly hide and forked tongue to reach the top of the lizardman heap, and this tribal chieftain did it quicker than most. Throw in his elite guard, and it's sure to be hiss-sterical! */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @580 /* But before we begin—<CHARNAME>, is there anything you'd like to say to your adoring fans? */
  IF ~~ THEN REPLY @581 /* The noble savage. A worthy foe. I am honored to battle such an adversary. I trust our esteemed guests will find some thrill in the contest. */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 30
  // IF ~~ THEN REPLY @582 /* This is shameful! Yet another hopelessly lopsided match fobbed off as entertainment. You're bilking these people out of their hard-earned coin! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
// ~ GOTO 31
 // IF ~  OR(2)
// Global("ohb_103_item_good","global",0)
// ~ THEN REPLY @583 /* Today, you will see one lizard at a time skewered—but two at a time would be better. I need proper weaponry! Come on, people! A potter cannot create vases without clay! */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 32
//   IF ~~ THEN REPLY @584 /* Nothing they'd care to hear. */ GOTO 33
  IF ~~ THEN REPLY @585 /* A lion doesn't address sheep. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 34
END

IF ~~ THEN BEGIN 30
  SAY @586 /* Noble savages indeed. Today's battle pits nature against civilization. Let us see which will prove the stronger. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @587 /* A valid point, <CHARNAME>. If the audience doesn't get their money's worth from this fight, perhaps I'll use your winnings to refund their tickets... IF you win. Now, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @588 /* Who can resist the earnest entreaties of someone who wants nothing more than to entertain us? Be generous—help <PRO_HIMHER> help you! Now, without further ado, combatants! To arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @589 /* You are a warrior of few words. If that's all you've got, then it's time to fight. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @590 /* Ah, yes, my patrons. Let your displeasure shower down upon our villain. Perhaps the Chultan savages will lay <PRO_HIMHER> low. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_104","GLOBAL",1)
~ THEN BEGIN 35
  SAY @591 /* Attention, honored guests! Prepare to be amazed. Prepare to be HORRIFIED! Once again, I give you a warrior whose victories are the talk of the arena. Everyone, let's give a round of applause to the Scourge of Baeloth's Pits, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @592 /* These next creatures were pulled from the mines of Mirabar! Some would have you believe such creatures do not exist—that they are only stories invented to frighten children. Today, you will see that they are very real indeed! Ladies and gentlemen, I present for your amusement—for your horror—a pack of rabid UMBER HULKS! */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @593 /* Before we begin, <CHARNAME>, have you any words for the audience? */
  IF ~~ THEN REPLY @594 /* Fear not, good people. As nightmares are banished by the light, so shall these creatures be banished by my might. */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 38
 // IF ~~ THEN REPLY @595 /* Dennaton, you disgusting piece of filth! You'd not last ten seconds in this arena! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 39
//  IF ~  OR(2)
// Global("ohb_104_item_good","global",0)
// Global("ohb_104_item_great","global",0)
// ~ THEN REPLY @596 /* At last, I face creatures capable of spilling the kind of blood you want. But imagine how much greater a spectacle you'd witness had I better weapons! You shall have a river of blood, but I yearn to give you an ocean! */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 40
// IF ~~ THEN REPLY @597 /* Don't think so. */ GOTO 41
  IF ~~ THEN REPLY @598 /* These pathetic creatures will fall before me. People of Thay, lock your doors and hide your children. I give nightmares nightmares! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 42
END

IF ~~ THEN BEGIN 38
  SAY @599 /* Courageous, and a poet to boot! Come, my patrons, show your champion support once more! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @600 /* You may be right. But the question that matters is how long YOU will last. Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @601 /* The Scourge of Baeloth's Pits wants to give us a show. What a generous and giving spirit! Won't you be as generous for your favorite performer? While you decide, let the killing commence! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @602 /* *sigh* Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @603 /* Aha! Then we are fortunate that two nightmares clash here today. Worry not, my patrons—in moments, only one will be left. Combatants! To arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 43
  SAY @604 /* Come one, come all, to the greatest show this side of the Astral Plane! Once more, I bring you a performer that's slowly but surely winning hearts... and minds! In a world bereft of heroes, they fill the void, a beacon of light to all! I give you the Scourge of Baeloth's Pits, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 44
  SAY @605 /* Ladies and gentlemen, let me present a performer who continues to explore new and greater depths of infamy! Come on, everyone—let's REALLY hear the boos for the Scourge of Baeloth's Pits, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 45
  SAY @606 /* Come one, come all, to the greatest show this side of the Astral Plane! Once again, I bring you a performer whose skill is matched only by their lofty reputation. I give you the Scourge of Baeloth's Pits, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @607 /* Our challengers are some of the most despicable creatures in all of Toril! The bane of all who walk in the sun, these ancient enemies of Thay are so depraved that even the light itself hates them. Fear? Loathing? Disgust? You'll feel them all for the drow of House Aiel'for! */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @608 /* Before we begin, <CHARNAME>, have you anything you'd like to say? */
  IF ~~ THEN REPLY @609 /* Fear not, good people of Thay! Your champion is here! When I am done this day, these despicable beasts will be naught but stains upon the arena floor! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_5")
~ GOTO 48
 // IF ~  GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
// ~ THEN REPLY @610 /* I've no doubt YOU fear the drow, Dennaton. You're nothing without the Winged. One day, it'll just be you and me in this arena. Some day soon. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
// ~ GOTO 49
//   IF ~  !GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
// ~ THEN REPLY @610 /* I've no doubt YOU fear the drow, Dennaton. You're nothing without the Winged. One day, it'll just be you and me in this arena. Some day soon. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
// ~ GOTO 51
// IF ~  OR(2)
// Global("ohb_105_item_good","global",0)
// Global("ohb_105_item_great","global",0)
// ~ THEN REPLY @611 /* Volo wrote the History of the Sword Coast. Prism sculpted the Mask of Ellesime. I shall create the greatest spectacle of gore seen this side of the Blood War. I need only the proper tools. Help me, everyone. Help me entertain YOU! */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 50
// IF ~~ THEN REPLY @612 /* Nope. */ GOTO 52
  IF ~~ THEN REPLY @613 /* Drow? Is this the best you can do? Surely even you fools know better than to fear such weaklings. I am the true dark one. FEAR ME! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_3")
~ GOTO 53
END

IF ~~ THEN BEGIN 48
  SAY @614 /* I feel safer already! Lords and ladies, please cheer your champion as <PRO_HESHE> faces the minions of darkness. Combatants— */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @615 /* I tire of these repeated insults, <CHARNAME>. But the show must go on! Should you live, we'll "discuss" this later. For now, combatants— */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @616 /* Do you hear that? The Scourge of Baeloth's Pits asks us to help create a masterpiece of death! Clearly, <PRO_HESHE> has the talent—will someone give <PRO_HIMHER> the tools? Questions to ponder, but for now, combatants— */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @617 /* I'd think one of your experience would concentrate more on surviving than such idle fantasies. But enough. It is time to raise the curtain on this act! Combatants, to arms! */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @618 /* Can't you at least TRY to be a little bit interesting? *sigh* Very well. Combatants, to arms! */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 53
  SAY @619 /* Amazing! This day, I have witnessed something I never imagined I'd see: The drow are the champions of the Thayan people! Come, dark heroes! Slay the Scourge of Baeloth's Pits... if you can! Combatants, to arms! */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_105","GLOBAL",1)
Global("OHB_EVENT_105","MYAREA",1)
~ THEN BEGIN 54
  SAY @620 /* YOU WRETCHED WENCH! THREATENING ME?! IN MY OWN ARENA?! */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",2)
~ GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @621 /* What are you all looking at?! You lot just kill each other. You in the stands... GET TO THE CHEERING, NOW! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_ENEMY_OVERRIDE","GLOBAL",0)
SetGlobal("OHB_105","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 56
  SAY @622 /* Good evening! It is once again my pleasure—nay, my HONOR—to present to you the vanquisher of darkness, the destroyer of evil, the champion of the good and noble citizens of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 57
  SAY @623 /* Good evening! Once again, for the amusement of your most discerning tastes, I bring you a performer of such talent and ability as to have vanquished all before them and emerged unscathed!  */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 58
  SAY @624 /* Ladies, hide your children! Gentlemen, steel your nerves and steady your ladies. A villain most vile and dangerous is in our midst. I bring you that which stalks your darkest dreams and infests your deepest fears, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @625 /* It has been whispered that the shining spires of the City of Splendors conceal beneath them dark and terrible secrets. The whispers are true. */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @626 /* Plucked from the shadows beneath Waterdeep, I give you the vampire lord Gaul and his coven of eternal darkness! */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @627 /* Before the carnage begins, would you like to address your adoring fans, <CHARNAME>? */
  IF ~~ THEN REPLY @628 /* Dusk settles across the land, but dawn will come anew. Citizens of Thay, I am your dawn-bringer. I shall banish these foul creatures to the Nine Hells! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 62
 // IF ~~ THEN REPLY @629 /* These are no vampires! I can see their false fangs from here! You're trying to pass common street ruffians off as undead! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 63
//  IF ~  OR(2)
//Global("ohb_201_item_good","global",0)
//Global("ohb_201_item_great","global",0)
//~ THEN REPLY @630 /* If you truly want a spectacle, ladies and gentlemen, give me something I can use to decorate this pit with my opponents' broken bodies! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 64
//  IF ~~ THEN REPLY @631 /* No. */ GOTO 65
  IF ~~ THEN REPLY @632 /* You Thayans cower and squeal like stuck pigs, and for what? A handful of rotting corpses? Behold a true warrior, and know shame! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 66
END

IF ~~ THEN BEGIN 62
  SAY @633 /* What a relief we have such a mighty champion to defend us. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 63
  SAY @634 /* You'll discover the truth of your foe's identity and despair, <CHARNAME>. Begin the battle! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 64
  SAY @635 /* Imagine the excitement of this mighty performer using YOUR gift to defeat this foe. Do not deny yourselves such an opportunity! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY @636 /* I hope the fight is more interesting than your speech. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY @637 /* Do not dismay, bold and honorable men of Thay. Either the foul vampires or this mocking rascal will fall this day. May the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 67
  SAY @638 /* Maidens, prepare to swoon. Men, prepare to cheer. Your champion is here once again to participate in a spectacle beyond comparison! I give you <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 68
  SAY @639 /* It is my pleasure to once again bring you a seemingly unstoppable warrior who has vanquished foe after foe: <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 69
  SAY @640 /* Ladies and gentlemen, our next performer needs no introduction. Their dark reputation stains the crimson honor of Thay! I give you your nemesis, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @641 /* The sages and scholars write of the vastness of existence, how there are realms and planes vastly different and far removed from our own. Ah! I see some among you doubt me. Well, doubt no LONGER! */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY @642 /* See, I give you the planar travelers, the githyanki! Brought here by powerful magics, our performer will be hard-pressed to defeat their alien cunning and strength! */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY @643 /* Before the slaughter commences, <CHARNAME>, would you care to address the audience? */
  IF ~~ THEN REPLY @644 /* I dedicate this battle to you, good people of Thay. I'll vanquish these alien monstrosities for YOU! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 73
//  IF ~~ THEN REPLY @645 /* You may fool the crowd with these two-copper illusions, Dennaton, but not me. These are nothing but freakishly tall goblins. They shall fall before me. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 74
 // IF ~  OR(2)
//Global("ohb_202_item_good","global",0)
//Global("ohb_202_item_great","global",0)
//~ THEN REPLY @646 /* They say the githyanki wield mighty swords. Imagine what I could do with an equally mighty weapon or item to use against them! Give me one and I promise you'll not regret it! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 75
//  IF ~~ THEN REPLY @647 /* I'll save my breath for the battle. */ GOTO 76
  IF ~~ THEN REPLY @648 /* With each blow I land upon my enemy, I shall imagine I am crushing one of you cowering weaklings! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 77
END

IF ~~ THEN BEGIN 73
  SAY @649 /* Your champion has spoken! They shall smite your enemies and drive them back to their own vile plane, have no fear! Let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @650 /* You fool no one but yourself, <CHARNAME>. Begin!  */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 75
  SAY @651 /* What a joy it would be to see your mighty gift turned against the legendary blades of the githyanki! For now, however, the champion must make do with what <PRO_HESHE>'s got. Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 76
  SAY @652 /* Save your breath? I should've saved my money for a true performer. Let the combat begin. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 77
  SAY @653 /* We are called weak and cowardly! Well, let us see how this performer fares against the masters of planar travel! Combatants, to arms! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 78
  SAY @654 /* You have seen your champion fight denizens of the surface realm and the Underdark, prevailing again and again. Now your beloved hero shall defend you against a new threat! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 79
  SAY @655 /* You have seen the Scourge of Baeloth's Pits fight denizens of the surface realm and the Underdark and prevail every time! Now, they will face a new foe for your entertainment! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 80
  SAY @656 /* Neither denizens of the surface realm nor the Underdark have been able to lay the enemy of Thay low! Now, the villain <CHARNAME> will face their greatest challenge yet! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY @657 /* From the deepest oceans, I have captured strange and bizarre creatures the likes of which not even Thay's most learned scholars know. Look and wonder! */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
  SAY @658 /* An ancient and powerful race, the sahuagin produce warriors beyond compare. You will see one, accompanied by its elemental allies, battle our performer in this evening's featured bout! */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
  SAY @659 /* <CHARNAME>! Before we begin, have you anything to say to the Thayan people? */
  IF ~~ THEN REPLY @660 /* No beasts from the sea will stop me from defending the worthy citizens of Thay! Rest easy. I am here for you! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 84
 // IF ~~ THEN REPLY @661 /* Is this the best you can do, Dennaton? I'll slaughter these beasts in moments. I hope you people didn't actually pay for this. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 85
//  IF ~  OR(2)
//Global("ohb_203_item_good","global",0)
//Global("ohb_203_item_great","global",0)
//~ THEN REPLY @662 /* Look at my equipment, my weapons! Are there no better instruments of destruction to be had? With the mighty artifacts your great nation possesses, I could give you an unforgettable show! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 86
//  IF ~~ THEN REPLY @663 /* Let's get on with this. */ GOTO 87
  IF ~~ THEN REPLY @664 /* I shall make the battle short. I'm sure you wretches want to return to your worthless lives as soon as possible. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 88
END

IF ~~ THEN BEGIN 84
  SAY @665 /* Your hero defends your honor once again, good citizens of Thay! And as always, refreshment carts can be found in the aisles and near each exit. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 85
  SAY @666 /* If you feel the battles are too easy, perhaps in the future you should be stripped of your gear. But enough talk. Begin the battle! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 86
  SAY @667 /* We are a rich and mighty nation. Is there no one in the crowd this day who wishes to bestow a gift upon the performer? Think on it while <PRO_HESHE> battles for <PRO_HISHER> life! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 87
  SAY @668 /* As you tire of words, so the crowd tires of you. Let the battle begin. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 88
  SAY @669 /* An insult to the hearty citizens of Thay! Let this performer hear your dismay as the battle... begins! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 89
  SAY @670 /* I do not mean to alarm you, good people of Thay, but I must be honest. I fear for your beloved champion. Today, they face a foe of cunning and power that will take them to their limit! Let your champion hear you cheer their name! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 90
  SAY @671 /* I am not a sentimental man, but concern wells in my chest for our performer. Our next adversary possesses such cunning and power that even the mighty <CHARNAME> will be hard pressed to survive. Now, let me hear your cheers! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 91
  SAY @672 /* People of Thay, today your nemesis, who has mocked you at every opportunity, faces a foe of such cunning and power that victory will be nearly unattainable! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~~ THEN BEGIN 92
  SAY @673 /* For your entertainment, I have found a sorcerer of such immense power that even the very manifestations of the elemental planes obey his every command.  */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
  SAY @674 /* As always, before we begin, I want to give you the opportunity to speak to your fans, <CHARNAME>. These may be your last words—choose them well. */
  IF ~~ THEN REPLY @675 /* No sorcerous trickery, no summoned elemental lord, no conjurer of any power will thwart me. I fight for Thay! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 94
//  IF ~~ THEN REPLY @676 /* A halfling mage, Dennaton? Is your audience so easily parted from their hard-earned gold? */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 95
//  IF ~  OR(2)
//Global("ohb_204_item_good","global",0)
//Global("ohb_204_item_great","global",0)
//~ THEN REPLY @677 /* This shall be poor entertainment—unless some generous patron or patroness has something I might use to enhance the spectacle. Anyone? */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 96
//  IF ~~ THEN REPLY @678 /* I have nothing to say. */ GOTO 97
  IF ~~ THEN REPLY @679 /* You Thayans will regret caging me. When I am free, all Thayans will cower in their bedchambers at night, fearful that the mighty <CHARNAME> will come for them from the shadows! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 98
END

IF ~~ THEN BEGIN 94
  SAY @680 /* Stand and cheer for your champion! You may turn the tide in favor of your hero. Raise your voices, cheer! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 95
  SAY @681 /* Let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 96
  SAY @682 /* The performer calls for an item of power, a favor from the beloved people of Thay! Do not disappoint <PRO_HIMHER>! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 97
  SAY @683 /* The elementals would have been more interesting. Begin the battle. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 98
  SAY @684 /* Is there no good to be found within this performer's dark soul? No, I daresay there isn't. Very well, let Thay's antagonist fight for <PRO_HISHER> survival! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 99
  SAY @685 /* It has been said the mighty hero of Thay would travel to the Nine Hells themselves to defend your honor. This day we'll see if those tales are true! Raise your voices and cheer for <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 100
  SAY @686 /* It has been said that this arena's performers could challenge the Nine Hells and prevail. Today, one of them has that opportunity. */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 101
  SAY @687 /* A scourge, a bane, a hated adversary strides before you. You have called this performer a devil and a demon alike. Today, we'll find out how true that is. */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY @688 /* From the depths of the Hells and the Abyss, the mightiest devils and demons have been brought here to battle this performer. */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
  SAY @689 /* Those in the first row who are in the habit of leaning over the safety railing, I beg you exercise restraint. I'd hate to see you decapitated. */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY @690 /* And as always, I offer you the chance to speak to your fans, <CHARNAME>. What would you have them know? */
  IF ~~ THEN REPLY @691 /* Nothing can overcome my zeal for defending the Thayan people! I shall defeat these fiends for you, my noble patrons! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_5")
~ GOTO 105
 // IF ~~ THEN REPLY @692 /* Devils and demons? They're nothing but imps, you wretched fraud! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 106
//  IF ~  OR(2)
//Global("ohb_205_item_good","global",0)
//Global("ohb_205_item_great","global",0)
//~ THEN REPLY @693 /* Who would see these fiends beg for mercy? Give me the means and I'll have this entire host on its knees before you! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 107
//  IF ~~ THEN REPLY @694 /* Let's just get this over with. */ GOTO 108
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY @695 /* I see devils and demons each time I look at this accursed audience! If you wish to see the true fiends, look to yourselves! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_3")
~ GOTO 109
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @695 /* I see devils and demons each time I look at this accursed audience! If you wish to see the true fiends, look to yourselves! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_3")
~ GOTO 275
END

IF ~~ THEN BEGIN 105
  SAY @696 /* What nobility! What courage! People of Thay, I give you your champion! Raise your voices and lend your strength, for it will be needed. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 106
  SAY @697 /* I'll reward these "imps" with your prize money when they skewer you. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 107
  SAY @698 /* Imagine it! Demons and devils, begging for mercy! Surely there is one among our benevolent patrons who can help our performer make it happen? */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 108
  SAY @699 /* Yes, let's. Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 109
  SAY @700 /* He calls us demons and devils! Let this impudent performer face the true demons and devils and fight for survival! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 110
  SAY @701 /* Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? If so, you're in for a treat! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 111
  SAY @702 /* Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? If so, you're in for a treat! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 112
  SAY @703 /* Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? The adversary of Thay stands ready! Observe! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~~ THEN BEGIN 113
  SAY @704 /* It is commonly believed that light and darkness constantly war, one against the other. You may be surprised, even shocked, to learn not everyone shares this opinion. */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
  SAY @705 /* The Cult of the Twofold believes that light and darkness both spring from a single goddess, Shar and Selûne combined. If you doubt my words, then believe your eyes, for they stand before you today, ready to fight! */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
  SAY @706 /* But before the clash begins—<CHARNAME>, would you care to address your adoring fans? */
  IF ~~ THEN REPLY @707 /* Heresies have no place in Thay! I shall silence this cult's lies forever so all gods-fearing people can worship without fear. */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 116
 // IF ~~ THEN REPLY @708 /* Priests and scribes, Dennaton? Ridiculous. I'll try to end this before the crowd falls asleep. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 117
//  IF ~  OR(2)
//Global("ohb_301_item_good","global",0)
//Global("ohb_301_item_great","global",0)
//~ THEN REPLY @709 /* Cults often possess relics of untold power. I wonder, do any of you possess some token I might use to thwart this twisted order? */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 118
 // IF ~~ THEN REPLY @710 /* I am a <PRO_MANWOMAN> of action! Let the battle begin! */ GOTO 119
  IF ~~ THEN REPLY @711 /* I'm not surprised this detestable nation harbors such foul blasphemers. Watch me visit the gods' wrath on these heretics. As I kill them, I think of you. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 119
END

IF ~~ THEN BEGIN 116
  SAY @712 /* Said like a hero heaven-sent to conquer the foes of Thay! Raise your voices! Raise your fists! Cheer for <CHARNAME> as the battle begins! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 117
  SAY @713 /* You'll require the aid of priests if you continue speaking to me in that way. Let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 118
  SAY @714 /* Aha! Will the good people of Thay leave this performer to face ancient magics without any aid? Come forward! Bestow a gift on this performer and watch the battle unfold! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 119
  SAY @715 /* We'll need to work on your speaking skill, <CHARNAME>. But for now, let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 120
  SAY @716 /* Have you ever heard such malevolence? Thayans, let this performer hear your displeasure! Raise your voices against them! Let the games... Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 121
  SAY @717 /* Greetings, honored guests! Recline in your seats and allow yourselves to be diverted as your hero, <CHARNAME>, fights for your honor! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 122
  SAY @718 /* Greetings, honored guests! Recline in your seats and let this next performer take your troubled minds far from the rigors of your daily responsibilities. */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 123
  SAY @719 /* Greetings, honored guests! Recline in your seats and let the following spectacle take your troubled minds far from the rigors of your daily responsibilities. Let yourselves be diverted as your hated enemy, <CHARNAME>, fights for survival! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~~ THEN BEGIN 124
  SAY @720 /* I have brought many bizarre and powerful creatures here for your amusement. Great beasts and cunning fighters have graced these pits; powerful magics have released their fury within these walls. */
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
  SAY @721 /* But nothing has prepared you for this evening's spectacle. I bring you the shattering golem! */
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
  SAY @722 /* <CHARNAME>. Have you anything to say before we begin? */
  IF ~~ THEN REPLY @723 /* I would gladly strike down a hundred golems in my patrons' honor. */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 127
//  IF ~~ THEN REPLY @724 /* "Shattering golem"? Are you joking? */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 128
//  IF ~  OR(2)
//Global("ohb_302_item_good","global",0)
//Global("ohb_302_item_great","global",0)
//~ THEN REPLY @725 /* My mouth is parched! Had I some fine spirits to moisten my lips, I could promise a fine spectacle! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 129
 // IF ~~ THEN REPLY @726 /* I'll save my words for when we're finished. */ GOTO 130
  IF ~~ THEN REPLY @727 /* A shattering golem? Only in Thay... */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 131
END

IF ~~ THEN BEGIN 127
  SAY @728 /* I daresay you shall have your chance. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 128
  SAY @729 /* Your mocking tone tempts me to make your next fight your last! Begin the battle. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 129
  SAY @730 /* There are no finer spirits to be found anywhere else! Surely there is one among the crowd who can wet the lips of our mighty performer? */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 130
  SAY @731 /* Very well. Pass quietly into obscurity. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 131
  SAY @732 /* The performer insults our artisans and wizards! This is an outrage! Men and women of Thay, let this scoundrel hear your displeasure. I shall send the villain to <PRO_HISHER> doom without delay. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 132
  SAY @733 /* Your attention, please! Make your way to your seats and prepare to again bear witness to the might and devotion of your beloved champion, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 133
  SAY @734 /* Your attention, please! Make your way to your seats and prepare to bear witness to our next performer, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 134
  SAY @735 /* Your attention, please! Make your way to your seats and prepare to again bear witness to the depravity and wickedness of the most reviled enemy of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~~ THEN BEGIN 135
  SAY @736 /* Conventional wisdom would have you believe death comes for us all. The next combatants defy conventional wisdom. */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
  SAY @737 /* She scoffed at death! I give you the lich Leah Redsun and her undead horrors! */
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
  SAY @738 /* But before we begin, have you any words for the audience, <CHARNAME>? */
  IF ~~ THEN REPLY @739 /* Death in service to the Thayan people holds no horror for me. My life is yours! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 138
// IF ~~ THEN REPLY @740 /* I shall slay this rotting hedge wizardess and reveal you for the fraud you are, Dennaton! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 139
//  IF ~  OR(2)
//Global("ohb_303_item_good","global",0)
//Global("ohb_303_item_great","global",0)
//~ THEN REPLY @741 /* A lich is a powerful foe. Give me something, some item to help me fight it, and I'll end this undead horror for all time! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 140
//  IF ~~ THEN REPLY @742 /* None. */ GOTO 141
  IF ~~ THEN REPLY @743 /* A lich. Finally, a real wizard in this nation of bumbling poseurs. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 142
END

IF ~~ THEN BEGIN 138
  SAY @744 /* Not even death itself shall sway the champion of Thay! Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 139
  SAY @745 /* YOU shall be the only thing rotting with talk like that. Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 140
  SAY @746 /* The performer speaks the truth! The lich is a powerful foe. I implore anyone with the means to help <CHARNAME> to do so now, before it's too late. Now, let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 141
  SAY @747 /* I hope your sword is sharper than your wit. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 142
  SAY @748 /* A nation of the greatest wizards in all recorded history are insulted by this vile gladiator! We shall hear no more of your despicable lies. Fight or die! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 143
  SAY @749 /* Again, I appear before you as your humble servant and entertainer. And again, I am honored to present the great champion of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 144
  SAY @750 /* Again, I appear before you as your humble servant—I am honored to present the next great gladiator and entertainer, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 145
  SAY @751 /* Again, I appear before you, a humble servant and entertainer. And again, I find myself in the regrettable position of introducing the repulsive scourge of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~~ THEN BEGIN 146
  SAY @752 /* Now I must warn you, if there are any cat lovers in the audience, they might wish to leave before this next bout. I have scoured the planes to find the pits' next contestants. */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
  SAY @753 /* You have known the vicious rakshasa as nothing more than a bard's tale, invented to frighten children and entertain their parents. Today, you will see they are very real and very dangerous. */
  IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
  SAY @754 /* But before we begin, do you have anything to say to the audience, <CHARNAME>? */
  IF ~~ THEN REPLY @755 /* Do not fear these monstrous creatures, good people of Thay. They shall fall before before me, your champion! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 149
 // IF ~~ THEN REPLY @756 /* Pathetic. I'll unmask your so-called rakshasas and reveal them as for the common street thugs they are. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 150
//  IF ~  OR(2)
//Global("ohb_304_item_good","global",0)
//Global("ohb_304_item_great","global",0)
//~ THEN REPLY @757 /* People of Thay, I beseech you, give me the means to send cat hair throughout this arena. */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 151
//  IF ~~ THEN REPLY @758 /* Nothing springs to mind. */ GOTO 152
  IF ~~ THEN REPLY @759 /* Just like Thayans to be frightened by cats. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 153
END

IF ~~ THEN BEGIN 149
  SAY @760 /* Even the most frightened members of the audience will rest easy knowing they have a mighty champion fighting for them. Now, let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 150
  SAY @761 /* I'm tempted to remove more than a mask from you—but for now, I'll settle for the rakshasas exposing your weakness to the audience. Fight! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 151
  SAY @762 /* Imagine the excitement of this mighty performer vanquishing the horrid rakshasa with YOUR gift! Come, who could resist such an appeal? Now, let the games begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 152
  SAY @763 /* Well, I suggest you bring SOMETHING to mind. The battle is beginning! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 153
  SAY @764 /* Come, fellow Thayans, let us watch our bitter enemy face certain doom! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 154
  SAY @765 /* Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I give you your champion, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 155
  SAY @766 /* Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I give you... <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 156
  SAY @767 /* Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I reluctantly present you your nemesis, the archenemy of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~~ THEN BEGIN 157
  SAY @768 /* Thayans are an educated and well-read people. Even so, I daresay few among you know of the strange creatures that will battle before you this <DAYNIGHTALL>. */
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
  SAY @769 /* From the depths of the Underdark, I have procured the bizarre and alien illithid for your amusement! Yes, the terrible mind flayers shall battle the performer before your very eyes! */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
  SAY @770 /* But before we begin, do you wish to speak, <CHARNAME>? */
  IF ~~ THEN REPLY @771 /* My love for Thay will shield my mind from illithid trickery! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_5")
~ GOTO 160
//  IF ~~ THEN REPLY @772 /* Gluing squids onto some goblins won't fool anyone, Dennaton. You're a sham! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 161
//  IF ~  OR(2)
//Global("ohb_305_item_good","global",0)
//Global("ohb_305_item_great","global",0)
//~ THEN REPLY @773 /* Good people of Thay, if I have found any favor in your hearts, please bestow on me some token to aid me in my struggles. */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 162
 // IF ~~ THEN REPLY @774 /* I've nothing to say. */ GOTO 163
  IF ~~ THEN REPLY @775 /* Mind flayers feed on their victims' minds. My opponents would surely starve to death in the witless nation of Thay. I shall kill them out of mercy. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_3")
~ GOTO 164
END

IF ~~ THEN BEGIN 160
  SAY @776 /* Raise your voices, people! Let your cheers be shields against the beguiling attacks of the treacherous mind flayers. Now, commence the battle! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 161
  SAY @777 /* Squids? Goblins? You shall know the folly of your words soon enough when the illithid devour your feeble mind! Now, let the battle commence! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 162
  SAY @778 /* How can any right-minded person refuse such a request? Surely this performer has earned the favor of at least one among you! Let the battle commence! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 163
  SAY @779 /* Have the mind flayers devoured your brain already? No matter. Let the battle commence! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 164
  SAY @780 /* Only a fool could look at the marvelous people and cities of Thay and think us witless. Let this fool face the mind flayers' wrath as retribution. Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 165
  SAY @781 /* Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices for the hero of Thay! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 166
  SAY @782 /* Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices and welcome our next performer! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 167
  SAY @783 /* Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices and curse the nemesis of Thay! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~~ THEN BEGIN 168
  SAY @784 /* You have seen this performer battle monsters from the Underdark, creatures from other planes, beings from other worlds—ugly and disturbing things. But you'll see no monstrous faces today. */
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
  SAY @785 /* Today, you will see the angelic beauty of the celestial realms, fallen from grace and captured for your entertainment. Behold the fallen devas! */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
  SAY @786 /* Have you any words for the audience before you face your fate, <CHARNAME>? */
  IF ~~ THEN REPLY @787 /* These creatures are tainted with evil. I shall remove their stain from this great nation! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 171
//  IF ~~ THEN REPLY @788 /* Wenches in parakeet costumes! How much have you bilked these people for, Dennaton? */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 172
//  IF ~  OR(2)
//Global("ohb_401_item_good","global",0)
//Global("ohb_401_item_great","global",0)
//~ THEN REPLY @789 /* I wonder, are there any here tonight who possess an item they would see tested against the might of the heavens? Give it to me and I'll shower you with feathers from devas' wings! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 173
//  IF ~~ THEN REPLY @790 /* I have no speech prepared. */ GOTO 174
  IF ~~ THEN REPLY @791 /* Only Thayans would be so vile as to imprison celestial beings. A day of reckoning is coming, you rephrehensible thugs. */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 175
END

IF ~~ THEN BEGIN 171
  SAY @792 /* Do you hear that, people of Thay? The fallen celestials' blemish shall be cleansed away by your champion! Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 172
  SAY @793 /* Go to the so-called "wenches," <CHARNAME>. After you've felt their blades, tell me if they are who I say. */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 173
  SAY @794 /* A rare opportunity! Test your gift against the heavens themselves! Make haste, though. The battle's about to begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 174
  SAY @795 /* Do not have a speech prepared? You aren't addressing the Lords of Waterdeep... ah... I mean—let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 175
  SAY @796 /* You call us vile? This will not stand. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 176
  SAY @797 /* Your attention, please! I, Dennaton, have the distinct honor of bringing before you the hero of Thay! Lords and ladies, I give you... <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 177
  SAY @798 /* Your attention, please! I, Dennaton, have the distinct honor of bringing before you the next performer to battle in the pits! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 178
  SAY @799 /* Your attention, please! I, Dennaton, have the dubious honor of introducing the treacherous enemy of Thay! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~~ THEN BEGIN 179
  SAY @800 /* There is a place of darkness, a place time itself has forgotten. Deep within the shifting sands of the Anauroch Desert is an ancient and magnificent tower, its spires clawing at the heavens! */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180
  SAY @801 /* Within the tower are two wizards rumored to be older than the desert they inhabit, preserved in the immortality of lichdom. Tonight, I present to you... the twin demiliches of Azgoloth! */
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
  SAY @802 /* <CHARNAME>? Have you any words of wisdom for your adoring fans? */
  IF ~~ THEN REPLY @803 /* Two liches or two score, I will defeat them all for you, good people of Thay! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 182
 // IF ~~ THEN REPLY @804 /* More decrepit arcanists. Surely you people can find better ways to waste your money. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 183
 // IF ~  OR(2)
//Global("ohb_402_item_good","global",0)
//Global("ohb_402_item_great","global",0)
//~ THEN REPLY @805 /* People of Thay, if any among you have a powerful weapon to bestow upon me, I promise I will send lich skulls sailing high into the crowd! */ DO ~SetGlobal("ohb_item_reward","global",1)
// ~ GOTO 184
 // IF ~~ THEN REPLY @806 /* Don't waste time talking. */ GOTO 185
  IF ~~ THEN REPLY @807 /* Half-dead senile wizards? Aren't there enough in Thay already? */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 186
END

IF ~~ THEN BEGIN 182
  SAY @808 /* Scores of liches! The good champion would face scores for you! Well, we'll start with two and see how <PRO_HESHE> fares. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 183
  SAY @809 /* You'll find that these are quite certainly liches of the most powerful variety—right now! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 184
  SAY @810 /* Imagine the excitement of having an authentic lich skull! What a souvenir! If you wish to see such a spectacle, then by all means, lend what aid you can to our intrepid performer. And now, let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 185
  SAY @811 /* Fine. Get out there and FIGHT! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 186
  SAY @812 /* I've never heard such vile accusations against the marvelous people of Thay! Let this scoundrel face <PRO_HISHER> doom at the twin liches' hands. Begin the battle! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 187
  SAY @813 /* Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats so that I may introduce your champion, the hero of Thay! <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 188
  SAY @814 /* Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats while I introduce your next entertainer... <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 189
  SAY @815 /* Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats while I introduce the wicked, the despised, the loathsome... <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~~ THEN BEGIN 190
  SAY @816 /* Feel the air crackle with energy! Listen to it rumble, as though a mighty tempest were bearing down upon us. Is some mighty storm upon us? No! It is our next combatants! */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
  SAY @817 /* Wiser than the eldest scholar, more powerful than the greatest wizard, and stronger than the greatest warrior. I give you the great dragon Yllaxxia and her offspring, Orluss and Nyzzlar! */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
  SAY @818 /* But before we begin—<CHARNAME>, do you have any final words for your adoring fans? */
  IF ~~ THEN REPLY @819 /* Citizens of Thay, do not fear! My zeal for your good nation will help me vanquish these monsters! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_1")
~ GOTO 193
 // IF ~~ THEN REPLY @820 /* Dragons? They're wyrmlings, hardly older than I am. */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 194
//  IF ~  OR(2)
//Global("ohb_403_item_good","global",0)
//Global("ohb_403_item_great","global",0)
//~ THEN REPLY @821 /* Help me now, O people of Thay! Bestow upon me a token of your favor that I might paint this arena's walls crimson with dragon blood! */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 195
//  IF ~~ THEN REPLY @822 /* A new set of trousers would be nice. */ GOTO 196
  IF ~~ THEN REPLY @823 /* I see you fainting like sickly cattle on a hot summer day, Thayans. I slay these monsters to expose you for the weakling cowards you are! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_1")
~ GOTO 197
END

IF ~~ THEN BEGIN 193
  SAY @824 /* Your champion strides forth to face the ancient beasts. Sit back and watch the mightiest monsters in Faerûn battle before you! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 194
  SAY @825 /* Enough of your insolence! Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 195
  SAY @826 /* Not one, but three dragons eviscerated and torn asunder by your very own gift to the performer! Who could resist such an opportunity? Bestow your token of appreciation quickly, and behold the spectacle of this battle! Begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 196
  SAY @827 /* A new set of trousers? What are you...? No matter. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 197
  SAY @828 /* You go too far, <CHARNAME>. I am Thayan as well—ah, I mean, yes! You see this vile performer's hatred of our wonderful nation? Now watch the mongrel cast to <PRO_HISHER> fate. Let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 198
  SAY @829 /* Behold, my generous patrons and patronesses! Behold the most mighty and skilled gladiator of these pits!! Battle-hardened and fierce, yet noble and honorable, it's Thay's champion, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 199
  SAY @830 /* Behold, my generous patrons and patronesses! Behold the most battle-hardened and fierce gladiator the pits have yet produced: <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 200
  SAY @831 /* Behold, my generous patrons and patronesses! Behold the pitiless, the vicious, the arrogant archnemesis of Thay, <CHARNAME>! */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~~ THEN BEGIN 201
  SAY @832 /* You have seen them vanquish beasts from the Underdark, from the depths of the seas, from the reaches of other planes of existence. This performer has defeated wizards, liches, even dragons ancient as the world itself! */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
  SAY @833 /* You have seen all things, mortal and immortal, but there is one thing you have yet to experience... the power of the gods themselves! */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
  SAY @834 /* YES! People of Thay, I give you the offspring of Bhaal himself, with their faithful cultists, here to battle to the bitter death! */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
  SAY @835 /* You've had the opportunity to address the audience many times, performer. This may be your last. Have you anything to say? */
  IF ~~ THEN REPLY @836 /* The Thayan peoples' devotion and love gives me the strength to overcome even those whose veins course with the blood of gods! */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2POS_5")
~ GOTO 205
 // IF ~~ THEN REPLY @837 /* Gods? These are men and women. I'll cut their flesh and shatter their bones, proving Dennaton's fraud! */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
//~ GOTO 206
 // IF ~  OR(2)
//Global("ohb_404_item_good","global",0)
//Global("ohb_404_item_great","global",0)
//~ THEN REPLY @838 /* Am I to face the power of the gods themselves unaided? Have I not won favor enough to be granted some token of appreciation to bolster me in my darkest hour? */ DO ~SetGlobal("ohb_item_reward","global",1)
//~ GOTO 207
//  IF ~~ THEN REPLY @839 /* I have no words left for the crowd. */ GOTO 208
  IF ~~ THEN REPLY @840 /* The Bhaalspawn and their cultists will fall! And the people of Thay will join them soon after! */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
  SetGlobal("ohb_item_reward","global",1)
PlaySound("BP2NEG_3")
~ GOTO 209
END

IF ~~ THEN BEGIN 205
  SAY @841 /* This claim will be put to the ultimate test! Prepare yourself! The battle begins! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 206
  SAY @842 /* I swear, even if you prevail here, you will suffer a slow and painful death by my hand. Now, fight and die! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 207
  SAY @843 /* Surely not! People of Thay, show your generosity to this humble performer! Give <PRO_HIMHER> aid in this time of need! Now, let the battle begin! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 208
  SAY @844 /* No more words for the crowd? Perhaps I have no coin for you... Begin the battle! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 209
  SAY @845 /* Steady yourselves, my guests. Take your seats and do not be afraid. You will not be harmed. After this battle, <CHARNAME> will be... dealt with. */
  IF ~~ THEN DO ~AddJournalEntry(94819,INFO)
StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_101","GLOBAL",2)
~ THEN BEGIN 210
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
GiveGoldForce(500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",101)
SetGlobal("ohb_battle_xp_award","global",1)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_102","GLOBAL",2)
~ THEN BEGIN 211
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
GiveGoldForce(750)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",102)
SetGlobal("ohb_battle_xp_award","global",2)
GiveGoldForce(12000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_103","GLOBAL",2)
~ THEN BEGIN 212
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
GiveGoldForce(1000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",103)
SetGlobal("ohb_battle_xp_award","global",3)
GiveGoldForce(13000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_104","GLOBAL",2)
~ THEN BEGIN 213
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
GiveGoldForce(1250)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",104)
SetGlobal("ohb_battle_xp_award","global",4)
GiveGoldForce(14000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_105","GLOBAL",2)
~ THEN BEGIN 214
  SAY @848 /* A victory worthy of the epics! */
  IF ~Global("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",2)~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
GiveGoldForce(1500)
ActionOverride("ZBNEPHA",DestroySelf()) // Destory Neph Arena
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~!Global("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",2)~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
GiveGoldForce(1500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",105)
SetGlobal("ohb_battle_xp_award","global",5)
GiveGoldForce(15000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_201","GLOBAL",2)
~ THEN BEGIN 215
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",201)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(16000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_202","GLOBAL",2)
~ THEN BEGIN 216
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",202)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(17000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_203","GLOBAL",2)
~ THEN BEGIN 217
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",203)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(18000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_204","GLOBAL",2)
~ THEN BEGIN 218
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",204)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(19000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_205","GLOBAL",2)
~ THEN BEGIN 219
  SAY @848 /* A victory worthy of the epics! */
  IF ~~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",205)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(20000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_301","GLOBAL",2)
~ THEN BEGIN 220
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",301)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(21000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_302","GLOBAL",2)
~ THEN BEGIN 221
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",302)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(22000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_303","GLOBAL",2)
~ THEN BEGIN 222
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",303)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(23000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_304","GLOBAL",2)
~ THEN BEGIN 223
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(6000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",304)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(24000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_305","GLOBAL",2)
~ THEN BEGIN 224
  SAY @848 /* A victory worthy of the epics! */
  IF ~~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(7000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",305)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(25000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_401","GLOBAL",2)
~ THEN BEGIN 225
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(8000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",401)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(26000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_402","GLOBAL",2)
~ THEN BEGIN 226
  SAY @847 /* The champions of Baeloth's Pits have won! */
  IF ~~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(9000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",402)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(27000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_403","GLOBAL",2)
~ THEN BEGIN 227
  SAY @846 /* My performers are victorious!  */
  IF ~~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(10000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",403)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(28000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_404","GLOBAL",2)
~ THEN BEGIN 228
  SAY @848 /* A victory worthy of the epics! */
  IF ~~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",404)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(29000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 229
  SAY @849 /* You've really made a mess of things, <CHARNAME>. You could've had wealth, glory, immortality... Instead, you will die, your body dumped in an unmarked grave. And for what? */
  IF ~~ THEN REPLY @850 /* Better to die free than live a slave. */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 232
  IF ~~ THEN REPLY @851 /* I'm not dead yet, Dennaton. */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 230
  IF ~~ THEN REPLY @852 /* Big words, Dennaton. And very nearly your last. */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 231
END

IF ~~ THEN BEGIN 230
  SAY @853 /* That will be rectified soon enough. */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 231
  SAY @854 /* Have you learned nothing? This is MY arena. My word is law here! */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232
  SAY @855 /* Your fate remains the same as it always has been. You will die at MY command for the amusement of THIS crowd. */
  IF ~~ THEN REPLY @856 /* Ah, yes, the crowd! You were always so eager for me to address my "adoring fans." May I do so now? */ GOTO 233
  IF ~~ THEN REPLY @857 /* We'll see. */ GOTO 238
END

IF ~~ THEN BEGIN 233
  SAY @858 /* Oh, by all means. Please, enlighten us! */
  IF ~  PartyHasItem("OHBBOOK6")
~ THEN REPLY @859 /* Tell me, Dennaton, do the people here know you and Szass Tam conspire to eliminate a tharchion and elevate you in his place? */ GOTO 234
  IF ~~ THEN REPLY @860 /* All of you should know this arena is through. You will witness the final battle to occur here. This time, the prize is freedom—not just for me, but for all those below. And my final opponent is Dennaton! */ GOTO 237
  IF ~~ THEN REPLY @861 /* I hope none of you bought a lifetime membership to this arena. When I gut this pig, the pits will be out of business. */ GOTO 237
  IF ~~ THEN REPLY @862 /* Listen to me, scum! I'm a generous <PRO_MANWOMAN>. I'll give you exactly as much time as it takes to kill Dennaton to flee. Anyone here after I'm finished will join him in the grave! */ GOTO 237
END

IF ~~ THEN BEGIN 234
  SAY @863 /* Such pathetic lies will not save you, <CHARNAME>. */
  IF ~~ THEN REPLY @864 /* Lies? It's all here in this journal. */ GOTO 235
END

IF ~~ THEN BEGIN 235
  SAY @865 /* Where did you get that?! I mean—I've never seen that journal in my entire life! It's a forgery! */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
  SAY @866 /* No, my adoring patrons, please! I would NEVER conspire against a tharchion! Do not believe the lies of a desperate <PRO_MANWOMAN>! */
  IF ~~ THEN REPLY @867 /* When you're gone, Dennaton, I shall release this journal. I will destroy your body, your name, your reputation—everything that's ever mattered to you. */ GOTO 237
  IF ~~ THEN REPLY @868 /* It is no forgery, Dennaton, but it IS the work of a fraud. */ GOTO 237
  IF ~~ THEN REPLY @869 /* You know better than that, Dennaton, but I suppose it doesn't matter to you. Things like journals and reputations mean little to the dead. */ GOTO 237
END

IF ~~ THEN BEGIN 237
  SAY @870 /* A pretty speech, but words are of little consequence here. */
  IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
  SAY @871 /* Tell me, how did you coordinate this little rebellion? Who helped you? */
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY @872 /* Trying to stall, Dennaton? It won't work. */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY @873 /* Brodle helped me. */ GOTO 239
  IF ~~ THEN REPLY @874 /* I couldn't have done it without Tartle. */ GOTO 239
  IF ~~ THEN REPLY @875 /* I acted alone. */ GOTO 239
  IF ~~ THEN REPLY @876 /* You'll die never knowing. */ GOTO 239
END

IF ~~ THEN BEGIN 239
  SAY @877 /* Very interesting. And what do you plan to do with your freedom once you win it? */
  IF ~  CheckStatGT(Player1,14,WIS)
~ THEN REPLY @878 /* Trying to stall me won't save you, scum. */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY @879 /* I will return to a life of adventure. */ GOTO 240
  IF ~~ THEN REPLY @880 /* Settle down and build a family. */ GOTO 240
  IF ~~ THEN REPLY @881 /* Find somewhere to ply my trade and build a career. */ GOTO 240
  IF ~~ THEN REPLY @882 /* I'll dance on your grave for a start. */ GOTO 240
END

IF ~~ THEN BEGIN 240
  SAY @883 /* Did you enjoy any of your matches here? */
  IF ~  CheckStatGT(Player1,12,WIS)
~ THEN REPLY @884 /* Enough stalling, Dennaton. It's over. */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY @885 /* I enjoyed pitting myself against some of your tougher acts, like the liches or those little Bhaalspawns. */ GOTO 241
  IF ~~ THEN REPLY @886 /* No sane <PRO_MANWOMAN> enjoys fighting for survival. Let's see how you like it. */ GOTO 241
  IF ~~ THEN REPLY @887 /* I expect I'll enjoy this last one. */ GOTO 241
END

IF ~~ THEN BEGIN 241
  SAY @888 /* I see. Very helpful. Now, what else would I like to know...? */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~~ THEN BEGIN 242
  SAY @889 /* I'm not stalling. You fascinate me, truly. */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~  Global("ohb_finale","global",7)
!Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 243
  SAY @890 /* FINALLY! It took you long enough! */
  IF ~~ THEN GOTO 245
END

IF ~  Global("ohb_finale","global",7)
Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 244
  SAY @891 /* FINALLY! It took you long enough! You were right, <CHARNAME>, I was stalling you. */
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
  SAY @892 /* Did you get the tarrasque, planetar? Is it here? */
  IF ~~ THEN EXTERN ~OHBWING~ 1
END

IF ~~ THEN BEGIN 246
  SAY @893 /* We can handle our differences later, Winged. There's a much more immediate problem to deal with. */
  IF ~~ THEN EXTERN ~OHBWING~ 2
END

IF ~  Global("OHB_ENDGAME","GLOBAL",2)
Global("OHB_DENN_END","LOCALS",0)
AreaCheck("OH8100")
~ THEN BEGIN 247
  SAY @894 /* We need to be away from here. Your Planar Hunters failed. Our arena's in disarray! */
  IF ~~ THEN DO ~SetGlobal("OHB_DENN_END","LOCALS",1)
~ EXTERN ~OHBSZASS~ 0
END

IF ~~ THEN BEGIN 248
  SAY @895 /* You want my head on the floor beside the Winged's? We have plans. If I'm dead, how can I help you eliminate Aznar— */
  IF ~~ THEN EXTERN ~OHBSZASS~ 1
END

IF ~~ THEN BEGIN 249
  SAY @896 /* But— */
  IF ~~ THEN EXTERN ~OHBSZASS~ 2
END

IF ~~ THEN BEGIN 250
  SAY @897 /* Wait— */
  IF ~~ THEN EXTERN ~OHBSZASS~ 3
END

IF ~~ THEN BEGIN 251
  SAY @898 /* He was right, Tartle! I don't have all day! */
  IF ~~ THEN EXTERN ~OHBTARTL~ 76
END

IF ~~ THEN BEGIN 252
  SAY @899 /* Silence, fool! */
  IF ~~ THEN EXTERN ~OHBTARTL~ 77
END

IF ~~ THEN BEGIN 253
  SAY @900 /* As Tartle said, I am Dennaton. I own the arena you are now a part of—a very special arena. This is no pit filled with poorly trained slaves stabbing each other for the amusement of the lowborn. */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
  SAY @901 /* No, this arena, MY arena, is unique. There is nothing like it in all of Faerûn. */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
  SAY @902 /* Each of you has been chosen because each of you is a legend. You are among the greatest warriors, assassins, and archmages the world has ever known. */
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
  SAY @903 /* Your fame will attract those elements of Thayan society that truly matter to my arena. The entertainment you provide will let me turn THEIR wealth into MY wealth. */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 257
  SAY @904 /* Well, if you absolutely refuse to fight, I'll have little choice but to kill you. But I'm sure you want this arena to succeed as much as I do. So I'll focus on the positive rather than the negative. */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
  SAY @905 /* Anything you want you will receive. Any culinary treat you crave, any entertainment, no matter how obscure or depraved. Gold, silver, gems... Anything from the four corners of Faerûn I can bring here for you... provided you hold up your end of the bargain. */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
  SAY @906 /* For most fights, you'll be pitted against useless fodder. A few ogres, perhaps, or a group of Cormyrian criminals I "rescued" from the gallows. */
  IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260
  SAY @907 /* You'll easily win, but your job is to put on a show. Suck the audience in. Make your opponents' deaths as entertaining as possible! Play with them. Disembowel them in a new and inventive way that displays your expert swordplay and really shows your creativity. Have fun with it! If you enjoy the slaughter, the audience will too! */
  IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
  SAY @908 /* Now allow me to introduce you to each other. */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
  SAY @909 /* First, hailing from the Ten Towns, we have the mighty warrior Voghiln "the Vast"! */
  IF ~~ THEN EXTERN ~OHBVOGHI~ 66
END

IF ~~ THEN BEGIN 263
  SAY @910 /* Excellent! And over here, we have a man of the gods and FOR the people! A man for whom battle and honor are not just words, but a way of life. Yes, it's Timmoth "The Champion" Goodtree! */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 70
END

IF ~~ THEN BEGIN 264
  SAY @911 /* THAT'S the spirit, Timmoth. Play that "destroy the heathens" angle up a bit! The crowds will suck it in! Next up is a man of the cloth. A man whose love of Lathander burns bright as the emerging dawn, yet one who yearns to see the wretched cast into the darkness of the Abyss. I give you Brother Ellraish of the Sun Soul! */
  IF ~~ THEN EXTERN ~OHBELLRA~ 31
END

IF ~~ THEN BEGIN 265
  SAY @912 /* We could all benefit from such—well, let's call it wisdom. */
  IF ~~ THEN EXTERN ~OHBELLRA~ 32
END

IF ~~ THEN BEGIN 266
  SAY @913 /* Rrrright. */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267
  SAY @914 /* Next, we have a woman eager to be judge, jury... and EXECUTIONER! Equally happy protecting the weak and PUNISHING THE GUILTY! A woman whose name is so great, she needs no nickname. It's Mercy Whitedove! */
  IF ~~ THEN EXTERN ~OHBMERCY~ 44
END

IF ~~ THEN BEGIN 268
  SAY @915 /* Think of yourselves as my guests, my dear, and of the arena as... an inn. An inn for people who fight and kill others for money and entertainment. */
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269
  SAY @916 /* Next is a wizard of deceptive power. His aging body may seem past its prime, but his mind is sharp as any blade. I give you Dulf "The Ancient Threat" Ebonbeard! */
  IF ~~ THEN EXTERN ~OHBDULF~ 67
END

IF ~~ THEN BEGIN 270
  SAY @917 /* Right, with that cleared up, we can turn to the show itself. As a great bard once said, "All the world's a stage, and all of us merely players! Each of us in our time will play many parts!" */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271
  SAY @918 /* So now we decide which part each of you shall play. Our main star will be <CHARNAME>, who is already well known as a champion of the arena. */
  IF ~~ THEN EXTERN ~OHBFELDR~ 41
END

IF ~~ THEN BEGIN 272
  SAY @919 /* Oh, by the Nine Hells, why do you interrupt me?! Have I ever not paid before? You'll get your money. Now— */
  IF ~~ THEN EXTERN ~OHBWING~ 4
END

IF ~~ THEN BEGIN 273
  SAY @920 /* I can't get it right now! There's a match about to start. Immediately afterwards, I'll— */
  IF ~~ THEN EXTERN ~OHBWING~ 5
END

IF ~~ THEN BEGIN 274
  SAY @921 /* Of course, you— */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",1)
SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 275
  SAY @922 /* She calls us demons and devils! Let this impudent performer face the true demons and devils and fight for survival! */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END
