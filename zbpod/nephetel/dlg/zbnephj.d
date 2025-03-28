BEGIN ZBNEPHJ

// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZBNEPH_COMMENT_1","GLOBAL",0) Global("OHB_EVENT_102","MYAREA",1) See(Player1)~ THEN
  SAY ~As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here.~
  IF ~~ THEN DO ~SetGlobal("ZBNEPH_COMMENT_1","GLOBAL",1)~ EXIT
END

// If PC has completed at least 1 training match
INTERJECT_COPY_TRANS OHBTARTL 7 ZBNEPHINTERJ1
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN
  @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. Quite ferocious, but they could not stand up to your team. Congratulations! */
  == EDWINJ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~So the strumpet has claws (Then again sometimes we like that, don't we? Hmm.).~
  == ZDBAEJ IF ~InParty("baeloth") InMyArea("baeloth") !StateCheck("baeloth",CD_STATE_NOTVALID)~ THEN ~Cats with claws, count me out.~
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~You think it's a good job to destroy nature's children? We do as the balance dictates.~
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0)~ THEN 
  @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  == AERIEJ IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN ~That is horrible, h-he is truly a despicable man~
END
