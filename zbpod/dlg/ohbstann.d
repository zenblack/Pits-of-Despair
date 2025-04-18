// creator  : weidu (version 24900)
// argument : OHBSTANN.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSTANN~

IF ~  Global("OHB_TALKED_STANNEL","LOCALS",0)
Global("OHB_LAST_BATTLE","GLOBAL",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY @2751 /* Oh. Hello. You speak to me, I suppose? Salutations are certainly suitable in this social situation. Query me quickly. */
  IF ~~ THEN REPLY @2752 /* Can I ask you a question? */ DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY @363 /* Who are you? */ DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 3
  IF ~~ THEN REPLY @2753 /* Your voice and manner seem familiar... Have we met before? */ DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @2754 /* Great. Another fool infatuated with the sound of his own voice.  */ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @2755 /* So soon? Has the entrapped expert elucidated entertainment in these halls of incarceration? Very well. Enjoy your enslavement. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2756 /* Your banal beratements and barbaric bluster are of no consequence to a cultivated consciousness. Wicked words are wasted. Good day. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2757 /* Who am I? I insist on immediate information illuminating your identity. Who are you? */
  IF ~~ THEN REPLY @2758 /* Huh? What? */ DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 4
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY @2759 /* Who I am isn't as important as why I'm here. Answer my question. */ DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY @2760 /* I am <CHARNAME>. And you are...? */ DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY @2761 /* Never mind. I'm leaving. */ DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @2762 /* You think yourself clever. You aren't. */ DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @2763 /* Have my multisyllabic musings mesmerized your miniature mind? My deepest regrets. I shall speak more simply in consideration of the diminutive degree of your deductive devices. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @2764 /* What profound perception you possess, my precocious performer! I know why you've been hauled to these halls, and that information is indeed more important than your identity. Now I shall give you mine. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @2765 /* <CHARNAME>. The rampant rumors of your recent residence are ratified. I am not surprised to see you here. Do not be shocked. My profession requires I know all persons of prominence and prosperity parading in the pit. Now you shall know my name. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2766 /* I am the sultan of scholars! The regent of recorders! The baron of bards! Sought by pashas, kings, lords, and emperors alike to chronicle the conquests and catastrophes of our time.  */
  IF ~~ THEN REPLY @2767 /* Dennaton caught you too, huh? */ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @2768 /* Caught? No, no, my sad, cynical soldier of ill fortune. I am here of my own consent, to craft "The Black Pits 2: Eclectic Blood and Grue." That's the working title of my current compendium of characters cunning, captivating, and—in your case—contentious and cantankerous. */
  IF ~~ THEN REPLY @2769 /* What? */ DO ~AddJournalEntry(93912,INFO)
~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @2770 /* I am the renowned, the beloved, the exalted, the inestimable Stannel Eibor! May you rejoice in the good fortune of meeting me in person! */
  IF ~~ THEN REPLY @2771 /* I might do that later. Can I ask you a question? */ GOTO 14
  IF ~~ THEN REPLY @2772 /* Stannel Eibor? Never heard of you. Excuse me. */ GOTO 1
  IF ~~ THEN REPLY @2773 /* Stannel Eibor? Sounds like a disease. */ GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @2774 /* You find my phonetics familiar? Please indulge my egotistic interest and inform me who speaks so similarly to this simple scribe. A king, perhaps? The lord of a great city? */
  IF ~~ THEN REPLY @2775 /* Neither a king nor a lord. It was Baeloth the Entertainer. */ DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY @2776 /* It was a lord of pits such as these. Baeloth was his name. */ DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY @2777 /* If he was a king, then I dethroned him. It was Baeloth the Entertainer. */ DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY @2761 /* Never mind. I'm leaving. */ DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @2778 /* Yes, I remember now. It was the town idiot where I grew up. */ DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY @2779 /* Ah... Yes. Through a certain sister's second servant's son, we are somehow siblings. No doubt the similarity of speech springs from our sires. Baeloth is a gifted and generous businessman. You were lucky to have made his acquaintance. */
  IF ~~ THEN REPLY @2780 /* That explains it. Can I ask you something else? */ GOTO 14
  IF ~~ THEN REPLY @2781 /* In my experience, siblings rarely speak so similarly.  */ GOTO 12
  IF ~~ THEN REPLY @2782 /* A very... thorough answer. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @2783 /* I see the surprisingly strong similarity of stupidity.  */ GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY @2784 /* Extraordinary individuals exhibit extraordinary traits, and my antecedents were extraordinary in the extreme. Now excuse me, I have writing to attend to. */
  IF ~~ THEN DO ~AddJournalEntry(93913,INFO)
~ EXIT
END

IF ~  OR(2)
Global("OHB_TALKED_STANNEL","LOCALS",1)
!GlobalLT("OHB_LAST_BATTLE","GLOBAL",101)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",405)
Global("ohb_finale","global",0)
~ THEN BEGIN 13
  SAY @2785 /* The dashing duelist, the persistent pugilist, the gallant gladiator returns! Have you a moment to discuss your latest match? */
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 35
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 38
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 41
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 45
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 49
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 53
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 57
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 61
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 65
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 69
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 73
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 77
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 80
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 84
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 88
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 92
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 96
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN REPLY @2786 /* I would be happy to. */ GOTO 100
  IF ~  GlobalLT("OHB_brodle_uprising_ready","GLOBAL",4)
~ THEN REPLY @2787 /* No, but could I ask you a question? */ GOTO 14
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 14
  SAY @2790 /* Foolish fighter! You have asked already. You may as well ask another. */
  IF ~  !Global("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ THEN REPLY @363 /* Who are you? */ GOTO 3
  IF ~  !Global("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ THEN REPLY @2791 /* What exactly is your role here? */ GOTO 15
  IF ~  !Global("OHB_STANNEL_SAID_MET","LOCALS",1)
~ THEN REPLY @2753 /* Your voice and manner seem familiar... Have we met before? */ GOTO 10
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY @2792 /* Certainly. A learned person such as yourself could help me with a perplexing problem. */ GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
!PartyHasItem("ohbring1")
HasItem("ohbring1","OHBSTANN")
~ THEN REPLY @2793 /* I know of someone interested in one of your possessions. */ GOTO 25
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
END

IF ~~ THEN BEGIN 15
  SAY @2794 /* My role cannot be related by mere words. I preserve for permanent posterity the power and prestige of the pits' performers. My works will line the shelves of libraries in every city. */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @2795 /* My characters and stories will be the talk of nobles and nobodies alike. Barons and barmaids, kings and knaves, lords and lackeys—all shall cherish my chapters.  */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @2796 /* You have the distinction of being a part of this timeless tale. Consider well your words and actions before the arena audience. There are others who have the makings of a hero.  */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @2797 /* Displease the crowd and these others will surely pinch your place as plucky protagonist. */
  IF ~~ THEN REPLY @2798 /* Thanks for the advice. Can I ask you a question? */ DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY @2799 /* It takes more than a hero to make a story. I wonder whose tale this really is... */ DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY @2800 /* Thanks for the advice. I must be going now. */ DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @2801 /* Become the hero of a story written by you? No thanks. */ DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 19
  SAY @2802 /* Ah, a perceptive performer. Your reflections are right, my determined detective. There is more here than meets the eye. Come close and I shall share a secret with you.  */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @2803 /* Dennaton is not the only one behind these pits. There is another, whose name few will say in a voice above a whisper. I do not speak in whispers, so I'll not say it myself. */
  IF ~~ THEN REPLY @2804 /* Interesting, if not entirely helpful. Can I ask you a question? */ GOTO 14
  IF ~~ THEN REPLY @2805 /* Coward. */ GOTO 2
  IF ~~ THEN REPLY @2806 /* That was about as useful as I expected, which is to say, not at all. I'll be going now. */ GOTO 1
END

IF ~~ THEN BEGIN 21
  SAY @2807 /* No problem can long perplex or puzzle my preponderance of perception. Ask away! */
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
~ THEN REPLY @2808 /* Do you have any advice on how to handle some of the creatures in these pits? */ DO ~SetGlobal("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
~ GOTO 22
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
~ THEN REPLY @2809 /* Where in these pits could I get my hands on some poison? */ DO ~SetGlobal("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
~ GOTO 28
  IF ~  !Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
~ THEN REPLY @2810 /* Who makes the best scrolls around here? Magical scrolls, I mean, not the sort you write. */ DO ~SetGlobal("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
~ GOTO 29
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ DO ~SetGlobal("OHB_STANNEL_SAID_PERPLEX","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @2811 /* Gods! I can't take any more of your nonsensical yammering. Good day! */ DO ~SetGlobal("OHB_STANNEL_SAID_PERPLEX","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY @2812 /* Indeed I do. My knowledge of monsters is monumental! Listen to my lore and live longer. The umber hulks and mind flayers will try to baffle, befuddle, and bedevil your brain. Protect your mind from them if you can. */
  IF ~  !Global("OHB_205","GLOBAL",-1)
~ THEN GOTO 23
  IF ~  Global("OHB_205","GLOBAL",-1)
!Global("OHB_302","GLOBAL",-1)
~ THEN GOTO 24
  IF ~  Global("OHB_205","GLOBAL",-1)
Global("OHB_302","GLOBAL",-1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @2813 /* Demons and devils have been acquired for the arena. They are enemies in the extreme—evade them and observe as each eviscerates the other. */
  IF ~  !Global("OHB_302","GLOBAL",-1)
~ THEN GOTO 24
  IF ~  Global("OHB_302","GLOBAL",-1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @2814 /* Finally, the great golem you face will split at the slightest strike. Don't be surprised to find a gangs of golems where once there was one. */
  IF ~~ THEN REPLY @2815 /* Very helpful. Can I ask you a question? */ GOTO 14
  IF ~~ THEN REPLY @1993 /* Many thanks. I must go now. */ GOTO 1
  IF ~~ THEN REPLY @2816 /* Thanks for that detailed description of the overwhelmingly obvious. Bloody Hells, now I'm starting to talk like you. */ GOTO 2
END

IF ~~ THEN BEGIN 25
  SAY @2817 /* Interest in my items? People peruse my possessions? Do tell! */
  IF ~~ THEN REPLY @2818 /* One of the merchants is interested in a ring you possess. */ GOTO 26
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 1
  IF ~~ THEN REPLY @2819 /* By the gods, your speeches are infuriating! I'm leaving. */ GOTO 2
END

IF ~~ THEN BEGIN 26
  SAY @2820 /* Requesting my ring? I may relinquish such regalia... for a reasonable rate. 2,000 gold pieces. */
  IF ~  PartyGoldGT(1999)
~ THEN REPLY @2821 /* A fair price. */ DO ~TakePartyGold(2000)
~ GOTO 27
  IF ~~ THEN REPLY @2822 /* I shall return when I have enough. For now, I bid you farewell. */ GOTO 1
  IF ~~ THEN REPLY @2823 /* Forget it, then. I've got to go. */ GOTO 1
  IF ~~ THEN REPLY @2824 /* 2,000 gold for THAT piece of tin? You're a better jester than scribe, Stannel Eibor. */ GOTO 2
END

IF ~~ THEN BEGIN 27
  SAY @2825 /* And here you go. Accept my accoutrement with avid amiability. */
  IF ~~ THEN DO ~AddJournalEntry(93914,INFO)
GiveItem("ohbring1",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @2826 /* For potent potions, visit the vendor with the miserable myconid. Those are the strongest and the best. */
  IF ~~ THEN REPLY @2827 /* I'll do that. May I ask another question? */ GOTO 14
  IF ~~ THEN REPLY @2828 /* Myconids are the giant mushroom men, yes? Thanks for the tip. Now I must go. */ GOTO 1
  IF ~~ THEN REPLY @2829 /*  I already knew that. Thanks for nothing. */ GOTO 2
END

IF ~~ THEN BEGIN 29
  SAY @2830 /* The ancient arcanist, Dulf Ebonbeard, is the supreme scriber of scrolls. Those who seek scrolls I send to that seasoned, sometimes seemingly senile soul. */
  IF ~~ THEN REPLY @2831 /* I'll seek him out, then. Thanks for the advice. Can I ask another question? */ GOTO 14
  IF ~~ THEN REPLY @2832 /* Ebonbeard's the fellow with the flowing white beard, isn't he? I'll pay him a visit. For now, I must be going. */ GOTO 1
  IF ~~ THEN REPLY @2829 /*  I already knew that. Thanks for nothing. */ GOTO 2
END

IF ~~ THEN BEGIN 30
  SAY @2833 /* Your run here is off to a rousing start! I hear this battle involved a pack of bloodthirsty orcs. Can you elaborate? */
  IF ~~ THEN REPLY @2834 /* Dennaton wanted the crowd warmed up, so I was forced to put the orcs down. */ GOTO 31
  IF ~~ THEN REPLY @2835 /* A senseless battle. I've faced more formidable summer breezes. I can't believe anyone found that slaughter entertaining. */ GOTO 31
  IF ~~ THEN REPLY @2836 /* It was over the moment I walked into the arena. In only a few seconds, I personally slew a dozen orcs! */ GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @2837 /* I'm sure prevailing over that pack of portly pig-people proved a perplexing puzzle for a preeminent pugilist like the purported "Scourge of Baeloth's Pits." */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @2838 /* But let's not belabor the business! How's this sound: "Bagged from their natural habitat, a bold band of orcs bravely battled a bloodthirsty butcher!" */
  IF ~~ THEN REPLY @2839 /* That has a bit of a spin on it, but... all right. */ GOTO 33
  IF ~~ THEN REPLY @2840 /* I see the notion of subject neutrality is alive and well, "historian." */ GOTO 33
  IF ~~ THEN REPLY @2841 /* Good. Chapter Two will be about that same butcher slicing open the arena scribe. */ GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @2842 /* This chronicle is sure to be a bestseller! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @2843 /* Oh, thanks! That quote really fleshes out your rabid ruthlessness to my more refined readers! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35
  SAY @2844 /* So, I understand this latest fight had a bit of excitement before it even began? */
  IF ~~ THEN REPLY @2845 /* Aye. Some other gladiators attacked Dennaton before the match. He was merciless in his reprisals. */ GOTO 36
  IF ~~ THEN REPLY @2846 /* There was a rebellion. A very short one. */ GOTO 36
  IF ~~ THEN REPLY @2847 /* It was nothing compared to the excitement that came from me butchering another batch of fodder! */ GOTO 36
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 36
  SAY @2848 /* Here's the story: "The Thayan fighters fought fiercely but futilely for their freedom. Our famous hero finished the forlorn fugitives off!" */
  IF ~~ THEN REPLY @2849 /* THAT's what you got from what I said? */ GOTO 37
  IF ~~ THEN REPLY @2850 /* It was nothing like that. */ GOTO 37
  IF ~~ THEN REPLY @2851 /* Say what you want about those fools, but make sure the butchering part's in there. */ GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @2852 /* You are a scintillating subject! This chronicle is SURE to be a bestseller! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38
  SAY @2853 /* Amazing adventure! Epic entertainment! Someone with the ability to lay low loads of lizardmen only comes by... what, once a tenday? Would you like to give a statement? */
  IF ~~ THEN REPLY @2854 /* Dennaton seems intent on giving me overmatched opponents so he can build my reputation among his clients. */ GOTO 39
  IF ~~ THEN REPLY @2855 /* Another ridiculously easy fight, over almost before it began. */ GOTO 39
  IF ~~ THEN REPLY @2856 /* I came, I saw, I conquered. That's my statement. */ GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @2857 /* A rare moment of rectitude! I shall record the following: "Ruthlessly ripped from their regular habitat, the noble savages resolutely resisted a relentless rival resolved upon their ruin!" */
  IF ~~ THEN REPLY @2858 /* You understand I've been kidnapped and my life is in danger too, right? */ GOTO 40
  IF ~~ THEN REPLY @2859 /* Do you even listen to what I say? */ GOTO 40
  IF ~~ THEN REPLY @2860 /* I can see the day I have to thrash you coming already. */ GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @2861 /* You are, as ever, a scintillating subject! This chronicle is SURE to be a bestseller! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY @2862 /* So, you were pitted against some dangerous denizens of the depths! Umber hulks, correct? */
  IF ~~ THEN REPLY @2863 /* Aye. Their ability to confuse was challenging, but utimately I triumphed! */ GOTO 42
  IF ~~ THEN REPLY @2864 /* They were just mindless beasts doing what they do. Unfortunately, I had little choice but to kill them. */ GOTO 42
  IF ~~ THEN REPLY @2865 /* They WERE umber hulks. Now they're DEAD umber hulks. */ GOTO 42
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 42
  SAY @2866 /* "The petrified beasts were pressed into the pit at pike point. There, a psychotic <PRO_RACE> playfully cut them to pieces for the people's pleasure!" What do you think? */
  IF ~~ THEN REPLY @2867 /* Listen, you have me all wrong. */ GOTO 43
  IF ~~ THEN REPLY @2868 /* You're just a hack, aren't you? */ GOTO 43
  IF ~~ THEN REPLY @2869 /* I just noticed how long your quill is. If I went in through your eye, I bet I could write on the back of your skull. */ GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @2870 /* Does it matter? This story has bestseller written all over it! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44
  SAY @2871 /* "...back of your skull." Mm, fabulous quote! The readers will love it. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY @2872 /* According to the schedule, a group of drow were your latest opponents. */
  IF ~~ THEN REPLY @2873 /* Correct. They were ferocious combatants, but in the end, their dark spider goddess could not save them. */ GOTO 46
  IF ~~ THEN REPLY @2874 /* Why do you even ask me about my fights? You already have the story written. */ GOTO 46
  IF ~~ THEN REPLY @2875 /* They fell as easily as the last drow I faced, an arrogant git named Baeloth. */ GOTO 47
END

IF ~~ THEN BEGIN 46
  SAY @2876 /* Your declaration was the drivel of a deluded dimwit! Here's how it happened: "The drow were driven to defend themselves by a dogged enemy determined to decimate them. They were diabolically destroyed, their bodies disgustingly disfigured by the depraved devil." */
  IF ~~ THEN REPLY @2877 /* It was absolutely nothing like that! */ GOTO 48
  IF ~~ THEN REPLY @2878 /* Your propaganda is getting out of control. */ GOTO 48
  IF ~~ THEN REPLY @2879 /* You know I can't wait to kill you, right? */ GOTO 48
END

IF ~~ THEN BEGIN 47
  SAY @2880 /* Your tale of defeating Baeloth so easily rings false, <CHARNAME>. */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48
  SAY @2881 /* With you as its subject, this chronicle will surely be a bestseller! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49
  SAY @2882 /* You have undone the unbeatable undead! How does it feel? */
  IF ~~ THEN REPLY @2883 /* Glorious. Those vile creatures shall no longer trouble the good folk of Thay. */ GOTO 50
  IF ~~ THEN REPLY @2884 /* The undead are an abomination. I did what was necessary, nothing more. */ GOTO 50
  IF ~~ THEN REPLY @2885 /* Even a vampire lord's power pales in comparison to my own! */ GOTO 50
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 50
  SAY @2886 /* Most candid. I thank you. Here's how history will remember the battle: "Weakened by the arena's light, the vampires fell prey to the petty pranks of a pitiful performer." */
  IF ~~ THEN REPLY @2887 /* You do me a great dishonor. */ GOTO 51
  IF ~~ THEN REPLY @2888 /* No one will be convinced by your lies. */ GOTO 51
  IF ~~ THEN REPLY @2889 /* Undeath's eternal torment is nothing compared to what I'll do to you. */ GOTO 52
END

IF ~~ THEN BEGIN 51
  SAY @2890 /* Sorry that your sentiments suffer so severely, but I am the scribe. Trust my experience and instinct for what the masses desire. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52
  SAY @2891 /* Great! A quarrelsome quip to finish the chapter. My deepest thanks.  */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53
  SAY @2892 /* You have defied death, deftly defeated the descendants of Gith herself! Dazzle me with details! */
  IF ~~ THEN REPLY @2893 /* They fought well with blade and magic, but I could not let them live to wreak havoc on this plane.  */ GOTO 54
  IF ~~ THEN REPLY @2894 /* I fought out of necessity. To survive, I had little choice but to kill them. */ GOTO 54
  IF ~~ THEN REPLY @2895 /* The terror that precedes death is the same for all creatures regardless their plane of origin. */ GOTO 54
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 54
  SAY @2896 /* I see. Let me just finish writing, and... THERE! "Still stunned by their sudden snatching, the githyanki were soon slaughtered by the slovenly sod, <CHARNAME>." */
  IF ~~ THEN REPLY @2897 /* It isn't true! Please, change the record. */ GOTO 55
  IF ~~ THEN REPLY @2898 /* Go on, then. I'm sick of trying to correct you. */ GOTO 55
  IF ~~ THEN REPLY @2899 /* I shall pierce your flesh a hundred times for each lie you write about me. */ GOTO 56
END

IF ~~ THEN BEGIN 55
  SAY @2900 /* Spare me your sniveling. Return to your training and let me get on with the business of record-keeping. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY @2901 /* Brainless badgering from a barbaric monster! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY @2902 /* A stunning skirmish! Did you ever doubt the downfall of the denizens of the deep you dynamically destroyed? */
  IF ~~ THEN REPLY @2903 /* The water weirds were powerful, the sahuagin treacherous, but I was able to end their evil for the greater good. */ GOTO 58
  IF ~~ THEN REPLY @2904 /* I had no time to worry about the outcome. I was fighting for my life. */ GOTO 58
  IF ~~ THEN REPLY @2905 /* Wonder about the outcome? Don't make me laugh! */ GOTO 58
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 58
  SAY @2906 /* Good, very good. Listen to this: "The arid arena weakened the water weirds and sapped the sahuagin's strength, letting the preposterous performer prevail." */
  IF ~~ THEN REPLY @2907 /* They were NOT weakened. */ GOTO 59
  IF ~~ THEN REPLY @2908 /* You don't even watch the fights, do you? */ GOTO 59
  IF ~~ THEN REPLY @2909 /* I will find you when my time here ends. Then you shall know despair. */ GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY @2910 /* Pitiful protests! What happened isn't nearly as important as what is written. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60
  SAY @2911 /* Your evil exploits will have the Thayan people exclaiming encouragement as they elevate the estimation of my editions. Go now, I've work to do. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61
  SAY @2912 /* A malevolent mage and his menacing minions, managed magnificently! Tell me all. */
  IF ~~ THEN REPLY @2913 /* The sorcerer was evil. I couldn't risk him escaping and unleashing destruction across Faerûn. These thoughts spurred me to victory. */ GOTO 62
  IF ~~ THEN REPLY @2914 /* The elements must remain in balance. Defeating the sorcerer restored nature to its proper state. */ GOTO 62
  IF ~~ THEN REPLY @2915 /* The sorcerer was a powerful foe. By defeating him, I took his power as my own. With it, I shall rise to even greater heights! */ GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @2916 /* Fantastic material. Truly. The record shall say that the halfling's henchmen helped his harrier, allowing the petulant performer to prevail. */
  IF ~~ THEN REPLY @2917 /* They did no such thing. I defeated the sorcerer and elementals both! */ GOTO 63
  IF ~~ THEN REPLY @2918 /* Write what you will. Anyone foolish enough to believe your lies matters not. */ GOTO 63
  IF ~~ THEN REPLY @2919 /* When I gain my freedom—and I will—you will be one dead scribe. */ GOTO 64
END

IF ~~ THEN BEGIN 63
  SAY @2920 /* Your banal blunders are far too boring. My trade is telling tales—ENTERTAINING tales. Leave me. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64
  SAY @2921 /* Search for me if you somehow survive this servitude. It will make for an entertaining story. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65
  SAY @2922 /* Deftly defying dastardly demons and devils, dishing out death and destruction! Share your sensational secret! */
  IF ~~ THEN REPLY @2923 /* Devils and demons have no place troubling good and decent people. It fell to me to banish them back from whence they came. */ GOTO 66
  IF ~~ THEN REPLY @2924 /* Devils and demons on this plane disrupt the natural order. Also, if I hadn't killed them, they would have devoured my soul. */ GOTO 66
  IF ~~ THEN REPLY @2925 /* These infernal fiends made the mistake of attacking someone even more evil and twisted. They've paid the price. */ GOTO 66
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 66
  SAY @2926 /* The record shall read: "The demons and devils, diverted and disorganized due to dividing differences, slew each other, leaving the performer victorious." */
  IF ~~ THEN REPLY @2927 /* Not so! I slew more than the devils and demons combined! Change it, scribe! */ GOTO 67
  IF ~~ THEN REPLY @2928 /* Do your readers actually believe your nonsense? */ GOTO 67
  IF ~~ THEN REPLY @2929 /* You shall find yourself alongside the fiends I recently dispatched if you do not watch your tongue, scribe. */ GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY @2930 /* Mine is for writing and yours is for warring. Now sharpen your sword or whatever it is you people do in your spare time. Good <DAYNIGHTALL>. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68
  SAY @2931 /* The perfect close to this chapter. You just helped me sell a few more copies. My thanks! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69
  SAY @2932 /* You have silenced the monks of the Twofold Trust! Please, share the secrets of your stunning success! */
  IF ~~ THEN REPLY @2933 /* Mortals should not twist the gods' truth. The cult was a poison. It had to be stopped. */ GOTO 70
  IF ~~ THEN REPLY @2934 /* The true balance of darkness and light does not lead to violence. The cultists forgot this, leaving me no choice but to destroy them. */ GOTO 70
  IF ~~ THEN REPLY @2935 /* The fools prayed when they should have trained for battle. A fatal mistake. */ GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @2936 /* Riveting remarks. Now listen as I read the record: "As the cultists knelt in penitent prayer, the perfidious performer took them by surprise, emerging victorious through vile villainy." */
  IF ~~ THEN REPLY @2937 /* No. They were defeated honorably. */ GOTO 71
  IF ~~ THEN REPLY @2938 /* Have it your way, Stannel. No one cares about your nonsense. */ GOTO 71
  IF ~~ THEN REPLY @2939 /* I'll skewer you on a sharpened spear, stupid scribe! */ GOTO 72
END

IF ~~ THEN BEGIN 71
  SAY @2940 /* You and I are the only ones who will hear your pitiful protests, while an entire nation will read my worthy words! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72
  SAY @2941 /* Oh my! The ardent adventurer attempts alliteration—a perfect closing for this volume. You are ever so helpful. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73
  SAY @2942 /* You have conquered the countless constructs and made gravel of the great golem! Quite a show! What have you to say of your exploits? */
  IF ~~ THEN REPLY @2943 /* Imagine the harm that golem could do on the streets. It imperiled hundreds of lives. I couldn't allow it. */ GOTO 74
  IF ~~ THEN REPLY @2944 /* The golem did as it was ordered, and I acted in self defense. I take little pleasure in victory over a mindless construct. */ GOTO 74
  IF ~~ THEN REPLY @2945 /* Not even magically animated earth can stand against me. All who hear my name shall tremble! */ GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @2946 /* Splendid, splendid! Let me just catch that last phrase. Got it. "The multiplying mound of mud malfunctioned, letting the malevolent gladiator triumph." */
  IF ~~ THEN REPLY @2947 /* It didn't malfunction! That's completely unfair! */ GOTO 75
  IF ~~ THEN REPLY @2948 /* I care not what you write of me. All that happens here will soon be forgotten, and so will you. */ GOTO 75
  IF ~~ THEN REPLY @2949 /* When I win my freedom, I will come for you, scribe! */ GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @2950 /* Your fallible faculties fail you! This record is relevant and reliable. Now go polish your armor and wash yourself. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76
  SAY @2951 /* I look forward to the day you escape this prison more than you know, <CHARNAME>. Good day. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77
  SAY @2952 /* You have laid low the lady lich and live to linger in luxury. Do tell me the details! */
  IF ~~ THEN REPLY @2953 /* The lich was an ancient evil that darkened the face of Faerûn. It was my duty and pleasure to end its existence. */ GOTO 78
  IF ~~ THEN REPLY @2954 /* I hardly consider my current circumstances luxurious. */ GOTO 78
  IF ~~ THEN REPLY @2955 /* You have no idea the power I gained by destroying the undead wizardess. Soon I shall be free! */ GOTO 78
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 78
  SAY @2956 /* Yes, yes, yes. You may stop talking now. The record shall say "Angered by the audience, the ancient arcanist's accomplices assaulted one another, letting the outmatched gladiator snatch victory from <PRO_HISHER> more worthy foe." */
  IF ~~ THEN REPLY @2957 /* The horrors paid no mind to the crowd. They attacked me, and I sent them back to the Hells they came from. */ GOTO 79
  IF ~~ THEN REPLY @2958 /* Why do you bother asking for my side of the story at all? */ GOTO 79
  IF ~~ THEN REPLY @2959 /* You're a godsdamned liar, scribe. Keep this up and you'll be a DEAD godsdamned liar. */ GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY @2960 /* Your fans favor fiction over fact, I fear. Now stop your tiresome talk and return to training. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80
  SAY @2961 /* You frantically fought the felines and found yourself fortunate. What were your thoughts as you faced the rakshasa? */
  IF ~~ THEN REPLY @2962 /* I looked into their eyes and saw hatred and malice. I sensed their evil and knew I could not let them prevail. */ GOTO 81
  IF ~~ THEN REPLY @2963 /* "How many actual ways are there to skin a cat?" */ GOTO 81
  IF ~~ THEN REPLY @2964 /* I looked at them and saw weakness and fear as I struck them down one by one. */ GOTO 81
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 81
  SAY @2965 /* What uninspiring ideas. Do not fear, I shall improve on them. Let's see... "The ferocious felines were fooled by the arena floor's foul footing. Before they found their feet, they were dispatched by the dishonorable duelist." */
  IF ~~ THEN REPLY @2966 /* I'm not dishonorable! */ GOTO 82
  IF ~~ THEN REPLY @2967 /* Even if I object to what you write, you won't change it. Why talk with me at all? */ GOTO 82
  IF ~~ THEN REPLY @2968 /* You're about to lose more than your footing, Eibor. */ GOTO 83
END

IF ~~ THEN BEGIN 82
  SAY @2969 /* The record will remain as written, regardless of your ridiculous requests. I know what I'm doing. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83
  SAY @2970 /* What a thoroughly thoughtless thing to think! Farewell. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84
  SAY @2971 /* Easily eviscerating the malevolent mind flayers as they gazed gastronomically at your mouth-watering mind! What's it like having their tentacles wrapped around your head? */
  IF ~~ THEN REPLY @2972 /* Their mental powers were formidable. I took strength from the knowledge I was in the right, ridding the world of their evil presence. */ GOTO 85
  IF ~~ THEN REPLY @2973 /* It was just another battle among the multitude that occur each day as living creatures struggle to survive. */ GOTO 85
  IF ~~ THEN REPLY @2974 /* I enjoy splitting heads in two regardless of how many tentacles they possess. */ GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY @2975 /* I think I can make something out of that. Eh... Finished. "Thayan torches so badly blinded the denizens of darkness that they could not see to defend themselves. The despicable victor dispatched the disabled mind flayers." */
  IF ~~ THEN REPLY @2976 /* Oh, come ON. I know you saw them in their lighted pens. */ GOTO 86
  IF ~~ THEN REPLY @2977 /* Even you must see how far from the truth your account is. */ GOTO 86
  IF ~~ THEN REPLY @2978 /* You're the blind one, you witless record-keeper. */ GOTO 87
END

IF ~~ THEN BEGIN 86
  SAY @2979 /* Nonsense. The stress of the pit pollutes your pitiful perceptions. My record is completely accurate. I recommend you rest. Restore your recognition of reality. Good <DAYNIGHTALL>. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87
  SAY @2980 /* Who is witless? The one who writes of battles or the one who risks life and limb in them? Back to your stable now. I'm busy. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88
  SAY @2981 /* You defied divinity defeating the devas! Do detail your surprising success story. */
  IF ~~ THEN REPLY @2982 /* The devas forsook celestial glory and fell into darkness. Ending their dishonor—and their lives—was a mercy. */ GOTO 89
  IF ~~ THEN REPLY @2983 /* Annihilating divine creatures is hardly a success. */ GOTO 89
  IF ~~ THEN REPLY @2984 /* My might grows with each defeated foe. The devas were just another step to my ultimate goal! */ GOTO 89
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 89
  SAY @2985 /* You make my task terribly tedious. The record shall read thus: "The devilish devas, distracted by their distaste for the Winged, were deftly disposed of by the dastardly duelist." */
  IF ~~ THEN REPLY @2986 /* I battled them face to face. Their full attention was on me the entire time.  */ GOTO 90
  IF ~~ THEN REPLY @2987 /* I care not what you say. You're writing a novel, not a history. */ GOTO 90
  IF ~~ THEN REPLY @2988 /* Someday, you will pay for every lie you've written about me. */ GOTO 91
END

IF ~~ THEN BEGIN 90
  SAY @2989 /* What I have written is what will be read. Go prepare for your next battle. I need more material. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91
  SAY @2990 /* No. The ones who will pay are thousands upon thousands of rejoicing readers! You're making me rich! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92
  SAY @2991 /* Laying liches low and living to laugh at your luck! How did you do it? */
  IF ~~ THEN REPLY @2992 /* The demi-liches were mighty, but, as always, goodness and justice ultimately triumphed. */ GOTO 93
  IF ~~ THEN REPLY @2993 /* Despite their power, those liches were no freer than I. We were compelled to fight. Where's the glory in such a victory? */ GOTO 93
  IF ~~ THEN REPLY @2994 /* As I crushed the liches, I felt a surge of energy within me. Killing gives me power beyond belief. I long for my next battle. */ GOTO 93
END

IF ~~ THEN BEGIN 93
  SAY @2995 /* And that's why I'm the writer. Fear not, I shall revise your ramblings. "The two terrible tyrants turned and troubled its twin, allowing the duplicitous duelist to defeat them." */
  IF ~~ THEN REPLY @2996 /* They worked in perfect coordination. It was my skill and prowess that defeated them!  */ GOTO 94
  IF ~~ THEN REPLY @2997 /* No one who saw that fight would write such balderdash. */ GOTO 94
  IF ~~ THEN REPLY @2998 /* You just watched me defeat a pair of liches and still you insult me? You're a bigger fool than I thought. */ GOTO 95
END

IF ~~ THEN BEGIN 94
  SAY @2999 /* If I wrote your words, I would be a wandering wastrel instead of a successful scribe. Begone. Your blubbering bores me. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95
  SAY @3000 /* I am free, and you fight for the benefit of others. Which of us is more free, then? */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96
  SAY @3001 /* You deftly defeated the dreadful dragons! Tell me the tale of your triumph. */
  IF ~~ THEN REPLY @3002 /* The arena shook with their rage! I knew in my heart that if those beasts lived, they would escape and wreak havoc on this city. They had to die. */ GOTO 97
  IF ~~ THEN REPLY @3003 /* Magnificent beasts slaughtered for the masses' entertainment... Shameful. I took no pleasure in it. */ GOTO 97
  IF ~~ THEN REPLY @3004 /* Even the most powerful dragons of Faerûn cannot stand against me! My name will be feared throughout this land and every other! */ GOTO 97
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 97
  SAY @3005 /* *sigh* Are these mediocre musings the most you can muster? It's good I am here. Here we go: "The stones supporting the serpents succumbed to their size, skewering them on sharp shards while the lucky layabout <CHARNAME> looked on." */
  IF ~~ THEN REPLY @3006 /* Look at the arena! Many of the stones aren't even cracked. This is outrageous! */ GOTO 98
  IF ~~ THEN REPLY @3007 /* The arena floor's barely scuffed. No one will believe your ridiculous fabrications. */ GOTO 98
  IF ~~ THEN REPLY @3008 /* I'm going to strangle you with your own intestines. You hear me? */ GOTO 99
END

IF ~~ THEN BEGIN 98
  SAY @3009 /* Details, details, my deluded duelist! Now go away—you're bothering me. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99
  SAY @3010 /* You're welcome to try some other time. For the moment, I've more important matters to attend to. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100
  SAY @3011 /* You have beaten Bhaal's brood! Impossible... I mean—how did you do it? */
  IF ~~ THEN REPLY @3012 /* The Lord of Murder preys on the innocent. His children had to be eliminated, no matter the cost. */ GOTO 101
  IF ~~ THEN REPLY @3013 /* Even divine power falls before a superior tactician. */ GOTO 101
  IF ~~ THEN REPLY @3014 /* My power has reached godlike proportions! I am ready to begin my ascent! */ GOTO 101
  IF ~~ THEN REPLY @2788 /* Not now, I must be on my way. */ GOTO 1
  IF ~~ THEN REPLY @2789 /* Get away from me, you dusty scribe. */ GOTO 2
END

IF ~~ THEN BEGIN 101
  SAY @3015 /* Brazen boasting from a blundering battler. Let me show you how it's done: "The cultists collapsed in confusion as their beloved Bhaalspawn bitterly battled each other. <CHARNAME> surveyed the scene from safety." */
  IF ~~ THEN REPLY @3016 /* Lies! Nothing but lies! */ GOTO 102
  IF ~~ THEN REPLY @3017 /* Your lies will be forgotten, as will you. Write what you want. */ GOTO 102
  IF ~~ THEN REPLY @3018 /* When the time is right, you will pay for your insults. */ GOTO 103
END

IF ~~ THEN BEGIN 102
  SAY @3019 /* My virtuous volumes will leave a lasting legacy long after you languish in the grave. Ha... Now leave, I've things to do. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103
  SAY @3020 /* Face me in battle and there is no power that will save you. */
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_finale","global",10)
~ THEN BEGIN 104
  SAY @3021 /* Ah, <CHARNAME>, I deduce that you've definitively dispatched Dennaton's defenders. Would you care to provide a detailed description of the drama? */
  IF ~~ THEN REPLY @3022 /* We engaged in mortal combat. Sword and spell clashed violently for what seemed like hours until I at last prevailed over the Planar Hunters. */ DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 105
  IF ~~ THEN REPLY @3023 /* I've no use for the way you twist my words, scribe. Begone! */ DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 106
  IF ~~ THEN REPLY @3024 /* I butchered them as I do everyone who crosses me. */ DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 105
END

IF ~~ THEN BEGIN 105
  SAY @3025 /* A sorry summary of the slaughter! Such specious stories are sadly standard for you. I saw the situation—the soldiers fairly stumbled onto their swords, but since you've settled on slandering the slain, we shall speak on a different matter. */
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 106
  SAY @3026 /* Now is that any way to treat one with the ability to instantly send you anywhere you wish? */
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
  SAY @3027 /* It is time to reveal that I am not merely Stannel Eibor, the scribe, but am also a wizard of not inconsiderable power. I can instantly teleport you back home. */
  IF ~~ THEN REPLY @3028 /* What are you waiting for? */ GOTO 108
  IF ~~ THEN REPLY @3029 /* What's the catch? */ GOTO 109
  IF ~~ THEN REPLY @3030 /* No, thanks. I can take care of myself. */ GOTO 110
END

IF ~~ THEN BEGIN 108
  SAY @3031 /* Very good, <CHARNAME>. I shall take you home! */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~~ THEN BEGIN 109
  SAY @3032 /* I cast a spell to take you home. What's so hard to understand? Are you ready? */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~~ THEN BEGIN 110
  SAY @3033 /* Perhaps I didn't make myself clear. I will take you home whether you like it or not! */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~  Global("ohb_finale","global",11)
~ THEN BEGIN 111
  SAY @3034 /* Home! My pitiful performers of pathetic power want to go HOME! Well, LET'S TAKE THEM HOME! AHAHAHAHAHAHA! */
  IF ~~ THEN DO ~SetGlobal("OHB_ENDGAME","GLOBAL",1)
ClearAllActions()
SetCutSceneLite(TRUE)
~ EXIT
END
