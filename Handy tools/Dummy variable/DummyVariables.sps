* Encoding: UTF-8.
* 05_04_DummyVariables.

* USING "CREATE DUMMIES" COMMAND.

SPSSINC CREATE DUMMIES VARIABLE=per_reg 
ROOTNAME1=PSY 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO.

* USING COMPUTE AND IF COMMANDS.

COMPUTE Friendly = 0 .
IF (per_reg = 1) Friendly = 1 .
EXECUTE .

COMPUTE Relaxed = 0 .
IF (per_reg = 2) Relaxed = 1 .
EXECUTE .

COMPUTE Temperamental = 0 .
IF (per_reg = 3) Temperamental = 1 .
EXECUTE .

VALUE LABELS
  PSY_1 TO Temperamental
    0 "No"
    1 "Yes" .
