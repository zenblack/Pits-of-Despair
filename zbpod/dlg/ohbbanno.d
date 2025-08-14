BEGIN ~OHBBANNO~

IF ~~ THEN BEGIN 0
  SAY @22 /* Back off! The first autograph is MINE! */
  IF ~~ THEN REPLY @23 /* Relax, everyone. No need to get pushy! */ DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY @24 /* Great, everyone here knows me now. Another tavern ruined... */ DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY @25 /* Right then. everyone line up. 10 gold per autograph! */ DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~  Global("ohb_bann","global",3)
~ THEN BEGIN 1
  SAY @26 /* What? After so long, I am flesh once again? Hah! The arcane power flows through me once more. Bannor is returned! */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("ohb_bann","global",4)
SmallWait(5)
CreateVisualEffectObject("spuseany",Myself)
Wait(1)
ChangeAnimation("ohbbann2")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27 /* I am at peace with that. We came here for <CHARNAME>. You are expendable. */
  IF ~~ THEN EXTERN ~OHBDORMA~ 3
END
