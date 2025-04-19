BEGIN ~OHBTARTL~

IF ~  False()
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY @3145 /* By the Nine Hells, some of these performers are getting a bit too big for themselves! I need you two to rough a couple of these gits up and really teach 'em a lesson! I'm thinking you can start with— */
  IF ~~ THEN EXTERN ~OHBARZOL~ 0
END

IF ~~ THEN BEGIN 1
  SAY @3146 /* Excuse me? You must not have heard what I said! I need you to— */
  IF ~~ THEN EXTERN ~OHBBERYL~ 0
END

IF ~~ THEN BEGIN 2
  SAY @3147 /* But—but you should HEAR what they've been saying about me! One of 'em just said I had the intellect of a knuckle-dragging ape! */
  IF ~~ THEN EXTERN ~OHBARZOL~ 1
END

IF ~~ THEN BEGIN 3
  SAY @3148 /* Now just a moment! You mean you're going to let these performers show me that kind of dis— */
  IF ~~ THEN EXTERN ~OHBBERYL~ 2
END

IF ~~ THEN BEGIN 4
  SAY @3149 /* But—but— Wait 'til Dennaton hears about this! */
  IF ~~ THEN EXIT
END

IF ~Global("OHB_TALKED_TARTL","LOCALS",1) Global("ohb_finale","global",0)~ THEN BEGIN 5
  SAY @3150 /* Ah, <CHARNAME>! I've been anxiously awaiting your debut in the arena. I know what the legends say, but does the reality measure up? */
  IF ~~ THEN REPLY @3151 /* Can reality ever measure up to a legend? */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)~ GOTO 6
  IF ~~ THEN REPLY @3152 /* We shall see. */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)~ GOTO 33
  IF ~~ THEN REPLY @3153 /* If anything, the legends downplay my prowess. */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)~ GOTO 34
END

IF ~~ THEN BEGIN 6
  SAY @3154 /* Hmm... Perhaps not, but if anyone can do it, I'm sure it's you. Now are you ready to fight? */
  IF ~~ THEN REPLY @3155 /* Certainly! */ GOTO 7
  IF ~~ THEN REPLY @3156 /* I would rather talk a bit. */ GOTO 8
  IF ~~ THEN REPLY @3157 /* I think I need more time to prepare. */ GOTO 9
END

// Actual first battle
IF ~~ THEN BEGIN 7
  SAY @3158 /* Fantastic! I'll let Dennaton know. He'll be thrilled! Prepare yourselves, and I'll be right back! */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3159 /* I always have time for one of my flock. What can I do for you? */
  IF ~  !GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_brodle","global",0)
~ THEN REPLY @3160 /* During the welcoming feast, I noticed tension between you and Brodle. What's that about? */ DO ~SetGlobal("ohb_tartle_subject_brodle","global",1)
~ GOTO 10
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN REPLY @3161 /* I'd like to discuss my arena persona. */ GOTO 13
  IF ~  OR(2)
