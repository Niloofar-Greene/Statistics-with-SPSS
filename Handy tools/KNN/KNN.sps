* Encoding: UTF-8.
* 07_03_KNN.

* Dataset: 07_03_KNN_begin.sav, which is based on demo.sav.

* CONDUCT ANALYSIS.

*Nearest Neighbor Analysis.
KNN pager (MLEVEL=N) BY marital inccat carcat ed retire empcat gender reside wireless multline 
    voice internet callid callwait owntv ownvcr owncd ownpda ownpc ownfax news response  WITH age 
    address income car employ jobsat 
  /RESCALE COVARIATE=ADJNORMALIZED
  /MODEL NEIGHBORS=FIXED(K=9) METRIC=EUCLID FEATURES=ALL
  /CRITERIA WEIGHTFEATURES=NO 
  /PARTITION  TRAINING=70  HOLDOUT=30
  /SAVE  PREDVAL PREDPROB PARTITION MAXCAT(25) 
  /PRINT CPS 
  /VIEWMODEL DISPLAY=YES 
  /MISSING USERMISSING=EXCLUDE.

* COMPARE PREDICTIONS WITH OBSERVATIONS. pager is the Y here.

CROSSTABS
  /TABLES=pager BY KNN_PredictedValue BY KNN_Partition
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

