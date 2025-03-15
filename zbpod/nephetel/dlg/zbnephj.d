BEGIN ZBNEPHJ

INTERJECT_COPY_TRANS OHBTARTL 7 ZBNEPHINTERJ1
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN
  ~*waves* Hello 'Hero', I saw your battles with the beasts. Quite ferocious, but they could not stand up to your team. Congratulations!~
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0)~ THEN 
  ~Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps them even though he mocks them at every turn. Be careful.~
END