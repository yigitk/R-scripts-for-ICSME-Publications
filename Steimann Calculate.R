setwd('D:/Steimann-FailRemove/output_considerRD/details/')
setwd('C:/Users/yigit/Desktop/TCM/output_considerRD/')
setwd('C:/Users/yigit/Desktop/TCM/output_considerRD/details/out1/')
setwd('C:/Users/yigit/Desktop/TCM/output_considerRD/details/outM/')
library(dplyr)
file.data <- sapply(list.files(), simplify = FALSE, function(x) {
   return(read.csv(x))
})
file.data <- do.call(rbind, file.data)
file.data$filename <- as.character(file.data$filename)
for (i in 1:dim(file.data)[1]) {
   file.data[i, 'filename'] <-
      unlist(strsplit(file.data[i, 'filename'], "/"))[5]
   
}
origdata <- file.data
# file.data$ranks<-rank(file.data[,"Ochiai"])
# max<-max(file.data$ranks)
# file.data$ranks<-file.data$ranks
#data<-select(file.data,CVA,CVB,CVC,FailTestNum,TotalTestNum,Ochiai)

dataA <-
   select(file.data, CVA, RelRank, Rank, FailTestNum, TotalTestNum, Ochiai)
dataB <-
   select(file.data, CVB, RelRank, Rank, FailTestNum, TotalTestNum, Ochiai)
dataC <-
   select(file.data, CVC, RelRank, Rank, FailTestNum, TotalTestNum, Ochiai)

# data<-select(file.data,id,filename,CVA,CVB,CVC,FailTestNum,TotalTestNum,Ochiai)
# dataA<-select(file.data,id,filename,CVA,FailTestNum,TotalTestNum,Ochiai)
# dataB<-select(file.data,id,filename,CVB,FailTestNum,TotalTestNum,Ochiai)
# dataC<-select(file.data,id,filename,CVC,FailTestNum,TotalTestNum,Ochiai)
dataB <- na.omit(dataB)
dataC <- na.omit(dataC)
dataA <- na.omit(dataA)
dataB <- subset(dataB, dataB$CVB != 'NaN')
dataC <- subset(dataC, dataC$CVC != 'NaN')
SampleB <- sample_n(dataB, 1000)
SampleC <- sample_n(dataC, 1000)
SampleA <- sample_n(dataA, 1000)
write.csv(dataB, "DataB.csv")
write.csv(dataC, "DataC.csv")
write.csv(dataA, "DataA.csv")
write.csv(SampleB, "SampleB.csv")
SampleB$maxRank <- SampleB$Rank / SampleB$RelRank

dataA$prob <- dataA$FailTestNum / dataA$TotalTestNum

plot(
   dataB$CVB,
   dataB$Ochiai,
   main = "B plot-Covered by Both passing and failing Methods-",
   xlab = "nf(s)/nf",
   ylab = "EXAM Score",
   pch = 19,
   frame = FALSE
)
lines(lowess(dataB$CVB, dataB$Ochiai), col = "blue")

write.csv(test, "testplot.csv")
write.csv(dataA, "SteACVplot.csv")

Bctr <- 1
Cctr <- 1
plotB <- as.data.frame(matrix(ncol = 3, nrow = 0))
colnames(plotB) <- c("Name", "Mean", "Score")
plotC <- as.data.frame(matrix(ncol = 3, nrow = 0))
colnames(plotC) <- c("Name", "Mean", "Score")
for (f in list.files()) {
   table <- read.csv(f)
   name <- basename(f)
   val <- unlist(strsplit(name, "_"))
   
   val[5] <- gsub(".csv", "", val[5])
   val[5] <- gsub(".txt", "", val[5])
   newname <- paste(val[4], "_", val[5], sep = "")
   if (dim(table[which(table$CVB == 0), ]) > 0) {
      table[which(table$CVB == 0), ]$CVB <- NA
   }
   if (dim(table[which(table$CVC == 0), ]) > 0) {
      table[which(table$CVC == 0), ]$CVC <- NA
   }
   if (!is.na(mean(table$CVB, na.rm = TRUE))) {
      plotB[Bctr, 1] <- newname
      plotB[Bctr, 2] <- mean(table$CVB, na.rm = TRUE)
      plotB[Bctr, 3] <- 0
      Bctr <- Bctr + 1
   }
   if (!is.na(mean(table$CVC, na.rm = TRUE))) {
      plotC[Cctr, 1] <- newname
      plotC[Cctr, 2] <- mean(table$CVC, na.rm = TRUE)
      plotC[Cctr, 3] <- 0
      Cctr <- Cctr + 1
   }
}
write.csv(plotB, "CVB.csv")
write.csv(plotC, "CVC.csv")
data$filename <- as.character(data$filename)
test <-
   "C:/Users/Kocacim/Desktop/Steimann-Fail/org.htmlparser 1.6/Removed90/org.htmlparser 1.6_1358259037088.txt.csv"

for (i in 1:nrow(data)) {
   print("yes")
   val <- unlist(strsplit(data[i, ]$filename, "/"))
   val[9] <- gsub(".csv", "", val[9])
   val[9] <- gsub(".txt", "", val[9])
   if (!is.null(plotC[which(plotC$Name == val[9]), ]) &
       dim(plotC[which(plotC$Name == val[9]), ]) > 0) {
      plotC[which(plotC$Name == val[9]), ]$Score <- data[i, ]$Ochiai
   }
   if (!is.null(plotB[which(plotB$Name == val[9]), ]) &
       dim(plotB[which(plotB$Name == val[9]), ]) > 0) {
      plotB[which(plotB$Name == val[9]), ]$Score <- data[i, ]$Ochiai
   }
   # plotB[which(plotB$Name==val[9]),]$Score<-data[i,]$Ochiai
   # plotC[which(plotC$Name==val[9]),]$Score<-data[i,]$Ochiai
   
}

splitted <- unlist(strsplit(test, "/"))[8]

# newval<-paste(val[4],"_",val[5],sep="")
val <- unlist(strsplit(unlist(strsplit(test, "-"))[2], "_out"))[1]

lala <- gsub(".*[-] (.+) csv.*", "\\1", test)

gsub(".*[/]([^.]+)[.].*", "\\1", test)