Global("tier","GLOBAL",1)
GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 18
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 19
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 20
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 21
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 22
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 23
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 24
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 25
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 26
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 27
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 28
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 29
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 30
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 32
  IF ~~ THEN REPLY @3163 /* Nothing. You can do nothing. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3164 /* We're all anxious to see what you've got. Come back to see me when you're ready to give the arena a go. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @3165 /* Ah, yes, my "dear cousin," Brodle. He's envious because of my high station and the fact that Dennaton really relies on me. It causes friction, but we're family. What can you do? */
  IF ~~ THEN REPLY @3166 /* It must be tough running this place. One less talented than you would never be able to pull it off. */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @3167 /* In Brodle's defense, he is dealing with an incompetent cousin with delusions of grandeur. */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 12
  IF ~~ THEN REPLY @3168 /* I know what you mean. Let's discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3169 /* I need to go now. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @3170 /* It's so nice that someone finally sees what I have to put up with! */
  IF ~~ THEN REPLY @3171 /* You bear a heavy burden. May we discuss something else? */ GOTO 45
  IF ~~ THEN REPLY @3172 /* My heart goes out to you. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @3173 /* Watch your mouth, performer. You wouldn't want to find yourself with no food rations... or worse! */
  IF ~~ THEN REPLY @3174 /* My deepest apologies, Tartle. Can we discuss something else? */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ GOTO 45
  IF ~~ THEN REPLY @3175 /* You'd have to go some distance to make this place worse than it already is. Good <DAYNIGHTALL>. */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @3176 /* I've been wondering what role you might choose to play. Generally, we have heroes and villains, both equally necessary. Just as the people need performers they love, they also need those they love to hate! */
  IF ~~ THEN REPLY @3177 /* I was thinking of playing a hero. I'd like the audience on my side. */ GOTO 14
  IF ~~ THEN REPLY @3178 /* I'd play a villain best. I thrive on hatred. */ GOTO 15
  IF ~~ THEN REPLY @3179 /* I'll be neither. This charade is absurd. */ GOTO 16
  IF ~~ THEN REPLY @3180 /* Any chance I get to address the crowd, I'll use to insult Dennaton. */ GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY @3181 /* Oh, good choice! I think you'll play the role to perfection! A word of advice, though: Do nothing in moderation. The arena is large, and it is impossible to see subtlety from the back rows. Go big. Be grandiose. The audience will gulp it all down like Calimshite Swill! */
  IF ~~ THEN REPLY @3182 /* I'll keep that in mind. Can I ask you something? */ GOTO 45
  IF ~~ THEN REPLY @3183 /* Big. Grandiose. No moderation. Got it. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @3184 /* Very good! I've noticed the villains have the most fun. A word of advice though: The best villains go over the top. Force the audience to hate you! Rub your evil in their faces. Insult them, even. Done correctly, the people will hunger for your demise like a fat man hungers for rhubarb pie! */
  IF ~~ THEN REPLY @3185 /* I'll bear it in mind, but there's something else I'd like to discuss. */ GOTO 45
  IF ~~ THEN REPLY @3186 /* Insult the audience? That won't be a problem. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @3187 /* Well, that's boring! If I were you, I'd come up with a better plan than that! With that attitude, you won't get any of the best fights! And the best fights come with the best rewards! */
  IF ~~ THEN REPLY @3188 /* Something to think about, to be sure. But there's something else I'd like to discuss. */ GOTO 45
  IF ~~ THEN REPLY @3189 /* I like my plan just fine. Good <DAYNIGHTALL>. */ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @3190 /* Oh. That would be unwise. Dennaton likes heroes and he loves villains, but he hates those that do not appreciate his benevolence. If you don't watch yourself, you'll be sleeping on a cot in the dungeon with nothing but moldy bread and rancid water... or is that rancid bread and moldy water? I'll have to ask Cook how he prepares the sludge. */
  IF ~~ THEN REPLY @3191 /* Few have accused me of wisdom. Can I ask you something else? */ GOTO 45
  IF ~~ THEN REPLY @3192 /* One prison is much the same as another. Good <DAYNIGHTALL>. */ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @3193 /* Oh, it wouldn't be fair to the other combatants to say. The spontaneity is part of the fun, but I'm sure a <PRO_MANWOMAN> of your talents can adjust to any danger on the fly! */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3195 /* If you won't tell me that, let's discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @3197 /* I probably shouldn't say, but... well, it's a pack of vampires, so cover your neck and make sure you have some protection against their unholy touch. */
  IF ~~ THEN REPLY @3681 /* Interesting... I'll be ready for that! */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @3198 /* Well, since it's you, I'll spill the beans. It's a band of githyanki. Some of them are armed with those special swords of theirs, so beware. They'll hit hard! */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @3199 /* Fine, stop twisting my arm here! What we've got ready for you is a sahuagin sorcerer who's adept at summoning water weirds. */
  IF ~~ THEN REPLY @3682 /* Thanks. */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @3200 /* Dennaton would disapprove of my saying, but hey, you're a star, so your next opponent is Mardii, a halfling conjurer who specializes in summoning elementals. Beware, though, he's also quite the—uhh—"charmer," so protect yourself from mind spells too! */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @3201 /* Well, I like you, and I hope you live, so I'll help you out. Watch out for this next fight. Dennaton's advertising it as the Blood War brought to the arena. We have demons. We have devils. They're as likely to kill each other as you, so maybe you should stay out of their way until one side wins... and then finish the winner off! */
  IF ~~ THEN REPLY @3682 /* Thanks. */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @3202 /* I probably shouldn't say, but... we have a group of monks from a cult known as the Twofold Trust. There's some to-do around about their belief—something about believing two goddesses are one. Eh, I'm no theologian, but I know this group is fanatical, highly resistant to mind-altering attacks, and absolutely vicious! */
  IF ~~ THEN REPLY @3681 /* Interesting... I'll be ready for that! */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @3203 /* Well, since it's you, I'll spill the beans. It's a big golem... but watch out because this golem has a unique secret. When defeated, it will shatter into several smaller golems, and believe it or not, it's the smaller ones that are the mean little buggers! */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @3204 /* Fine, stop twisting my arm here! Dennaton actually had the Hunters travel down to the coast and drag a lich out of her crypt! Suffice it to say, she's a powerful spellcaster who can summon hoards of undead underlings. But her best trick—and this is the secret—is that she is very adept at hypnotizing her opponents and turning them against their former friends! */
  IF ~~ THEN REPLY @3682 /* Thanks. */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @3205 /* Dennaton would disapprove my saying, but hey, you're a star. Your next opponent is a trio of rakshasas. They're brutally efficient with their blades, but if you can somehow get past their innate resistance to magic, your victory should be easy. */
  IF ~~ THEN REPLY @3681 /* Interesting... I'll be ready for that! */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @3206 /* This is a tough one! You'll be facing several mind flayers, who will be looking to feast on your brains, but the real threat is their leader, who is capable of unleashing an unbelievable psionic assault that has killed all their previous opponents! To survive, you'll need to cut through his defenders quickly and then kill him before he is able to prepare his attack. Good luck! */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @3207 /* I probably shouldn't say, but... we have some of the Winged's old comrades-in-arms who actually tried to collect a bounty on HER! Hah, they failed, and so now they're fodder for the arena! I've a feeling the Winged herself will be on hand to cheer you on against that pack of fallen devas. */
  IF ~~ THEN REPLY @3683 /* Her former...? Oh. */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @3208 /* Look, I think you should be very worried here. Next up is Dogar and Kazon. That's not one, but two, demiliches—twins in both life and death—and whatever you've heard about demiliches, I can assure you it's all true. You'll need all manner of magical defenses, and even then, know that they can strip you bare at any time. */
  IF ~~ THEN REPLY @3680 /* I see... */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @3209 /* You're now among Dennaton's top acts, so he's pitting you against his other top performers. Your next opponent is Yllaxxia, a red dragon, and her two children. That's THREE dragons. Suffice it to say, prepare yourself for flames EVERYWHERE! */
  IF ~~ THEN REPLY @3684 /* Three dragons?! */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @3210 /* I understand much of the current talk on the Sword Coast revolves around your next opponents. We have two children of the dead god, Bhaal, Lord of Murder, who have been raised by a cult to master and control their powers. They can actually manifest themselves into quasi-avatars of Bhaal, which makes them highly resistant to almost everything. Good luck. You'll need it! */
  IF ~~ THEN REPLY @3685 /* Undead, bhaalspawn? Right, hmmm. */ GOTO 47
  IF ~~ THEN REPLY @3196 /* I should go prepare then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @3211 /* Indeed, there's no time like the present. Are you ready to fight? */
  IF ~~ THEN REPLY @3155 /* Certainly! */ GOTO 7
  IF ~~ THEN REPLY @3212 /* I'd rather talk a bit. */ GOTO 8
  IF ~~ THEN REPLY @3157 /* I think I need more time to prepare. */ GOTO 9
