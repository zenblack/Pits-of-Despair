BEGIN ~OHBDORMA~

IF ~  Global("ohb_finale","GLOBAL",8)
Global("OHB_NAJIM","GLOBAL",4)
~ THEN BEGIN 0
  SAY @923 /* The time has come to shed this appalling disguise. I am Dormamus no more! Now come, <CHARNAME>, and let us win our freedom! */
  IF ~~ THEN DO ~SetGlobal("OHB_NAJIM","GLOBAL",5)
CreateVisualEffectObject("SPPOLYMP",Myself)
ChangeAnimation("ohbnajim")
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @924 /* Is it really you? */
  IF ~~ THEN EXTERN ~OHBTHASS~ 0
END

IF ~~ THEN BEGIN 2
  SAY @925 /* You should have stayed out of this, djinni. Guilty consciences are unhealthy. */
  IF ~~ THEN EXTERN ~OHBNAJIM~ 17
END

IF ~~ THEN BEGIN 3
  SAY @926 /* No. This one has interfered in my affairs for the last time—he will be coming with us, along with the rest of the mortals. */
  IF ~~ THEN EXTERN ~OHBJOKER~ 29
END
