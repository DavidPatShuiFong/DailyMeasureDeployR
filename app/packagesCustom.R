# Custom packages need to be installed manually. The recommended method is to use devtools:
# $ Rscript -e "devtools::install('path/to/package', lib = '<appname>/app/library')"

# That didn't work for me! Instead something like:
#
library(devtools)    # this is needed first!
#
#  install_git("https://github.com/DavidPatShuiFong/DailyMeasure", ref = "develop", lib = local_libpath)

# don't forget to set current directory to the base directory, where 'app/library' can be found!
# portable R will, from the Windows GUI, start in R.home() instead

appwd = getwd()
applibpath = file.path(appwd, 'app', 'library')
.libPaths(file.path(chartr("\\", "/", R.home()), "library"))

# create app/library if it doesn't exist (e.g. first run)
if (!dir.exists(applibpath)) {
  dir.create(applibpath)
}

.libPaths(c(.Library, applibpath))

# shinycssloaders - loading animations
#  custom version based on Gao Zheng's 'transparent' background version
#  installed with devtools::install_github('DavidPatShuiFong/shinycssloaders')

install_github("DavidPatShuiFong/shinycssloaders", lib = applibpath, upgrade = "never")

# airtabler
install_github("bergant/airtabler", lib = applibpath, upgrade = "never")

# rintrojs
#  requires version 0.2.2 (or perhaps 0.2.1)
#  MRAN 15th April 2019 only has version 0.2.0
install_github("carlganz/rintrojs", lib = applibpath, upgrade = "never")

# DT - datatables for R.
#  requires version 0.5.3 (development version) or 0.6.0 (CRAN release) or greater
#  unfortunately, MRAN 15th April 2019 only has version 0.5.0

install_github("rstudio/DT", lib = applibpath, upgrade = "never")

install_github("dreamRs/shinyWidgets@v0.5.1", lib = applibpath, upgrade = "never")

# emo - emoticons for R

install_github("hadley/emo", lib = applibpath, upgrade = "never")

# dbplyr - database interaction for dplyr (tidyverse)
#  requires version which gracefully deals with NA (using try_cast instead of cast)
#  and also returns floats with as.numeric/as.double (rather than integers)
# customized version by David Fong

install_github("DavidPatShuiFong/dbplyr", ref = "develop", lib = applibpath, upgrade = "never")

# DTedit - datatable edit wrapper.
#  substantially based on jbryer/DTedit
#  devtools::install_github('DavidPatShuiFong/DTedit')

install_github("DavidPatShuiFong/DTedit", ref = "develop", lib = applibpath, upgrade = "never")

# dbConnection - generalized database access object
#  uses either DBI or pool, depending on availability or preferences
#  (removes absolute requirement for package 'pool')
#  devtools::install_github('DavidPatShuiFong/dbConnection")

install_github("DavidPatShuiFong/dbConnection", ref = "master", lib = applibpath, upgrade = "never")

# Framingham Risk Equation package
install_github("DavidPatShuiFong/framinghamRiskEquation", ref = "master", lib = applibpath, upgrade = "never")

# dMeasure - the object-oriented R6 engine of the application
install_github("DavidPatShuiFong/dMeasure", ref = "develop", lib = applibpath, upgrade = "never")

# dMeasure QIM - Quality Improvement Measures module
install_github("DavidPatShuiFong/dMeasureQIM", ref = "develop", lib = applibpath, upgrade = "never")

# dMeasure Billings - Billings module
install_github("DavidPatShuiFong/dMeasureBillings", ref = "develop", lib = applibpath, upgrade = "never")

# dMeasure CDM - Chronic Disease Management module
install_github("DavidPatShuiFong/dMeasureCDM", ref = "develop", lib = applibpath, upgrade = "never")

# dMeasure Custom
install_github("DavidPatShuiFong/dMeasureCustom", ref = "develop", lib = applibpath, upgrade = "never")
# tryCatch(remove.packages("dMeasureCustom", .libPaths()[[1]]), error = function(cond) {cond}) # error raised if not installed
# tryCatch(remove.packages("dMeasureCustom", .libPaths()[[2]]), error = function(cond) {cond}) # need to remove from both libPaths!

# dMeasure Medication
install_github("DavidPatShuiFong/dMeasureMedication", ref = "develop", lib = applibpath, upgrade = "never")

# DailyMeasure - the web/shiny interface to the GPstat! app
install_github("DavidPatShuiFong/DailyMeasure", ref = "develop", lib = applibpath, upgrade = "never")
