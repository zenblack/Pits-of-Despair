BEGIN ~OHBELLRA~

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN BEGIN 0
  SAY #92534
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",0)
~ THEN BEGIN 1
  SAY #92484
  IF ~~ THEN REPLY #92485 DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY #92486 DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #92487 DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #92488 DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #92489 DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY #92491
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92492
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY #92494
  IF ~~ THEN REPLY #92496 GOTO 14
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92498 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY #92500
  IF ~~ THEN REPLY #92503 GOTO 14
  IF ~~ THEN REPLY #92506 GOTO 6
  IF ~~ THEN REPLY #95062 GOTO 2
  IF ~~ THEN REPLY #92507 GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY #92508
  IF ~  PartyGoldGT(9)
~ THEN REPLY #92510 DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #92511 GOTO 9
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92512 GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY #92513
  IF ~  PartyGoldGT(99)
~ THEN REPLY #92514 DO ~TakePartyGold(100)
~ GOTO 8
  IF ~~ THEN REPLY #92515 GOTO 9
  IF ~~ THEN REPLY #95063 GOTO 2
  IF ~~ THEN REPLY #92516 GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY #92517
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY #92518
  IF ~  PartyGoldGT(9)
~ THEN REPLY #92510 DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #92520 GOTO 14
  IF ~~ THEN REPLY #95064 GOTO 2
  IF ~~ THEN REPLY #92521 GOTO 3
END

IF ~~ THEN BEGIN 10
  SAY #92522
  IF ~~ THEN REPLY #92523 GOTO 4
  IF ~~ THEN REPLY #95065 GOTO 2
  IF ~~ THEN REPLY #92524 GOTO 3
END

IF ~~ THEN BEGIN 11
  SAY #92525
  IF ~~ THEN REPLY #92526 GOTO 12
  IF ~~ THEN REPLY #95066 GOTO 2
  IF ~~ THEN REPLY #92527 GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY #92528
  IF ~~ THEN REPLY #95067 GOTO 14
  IF ~~ THEN REPLY #92529 GOTO 13
  IF ~~ THEN REPLY #95068 GOTO 2
  IF ~~ THEN REPLY #92530 GOTO 3
END

IF ~~ THEN BEGIN 13
  SAY #92531
  IF ~~ THEN REPLY #92532 GOTO 4
  IF ~~ THEN REPLY #95070 GOTO 2
  IF ~~ THEN REPLY #92533 GOTO 3
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",1)
~ THEN BEGIN 14
  SAY #92534
  IF ~~ THEN REPLY #92535 GOTO 5
  IF ~~ THEN REPLY #92536 GOTO 15
  IF ~  OR(2)
Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
OR(2)
Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY #92537 GOTO 20
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #92538 GOTO 27
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",1)
PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92539 GOTO 24
  IF ~  PartyHasItem("OHBKEY01")
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN REPLY #92540 GOTO 30
  IF ~~ THEN REPLY #91552 EXIT
END

IF ~~ THEN BEGIN 15
  SAY #92541
  IF ~~ THEN REPLY #92542 GOTO 16
  IF ~~ THEN REPLY #92543 GOTO 11
  IF ~~ THEN REPLY #92544 GOTO 18
  IF ~~ THEN REPLY #92545 GOTO 26
  IF ~~ THEN REPLY #90713 GOTO 2
END

IF ~~ THEN BEGIN 16
  SAY #92546
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #92547
  IF ~~ THEN REPLY #92548 GOTO 4
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92549 GOTO 3
END

IF ~~ THEN BEGIN 18
  SAY #92550
  IF ~~ THEN REPLY #92551 GOTO 12
  IF ~~ THEN REPLY #92552 GOTO 19
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92553 GOTO 3
END

IF ~~ THEN BEGIN 19
  SAY #92554
  IF ~~ THEN REPLY #92555 GOTO 14
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92556 GOTO 3
END

IF ~~ THEN BEGIN 20
  SAY #92557
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #92558 GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY #92559 GOTO 28
  IF ~~ THEN REPLY #90713 GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY #92560
  IF ~  PartyGoldGT(999)
~ THEN REPLY #92561 DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 22
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92562 DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92563 GOTO 3
END

IF ~~ THEN BEGIN 22
  SAY #92564
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92565 DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY #92566 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #90713 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #92567 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 23
  SAY #92568
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92565 DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY #92566 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #90713 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #92567 DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 24
  SAY #92573
  IF ~~ THEN DO ~AddJournalEntry(92595,QUEST)
SetGlobal("OHB_ELLRA_POISON","GLOBAL",2)
TakePartyItem("OHBCOM10")
DestroyItem("OHBCOM10")
TakePartyItem("OHBCOM04")
DestroyItem("OHBCOM04")
GiveItemCreate("OHBPTN07",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #92574
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #92575
  IF ~~ THEN REPLY #92578 GOTO 14
  IF ~~ THEN REPLY #90713 GOTO 2
  IF ~~ THEN REPLY #92579 GOTO 3
END

IF ~~ THEN BEGIN 27
  SAY #92580
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_ELLRAISH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY #92582
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY #92584
  IF ~~ THEN DO ~AddJournalEntry(92596,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #92585
  IF ~~ THEN DO ~AddJournalEntry(92597,QUEST)
TakePartyItem("OHBKEY01")
GiveItemCreate("OHBKEY02",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY #90553
  IF ~~ THEN EXTERN ~OHBDENNA~ 265
END

IF ~~ THEN BEGIN 32
  SAY #90555
  IF ~~ THEN EXTERN ~OHBDENNA~ 266
END
