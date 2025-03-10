BEGIN ZBNEPH 

/* intro dialogue */ 
IF ~NumTimesTalkedTo(0)~ zbnepharenaintro
SAY ~Well look here, a mighty Bhaalspawn. They say that you are one of a kind, more than your brothers and sisters in Murder.~
= ~Before you begin in the arena you should consider fighting in creature features. They give you a taste for the real matches ... see Stirv in the kennel to get started.~
= ~Watch out for that crazy bastard Stirv. He is a sadist. His "puppies" love him and he performs all kinds of experiments on them using concoctions and frightening training techniques. He has even been able to get them to fight as a team without ripping each other apart.~
= ~If there are great evils, then hidden lesser evils reside within them and he is one with the sounds of laughing while he watches his pets eat you alive.~
IF ~~ EXIT
END

/* main arena hub */
IF ~IsGabber(Player1)~ zbnepharenahub
SAY ~Hero of Baldur's Gate, eh? The star in the night sky as far as Dennaton is concerned. What can I do for you?~
+ ~Global("nepharena1","LOCALS",0)~ + ~Who are you?~ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + ~How did you come to this place?~ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + ~Would you be interested in helping me escape this place?~ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + ~You look familiar. There was this messenger who got me into this mess and your voice sounds supsiciously similar.~ + zbnepharena4
+ ~Global("nepharena5","LOCALS",0)~ + ~You stood next to Dennaton during the feast. Are you two close?~ + zbnepharena5
++ ~I'll let you get back to whatever you were doing.~ EXIT /* reword this line bucket omg */
END

IF ~~ zbnepharena1
SAY ~Me? My name is Nephetel, nice to meet you.~ 
IF ~~ DO ~SetGlobal("nepharena1","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena2
SAY ~I got trapped in a spider's web and found myself here, just like you.~
IF ~~ DO ~SetGlobal("nepharena2","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena3 
SAY ~Between the two of us you are not the only one with a bone to pick with Dennaton. It is unwise to discuss it now openly, yes? Get familiar with what we're dealing with and learn the lay of the land and we'll talk again soon.~
IF ~~ DO ~SetGlobal("nepharena3","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena4
SAY ~Being suspicious is fine, but rude as well? A woman is a cavalcade of mystery and I'm no exception.~
IF ~~ DO ~SetGlobal("nepharena4","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena5
SAY ~Why would we be? I always like to stay close to those who might need a nudge with my dagger.~
IF ~~ DO ~SetGlobal("nepharena5","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharenahub2
SAY ~Anything else I can clear up for you?~
+ ~Global("nepharena1","LOCALS",0)~ + ~Who are you?~ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + ~How did you come to this place?~ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + ~Would you be interested in helping me escape this place?~ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + ~You look familiar. There was this messenger who got me into this mess and your voice sounds supsiciously similar.~ + zbnepharena4
+ ~Global("nepharena5","LOCALS",0)~ + ~You stood next to Dennaton during the feast. Are you two close?~ + zbnepharena5
++ ~I'll let you get back to whatever you were doing.~ EXIT /* reword this line bucket omg */
END
