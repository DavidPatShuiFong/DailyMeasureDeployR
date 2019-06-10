# Custom packages need to be installed manually. The recommended method is to use devtools:
# $ Rscript -e "devtools::install('path/to/package', lib = '<appname>/app/library')"

# That didn't work for me! Instead something like:
#
#  library(devtools)    # this is needed first!
#
#  install_git("https://github.com/DavidPatShuiFong/DailyMeasure", ref = "develop", lib = local_libpath)
				 
# shinycssloaders - loading animations
#  custom version based on Gao Zheng's 'transparent' background version
#  installed with devtools::install_github('DavidPatShuiFong/shinycssloaders')

remotes::install_git("https://github.com/DavidPatShuiFong/shinycssloaders", lib = local_libpath)

withr::with_libpaths(new = local_libpath,
                     install_git("https://github.com/DavidPatShuiFong/shinycssloaders"))

# DTedit - datatable edit wrapper.
#  substantially based on jbryer/DTedit
#  devtools::install_github('DavidPatShuiFong/DTedit')

install_git("https://github.com/DavidPatShuiFong/DTedit", lib = local_libpath)

# DT - datatables for R. 
#   requires version 0.5.3 (development version) or 0.6.0 (CRAN release versioin) or greater
#   unfortunately, MRAN 15th April 2019 only has version 0.5.0
#   remotes::install_github('rstudio/DT')

install_git("https://github.com/rstudio/DT", lib = local_libpath)

# DailyMeasure - the actual app
#  install_git('https://github.com/DavidPatShuiFong/DailyMeasure/tree/develop')

install_git("https://github.com/DavidPatShuiFong/DailyMeasure", ref = "develop", lib = local_libpath)
# alternatively install(as.package("C:/Users/David/Rprojects/DailyMeasure"), lib = local_libpath)