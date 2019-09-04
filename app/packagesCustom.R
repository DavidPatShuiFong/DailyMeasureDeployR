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

.libPaths(c(applibpath, .Library))

# shinycssloaders - loading animations
#  custom version based on Gao Zheng's 'transparent' background version
#  installed with devtools::install_github('DavidPatShuiFong/shinycssloaders')

install_git("https://github.com/DavidPatShuiFong/shinycssloaders", lib = applibpath)

# DT - datatables for R.
#  requires version 0.5.3 (development version) or 0.6.0 (CRAN release) or greater
#  unfortunately, MRAN 15th April 2019 only has version 0.5.0

install_git("https://github.com/rstudio/DT", lib = applibpath)

# DTedit - datatable edit wrapper.
#  substantially based on jbryer/DTedit
#  devtools::install_github('DavidPatShuiFong/DTedit')

install_git("https://github.com/DavidPatShuiFong/DTedit", lib = applibpath)

# dbConnection - generalized database access object
#  uses either DBI or pool, depending on availability or preferences
#  (removes absolute requirement for package 'pool')
#  devtools::install_github('DavidPatShuiFong/dbConnection')

install_git("https://github.com/DavidPatShuiFong/dbConnection", ref = "master", lib = applibpath)

# dMeasure - the object-oriented R6 engine of the application
install_git("https://github.com/DavidPatShuiFong/dMeasure", ref = "master", lib = applibpath)

# DailyMeasure - the web/shiny interface to the GPstat! app
#  install_git('https://github.com/DavidPatShuiFong/DailyMeasure/tree/develop')
install_git("https://github.com/DavidPatShuiFong/DailyMeasure", ref = "master", lib = applibpath)
#  install_local("C:/Users/Public/Rprojects/DailyMeasure", lib = applibpath)