END

IF ~~ THEN BEGIN 34
  SAY @3213 /* Ooh, I do so hope you are correct! Now, are you ready to fight? */
  IF ~~ THEN REPLY @3155 /* Certainly! */ GOTO 7
  IF ~~ THEN REPLY @3212 /* I'd rather talk a bit. */ GOTO 8
  IF ~~ THEN REPLY @3157 /* I think I need more time to prepare. */ GOTO 9
END

IF ~~ THEN BEGIN 35
  SAY @3214 /* An interesting story! When I first came here, Dennaton quickly saw that I was unsuitable for the arena. I would be far too powerful for the mere mortals that fight here, you see, so he gave me to Cook and told him to "make something out of me." */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @3215 /* But after a short while, Cook had to admit I was "too tough for the stew." He and Dennaton had an argument about what to do with me, and finally Dennaton said if that's the best Cook could muster, then he'd make me his boss! And here I am! */
  IF ~~ THEN REPLY @3216 /* I can see why Dennaton chose you. Every team needs strong leadership to succeed. */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 37
  IF ~~ THEN REPLY @3217 /* Dennaton put you in charge to irritate Cook because he couldn't figure out how to turn you into a raspberry Tartle? You realize you're a joke, right? */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 38
  IF ~~ THEN REPLY @3218 /* Interesting, but I'd rather discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3219 /* And here I go. */ EXIT
