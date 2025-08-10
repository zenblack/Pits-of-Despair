BEGIN ~OHBNAJIM~

IF ~Global("OHB_BP2_CAPTURE","GLOBAL",2) Global("tier","GLOBAL",0)~ THEN BEGIN 0
  SAY @2153 /* I’ve found you, and not a moment too soon! You’re in danger, DANGER I tell you! */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2154 /* I don’t have time to explain. I may have already been intercepted. My name is Najim, and both you and I are being hunted by the same group of bounty hunters. Our best chance is to group up and take them down together! */
  IF ~~ THEN REPLY @2155 /* You are the djinni I’m here to meet, I expect. Why does it feel like you’ve lured me into a trap? */ GOTO 18
  IF ~~ THEN REPLY @2156 /* A pleasure to meet you, Najim. Fear not, together we will prevail against any supposed hunters. */ GOTO 19
  IF ~~ THEN REPLY @2157 /* I suppose the ‘lucrative opportunity’ was a sham, then. I really ought to stop falling for these sorts of things… */ GOTO 20
END

// Unused
IF ~False()~ THEN BEGIN 2
  SAY @2160 /* Wait! Something is wrong... we're in an ambush! Prepare yourselves! The bounty hunters are upon us! */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",3)
StartCutSceneMode()
StartCutScene("ohbcut02")
~ EXIT
END

IF ~  Global("OHB_BP2_CAPTURE","GLOBAL",3)
Global("tier","GLOBAL",0)
Global("ohb_najim_fight_or_not","ZB2010",0)
~ THEN BEGIN 3
  SAY @2161 /* Careful, <CHARNAME>! I suspect the bard's not really a bard! */
  IF ~~ THEN EXTERN ~OHBJOKER~ 26
END

// Unused
IF ~False()~ THEN BEGIN 4
  SAY @2162 /* No... Maybe. But then I thought better of it. I couldn't leave you to face them alone! */
  IF ~~ THEN GOTO 2
END

// Unused
IF ~False()~ THEN BEGIN 5
  SAY @2163 /* <CHARNAME>! They are attempting to capture you, battle your way to freedom or become a captive once again! */
  IF ~~ THEN REPLY @2164 /* That will never happen! */ DO ~SetGlobal("ohb_najim_fight_or_not","ZB2010",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut51")
~ EXIT
  IF ~~ THEN REPLY @2165 /* Is that what they want? Very well. I'll go with you... for now. */ DO ~SetGlobal("ohb_najim_fight_or_not","ZB2010",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut51")
~ EXIT
END

IF ~Global("OHB_BP2_CAPTURE","GLOBAL",9) Global("tier","GLOBAL",0) ~ THEN BEGIN 6
  SAY @2166 /* Praise the gods, you have saved us both once again. And from a fate most dire, I am certain. You have my deepest gratitude, <CHARNAME>. */
  IF ~~ THEN REPLY @2167 /* Thank you for coming to my aid. Had they caught me unprepared, I wouldn't have stood a chance. */ GOTO 7
  IF ~~ THEN REPLY @2168 /* That was close. Far too close. */ GOTO 7
  IF ~~ THEN REPLY @2169 /* Deep enough for you to grant me a wish? */ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2170 /* I would offer you a wish, but while I was not captured again, neither have I been set free. It is beyond my power. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @2171 /* I can perform a small divination, if you'd like. A glimpse into another time, a chance to see what would have happened had we not prevailed this day. */
  IF ~~ THEN REPLY @2172 /* Interesting. I AM curious as to the hunters' purpose... */ GOTO 9
  IF ~~ THEN REPLY @2173 /* Such an insight may prove valuable. */ GOTO 9
  IF ~~ THEN REPLY @2174 /* No. Let's get out of here before the bartender realizes I just killed half his patrons. */ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @2175 /* I shall cast the spell. */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
MoveViewPoint([790.620],INSTANT)
CreateCreature("cutspy",[730.560],N)
CreateCreature("ohbwing",[790.620],NW)
ActionOverride("ohbwing",ChangeAIScript("",OVERRIDE))
ActionOverride("ohbwing",ChangeAIScript("",GENERAL))
FadeFromColor([20.0],0)
Wait(1)
ActionOverride("ohbwing",SetSequence(SEQ_HEAD_TURN))
Wait(1)
ActionOverride("ohbwing",SetSequence(SEQ_CONJURE))
SmallWait(15)
ActionOverride("ohbwing",SetSequence(SEQ_CAST))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player1))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player2))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player3))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player4))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player5))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player6))
Wait(2)
FadeToColor([20.0],0)
Wait(2)
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza2",Myself))
Wait(1)
StartCutScene("ohbcut03")
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2176 /* As you wish. Then I shall bid you farewell, <CHARNAME>, and good fortune in your travels! */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
EndCutSceneMode()
GoToStartScreen()
~ EXIT
END

