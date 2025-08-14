BEGIN ~OHBPOL~

IF ~~ THEN BEGIN 0
  SAY @3881 /* "Another"? You blame me for your failures, Thassk? */
  IF ~~ THEN EXTERN ~OHBTHASS~ 2
END

IF ~~ THEN BEGIN 1
  SAY @3882 /* Good. It’s been too long since we’ve had someone struggle. */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",4)
    SetGlobalTimer("ohb_suzail_delay","ZB2010",60)
    SetGlobalTimer("ohb_najim_intro","ZB2010",15)
    Enemy()
    ActionOverride("ohbbanno",Enemy())
    ActionOverride("ohbthass",Enemy())
    ActionOverride("ohbdorma",Enemy())
    ActionOverride("ohbpol",Enemy())
    ActionOverride("ohbwing",Enemy())
    ChangeEnemyAlly("ohbnajim",GOODCUTOFF)
    ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1","ohbnajim"))~ EXIT
END
