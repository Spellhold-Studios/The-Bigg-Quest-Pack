BEGIN tb#mpril

IF ~NumTimesTalkedTo(0)~ THEN BEGIN heya
SAY @0
IF ~~ THEN EXIT
END

IF ~Global("tb#legalaction","global",17)~ THEN BEGIN ballsoff
SAY @1
IF ~~ THEN DO ~DestroyItem("minhp1") SetGlobal("tb#mprillacursed","global",2)~ GOTO pwdf
END

IF ~Global("tb#legalaction","global",0)~ THEN BEGIN flirt1
SAY @4
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",1)~ THEN BEGIN flirt4
SAY @5
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",2)~ THEN BEGIN flirt6
SAY @6
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",3)~ THEN BEGIN flirt8
SAY @7
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",4)~ THEN BEGIN flirt9
SAY @8
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",5)~ THEN BEGIN flirt10
SAY @9
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",6)~ THEN BEGIN flirt11
SAY @10
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",7)~ THEN BEGIN flirt12
SAY @11
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",8)~ THEN BEGIN flirt2
SAY @12
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",9)~ THEN BEGIN flirt3
SAY @13
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",10)~ THEN BEGIN flirt5
SAY @14
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",11)~ THEN BEGIN flirt7
SAY @15
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~Global("tb#legalaction","global",12)~ THEN BEGIN flirt13
SAY @16
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~GlobalLT("tb#legalaction","global",17)~ THEN BEGIN fuckoff
SAY @2
= @3
IF ~~ THEN DO ~IncrementGlobal("tb#legalaction","global",1)~ EXIT
END

IF ~~ THEN BEGIN pwdf
SAY @17 = @18
IF ~~ THEN DO ~Enemy()~ REPLY @19 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @20 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @21 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @22 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @23 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @24 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @26 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @27 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @28 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @29 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @30 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @31 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @32 EXIT
IF ~~ THEN DO ~Enemy()~ REPLY @33 EXIT
END

