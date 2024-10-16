// creator  : weidu (version 24900)
// argument : OHBDULF.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDULF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY #92950 /* ~But one would think the guards would have some way of opening any door here. What would they do if the slaves barricaded themselves in a room?~ [OH92950] */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY #92951 /* ~I remember my adventuring days. Vaguely.~ [OH92951] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 68 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #95643 /* ~And you are...? Uh... What—what is this place? Are—are you my apprentice?~ [OH95643] */
  IF ~~ THEN REPLY #95645 /* ~I am not. Farewell, old man.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY #95642 /* ~You were saying, Geshtemachin—that is your name, correct?—you were saying... well, what WERE you saying?~ [OH95642] */
  IF ~~ THEN DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
AddJournalEntry(95659,INFO)
~ EXTERN ~OHBGEZZT~ 45
END

IF WEIGHT #5 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 4
  SAY #95643 /* ~And you are...? Uh... What—what is this place? Are—are you my apprentice?~ [OH95643] */
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY #95644 /* ~Here, have this drink. It should help you focus.~ */ DO ~AddJournalEntry(103099,QUEST_DONE)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
~ GOTO 15
  IF ~~ THEN REPLY #95645 /* ~I am not. Farewell, old man.~ */ DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
AddJournalEntry(95659,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY #95647 /* ~Hmm... I—I'll have to reflect on that.~ [OH95647] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 46
END

IF ~~ THEN BEGIN 6
  SAY #95649 /* ~Oh! H-hello. Have you been standing there long? Gazmithin and I were... well, we were having an edifying discussion about the, uh... well, something.~ [OH95649] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 47
END

IF WEIGHT #6 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
Global("ohb_know_dulf_needs_salve","global",0)
~ THEN BEGIN 7
  SAY #95651 /* ~So, young... one. Uh—uh, you—you wanted to speak to me about... something? Please speak loudly and clearly. Goozlemin is a bit hard of hearing, you see.~ [OH95651] */
  IF ~~ THEN REPLY #95652 /* ~How did you end up here, Master Ebonbeard?~ */ GOTO 8
  IF ~~ THEN REPLY #95653 /* ~What do you make of this place?~ */ GOTO 8
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95654 /* ~Would you join my team for the next fight in the arena?~ */ GOTO 8
  IF ~~ THEN REPLY #95655 /* ~I'll come back later.~ */ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #95656 /* ~So, uh—Ghoulravin. Yeah, about the beet root's empyreumeutic, uh—e-empyreumatic, uh, salts. Those—those salts...~ [OH95656] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 48
END

IF WEIGHT #7 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 9
  SAY #95660 /* ~Well, it—it's good to see you again, uh, Grubash Nettlehammer! Haha! Ha... huh. That's just old man humor. I remember you just fine, <CHARNAME>. What can I do for you?~ [OH95660] */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95661 /* ~I have the components you requested for the scroll.~ */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95662 /* ~I have this shard from the mirror in Bannor's room. Will it suffice as a scroll component?~ */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95663 /* ~How's the scroll coming?~ */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95664 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95664 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY #95665 /* ~I changed my mind. I'll help you acquire the scroll components.~ */ GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95666 /* ~Here are the 12,000 gold pieces you wanted for the scroll.~ */ GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95667 /* ~About that scroll—I can give you 8,000 gold pieces for it.~ */ GOTO 49
  IF ~~ THEN REPLY #95668 /* ~How did you come to be here, Lord Ebonbeard?~ */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 /* ~What do you make of this place?~ */ GOTO 22
  IF ~~ THEN REPLY #95670 /* ~Nothing for now. Just checking to see how you were.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 10
  SAY #95671 /* ~Well, don't—don't worry, I—I still know who you are, <CHARNAME>. Now, what can I do for you?~ [OH95671] */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95672 /* ~I have the material components you need for the scroll.~ */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95673 /* ~I have this shard from the mirror in Bannor's room. Will it do as a scroll component?~ */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95674 /* ~How is the scroll coming along?~ */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95675 /* ~I could use a wizard's help in the arena.~ */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95675 /* ~I could use a wizard's help in the arena.~ */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY #95676 /* ~I changed my mind. I'll get the components you need for that scroll.~ */ GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95677 /* ~Here are the 12,000 gold pieces you wanted for the scroll.~ */ GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95678 /* ~About that scroll. I can only give you 8,000 gold pieces for it.~ */ GOTO 49
  IF ~~ THEN REPLY #95668 /* ~How did you come to be here, Lord Ebonbeard?~ */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 /* ~What do you make of this place?~ */ GOTO 22
  IF ~~ THEN REPLY #95679 /* ~For now? Nothing. That may change soon.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #95680 /* ~Well, when it does, be sure to let me know.~ [OH95680] */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 12
  SAY #95681 /* ~Ah, good, y-you're here. Come, my apprentice, we... we've got much work to do.~ [OH95681] */
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY #95682 /* ~Before we do that, have a drink. To your health!~ */ DO ~SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
~ GOTO 15
  IF ~~ THEN REPLY #95683 /* ~I'm afraid I can't help you right now. Farewell.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 13
  SAY #95684 /* ~No! You—you don't understand! The diacritics on the old Netherese scrolls ARE critical to proper recitation—~ [OH95684] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 49
  IF ~  Global("OHB_DULF_RESTOREDONCE","GLOBAL",1)
~ THEN EXTERN ~OHBGEZZT~ 50
END

IF ~~ THEN BEGIN 14
  SAY #95692 /* ~With pleasure, Gatchounkemin. Uh, here's to your health, my—my young friend.~ [OH95692] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY #95693 /* ~Ah! Much better. Uh, thank you, <CHARNAME>. I—I—I—I take it you want to speak with me?~ [OH95693] */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95694 /* ~I have the material components you need to make the scroll.~ */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95695 /* ~I have this shard from the mirror in Bannor's room; will it suffice as a component for the scroll?~ */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95696 /* ~How's work on the scroll progressing?~ */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95697 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95697 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 38
  IF ~~ THEN REPLY #95668 /* ~How did you come to be here, Lord Ebonbeard?~ */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 /* ~What do you make of this place?~ */ GOTO 22
  IF ~~ THEN REPLY #95699 /* ~Not right now.~ */ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #95702 /* ~And to you, my—my young friend...~ [OH95702] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #95703 /* ~Oh, my, that, uh... that IS tasty! Mmm! My head feels, uh... feels light all of a sudden.~ [OH95703] */
  IF ~~ THEN DO ~AddJournalEntry(103099,QUEST_DONE)
~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #95704 /* ~Gezzthemin, w-what is in that drink? Bring me a barrel! I feel twenty years younger—in mind, if not body.~ [OH95704] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 54
END

IF ~~ THEN BEGIN 19
  SAY #95706 /* ~Well, I hope there's more where it came from. These tonics never last very long, unfortunately.~ [OH95706] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #95707 /* ~So, you had a question. I—I'm all yours. For the time being, at least.~ [OH95707] */
  IF ~~ THEN REPLY #95708 /* ~How did a master magician like yourself end up here?~ */ GOTO 21
  IF ~~ THEN REPLY #95709 /* ~Tell me, what do you make of this place?~ */ GOTO 22
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95710 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95710 /* ~I could use a wizard with your experience in the arena.~ */ GOTO 38
  IF ~~ THEN REPLY #95711 /* ~I've no use for you now. Perhaps we'll talk more later.~ */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY #95712 /* ~I can't really recall... The last thing I remember, I was in the Cloven Mountains, riding towards Lachom. The library there houses a collection of scrolls I wished to study.~ [OH95712] */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95713 /* ~Speaking of scrolls, I have the material components you asked for.~ */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95714 /* ~On a related subject, I have this shard from the mirror in Bannor's room. Will it suffice as a scroll component?~ */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95715 /* ~As you mention scrolls, how is ours coming along?~ */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95716 /* ~I could use a wizard of your experience in the arena.~ */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95716 /* ~I could use a wizard of your experience in the arena.~ */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95717 /* ~What do you make of this place, Master Ebonbeard?~ */ GOTO 22
  IF ~~ THEN REPLY #95718 /* ~You were doubtless attacked and captured by the Winged and her crew. Nearly all of us were.~ */ EXIT
END

IF ~~ THEN BEGIN 22
  SAY #95719 /* ~I haven't seen much of it. Or maybe I have and just don't remember. It reminds me of some of the wizardry schools built beneath the forest floor of Cormanthor. They did that to protect the ancient trees in the event of an "incident" in one of the schools.~ [OH95719] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #95720 /* ~The PEOPLE who brought and keep us here are much more distinct. I remember Dennaton's speech. And I've a very clear picture of the planetar they call the Winged, as well as the large metal golem that follows her.~ [OH95720] */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #95721 /* ~I know who that golem is, or rather was.~ [OH95721] */
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 55
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #95723 /* ~Bannor was a terrifically talented wizard.~ [OH95723] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY #95724 /* ~Well, just so. A terrifically talented wizard.~ [OH95724] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #95725 /* ~Nobody knows exactly how he ended up in the adamantine golem's form. I theorize he was experimenting with spirit transference, a school of magic not yet fully developed.~ [OH95725] */
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 56
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY #95727 /* ~I doubt anyone even knows where that body is now. But the original vessel is unimportant. His mind could be transferred to any being, and that being's spirit would replace his in the golem. It could be done by a supremely skilled wizard.~ [OH95727] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 57
END

IF ~~ THEN BEGIN 29
  SAY #95729 /* ~I don't know if anyone ever tried to return his mind to his body. But the original vessel is unimportant. His mind could be transferred to any being, and that being's spirit would replace his in the golem. It could be done, by a supremely skilled wizard. I might be able to manage it...~ [OH95729] */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY #95730 /* ~Perhaps...~ [OH95730] */
  IF ~~ THEN REPLY #95731 /* ~How would you go about it?~ */ GOTO 31
  IF ~~ THEN REPLY #95732 /* ~Really? You could do that?~ */ GOTO 32
  IF ~~ THEN REPLY #95733 /* ~Sounds like you may be losing touch with reality again. Do you need another drink?~ */ GOTO 33
END

IF ~~ THEN BEGIN 31
  SAY #95734 /* ~The spell required is long and complicated. I'd need to inscribe it on a scroll beforehand. All I'd need are a few material components. What do you say? Would you like to help?~ [OH95734] */
  IF ~~ THEN REPLY #95735 /* ~Of course.~ */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95780,QUEST)
~ GOTO 34
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY #95736 /* ~I'd like to, but I won't.~ */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY #95736 /* ~I'd like to, but I won't.~ */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY #95737 /* ~You're beyond my help, ancient one.~ */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY #95737 /* ~You're beyond my help, ancient one.~ */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
END

IF ~~ THEN BEGIN 32
  SAY #95738 /* ~Well, you sound doubtful. Well, you've good reason to be, I suppose.~ [OH95738] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 33
  SAY #95739 /* ~Well, it wouldn't hurt, but I—I believe I'm all right for now.~ [OH95739] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 34
  SAY #95740 /* ~Wonderful. Get me a wyrm tooth, a carrion crawler egg, and parchment made from ettin skin. Also, I'll need something belonging to Bannor. Anything, so long as it's unique to him. Come back when you have everything and I'll get right on it. What a wonderful, exciting project. It's almost rejuvenating!~ [OH95740] */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95781,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY #95741 /* ~Well, that's a shame. Gezzthemin, how about you? Would you like to help?~ [OH95741] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 58
END

IF ~~ THEN BEGIN 36
  SAY #95743 /* ~Well, that's a shame! Well... if you change your mind, I'll—I'll be around.~ [OH95743] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY #95744 /* ~Me? You want me? An old wizard like me? You're not afraid I'll crumple to the ground in the middle of it?~ [OH95744] */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #95745 /* ~Your experience will pay off. I'll give you 1,500 gold pieces to join me.~ */ GOTO 39
  IF ~~ THEN REPLY #95746 /* ~1,500 gold pieces seems to be the going rate for arena assistance. I don't have that much yet. When I do, I'll be in touch.~ */ GOTO 40
  IF ~~ THEN REPLY #95747 /* ~You may be right. Never mind.~ */ GOTO 41
END

IF ~~ THEN BEGIN 38
  SAY #95748 /* ~Well, it's good someone values the contribution of their elders. Of course I will join you. Same conditions as before.~ [OH95748] */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #95749 /* ~Here are 1,500 gold pieces.~ */ GOTO 39
  IF ~~ THEN REPLY #95750 /* ~I don't have the 1,500 gold pieces. Perhaps another time.~ */ GOTO 40
  IF ~~ THEN REPLY #95751 /* ~Actually, I've changed my mind.~ */ GOTO 41
END

IF ~~ THEN BEGIN 39
  SAY #95752 /* ~Well, it's good to feel wanted despite one's advanced age. Uh—let's go kick some arses. We'll boot them all the way to Icewind Dale!~ [OH95752] */
  IF ~~ THEN DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_DULF_HIRED","GLOBAL",1)
SetGlobal("OHB_dulfhiredbefore","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY #95753 /* ~Well, I've never been good with money myself. Like you say, maybe another time.~ [OH95753] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY #95754 /* ~Well, I understand. The gods know mine changes often enough! Maybe another time, then.~ [OH95754] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY #95755 /* ~Wonderful, let—let me see. Yes, everything I need is there.~ [OH95755] */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",2)
TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY #95756 /* ~With that and the piece of Bannor's broken mirror, I have all I need to begin. I'll let you know when it's done.~ [OH95756] */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",2)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY #95757 /* ~Almost. Uh, have you an item belonging to Bannor?~ [OH95757] */
  IF ~  PartyHasItem("ohbcom12")
~ THEN REPLY #95758 /* ~I have this shard from the mirror in Bannor's room. Will it suffice?~ */ GOTO 45
  IF ~  !PartyHasItem("ohbcom12")
~ THEN REPLY #95759 /* ~I haven't found anything yet. I'll return when I do.~ */ EXIT
END

IF ~~ THEN BEGIN 45
  SAY #95760 /* ~Well, that should work.~ [OH95760] */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_MIRROR","GLOBAL",1)
TakePartyItem("ohbcom12")
DestroyItem("ohbcom12")
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY #95761 /* ~I've given this project some thought. I initially took it on as an activity to busy my mind, but there may be more use to it. An ally's mind could be transferred to the golem, bringing its might to our side.~ [OH95761] */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY #95762 /* ~But, given the complex magic involved, only one who is intimate with the Weave—a wizard or a sorcerer—will be able to make the transfer.~ [OH95762] */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY #95763 /* ~Well, you can see just how dangerous this scroll could be. Scribing is an immense commitment. I must be certain you are fully committed as well. To prove this, I'll need some substantial coin. 12,000 gold pieces.~ [OH95763] */
  IF ~  CheckStatGT(Player1,14,CHR)
PartyGoldGT(7999)
~ THEN REPLY #95764 /* ~12,000 gold pieces! Drink some more of your salve, old man. Make it 8,000.~ */ DO ~AddJournalEntry(95785,QUEST)
~ GOTO 49
  IF ~  PartyGoldGT(11999)
~ THEN REPLY #95765 /* ~That's a lot of gold. Fortunately, I have a lot of gold. Here it is.~ */ GOTO 52
  IF ~~ THEN REPLY #95766 /* ~That's a lot of gold. I just don't have that much right now.~ */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #95767 /* ~Let me think on this.~ */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 55
  IF ~~ THEN REPLY #95768 /* ~12,000 gold pieces? I don't need the scroll that badly.~ */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 54
END

IF ~~ THEN BEGIN 49
  SAY #95769 /* ~8,000 gold pieces will suffice.~ [OH95769] */
  IF ~~ THEN DO ~TakePartyGold(8000)
~ GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY #95770 /* ~I have everything I need to begin. I'll let you know when I am finished.~ [OH95770] */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY #95771 /* ~Do you have the other components I requested?~ [OH95771] */
  IF ~~ THEN REPLY #95773 /* ~Not yet. I'll be back when I do.~ */ EXIT
  IF ~  PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95772 /* ~Here they are.~ */ DO ~TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 50
END

IF ~~ THEN BEGIN 52
  SAY #95774 /* ~Well, excellent! Now I am confident of your commitment.~ [OH95774] */
  IF ~~ THEN DO ~TakePartyGold(12000)
~ GOTO 50
END

IF ~~ THEN BEGIN 53
  SAY #95775 /* ~I'll begin work on the scroll nonetheless. But you'll not get it till I get the gold.~ [OH95775] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54
  SAY #95776 /* ~When you change your mind, let me know.~ [OH95776] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
  SAY #95777 /* ~Let me know when you make your decision.~ [OH95777] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY #95778 /* ~Well, this magic takes time. I'll come to you when the scroll is ready.~ [OH95778] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY #92880 /* ~Wait? Well, who are we waiting on? A-a-are YOU the one we're waiting on?~ [OH92880] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
END

IF ~~ THEN BEGIN 58
  SAY #92887 /* ~Re-rebel? Why? What—? W-who are you?~ [OH92887] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
END

IF ~~ THEN BEGIN 59
  SAY #92895 /* ~Bravo! Who's Tartle?~ [OH92895] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 64
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 37
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 39
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 56
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 40
END

IF ~~ THEN BEGIN 60
  SAY #92915 /* ~I think the more important question is... wait, what were we talking about?~ */
  IF ~~ THEN EXTERN ~OHBBRODL~ 70
END

IF ~~ THEN BEGIN 61
  SAY #92923 /* ~Woohoo! Ha... ha... What are... ha... what are we cheering about again? ~ [OH92923] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 41
END

IF WEIGHT #11 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 62
  SAY #92923 /* ~Woohoo! Ha... ha... What are... ha... what are we cheering about again? ~ [OH92923] */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",6)
!Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 63
  SAY #92985 /* ~Huh? Well, they say you're—you're going to do something dangerous. Whatever that is, good luck!~ [OH92985] */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",6)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 64
  SAY #101777 /* ~I have a feeling this was for you. It has your name on it, in any case. Good tidings, young <PRO_MANWOMAN>!~ */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY #92969 /* ~Thanks for all you've done, <CHARNAME>. Take this. My father gave it to me when I became a chef. Maybe it'll prove useful against Dennaton. ~ */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
StartCutSceneMode()
StartCutSceneEx("ohbcut23",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY #100625 /* ~Well done, whoever you are! Who are you again...?~ [OH100625] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
END

IF ~~ THEN BEGIN 67
  SAY #90561 /* ~Huh? What? W-where am I? Who are you? Who am I?~ [OH90561] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 2
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 68
  SAY #92880 /* ~Wait? Well, who are we waiting on? A-a-are YOU the one we're waiting on?~ [OH92880] */
  IF ~~ THEN EXIT
END
