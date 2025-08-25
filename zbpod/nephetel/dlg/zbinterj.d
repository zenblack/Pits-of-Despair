// NPCs Interjections

/// Introduction Interjection
INTERJECT_COPY_TRANS ZBNEPH zbneph2 ZB_NEPH_INTRO_INTERJECT_1
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~A beautiful flicker amidst the darkness. Valuable advice for nothing? How delightfully rare.~
END

INTERJECT_COPY_TRANS ZBNEPH zbneph3 ZB_NEPH_INTRO_INTERJECT_2
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~A beautiful flicker amidst the darkness. Valuable advice for nothing? How delightfully rare.~
END

INTERJECT_COPY_TRANS ZBNEPH zbnepharena4.3 ZB_NEPH_INTRO_INTERJECT_3
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN ~An apt description of many of my… former associates…~
END

/// Before match 1, If PC has completed at least 1 training match
INTERJECT_COPY_TRANS ZBNEPHJ 0 ZB_NEPH_INTERJECT_1.1
  == JAHEIRAJ IF ~GlobalGT("zb_train_spawn","GLOBAL",0) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @43 /* Better them to rejoin nature instead of being left to rot in this hole. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 1 ZB_NEPH_INTERJECT_1.2
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @44 /* It’s awful to make them fight like this... No one deserves it. */
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @131 /*  This Dennaton’s days are numbered, by Helm I swear it to be so. In the meantime, however, let us rid Faerûn of this band of scum. */
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @139 /* No self respecting warband would allow themselves to be taken alive. Grummsh would flay their skin from their weakling bones. */
  == RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @133 /* I see only prisoners here, forced to feed this cruel spectacle. May the Moonmaiden grant them peace. */
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @132 /* A bloody slaughter it will be. An' bloody satisfying! */
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @134 /* Bah! I will not be toyed with on the level of some brute. Let us be quick with this. */
END
///

/// After Match 1 - Orcs
INTERJECT_COPY_TRANS ZBNEPHJ 1.1 ZBPOSTMATCH1
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @143 /* T'was a performance most dizzying! I must confess I feel the beating heart of the arena where the audience's lust for spectacle burns bright. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @144 /* Planesman, it should cause you regret to be in the machinations of the foul wizards, not delight. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @145 /* Come now. Do you not feel the pulsing thread of life in this moment? We must capture it's singularity and savor the marrow before it decays before our eyes. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @146 /* A true hero can see this evil for what it is. The virtuous are dishonored in seeking pleasure for killing. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @147 /* I shall leave virtue and honor to you, Tiny Hawk, for who is more deserving? */
END

/// After Match 2 - After Dennaton kills part of a gladiatorial party
INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN ~Such cruelty… there must be a way to put a stop to it.~
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Boo disagrees with the treating of people like they are so many spare parts, and so does Minsc! Were my boot not contained so, it would most assuredly find itself in the nethers of this cruel evil.~
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN ~Interesting of you to call it slavery while you stand here without chains of your own. Whose coin buys your freedom? (Or is it that tail of hers?)~
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Loyalty, obedience… sometimes there’s no real choice at all. Best to remember that.~
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN ~Replacing the weak with the strong is the law of survival. If only our own band followed it so well.~
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Such cruel calculus is the mark of true evil. It thrives where life is traded like mere coin.~
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~The worst of it all is how easily it is accepted. Shackles are not lighter when they’re gilded, no matter what you tell yourself.~
  == JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @167 /* You know, that match reminded me of the Great Bovine-Turnip War of 1343. Terrible business. The bulls ran wild and trampled the fields, turnips detonating beneath their hooves. So awful was the sound that Uncle Scratchy never wears boots outdoors anymore—something about the sound of the squishing. Personally, I’m not convinced that the bulls were trying to annex gnome territory. */
END

