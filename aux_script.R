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

quarto add quarto-ext/fontawesome

library(babelquarto)
library(servr)

# Optionally check URLs in references
#TODO: expand this to all URLs in website
check_urls <- FALSE
if (check_urls) {
	source("R/check_urls.R")
}

# Rendering to view locally (preview)
render_website()

# View locally
httw("docs")


#####

install.packages(c("htmlwidgets","shiny","remotes"))
remotes::install_github('royfrancis/pixture')

library(pixture)

pixgallery(
	list.files("assets/challenges_images", 
						 full.names=TRUE),
	dim="350px",
	gap = "10px"
)