* Encoding: UTF-8.
* DecisionTrees.

* Dataset: DecisionTrees.sav.

* Decision Tree. 
TREE pager [n] BY age [s] marital [n] address [s] income [s] inccat [o] car [s] carcat [o] ed [o] 
    employ [s] retire [n] empcat [o] jobsat [s] gender [n] reside [n] wireless [n] multline [n] voice 
    [n] internet [n] callid [n] callwait [n] owntv [n] ownvcr [n] owncd [n] ownpda [n] ownpc [n] ownfax 
    [n] news [n] response [n] 
  /TREE DISPLAY=TOPDOWN NODES=BOTH BRANCHSTATISTICS=YES NODEDEFS=YES SCALE=AUTO 
  /DEPCATEGORIES USEVALUES=[0 1] TARGET=[1] 
  /PRINT MODELSUMMARY CLASSIFICATION RISK 
  /GAIN CATEGORYTABLE=YES TYPE=[NODE] SORT=DESCENDING CUMULATIVE=NO 
  /RULES NODES=TERMINAL SYNTAX=INTERNAL TYPE=SCORING 
  /METHOD TYPE=CHAID 
  /GROWTHLIMIT MAXDEPTH=AUTO MINPARENTSIZE=100 MINCHILDSIZE=50 
  /VALIDATION TYPE=SPLITSAMPLE(70) OUTPUT=BOTHSAMPLES 
  /CHAID ALPHASPLIT=0.05 ALPHAMERGE=0.05 SPLITMERGED=NO CHISQUARE=PEARSON CONVERGE=0.001 
    MAXITERATIONS=100 ADJUST=BONFERRONI INTERVALS=10 
  /COSTS EQUAL 
  /MISSING NOMINALMISSING=MISSING.
