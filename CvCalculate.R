setwd('C:/Users/yigit/Desktop/CV_Calculations/')



projects = c("Chart", "Lang", "Math", "Time", "Mockito")
option = c("c")
meanAll <- as.data.frame(matrix(ncol = 8, nrow = 0))
colnames(meanAll) <-
  c("Project",
    "Bug",
    "Estimator",
    "Max",
    "Min",
    "Mean",
    "Score",
    "ScoreWRTLoadedClasses")
metaList <- list()
counter <- 1
#new.data<-read.csv("Cumulative.csv")
#new.data.first <- subset(new.data, new.data$ScoringScheme == 'first'& new.data$Formula=='ochiai')
new.data.first <- read.csv("ExtractPlotMean.csv")
for (project in projects) {
  for (opt in option) {
    directory <- "C:/Users/yigit/Desktop/CV_Calculations/"
    directory <- paste(directory, project, "/", opt, sep = "")
    print(project)
    print(opt)
    for (f in list.files(directory, full.names = TRUE)) {
      file.data <- read.csv(f)
      
      file.data <- file.data[!file.data$Suspiciousness == 0.0,]
      
      bug <- basename(f)
      print(basename(f))
      
      bug <- gsub("[^-0-9]", "", bug)
      bug <- gsub("-", "_", bug)
      metabug <- paste(project, "-", bug, sep = "")
      
      if (grepl("_", metabug)) {
        metaline <-
          subset(
            new.data.first,
            new.data.first$Project == project & new.data.first$Bug == metabug
          )
        meanAll[counter, 1] = project
        meanAll[counter, 2] = metabug
        meanAll[counter, 3] = opt
        meanAll[counter, 4] = max(file.data$Suspiciousness, na.rm = TRUE) *
          100 #CV
        meanAll[counter, 5] = min(file.data$Suspiciousness, na.rm = TRUE) *
          100 #CV
        meanAll[counter, 6] = mean(file.data$Suspiciousness, na.rm = TRUE) *
          100 #CV
        meanAll[counter, 7] = metaline$Score
        meanAll[counter, 8] = metaline$ScoreWRTLoadedClasses
        
        if (!is.null(file.data) & dim(file.data)[1] != 0) {
          file.data$Score <- metaline$Score
          file.data$ScoreWRT <- metaline$ScoreWRTLoadedClasses
        }
        
        
        metaList[[counter]] <- file.data
        
        
        counter <- counter + 1
      }
    }
    #file.data <- Reduce(rbind, file.data)
    
    
    #meanAll[counter]<-mean(file.data$Suspiciousness,na.rm = TRUE)*100
    
  }
}
big = do.call(rbind, metaList)
big <- read.csv("bigPLotMax-B.csv")


new.data.first$Max <- meanAll$Max
new.data.first$Min <- meanAll$Min
new.data.first$Mean <- meanAll$Mean

write.csv(meanAll, "CVCMax-Plot.csv")

#plot(big$Suspiciousness, big$ScoreWRT, main = "Main title",
#    xlab = "X axis title", ylab = "Y axis title",
#   pch = 19, frame = FALSE)

plot(
  big$Suspiciousness,
  big$ScoreWRT,
  main = "B plot",
  xlab = "f(s)/N(s)",
  ylab = "EXAM Score",
  pch = 19,
  frame = FALSE
)
lines(lowess(big$Suspiciousness, big$ScoreWRT), col = "blue")
#install.packages("car")
library("car")
scatterplot(ScoreWRT ~ Suspiciousness, data = big)

write.csv(big, "bigPlot.csv")

mean.all.c <- subset(meanAll, meanAll$V3 == 'C')
write.csv(mean.all.c, "meanallc.csv")
mean.all.c <- read.csv("meanallc.csv")


mean.all.c.dummy <- as.data.frame(mean.all.c)
mean.all.c.dummy[is.nan(mean.all.c.dummy$v4)] <- 0

typeof(mean.all.c.dummy)
summary(mean.all.c.dummy)

normalizeCol <- function(y) {
  range <- max(y) - min(y)
  z <- (y - min(y)) / range
}

max(mean.all.c$V4)
mean.all.c.dummy$V3_new <-
  normalizeCol(as.numeric(mean.all.c.dummy$V3))
mean.all.c.dummy$V4_new <-
  normalizeCol(as.numeric(mean.all.c.dummy$V4))
View(mean.all.c.dummy)

setwd('D:/2018_PAPER/DEPENDENCE DATA HERE/CVR/')




new.data.first$Fail <- mean.all.c$V4
new.data.first$ScoreWRTLoadedClasses_new <-
  normalizeCol(as.numeric(new.data.first$ScoreWRTLoadedClasses))
write.csv(new.data.first, "newplot.csv")
new.log <- new.data.first
new.log$Fail <- log10(new.data.first$Fail)
new.log$ScoreWRTLoadedClasses_new <-
  log10(new.data.first$ScoreWRTLoadedClasses)
write.csv(new.log, "newplo.csv")
