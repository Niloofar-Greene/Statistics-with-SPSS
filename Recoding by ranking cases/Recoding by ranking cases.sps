* Encoding: UTF-8.
* RankingCases.

* Check for outliers by boxplot.

EXAMINE VARIABLES=gc01 TO gc12 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Rank cases on a selected variable (Privacy in thisi case)

* Default ranking.
RANK VARIABLES=gc06 (A) 
  /RANK 
  /PRINT=YES 
  /TIES=MEAN.

*Ranking with option.
RANK VARIABLES=gc06 (D) 
  /NORMAL 
  /RANK 
  /NTILES(5) 
  /PERCENT 
  /PRINT=YES 
  /TIES=LOW 
  /FRACTION=BLOM.

* COMPARE RANKINGS.

* Original variable.
  EXAMINE VARIABLES=gc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Rank (1-48).
EXAMINE VARIABLES=Rgc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Ranks rescaled on 0-100 scale.
EXAMINE VARIABLES=Pgc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* z scores corresponding to the estimated cumulative proportion.
EXAMINE VARIABLES=Ngc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Quintiles are evenly spead out.
EXAMINE VARIABLES=NTI001
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.
