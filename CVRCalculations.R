setwd('D:/2018_PAPER/DEPENDENCE DATA HERE/CVR/')
file.data <- sapply(list.files(), simplify = FALSE, function(x) {
  return(read.csv(x))
})
file.data <- Reduce(rbind, file.data)
library(tidyverse)
library(dplyr)
library(stringr)
#install.packages("tidyverse")
file.data$Bug <- paste('Bug', file.data$Bug, sep = '-')

write.csv(file.data, "Cumulative.csv")

new.data <- read.csv("Cumulative.csv")
new.data.first <-
  subset(new.data,
         new.data$ScoringScheme == 'first' & new.data$Formula == 'ochiai')
final <- read.csv("final.csv")

new.data.first$Score <- 5 - abs(log10(new.data.first$Score))
new.data.first$ScoreWRTLoadedClasses <-
  5 - abs(log10(new.data.first$ScoreWRTLoadedClasses))
#final<- final [2:396,]

new.data.first$Fail <- final$V3
new.data.first$Fail <- mean.all.c$V4
new.data.first$ScoreWRTLoadedClasses <-
  log10(new.data.first$ScoreWRTLoadedClasses)

new.data.first$Fail <- log10(new.data.first$Fail)

write.csv(new.data.first, "test-plot.csv")

new.data.first.copy <- new.data.first

filtered <- new.data.first %>% filter(ScoreWRTLoadedClasses < 0.01)

filtered$ScoreWRTLoadedClasses <-
  5 - abs(log10(filtered$ScoreWRTLoadedClasses))

write.csv(filtered, "Cutoff_Original.csv")


cutoff <- read.csv("Cutoff_Original.csv")

cutoff$ScoreWRTLoadedClasses <- log10(cutoff$ScoreWRTLoadedClasses)
cutoff$Fail <- log10(cutoff$Fail)
write.csv(cutoff, "cutoff-log10.csv")

Basedir <- "D:/2018_PAPER/DEPENDENCE DATA HERE/CVR/"
final <- as.data.frame(matrix(ncol = 4, nrow = 0))
finalcounter <- 1
projects <- list.dirs(, full.names = FALSE, recursive = FALSE)

for (project in projects) {
  print(paste(Basedir, project, sep = ""))
  versions <-
    list.dirs(paste(Basedir, project, sep = ""),
              full.names = FALSE,
              recursive = FALSE)
  for (vers in versions) {
    matr <-
      read.table(
        paste(Basedir, project, "/", vers, "/matrix", sep = ""),
        header = FALSE,
        stringsAsFactors = TRUE,
        sep = "\n"
      )
    
    FaultyRows <- grep("-", matr$V1)
    ExampleMatr <- list()
    ctr <- 1
    
    for (i in FaultyRows) {
      ExampleMatr[[ctr]] <- matr$V1[i]
      ctr <- ctr + 1
    }
    p <- sum(grepl("-", matr$V1)) / nrow(matr)
    
    final[finalcounter, 1] = project
    final[finalcounter, 2] = vers
    final[finalcounter, 3] = p
    minusp <- 1.0 - p
    standerr <- sqrt((minusp * p) / nrow(matr))
    cv <- standerr / p
    final[finalcounter, 4] = cv
    
    finalcounter <- finalcounter + 1
  }
  
}
df <-
  data.frame(matrix(
    unlist(ExampleMatr),
    nrow = length(ExampleMatr),
    byrow = T
  ), stringsAsFactors = FALSE)
finalcopy <- final
final <- finalcopy
write.csv(final, "CVA.csv")
data1 <- read.csv("Cumulative.csv")
finalnew <- read.csv("CVA.csv")
finalnew$V4 <- finalnew$V4 * 100
finalnew$V5 <- new.data.first$ScoreWRTLoadedClasses
final.dummy <- finalnew

write.csv(finalnew, "CVA_Plot.csv")