END

IF ~~ THEN BEGIN 37
  SAY @3220 /* Truly, and every strong leader needs a strong right-hand <PRO_MANWOMAN>. Keep it up, <CHARNAME>, and you might just find yourself rising to the top here! Well, not the VERY top! */
  IF ~~ THEN REPLY @3221 /* Thank you. Now, I'd also like to discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3219 /* And here I go. */ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @3222 /* A joke? How funny will you find it when your cot's taken out of your cell and you're given nothing to eat, eh? Keep it up and we're going to find out! */
  IF ~~ THEN REPLY @3223 /* I've endured worse. Can I ask you something else? */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ GOTO 45
  IF ~~ THEN REPLY @3224 /* I look forward to it. Good <DAYNIGHTALL>. */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @3225 /* A horrible woman leading a ragtag team! No respect for me, and no respect for Dennaton! She just keeps whining for more and more money when the truth is she's fortunate Dennaton doesn't just throw her in the arena. The whole thing just irritates me! */
  IF ~~ THEN REPLY @3226 /* The Winged realized you're an irrelevant twit? I underestimated her. */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 40
  IF ~~ THEN REPLY @3227 /* Outrageous! Anyone that doesn't respect you SHOULD be thrown into the arena! */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY @3218 /* Interesting, but I'd rather discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3219 /* And here I go. */ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @3228 /* Irrelevant, eh? Wait till I talk to Dennaton about halving your reward money for your future matches! You won't think I'm irrelevant then, will you? */
  IF ~~ THEN REPLY @3229 /* Of course not! Now can we discuss something else? */ GOTO 45
  IF ~~ THEN REPLY @3219 /* And here I go. */ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @3230 /* I'm glad that you get it. You know, I like you! Stick with me, <CHARNAME>, and I'll see you go a long way! */
  IF ~~ THEN REPLY @3221 /* Thank you. Now, I'd also like to discuss something else. */ GOTO 45
  IF ~~ THEN REPLY @3224 /* I look forward to it. Good <DAYNIGHTALL>. */ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @3231 /* Oh, it's a fantastic opportunity! Dennaton's well-connected. He's got a powerful backer—heh, around here they don't GET more powerful—so he's definitely on the short list for high office. And when Dennaton gets to the top, I'll be right there beside him! */
  IF ~~ THEN REPLY @3232 /* You know what they say: Behind every great Red Wizard is an even greater halfling! */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY @3233 /* Why would Dennaton bring a fat, lazy, intellectual lightweight like you anywhere? You'd be an anchor around his neck! */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 44
  IF ~~ THEN REPLY @3234 /* Interesting. Can I ask you something else? */ GOTO 45
  IF ~~ THEN REPLY @3219 /* And here I go. */ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @3235 /* Yes, they DO say that, don't they? You know, <CHARNAME>, it's always good to have someone with your wisdom around. I'll remember you when I get to the top. Don't you worry! */
  IF ~~ THEN REPLY @3236 /* I appreciate it. May I ask you something else? */ GOTO 45
  IF ~~ THEN REPLY @3224 /* I look forward to it. Good <DAYNIGHTALL>. */ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @3237 /* Oh, ya think so, do you? First, explain why Dennaton has me running this place if I'm so lazy and stupid? Didn't think about that, did you, genius? And second... well, I forgot what I was going to say, but it would have been good! */
  IF ~~ THEN REPLY @3238 /* I'm sure it would have been. Now can we discuss something else? */ GOTO 45
  IF ~~ THEN REPLY @3239 /* Whatever. Look, I need to go. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @3240 /* Of course! Anything for the Champion of Baeloth's Pits! */
  IF ~  !GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_brodle","global",0)
