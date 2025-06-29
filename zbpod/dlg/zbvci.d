/* Vanilla Companion Interjections
A file where anyone can add vanilla npc interjections they think are suitable in PoD
These lines have not been tra-ified due to not being proofread or approved yet */

/* intro dialogue upon being transported to OH8100, after speaking to Voghiln */
APPEND PLAYER1

IF ~Global("ZBPODINTRO","GLOBAL",1)~ THEN BEGIN ZBPODIntro
SAY @3688 /* Once more you find yourself in chains, a prisoner of fate's cruel design. Yet you escaped Irenicus' prison and emerged stronger for it. */
+ ~NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + @3689 /* Who is this Dennaton? Where are we? */ EXTERN Player1 ZBPoDIntro2
+ ~!NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + @3690 /* Who is this Dennaton? Where am I? */ DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~ EXIT
END

END // FOR TOP APPEND

CHAIN Player1 ZBPoDIntro2
@3691 /* Your companions stand beside you, their expressions betraying the same confusion and unease. */
DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3692 /* Where are we? I feel...strange. And I can't access my magic. Be careful, <CHARNAME>. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3693 /* An ill omen. Best we explore and gain our bearings. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3694 /* Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this choking place. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3695 /* My spells! Something...restricts it. (Of all the blasted places it had to be an anti-magic zone.) No matter. Nothing can contain Edwin Odesseiron for long. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3696 /* Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim - it almost reminds me of my beloved Sigil. Keys, portals, danger around every corner. */
== IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3697 /* Heh. Seems we're trapped once again. This is starting to feel a little personal now. Let's break out of here fast, alright? */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3698 /* We know nothing of this place. Or of this Dennaton. Be wary, <CHARNAME>, but press forward. We gain nothing by standing still. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3699 /* An intrepid gnome always makes the best of any situation. And this is a situation, to be sure! Potential customers around every corner. I'll start perfecting my sales pitch while we look around. There has to be someone in charge around here. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3700 /* I sense evil within this place, though also those that do not mean us harm. Let us speak to the inhabitants and discern friend from foe. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3701 /* What are we standing about for? Let's get to the killing! */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3702 /* Captured once again - as though the echoes of the Shadow Lord's capture do not still linger. Let us see about earning our freedom, <CHARNAME>. I have no wish to remain here for long. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3703 /* The people here are not free, <CHARNAME>. As heroes, we must break their chains. Boo will help. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3704 /* My magic doesn't respond, not like it normally would, I think we're in an anti-magic field. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3705 /* I know not where we are, <CHARNAME>, but I suggest we watch our steps. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3706 /* Oloth plynn dos! I do not care to be snatched up, and teleported elsewhere, <CHARNAME>. You best get us out of here fast. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3707 /* Tricked and then caged. Remind me to thank our captor with something sharp and precise. Ideally between their ribs. */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3708 /* Much danger may lurk in the darkness here. Unfortunately for our enemies I have darkvision and my strikes *never* miss. */
== HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN @3709 /* Locked away like common cattle... How quaint. Let them savor their little victory. At least until we carve our way out. */
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3710 /* Well...uh, my magic's not working. I mean, not all that strange, wild mage and all that, you know, really it does what it wants to. But I'm getting *nothing*. An anti-magic zone, maybe? */
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3711 /* The light of Selune will guide us even through this darkness. */
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN @3712 /* Shuffle, growl. */
END
++ @3713 /* We can help no one by standing here. */ EXIT
++ @3714 /* Nothing else for it but to explore. */ EXIT
++ @3715 /* They will regret caging me! */ EXIT

/* companion interjections during the welcoming feast
edwin should also react here, since we're in thay and the red wizards are involved, but i'll have glitter manage that. :3
NONE OF THIS IS PROOFREAD OR FULLY IC YET - heavy edits expected */
INTERJECT_COPY_TRANS OHBTARTL 75 ZBSFEASTJAHEIRA
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3716 /* For one so small of stature, his ego seems disproportionately sized. */
END

INTERJECT_COPY_TRANS OHBTIMMO 70 ZBSFEASTKELDORN
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3717 /* One cannot question his valour. His chances of success however... */
END

INTERJECT_COPY_TRANS OHBELLRA 31 ZBSFEASTRASAAD1
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3718 /* The light of Selûne will yet offer guidance. */
END

INTERJECT_COPY_TRANS OHBELLRA 32 ZBSFEASTRASAAD2
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3719 /* I did not expect to find one as enlightened within these dark halls. */
END

INTERJECT_COPY_TRANS OHBMERCY 44 ZBSFEASTDORN1
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3720 /* I should mention, <CHARNAME>, that this woman seeks my blood. Not that she has any hope of defeating me. */
END

INTERJECT_COPY_TRANS OHBHORT 49 ZBSFEASTDORN2
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3721 /* I could strike you both down in a single blow! */
END

/* mercy whitedove reacts to dorn il'khan's presence
NOT PROOFREAD / FULLY IC YET. Heavy edits expected.
possibly extend this so she refuses to join the pc in the arena if dorn is present in the party */
INTERJECT_COPY_TRANS OHBMERCY 3 ZBSMERCYDORN1
== OHBMERCY IF ~!Global("OHB_TALKED_MERCY","LOCALS",1) InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3722 /* Given your choice of companion, I doubt we have anything to discuss. */
== DORNJ @3723 /* Does my presence infuriate you, Whitedove? You should be thankful that the arena prevents us from killing one another. You fight another day only through that mercy. */
== OHBMERCY @3724 /* I swear, blackguard, one day you shall answer for your actions! I will personally hunt you down and drag you to face retribution. */
== DORNJ @3725 /* Big words. Especially when you can't back them up. */
== OHBMERCY @3726 /* Is there aught else your companion wants? I've little time for idle chatter. */
END

