REPLACE_STATE_TRIGGER uddrow34 0 ~!Class(LastTalkedToBy,MAGE_ALL)
								  !Class(LastTalkedToBy,BARD_ALL)
								  !Class(LastTalkedToBy,SORCERER)~

/* REPLACE_STATE_TRIGGER uddrow34 4 ~Gender(LastTalkedToBy,FEMALE)
								  OR (3)
									Class(LastTalkedToBy,MAGE_ALL)
									Class(LastTalkedToBy,BARD_ALL)
									Class(LastTalkedToBy,SORCERER)~ */

REPLACE_STATE_TRIGGER uddrow34 3 ~OR (3)
									Class(LastTalkedToBy,MAGE_ALL)
									Class(LastTalkedToBy,BARD_ALL)
									Class(LastTalkedToBy,SORCERER)~

REPLACE_STATE_TRIGGER uddrow34 1 ~False()~ 2 4

EXTEND_BOTTOM uddrow34 3
	IF ~~ GOTO new_0
END

APPEND uddrow34
	IF WEIGHT #-3 ~OR(2)
					GlobalGT("tb#uddrowcoward","GLOBAL",2)
					GlobalGT("tb#uddrowprepare","GLOBAL",2)~ new_bored_root
	  SAY @0
	    ++ @1 EXIT
	    ++ @2 + argh
	END

	IF WEIGHT #-2 ~GlobalGT("tb#udduelcoward","GLOBAL",0)
				   GlobalLT("tb#udduelcoward","GLOBAL",3)~ new_coward_root
	  SAY @3
	    ++ @1             + haha
	    ++ @4 + new_fight
	END

	IF WEIGHT #-1 ~GlobalGT("tb#udduelprepare","GLOBAL",0)
				   GlobalLT("tb#udduelprepare","GLOBAL",3)~ wait_root
	  SAY @5
	  	++ @6                             + new_fight
	  	++ @7   + prepare
	  	++ @8 + new_coward
	END

	IF ~~ new_0
	  SAY @9
		++ @10   + new_fight
		++ @1                          + new_coward
		++ @11		    + new_coward
		++ @12 + prepare
	END

	IF ~~ argh
	  SAY @13
	    IF ~~ THEN EXIT
	END

	IF ~~ new_fight
	  SAY @14
	    + ~GlobalLT("tb#udduelcoward","GLOBAL",1)~ + @15 + prepare
	    + ~GlobalGT("tb#udduelcoward","GLOBAL",0)~ + @15 + prepare_coward
	    + ~IsGabber(Player1)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",1)~ EXIT
	    + ~IsGabber(Player2)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",2)~ EXIT
	    + ~IsGabber(Player3)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",3)~ EXIT
	    + ~IsGabber(Player4)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",4)~ EXIT
	    + ~IsGabber(Player5)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",5)~ EXIT
	    + ~IsGabber(Player6)~ + @16 DO ~SetGlobal("tb#udduelstart","GLOBAL",6)~ EXIT
	    ++ @8 + new_coward
	END

	IF ~~ new_coward
	  SAY @17
	    ++ @18 + new_fight
	    ++ @19 + haha
	    ++ @20 + prepare
	END

	IF ~~ prepare
	  SAY @21
	    IF ~~ THEN DO ~IncrementGlobal("tb#udduelprepare","GLOBAL",1)~ EXIT
	END

	IF ~~ prepare_coward
	  SAY @22
	    IF ~~ THEN DO ~IncrementGlobal("tb#udduelprepare","GLOBAL",1)~ EXIT
	END

	IF ~~ haha
	  SAY @23
	    IF ~~ THEN DO ~IncrementGlobal("tb#udduelcoward","GLOBAL",1)~ EXIT
	END

END