BEGIN ~OHBLAMP1~

IF ~  Global("OHB_NAJIM","GLOBAL",0)
~ THEN BEGIN 0
  SAY #92804
  IF ~~ THEN REPLY #92805 GOTO 1
  IF ~~ THEN REPLY #91941 DO ~SetGlobal("OHB_NAJIM","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut10")
~ EXIT
  IF ~~ THEN REPLY #91940 DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92806
  IF ~~ THEN DO ~DestroySelf()
~ EXIT
END

IF ~  Global("OHB_DORMAMUS_TRAPPED","GLOBAL",1)
~ THEN BEGIN 2
  SAY #92825
  IF ~~ THEN EXIT
END
