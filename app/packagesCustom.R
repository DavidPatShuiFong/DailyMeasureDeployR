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

# DailyMeasure - the web/shiny interface to the GPstat! app
#  dependencies should  have been installed with 'renv'
#  "no-multiarch" avoids attempting install of 32-bit version
install_github("DavidPatShuiFong/DailyMeasure", ref = "develop", lib = applibpath, INSTALL_opts = c("--no-multiarch"), upgrade = "never")