~ THEN REPLY @3241 /* During the welcoming feast, I noticed some tension between you and Brodle. What was that about? */ DO ~SetGlobal("ohb_tartle_subject_brodle","global",1)
~ GOTO 10
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
Global("ohb_tartle_subject_tartle","global",0)
~ THEN REPLY @3242 /* How'd you get to be in charge around here? */ DO ~SetGlobal("ohb_tartle_subject_tartle","global",1)
~ GOTO 35
  IF ~  GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_winged","global",0)
~ THEN REPLY @3243 /* What can you tell me about the Winged and her crew? */ DO ~SetGlobal("ohb_tartle_subject_winged","global",1)
~ GOTO 39
  IF ~  GlobalGT("tier","GLOBAL",3)
Global("ohb_tartle_subject_dennaton","global",0)
~ THEN REPLY @3244 /* How do you like working for Dennaton? */ DO ~SetGlobal("ohb_tartle_subject_dennaton","global",1)
~ GOTO 42
  IF ~  Global("tier","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",0)
Global("ohb_tartle_subject_arena_act","global",0)
~ THEN REPLY @3245 /* I'd like to discuss my act in the arena. */ DO ~SetGlobal("ohb_tartle_subject_arena_act","global",1)
~ GOTO 13
  IF ~  OR(2)
Global("tier","GLOBAL",1)
GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 18
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 19
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 20
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 21
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 22
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 23
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 24
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 25
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 26
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 27
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 28
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 29
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 30
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY @3162 /* Who or what do I fight next? */ GOTO 32
  IF ~~ THEN REPLY @3163 /* Nothing. You can do nothing. Excuse me. */ EXIT
END

IF ~Global("OHB_TALKED_TARTL","LOCALS",2) Global("ohb_finale","global",0)~ THEN BEGIN 46
  SAY @3246 /* Hello again, <CHARNAME>. The arena awaits! */
  IF ~~ THEN REPLY @3687 /* Indeed. */ GOTO 47
  IF ~~ THEN REPLY @3247 /* Before we get to that, may I ask you some questions? */ GOTO 45
  IF ~~ THEN REPLY @3250 /* Let it. I've other things to do. */ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @3251 /* So, will you be fighting our latest offering? */
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",0)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ GOTO 7
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",101)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~
      SetCutSceneLite(TRUE)
      SetGlobal("OHB_START_BATTLE","GLOBAL",1)
      SetGlobal("OHB_102","GLOBAL",1)
      SetGlobal("OHB_ARENA","GLOBAL",2)
      SetGlobal("OHB_INTERVIEW","GLOBAL",1)~ EXIT
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",102)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",1)~ EXIT
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",103)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",1)~ EXIT
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",104)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",1)~ EXIT
  IF ~Global("OHB_LAST_BATTLE","GLOBAL",105)~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_201","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_202","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_203","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_204","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_205","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_301","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_302","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_303","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_304","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_305","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_401","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_402","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_403","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY @3252 /* I'd like to fight my next battle. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_404","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @3254 /* Actually, never mind—I shall return. */ EXIT
END

/* START OF DISABLED BLOCK */

IF ~~ THEN BEGIN 48
  SAY @3255 /* Very well. From which tier will you select your battle? */
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",100)
~ THEN REPLY @3256 /* The first tier. */ GOTO 49
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",200)
~ THEN REPLY @3257 /* The second. */ GOTO 50
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",300)
~ THEN REPLY @3258 /* Let me try something from the third tier. */ GOTO 51
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",400)
~ THEN REPLY @3259 /* Number four, I think. */ GOTO 52
END

