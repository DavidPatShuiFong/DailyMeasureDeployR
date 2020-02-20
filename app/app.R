# app launching code:
# note that 'DailyMeasure' does actually need to be
# loaded with library() beforehand for the icons to
# be found in the path!
# for demonstration mode use :
#   DailyMeasure::GPstat(appmode = "none", host = "0.0.0.0", launch.browser = FALSE, port = 7575, demonstration = TRUE)
library(DailyMeasure)
DailyMeasure::GPstat()
