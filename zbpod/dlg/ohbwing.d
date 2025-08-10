BEGIN ~OHBWING~

IF ~~ THEN BEGIN 0
  SAY @0 /* I tire of this prattle. Take them! */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",4)
SetGlobalTimer("ohb_suzail_delay","ZB2010",60)
SetGlobalTimer("ohb_najim_intro","ZB2010",5)
Enemy()
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbpol",Enemy())
ChangeEnemyAlly("ohbnajim",GOODCUTOFF)
ReallyForceSpellRES("ohbsuza1","ohbnajim")
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1 /* Such a creature is beyond even our power. Send us on a suicide mission like that again and our relationship—to say nothing of your life—will be at an end. */
  IF ~~ THEN REPLY @2 /* You fought a tarrasque and lived? Impressive! */ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY @3 /* If you agreed to hunt a tarrasque, you got what you deserved. */ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY @4 /* I'll end your relationship with him right now. */ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY @5 /* I'm glad you made it. All scores will be settled this <DAYNIGHTALL>! */ EXTERN ~OHBDENNA~ 246
END

IF ~~ THEN BEGIN 2
  SAY @6 /* It will be done. */
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",8)
Enemy()
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbpol",Enemy())
~ EXIT
END

IF ~Global("OHB_START_BATTLE","GLOBAL",3) Global("OHB_105","GLOBAL",1)~ THEN BEGIN 3
  SAY @7 /* Hold, Dennaton. These drow have not yet been paid for. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 272
END

IF ~~ THEN BEGIN 4
  SAY @8 /* Yes. I will get my money now. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 273
END

IF ~~ THEN BEGIN 5
  SAY @9 /* See that I receive every last copper coming to me. Or we will see how well YOU fare in these pits of yours. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 274
END