IF ~~ THEN BEGIN 49
  SAY @3260 /* Looking for an easy battle? So be it! Which battle will you fight again? */
  IF ~~ THEN REPLY @3261 /* Battle 1: A Farewell to Orcs */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_101","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN REPLY @3262 /* Battle 2: Of Minotaurs and Men. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_102","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN REPLY @3263 /* Battle 3: March of the Scales. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_103","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY @3264 /* Battle 4: Hulking Confusion. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_104","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY @3265 /* Battle 5: Call of the Underdark. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_105","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY @3266 /* Never mind. I'll come back later. */ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @3267 /* Didn't get beaten badly enough the first time, I see. */
  IF ~~ THEN REPLY @3268 /* Battle 6: Interview with Vampires. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_201","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY @3269 /* Battle 7: Gith is Madness. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_202","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY @3270 /* Battle 8: Sahuagin's Garden. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_203","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY @3271 /* Battle 9: Master of the Elements. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_204","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY @3272 /* Battle 10: The Demons & Devils You Know... */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_205","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY @3273 /* Badly enough I'd rather not go through it a second time. I'll come back later. */ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @3274 /* Well, aren't you a tough one? What's it gonna be? */
  IF ~~ THEN REPLY @3275 /* Battle 11: The Twofold Faith. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_301","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY @3276 /* Battle 12: Clay Division. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_302","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY @3277 /* Battle 13: Undead... and Lurching It. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_303","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY @3278 /* Battle 14: Tiger Crush. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_304","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY @3279 /* Battle 15: Mind the Flayers. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_305","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY @3280 /* Something other than fighting for my life. I'll return later. */ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @3281 /* So it's a challenge you want! */
  IF ~~ THEN REPLY @3282 /* Battle 16: Dawn of the Devas. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_401","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY @3283 /* Battle 17: The Twin Demiliches of Azgoloth. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_402","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY @3284 /* Battle 18: Breathe Fire, and Enter. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_403","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY @3285 /* Battle 19: Small Bhaal. */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_404","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @3286 /* Now that I think about it, no. I'll come back later. */ EXIT
END

/* END OF DISABLED BLOCK */

IF ~~ THEN BEGIN 53
  SAY @3287 /* Debug mode is now on. */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 54
  SAY @3288 /* Debug mode has been turned off. */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 55
  SAY @3289 /* Watch your back, <CHARNAME>! You have obviously done well in the arena, but your little stunts before the fights have quickly put you on Dennaton's bad side. That's a dangerous place to be! */
  IF ~~ THEN REPLY @3194 /* I'm ready for my next fight. */ GOTO 7
  IF ~~ THEN REPLY @3247 /* Before we get to that, may I ask you some questions? */ GOTO 45
  IF ~~ THEN REPLY @3290 /* Not much more dangerous than the place I'm in already, I think. Now leave me, I would ready myself for the next combat. */ EXIT
END

IF ~~ THEN BEGIN 56
  SAY @3291 /* Ah, <CHARNAME>, the audience loves you, and so do I! What can I do for one of the arena's greatest champions? */
  IF ~~ THEN REPLY @3194 /* I'm ready for my next fight. */ GOTO 7
  IF ~~ THEN REPLY @3292 /* Would you answer some questions for me? */ GOTO 45
  IF ~~ THEN REPLY @3293 /* Give <PRO_HIMHER> a little time to prepare. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 57
  SAY @3294 /* You have done a fantastic job thus far. Our polling shows that you already have a small but rabidly devoted fanbase. Keep it up, and I'm sure you'll become one of the most beloved performers ever. Now, what may I do for you? */
  IF ~~ THEN REPLY @3295 /* Give me another fight. */ GOTO 7
  IF ~~ THEN REPLY @3247 /* Before we get to that, may I ask you some questions? */ GOTO 45
  IF ~~ THEN REPLY @3296 /* Leave me alone for a bit. I need to prepare myself. */ EXIT
END

