* Encoding: UTF-8.
* Boxplot to compare personality regions on score.
EXAMINE VARIABLES=Engaged BY per_reg
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=State.

* Histogram of scale score.
GRAPH
  /HISTOGRAM(NORMAL)=Engaged.
