* Encoding: UTF-8.
* 06_07_Reliability.

* Dataset: StateData.sav.

* Based on Principal Component Analysis, the twelve Google Correlate variables might be
  placed into four groups:
  - Museum (gc10), Volunteering (gc09), GDPR (gc05), Scrapbook* (gc11r*)
  - Facebook* (gc02r*), Modern Dance (gc12), Mortgage (gc08)
  - Instagram (gc01), Entrepreneur (gc04), Retweet (gc03)
  - University (gc07), Privacy (gc06)
  * reverse coded
  
* PREPARE DATA.

* Reverse code two variables.
COMPUTE gc11r = gc11 * -1 .
COMPUTE gc02r = gc02 * -1 .
EXECUTE .

* Labels for new variables.
VARIABLE LABELS
  gc11r "Scrapbook (reversed)"
  gc02r "Facebook (reversed)" .

* RELIABILITY ANALYSIS.

*Cronbach's alpha for first scale.
* Based on Factor Analysis, gc10 gc09 gc05 gc11r variables gotogether (component 1)

RELIABILITY
  /VARIABLES=gc10 gc09 gc05 gc11r
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=SCALE
  /SUMMARY=TOTAL.

* COMPUTE SCALE SCORE. This creates a new variable in the dataset

COMPUTE Engaged = MEAN(gc10, gc09, gc05, gc11r) .
EXECUTE .

* Histogram of scale score.
GRAPH
  /HISTOGRAM(NORMAL)=Engaged.

* Boxplot to compare personality regions on score.
EXAMINE VARIABLES=Engaged BY per_reg
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=State.