IF ~~ THEN BEGIN 58
  SAY @3297 /* If it isn't the most vile, disgusting villain we've ever had here... I LOVE IT! Just keep it up! We have more advance bookings than we've ever had, and most of them from spectators desperate to be there the day you finally die. Now, what can I do for you? */
  IF ~~ THEN REPLY @3298 /* Give me something to kill. */ GOTO 7
  IF ~~ THEN REPLY @3247 /* Before we get to that, may I ask you some questions? */ GOTO 45
  IF ~~ THEN REPLY @3299 /* You can bugger off and let me prepare for my next fight. */ EXIT
END

IF ~~ THEN BEGIN 59
  SAY @3300 /* Well, <CHARNAME>, I must say we've had more despised villains than you before, but you are well on your way to surpassing them! Just keep doing what you're doing, and I'm sure you'll get there. Now, what can I do for you? */
  IF ~~ THEN REPLY @3301 /* Feed me another opponent. */ GOTO 7
  IF ~~ THEN REPLY @3302 /* I've some questions for you. */ GOTO 45
  IF ~~ THEN REPLY @3303 /* Leave me to prepare. Go. Quickly. */ EXIT
END

IF ~~ THEN BEGIN 60
  SAY @3304 /* <CHARNAME>, your prowess in the arena is unquestionable, but you really need to work more on your act. I don't know where to slot you right now. Are you a hero? Are you a villain? It's making it hard to sell you. Anyway, what do you need? */
  IF ~~ THEN REPLY @3305 /* Another fight. */ GOTO 7
  IF ~~ THEN REPLY @3306 /* Answers to some questions. */ GOTO 45
  IF ~~ THEN REPLY @3307 /* Time to prepare myself. Excuse me. */ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 61
  SAY @3308 /* You've had a nice run, <CHARNAME>, but this is as far as you go. I'll not let you destroy what Dennaton and I have worked so hard to achieve. */
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3309 /* Don't be a fool, Tartle. You and Dennaton are no team. He does not—and never will—consider you an equal. */ GOTO 62
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3309 /* Don't be a fool, Tartle. You and Dennaton are no team. He does not—and never will—consider you an equal. */ EXTERN ~OHBSYMM~ 30
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3310 /* Join me, Tartle. This is your only real chance for freedom. */ GOTO 63
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3310 /* Join me, Tartle. This is your only real chance for freedom. */ EXTERN ~OHBSYMM~ 31
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3311 /* Glad I found you, Tartle. I was beginning to worry you'd get away before I could kill you. */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3311 /* Glad I found you, Tartle. I was beginning to worry you'd get away before I could kill you. */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 62
  SAY @3312 /* You have me wrong, <CHARNAME>. I neither need nor want "equality." It is respect that motivates me, and as Dennaton's right-hand halfling, I shall have it, even if it is only a reflection off him. */
  IF ~~ THEN REPLY @3313 /* Dennaton's career—and quite possibly his life—are over. Why go down with him? */ GOTO 64
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY @3314 /* Brodle made me promise not to harm you. I'll keep my word if you don't interfere. */ GOTO 66
  IF ~~ THEN REPLY @3315 /* You will get no respect if you're dead. Out of my way! */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3316 /* No more talking, Tartle. Time to die. */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3316 /* No more talking, Tartle. Time to die. */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 63
  SAY @3317 /* You have me wrong, <CHARNAME>. I neither need nor want "freedom." It is respect that motivates me, and as Dennaton's right-hand halfling, I shall have it, even if it is only a reflection of him. */
  IF ~~ THEN REPLY @3318 /* Dennaton's career, and quite possibly his life, are over. Why hitch your wagon to that? */ GOTO 64
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY @3319 /* Brodle made me promise not to harm you. Stay out of my way and I'll keep my word. */ GOTO 66
  IF ~~ THEN REPLY @3320 /* You'll get no respect if you're dead. Get out of my way! */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3321 /* All you'll have is a bloody death! */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3321 /* All you'll have is a bloody death! */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 64
  SAY @3322 /* Because there are no other options for me. I cannot go back to my life as it was before here! The others laughing at me... Brodle lording it all over me. I won't do it, I tell you, I WON'T! */
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY @3323 /* You have Brodle wrong, Tartle. He cares about you. He made me promise not to harm you. I'll keep that promise if you don't interfere. */ GOTO 67
  IF ~~ THEN REPLY @3324 /* Your choice is simple. Get out of my way or die! */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3325 /* If you won't go back to your old life, I'll give you a new death! */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3325 /* If you won't go back to your old life, I'll give you a new death! */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 65
  SAY @3326 /* Be that as it may, I have no other choice. I cannot go back to my life as it was before here! The others laughing at me… I won't do it. I can't, can I? */
  IF ~~ THEN REPLY @3327 /* I've no time for this. Will you stand aside or not? */ GOTO 68
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3328 /* If you can't live, then you will certainly die! */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3328 /* If you can't live, then you will certainly die! */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 66
  SAY @3329 /* Brodle did that? Really? I… I had no idea he had it in him. Perhaps I misjudged him… No, it is too late for any of that! Any future I have is now with Dennaton. He is the one I must follow. */
  IF ~~ THEN REPLY @3330 /* Dennaton is doomed, Tartle. This whole arena and everyone associated with it will be wiped out, an embarrassment to be forgotten. */ GOTO 65
  IF ~~ THEN REPLY @3331 /* Look, you have a simple choice. Get out of my way or die! */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3332 /* Follow him to your death! */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3332 /* Follow him to your death! */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 67
  SAY @3333 /* Brodle did that? Really? I… I had no idea he had it in him. Perhaps I misjudged him… */
  IF ~~ THEN REPLY @3334 /* There's no time for this. Will you stand aside or not? */ GOTO 68
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY @3335 /* Take your folly to your grave! */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY @3335 /* Take your folly to your grave! */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 68
  SAY @3336 /* I don't know what to do. I just don't know! I… I… Oh, this arena is through, I see that now. You are determined to destroy it, and my only chance lies in getting out of your way. Very well. You shall get no further resistance from me. */
  IF ~~ THEN EXTERN ~OHBBERYL~ 7
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN EXTERN ~OHBSYMM~ 33
END

