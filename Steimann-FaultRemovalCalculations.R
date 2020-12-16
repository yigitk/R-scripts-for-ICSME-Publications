

#numbug='out1'     #single bug

#numbug='outM'     # contains ALL (2,4,8,16,32) multiple-bug versions
#num_vers=1000    # originally designed for random select 1000 from all the base. (useless now)
library(dplyr)

#numbugs<-c('Removed10','Removed20','Removed30','Removed40','Removed50','Removed60','Removed70','Removed80','Removed90')
numbugs <- c('Removed20', 'Removed40', 'Removed60', 'Removed80')
#numbugs<-c('Removed10')
dir  <-
  'D:/Steimann-FailRemove/output_considerRD/detailsRem/'    # original coverage information file, the format is on website
setwd('D:/Steimann-FailRemove/output_considerRD/details/')
file.data <- sapply(list.files(), simplify = FALSE, function(x) {
  return(read.csv(x))
})
file.data <- do.call(rbind, file.data)
origdata <- subset(file.data, file.data$MeanRank != '-Inf')
origdata$filename <- as.character(origdata$filename)
for (i in 1:dim(file.data)[1]) {
  if (unlist(strsplit(origdata[i, 'filename'], "/"))[1] == 'D:') {
    origdata[i, 'filename'] <-
      unlist(strsplit(origdata[i, 'filename'], "/"))[5]
  } else{
    origdata[i, 'filename'] <-
      unlist(strsplit(origdata[i, 'filename'], "/"))[8]
  }
}
#val<- unlist(strsplit(unlist(strsplit(test,"-"))[2],"_out"))[1]
fin_cols <- c('Percentage', 'Diff')
fin_array <- matrix(nrow = length(numbugs), ncol = length(fin_cols))
colnames(fin_array) <- fin_cols
global_ctr <- 1
for (numbug in numbugs) {
  #print(list.files(paste(dir,"/",numbug,"/",sep = ""),full.names = TRUE))
  file.data <-
    sapply(list.files(paste(dir, "/", numbug, "/", sep = ""), full.names = TRUE), simplify = FALSE, function(x) {
      return(read.csv(x))
    })
  file.data <- do.call(rbind, file.data)
  file.data <- subset(file.data, file.data$MeanRank != '-Inf')
  file.data$filename <- as.character(file.data$filename)
  for (i in 1:dim(file.data)[1]) {
    if (unlist(strsplit(file.data[i, 'filename'], "/"))[1] == 'D:') {
      file.data[i, 'filename'] <-
        unlist(strsplit(file.data[i, 'filename'], "/"))[5]
    } else{
      file.data[i, 'filename'] <-
        unlist(strsplit(file.data[i, 'filename'], "/"))[8]
    }
  }
  file.data$Diff <- 0
  for (i in 1:dim(file.data)[1]) {
    if (!is.na(origdata[which(origdata$filename == file.data$filename[i]), ]$MeanRank)) {
      file.data$Diff[i] <-
        file.data$MeanRank[i] - origdata[which(origdata$filename == file.data$filename[i]), ]$MeanRank
    } else{
      print(file.data$filename[i])
    }
  }
  write.csv(file.data, paste(numbug, ".csv", sep = ''))
  fin_array[global_ctr, "Percentage"] <- numbug
  fin_array[global_ctr, "Diff"] <- mean(file.data$Diff, na.rm = TRUE)
  global_ctr <- global_ctr + 1
}
write.csv(fin_array, "final.csv")
