* Encoding: UTF-8.
* NeuralPerceptron.

* Dataset: NeuralPerceptron.sav.

*Multilayer Perceptron Network.
MLP pager (MLEVEL=N) BY marital inccat carcat ed retire empcat gender reside wireless multline 
    voice internet callid callwait owntv ownvcr owncd ownpda ownpc ownfax news response WITH age 
    address income car employ jobsat
 /RESCALE COVARIATE=STANDARDIZED 
  /PARTITION  TRAINING=7  TESTING=3  HOLDOUT=0
  /ARCHITECTURE   AUTOMATIC=YES (MINUNITS=1 MAXUNITS=50) 
  /CRITERIA TRAINING=BATCH OPTIMIZATION=SCALEDCONJUGATE LAMBDAINITIAL=0.0000005 
    SIGMAINITIAL=0.00005 INTERVALCENTER=0 INTERVALOFFSET=0.5 MEMSIZE=1000 
  /PRINT CPS NETWORKINFO SUMMARY CLASSIFICATION 
  /PLOT NETWORK   
  /STOPPINGRULES ERRORSTEPS= 1 (DATA=AUTO) TRAININGTIMER=ON (MAXTIME=15) MAXEPOCHS=AUTO 
    ERRORCHANGE=1.0E-4 ERRORRATIO=0.001 
 /MISSING USERMISSING=EXCLUDE .