IF ~~ THEN BEGIN 69
  SAY @3337 /* I don't know what to do. I just don't know! I… I… Oh, this arena is through, I see that now. But if it must end, then I'll die with it! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN DO ~SetGlobal("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ EXTERN ~OHBSYMM~ 34
END

IF ~~ THEN BEGIN 70
  SAY @3338 /* Yes, there's no point in further delaying the inevitable. I shall revel in your death, <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
ActionOverride("ohbsymm",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 71
  SAY @3339 /* Haximus, where are you—? Fine then! Run away if you must! I shall fight on alone if need be! Come then, <CHARNAME>, and defend yourself! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
ActionOverride("ohbsymm",EscapeArea())
~ EXIT
END

IF ~  Global("OHB_TALKED_TARTL","LOCALS",0)
~ THEN BEGIN 72
  SAY @3340 /* Come in! Come in and take your seats. This is a wonderful day for you all—the beginning of a new life as a hero fit for the epics... or a villain, perhaps, equally fit for the bards to sing of. The choice is yours. */
  IF ~~ THEN DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",1)
~ GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY @3341 /* But I get ahead of myself. Introductions are in order. I am Quartermaster Tartle, your new best friend and advocate as you embark upon your path to fame, fortune, and, yes, even immortality! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 93
END

IF ~~ THEN BEGIN 74
  SAY @3342 /* Brodle? Did you say something? No? Heh... Keep it that way! */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @3343 /* So... where was I? Oh, yes... I am Quartermaster Tartle, friend to the famous, mentor to the mighty, grand vizier of all... */
  IF ~~ THEN EXTERN ~OHBDENNA~ 251
END

IF ~~ THEN BEGIN 76
  SAY @3344 /* Oh, yes... of course, sir. E-e-everyone, this is Dennaton, Master of the Arena. His wealth is unending, his largesse unmatched, his— */
  IF ~~ THEN EXTERN ~OHBDENNA~ 252
END

IF ~~ THEN BEGIN 77
  SAY @3345 /* O-o-of course, sir. A-as you wish, sir. Right away, sir. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 253
END