IF ~  Global("OHB_NAJIM","GLOBAL",2)
~ THEN BEGIN 11
  SAY @2177 /* It is done. Dormamus will trouble us no longer. It saddens me to confine another genie thus, but he left me no choice. */
  IF ~~ THEN DO ~SetGlobal("OHB_NAJIM","GLOBAL",4)
~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @2178 /* His companions will notice he's gone. I will take his shape so they believe I am he. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @2179 /* Now, go back downstairs, quickly. You've done much to arouse suspicion already. */
  IF ~~ THEN DO ~Unlock("Dormamus_door")
CreateVisualEffectObject("SPDIMNDR","ohbnajim")
Wait(2)
DestroySelf()
~ EXIT
END

IF ~  Global("ohb_finale","global",10)
~ THEN BEGIN 14
  SAY @2180 /* Ho ho, and I'm back! They say, "there's no place like home," but I'd rather be where the action is. */
  IF ~~ THEN GOTO 15
END

IF ~  False()
~ THEN BEGIN 15
  SAY @2181 /* As you freed me from the efreet's prison, it appears we are even, mortal. Or should I call you <CHARNAME>? */
  IF ~~ THEN REPLY @2182 /* Call me friend. */ GOTO 16
  IF ~~ THEN REPLY @2183 /* My name will be sufficient. */ GOTO 16
  IF ~~ THEN REPLY @2184 /* Call me whatever you like, as far away from me as possible. */ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @2185 /* As you wish— */
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateCreatureDoor("ohbstann",[1245.1065],SW)
Wait(4)
ActionOverride("ohbstann",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @2186 /* You will not take me alive! */
  IF ~~ THEN EXTERN ~OHBBANNO~ 2
END

IF ~~ THEN BEGIN 18
  SAY @2158 /* I am not your foe, <CHARNAME>. We should prepare— */
  IF ~~ THEN EXTERN ~OHBJOKER~ 28
END

IF ~~ THEN BEGIN 19
  SAY @2159 /* I am glad to hear it, <CHARNAME>. Among them is an efreet named— */
  IF ~~ THEN EXTERN ~OHBJOKER~ 28
END

IF ~~ THEN BEGIN 20
  SAY @2160 /* I apologize for the deception, <CHARNAME>, but it was the only way to safely— */
  IF ~~ THEN EXTERN ~OHBJOKER~ 28
END

IF ~~ THEN BEGIN 21
  SAY @3883 /* The moment has come, <CHARNAME>. Stand with me, and send these blaggards to the afterlife! */
  IF ~~ THEN REPLY @3884 /* Very well! I will not allow myself to be captured again, for any purpose! */ EXTERN ~OHBPOL~ 1
  IF ~~ THEN REPLY @3885 /* I’ll fight for my own skin. I don’t care a whit for you. */ EXTERN ~OHBPOL~ 1
  IF ~~ THEN REPLY @2184 /* This is not a fight we can win. I surrender… for now. */ DO ~SetGlobal("ohb_bp2_capture","global",6)~ EXIT
END
