/* extending Vyatri's dialogue so we can move the players to the new area
might not need to append them all but i'm doing it as a failsafe.
will need to adjust global numbers to account for having the letter etc - this is just to check if it works... */
EXTEND_BOTTOM TRINNK01 0
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + @3756 /* I received your note. Has the djinni arrived yet? */ EXTERN TRINNK01 ZBPODMOVE
END

EXTEND_BOTTOM TRINNK01 1
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + @3756 /* I received your note. Has the djinni arrived yet? */ EXTERN TRINNK01 ZBPODMOVE
END

EXTEND_BOTTOM TRINNK01 14
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + @3756 /* I received your note. Has the djinni arrived yet? */ EXTERN TRINNK01 ZBPODMOVE
END

CHAIN TRINNK01 ZBPODMOVE
  @3757 /* I've seen no sign of him. Take a seat, why don't you? I'll bring you something to drink. */
  = @3758 /* We even have a bard performing soon, it should make your wait that much easier. */
  DO ~SetGlobal("ZBPODSTART","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("zbpodstr")~
EXIT
