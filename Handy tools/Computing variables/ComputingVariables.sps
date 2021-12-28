* Encoding: UTF-8.
* ComputingScores.

* AVERAGING

* Compute an "openness" score that averages gc10 (Museum) and gc09 (Volunteering) 
  with reverse-coded scores for gc11 (Scrapbook) and gc02 (Facebook).
COMPUTE GC_open = MEAN(gc10, gc09, -1*gc11, -1*gc02) .
EXECUTE .

* Create a histogram of the new variable.
GRAPH
  /HISTOGRAM(NORMAL)=GC_open.

* COUNTING

COMPUTE GC_high = 0 .
IF (gc01 > 1) GC_high = GC_high + 1 .
IF (gc02 > 1) GC_high = GC_high + 1 .
IF (gc03 > 1) GC_high = GC_high + 1 .
IF (gc04 > 1) GC_high = GC_high + 1 .
IF (gc05 > 1) GC_high = GC_high + 1 .
IF (gc06 > 1) GC_high = GC_high + 1 .
IF (gc07 > 1) GC_high = GC_high + 1 .
IF (gc08 > 1) GC_high = GC_high + 1 .
IF (gc09 > 1) GC_high = GC_high + 1 .
IF (gc10 > 1) GC_high = GC_high + 1 .
IF (gc11 > 1) GC_high = GC_high + 1 .
IF (gc12 > 1) GC_high = GC_high + 1 .
EXECUTE .

* Create a histogram of the new variable.
GRAPH
  /HISTOGRAM(NORMAL)=GC_high.
