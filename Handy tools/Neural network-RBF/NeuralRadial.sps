* Encoding: UTF-8.
* NeuralRadial.

* Dataset: NeuralRadial.sav.

*Radial Basis Function Network.
RBF pager (MLEVEL=N) BY marital inccat carcat ed retire empcat gender reside wireless multline 
    voice internet callid callwait owntv ownvcr owncd ownpda ownpc ownfax news response WITH age 
    address income car employ jobsat
 /RESCALE COVARIATE=STANDARDIZED 
  /PARTITION  TRAINING=7  TESTING=3  HOLDOUT=0
  /ARCHITECTURE MINUNITS=AUTO MAXUNITS=AUTO HIDDENFUNCTION=NRBF 
  /CRITERIA OVERLAP=AUTO 
  /PRINT CPS NETWORKINFO SUMMARY CLASSIFICATION 
  /PLOT NETWORK 
 /MISSING USERMISSING=EXCLUDE .
