parent_dir <- withr::local_tempdir()
project_dir <- "blop"
babelquarto::quarto_multilingual_website(parent_dir = parent_dir, project_dir = project_dir)

remotes::install_github("EllaKaye/distilltools")
remotes::install_github("ropensci/RefManageR")
install.packages("bib2df")

base::library(RefManageR)
base::library(distilltools)
quarto_version()
babelquarto::render_website()

quarto add quarto-ext/fontawesome


