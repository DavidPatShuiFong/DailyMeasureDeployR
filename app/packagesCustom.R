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

install_git("https://github.com/DavidPatShuiFong/shinycssloaders", lib = applibpath, upgrade = "never")

# airtabler
install_git("https://github.com/bergant/airtabler", lib = applibpath, upgrade = "never")

# rintrojs
#  requires version 0.2.2 (or perhaps 0.2.1)
#  MRAN 15th April 2019 only has version 0.2.0
install_git("https://github.com/carlganz/rintrojs", lib = applibpath, upgrade = "never")

# DT - datatables for R.
#  requires version 0.5.3 (development version) or 0.6.0 (CRAN release) or greater
#  unfortunately, MRAN 15th April 2019 only has version 0.5.0

install_git("https://github.com/rstudio/DT", lib = applibpath, upgrade = "never")

# dbplyr - database interaction for dplyr (tidyverse)
#  requires version which gracefully deals with NA (using try_cast instead of cast)
#  and also returns floats with as.numeric/as.double (rather than integers)
# customized version by David Fong

install_git("https://github.com/DavidPatShuiFong/dbplyr", ref = "develop", lib = applibpath, upgrade = "never")

# DTedit - datatable edit wrapper.
#  substantially based on jbryer/DTedit
#  devtools::install_github('DavidPatShuiFong/DTedit')

install_git("https://github.com/DavidPatShuiFong/DTedit", lib = applibpath, upgrade = "never")

# dbConnection - generalized database access object
#  uses either DBI or pool, depending on availability or preferences
#  (removes absolute requirement for package 'pool')
#  devtools::install_github('DavidPatShuiFong/dbConnection")

install_git("https://github.com/DavidPatShuiFong/dbConnection", ref = "master", lib = applibpath, upgrade = "never")

# Framingham Risk Equation package
install_git("https://github.com/DavidPatShuiFong/framinghamRiskEquation", ref = "master", lib = applibpath, upgrade = "never")

# dMeasure - the object-oriented R6 engine of the application
install_git("https://github.com/DavidPatShuiFong/dMeasure", ref = "feature/shinyapps", lib = applibpath, upgrade = "never")

# dMeasure QIM - Quality Improvement Measures module
install_git("https://github.com/DavidPatShuiFong/dMeasureQIM", ref = "master", lib = applibpath, upgrade = "never")

# dMeasure Billings - Billings module
install_git("https://github.com/DavidPatShuiFong/dMeasureBillings", ref = "develop", lib = applibpath, upgrade = "never")

# dMeasure CDM - Chronic Disease Management module
install_git("https://github.com/DavidPatShuiFong/dMeasureCDM", ref = "master", lib = applibpath, upgrade = "never")

# dMeasure Custom
install_git("https://github.com/DavidPatShuiFong/dMeasureCustom", ref = "master", lib = applibpath, upgrade = "never")

# DailyMeasure - the web/shiny interface to the GPstat! app
#  install_git('https://github.com/DavidPatShuiFong/DailyMeasure/tree/develop')
install_git("https://github.com/DavidPatShuiFong/DailyMeasure", ref = "develop", lib = applibpath, upgrade = "never")
#  install_local("C:/Users/Public/Rprojects/DailyMeasure", lib = applibpath)
