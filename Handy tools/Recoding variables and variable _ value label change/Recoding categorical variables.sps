* Encoding: UTF-8.
* Recoding categorical variable
* RecodingVariables.sav

DATASET ACTIVATE DataSet1.
RECODE Status (0=2) (ELSE=Copy) INTO Completed.
EXECUTE.

* Combining multiple groups

DATASET ACTIVATE DataSet1.
RECODE Group (1=1) (2=2) (3 thru Highest=3) INTO Group_new.
EXECUTE.

* Recoding a variable with more values.
RECODE Scale_0_6 (0=6) (1=5) (2=4) (3=3) (4=2) (5=1) (6=0) INTO Scale_0_6_r.
EXECUTE.

* Recoding a variable with more values. using a formula

COMPUTE Scale_0_6_r = 6 - Scale_0_6 .
EXECUTE.

COMPUTE Scale_1_7_r = 8 - Scale_1_7 .
EXECUTE.

COMPUTE Scale_Neg_Pos_r = 0 - Scale_Neg_Pos .
EXECUTE.