/// Before Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3 ZBNEPHPREMATCH3
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN ~Ugh. Bugs. Why is it always bugs?~
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN ~Scaled beasties blood be thicker an’ more satisfi’in when sprayed across yer armor.~
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Be at ease. We will triumph over this lizard tribe with goodness and might.~
  == JANJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN")~ THEN @68 /*  Oh, Nephetel, you’re far too harsh. I once traded my old flame Lissa’s prize turnip for a racing lizard. Let me tell you, she was not happy I did. She chased me three times around the block and back again with a rake before she finally stood down. I named the lizard Binky, and he was the world to me when I was 38. That reminds me—I’m sure I’ve still got him around here somewhere. Don’t mind the bones. */ DO ~GiveItemCreate("ZBBINK0",Player1,1,0,0)~
  == EDWINJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN") !StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN") InMyArea("EDWIN")~ THEN @69 /* You’ve been carrying that thing around with you the entire time? Do you have no shame? */
  == MINSCJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN") !StateCheck("MINSC", CD_STATE_NOTVALID) InParty("MINSC") InMyArea("MINSC")~ THEN @70 /* Oh, that is horrible! Boo shall never face such a grisly fate. When it is our time, he will have the burial of a true Rashemi berserker alongside me! */
END
///

/// After Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3.1 ZBPOSTMATCH3
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @177 /* It gives me no pleasure to have defeated this tribe. Their nature has been twisted to fit the designs of Red Wizards. */
END
///

/// Before Match 4
INTERJECT_COPY_TRANS ZBNEPHJ 4 ZBPREMATCH4
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN ~Aye, tha’ be a fair deal, <CHARNAME>. Best we take it fer those weak-minded guppies in our company… not namin’ names. Har!~
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Clever, charging for safety when fear is the highest.~
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN ~I would warn against taking any kind of potion from unproven hands, <CHARNAME>.~
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~We ought to take the potion, <CHARNAME>. These beasts aren’t to be taken lightly.~
END
///

/// After Match 4
INTERJECT_COPY_TRANS ZBNEPHJ 4.1 ZBPOSTMATCH4
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN ~You know, one time I actually turned INTO an umber hulk. It was amazing—you could see everywhere with all those eyes. Ah oh, the digging! Dig, dig, dig. It felt like eating chocolate. So satisfying. Anyway, what were we doing?~
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Torm has witnessed us triumph on our righteous path to victory. Thay is a loathsome den where evil festers and such creatures must be rooted out whenever the opportunity arises.~
  == VALYGARJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~It will do little good—the entirety of Thay should be considered if one wishes to rid evil from our world.~
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Be that as it may, Valygar, we can only do what our bodies will allow us. Should the chance arise, still would I hesitate. While evil may lurk in every shadow, there is much that is sacred and worth defending—even in this place.~
END
///

/// Before Match 5 - The final match of their initial capture tuned for their level. Drow (underground evil elves with magic resistance) war party consists of a full complement of a mage and a cleric. When killed they burst into spiders that poison you and attack. The most difficult match up to this point in the content.
INTERJECT_COPY_TRANS ZBNEPHJ 7 ZB_NEPH_INTERJECT_5.1
  == VICONIJ IF ~InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @61 /* Hmph. I wonder what fate befell their house? Only the weak would allow themselves to be captured by surfacers. */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN~ Ah, finally! A true evil to put to the sword. Torm’s hand will guide us.~
END

INTERJECT_COPY_TRANS ZBNEPHJ 8 ZB_NEPH_INTERJECT_5.2
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN ~Free, ye say? I be findin’ that hard t’ believe, lassy.~
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN ~Be cautious, <CHARNAME>, but don’t dismiss her out of hand. Another blade on our side could mean the difference between victory and death against these drow.~
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~An alluring offer, my raven! Our stage will be all the richer for such dangerous company.~
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN ~If it helps keep the spiders off me, I’m MORE than happy to accept help.~
  == JANJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN")~ THEN ~My Uncle Gerhardt used to say, 'give the first turnip for free and get a customer for life.’ Of course, he stopped saying that after he got stuck with old Berrik—he stuck around for 70 years, stubborn as mold. Old Gerhardt said he was sad when he died, but we all knew he was lying.~
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~We are all beasts of a pack at the end of the day. We would do well to accept her help.~
END
///
