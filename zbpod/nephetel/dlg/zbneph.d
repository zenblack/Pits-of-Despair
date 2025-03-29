BEGIN ZBNEPH

/// Introduction ///
IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationLT(Player1,7)~ THEN BEGIN zbnepharenaintro1
  SAY @36 /* Your reputation has preceded you. You certainly don’t mind getting your hands dirty. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,15)~ THEN BEGIN zbnepharenaintro2
  SAY @37 /* People seem to know you as someone who they can count on when they are in need. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,6) ReputationLT(Player1,17)~ THEN BEGIN zbnepharenaintro3
  SAY @11 /* Well look here, a mighty Bhaalspawn. They say that you are one of a kind, more than your brothers and sisters in Murder. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~~ BEGIN zbneph1
  SAY @14 /* My name is Nephetel. Perhaps you would allow me to give you a word of advice? */
  IF ~~ THEN REPLY @15 /* Of course my lady. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @16 /* Whatcha got? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @17 /* I've no need for advice from a stranger. I keep my own counsel. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ GOTO zbneph3
END

IF ~~ BEGIN zbneph2
  SAY @18 /* Before you begin in the arena you should consider fighting in the training matches. They'll give you a …  taste for the real matches, see Stirv in the kennel to get started. */
    =
  @19 /* Watch out for that crazy bastard Stirv. He is a sadist. His 'puppies' love him and he performs all kinds of experiments on them using concoctions, mutations, and devilish training techniques. He has even been able to get them to fight as a team without ripping each other apart and he will delight in watching his pets eat you alive. */
  IF ~~ EXIT
END

IF ~~ BEGIN zbneph3
  SAY @20 /* Good, a tough response. You should still heed my words. Consider fighting in the training matches in the kennel. */
  IF ~~ EXIT
END
///

/* main arena hub */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ THEN BEGIN zbnepharenahub01
  SAY @21 /* Known as the Hero of Baldur's Gate? Hmm, and as far as Dennaton is concerned the main attraction in his three ring circus. You don't look as savage as I expected, I can see why he was interested in you. */ /* Known as the Hero of Baldur’s Gate? Hmm, and as far as Dennaton is concerned the main attraction in his three ring circus. You don’t look as savage as I expected, I can see why he was interested in you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ THEN BEGIN zbnepharenahub02
  SAY @38 /* I thought the 'Hero' of Baldur's Gate didn't need my advice.
   */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTERJECT_1","GLOBAL",1)~ THEN BEGIN
  SAY ~As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here.~
  IF ~~ THEN DO ~SetGlobal("ZBNEPH_COMMENT_1","GLOBAL",2)~ EXIT
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ THEN BEGIN zbnepharenahub
SAY @22 /* What can I do for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + @39 /* I only know your name, tell me a bit about yourself? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Do you have any ideas on how to escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
++ @27 /* I'll let you get back to whatever you were doing. */ /* I’ll let you get back to whatever you were doing. */ EXIT
END

IF ~~ zbnepharena1
SAY @29 /* I got trapped in a spider's web and found myself here, just like you. */
IF ~~ DO ~SetGlobal("nepharen1","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena2
SAY @40 /* Hah! I'm just your average, helpful tiefling. */
IF ~~ DO ~SetGlobal("nepharen2","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena3
SAY @30 /* Between the two of us, you are not the only one with a bone to pick with Dennaton. It is unwise to discuss it now openly, yes? Get familiar with what we're dealing with and learn the lay of the land and we'll speak again soon. */
IF ~~ DO ~SetGlobal("nepharena3","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena4
SAY @31 /* Being suspicious is fine. Deception and trickery is part of my profession. But, perhaps you should take more care with your words. Hmm?. */ /* Being suspicious is fine. Deception and trickery is part of my profession. But, perhaps you should take more care with your words. Hmm? */
IF ~~ DO ~SetGlobal("nepharena4","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharenahub2
SAY @33 /* Anything else I can clear up for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena2
+ ~Global("nepharena2","LOCALS",0)~ + @39 /* I only know your name, tell me a bit about yourself? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Do you have any ideas on how to escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
++ @27 /* I'll let you get back to whatever you were doing. */ /* I’ll let you get back to whatever you were doing. */ EXIT
END
