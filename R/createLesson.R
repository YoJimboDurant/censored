library(knitr)
library(rmarkdown)
source("./R/RmdFlip.R")
source("./R/createLessonMaster.R")

xfiles <- list.files("Rmd_lessons", pattern = "[.]Rmd", full.names = TRUE)

createLessonMaster(xfiles, type="beamer")
render("Master_beamer.Rmd")

createLessonMaster(xfiles, type="article", headFile = "./Rmd_templates/word.Rmd")
render("Master_article.Rmd")