/* random single interjections to dialogue */

INTERJECT_COPY_TRANS OHBMOLZA 19 ZBJAN1
== JANJ IF ~Global("ZBPODINTRO","GLOBAL",1) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3727 /* Turnip bandits. Truly the most despicable of all villians. Why, this reminds me of a story, my cousin, Dipsy, was robbed by a most unbecoming fellow who... */
END

/* the companions interject to stannel's ongoing lies - we're going alphabetically & only adding a few batches per fight. so they don't ALL fire at once */

INTERJECT_COPY_TRANS OHBSTANN 59 ZBSTANNELBATCH1
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3728 /* Why would he say such awful things? He's twisting everything we've done, everything we're going through, and turning it into something so ugly... so wrong. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3729 /* This affront to our honor will not stand. Such lies, when allowed to spread, often take on a life of their own. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3730 /* These tall tales are like leaves drifting upon the wind. They will scatter in time. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3731 /* You think to besmirch my reputation with such drivel? Your envy is as transparent as it is pitiable. */
END

INTERJECT_COPY_TRANS OHBSTANN 63 ZBSTANNELBATCH2
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3732 /* What dark muse inspires him to write such a tragedy, I wonder? */
== IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3733 /* At least he's creative about his lies? Too bad, really, I wouldn't mind stories about Imoen the Magnificent bravely saving others. Just...not the opposite so much. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3734 /* Truth is stubborn and it will outlast his petty words. Pay him no heed. We have greater concerns to tend to. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3735 /* Slander, eh? You'd think he'd try to be clever about it. I once knew a fellow who claimed I stole his golden pantaloons — turns out we don't even wear the same size,  and he didn't own any to begin with. */
END

INTERJECT_COPY_TRANS OHBSTANN 69 ZBSTANNELBATCH3
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3736 /* Such lies are a coward's weapon. Let him spin his tales, our actions will speak louder than his words. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3737 /* Let him yap on. Words are cheap. */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3738 /* While these insults do not reflect on my true character, I don't believe it honorable to strike someone simply for speaking their piece. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3739 /* What? Why would you tell such lies about us? Boo and I are heroes not villains! */
END

INTERJECT_COPY_TRANS OHBSTANN 71 ZBSTANNELBATCH4
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3740 /* Nobles would often partake in these games; spreading terrible rumours to cover their own shameful wrongdoings. The practice disgusts me. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3741 /* This is not the first time my name's been dragged through the mud. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3742 /* Pfeh! I will not lower myself to address this male's petty lies. Nothing he says holds any worth to me. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3743 /* Having such a reputation is not without its perks. Fear inspires as much as love. */
END

INTERJECT_COPY_TRANS OHBSTANN 75 ZBSTANNELBATCH5 /* the EE NPCs */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3744 /* Still your tongue unless you have a death wish! I've had enough of your ceaseless prattling. */
// == HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN ~[write suitable line here idek :/]~
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3745 /* Oh, come on! You *know* that's not true. ...Maybe I'll turn you into a chicken and see how much you like being the butt of the joke. */
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3746 /* Do not give credibility to these lies. He hopes to unsettle us. We must rise above his barbs. */
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN @3747 /* Hrrrmph. Snort! */
END

// Before Training matches
INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE1
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3748 /* Boo? What is it, Boo? Boo demands to know why we need to kill defenseless animals for fun? */
  == JAHEIRAJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ @3749 /* To pour out their black heart into the world, Minsc. Only scum find joy in it. This Stirv deserves no mercy when justice comes. */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3750 /* Outrage! The butts of evil must be liberally kicked into playing nice with animals. */
  == JAHEIRAJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ @3751 /* Yes, none shall escape nature's wrath. */
END

INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE2
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3752 /* These twisted animals are an affront to Nature. Balance requires that we must purge them. */
  == NALIAJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3753 /* Can we save any of them? They will just keep fighting until they are all dead in the end. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3754 /* Calmly, dear Nalia, we shall not break as the branches of an oak in a summer storm. */
  == NALIAJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3755 /* I hope you are right. */
END

INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE3
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3863 /* D-do we ... have to ... kill animals? I loved animals at the circus. Their trainers loved them too and wouldn't think to hurt them as they showed how beautiful, strong, and smart they were. T-this isn't like the circus, this is WRONG. */
  == RASAADJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3864 /* Nature exists in cycles, gentle one. Even those who are beautiful or strong must one day be embraced by the shadow of death and rebirth. */
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3865 /* B-but we don't have to help them, do we? */
  == RASAADJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3866 /* We are but the wheel on which existence turns. None may escape their part. */
END

// After Training match 1
INTERJECT_COPY_TRANS OHBSTIRV 16 ZBTRAININGPOST1
  == KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3867 /* Ach. It be a marvelous wonder to cut through wee beasties an' get paid fer the pleasure. Count out yer coin, we'll slaughter yon bloody puppies an' empty yer pockets! */
  == EDWINJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3868 /* Yes, the money. (This moron of a dwarf is so blinded by coin he rarely sees past his own nose). */
  == KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3869 /* Wizard, yer robes are open and I see how dainty yon smallclothes be. Don't trifle with th' coin! */
  == EDWINJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3870 /* Of course. (Bah, Can we find a new block of meat to stand behind?) */
END
