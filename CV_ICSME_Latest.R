setwd('C:/Users/yigit/Desktop/CV_Calculations/')
Sloc <- read.csv("sloc.csv")
projects = c("Chart", "Lang", "Math", "Time", "Mockito", "Closure")
option = c("C")
meanAll <- as.data.frame(matrix(ncol = 8, nrow = 0))
bugRanks <- as.data.frame(matrix(ncol = 7, nrow = 0))
colnames(meanAll) <-
  c("Project",
    "Bug",
    "Estimator",
    "Max",
    "Min",
    "Mean",
    "Score",
    "ScoreWRTLoadedClasses")
colnames(bugRanks) <-
  c("Project",
    "Bug",
    "Estimator",
    "Rank",
    "CV",
    "ScoreWRTLoadedClasses",
    "Sloc")
metaList <- list()
counter <- 1
new.data <- read.csv("Cumulative.csv")
new.data.first <-
  subset(new.data,
         new.data$ScoringScheme == 'first' & new.data$Formula == 'ochiai')
#new.data.first<- read.csv("ExtractPlotMean.csv")
for (project in projects) {
  for (opt in option) {
    directory <- "C:/Users/yigit/Desktop/CV_Calculations/"
    ocdirectory <- "C:/Users/yigit/Desktop/Ochiai/"
    ocdirectory <- paste(ocdirectory, project, "/", sep = "")
    directory <- paste(directory, project, "/", opt, sep = "")
    
    for (f in list.files(directory, full.names = TRUE)) {
      file <- read.csv(f)
      if (!is.null(file) & dim(file)[1] != 0) {
        #file.data<-file.data[!file.data$Suspiciousness == 0.0, ]
        
        bug <- basename(f)
        
        
        bug <- gsub("[^0-9]", "", bug)
        metabug <- paste("Bug", "-", bug, sep = "")
        #bug<-gsub("-", "_", bug)
        metaline <-
          subset(
            new.data.first,
            new.data.first$Project == project & new.data.first$Bug == metabug
          )
        slocBug <-
          subset(Sloc, Sloc$project_id == project & Sloc$bug_id == bug)
        bugRank <- metaline$ScoreWRTLoadedClasses * slocBug$sloc
        ocfile <- paste(ocdirectory, "/", project, bug, ".txt", sep = "")
        ochi <- read.csv(ocfile)
        file$Ochiai <- ochi$Suspiciousness
        file$Rank <-
          rank(desc(file$Ochiai),
               ties.method = "average",
               na.last = TRUE)
        max_rank <- max(file$Rank)
        file$RelRank <- file$Rank / max_rank
        
        
        
        
        
        meanAll[counter, 1] = project
        meanAll[counter, 2] = bug
        meanAll[counter, 3] = opt
        meanAll[counter, 4] = max(file$Suspiciousness, na.rm = TRUE) * 100 #CV
        meanAll[counter, 5] = min(file$Suspiciousness, na.rm = TRUE) * 100 #CV
        meanAll[counter, 6] = mean(file$Suspiciousness, na.rm = TRUE) *
          100 #CV
        meanAll[counter, 7] = metaline$Score
        meanAll[counter, 8] = metaline$ScoreWRTLoadedClasses
        
        # bugRanks[counter,1]=project
        # bugRanks[counter,2]=bug
        # bugRanks[counter,3]=opt
        # bugRanks[counter,4]=bugRank
        # bugRanks[counter,5]=file[file$Rank==bugRank,"Suspiciousness"][0]
        # bugRanks[counter,6]=metaline$ScoreWRTLoadedClasses
        # bugRanks[counter,7]=slocBug$sloc
        
        metaList[[counter]] <- file
        
        
        counter <- counter + 1
        
      } else{
        print("PROBLEM!!!")
      }
      #file.data <- Reduce(rbind, file.data)
      
      
      #meanAll[counter]<-mean(file.data$Suspiciousness,na.rm = TRUE)*100
    }
  }
}

big = do.call(rbind, metaList)
#big<-big[!big$Suspiciousness==0,]
big$Line <- as.character(big$Line)
StmtInfo <- big

setwd('C:/Users/yigit/Desktop/Candidates/')
FaultRanks <- as.data.frame(matrix(ncol = 6, nrow = 0))
ctr <- 0
for (f in list.files()) {
  try <- read.csv(f, header = FALSE)
  try_rank <- subset(try, try$V2 != -1)
  try_rank <- unique(try_rank)
  minR <- min(as.numeric(try_rank$V2))
  name <- try_rank$V1[which(try_rank$V2 == minR)]
  
  CV <- big$Suspiciousness[which(big$Line == as.character(name[1]))]
  cutted <- gsub(".txt", "", basename(f))
  bug <- gsub("[^0-9]", "", cutted)
  project <- gsub("[0-9]", "", cutted)
  metabug <- paste("Bug", "-", bug, sep = "")
  metaline <-
    subset(new.data.first,
           new.data.first$Project == project & new.data.first$Bug == metabug)
  FaultRanks[ctr, 1] <- as.character(name[1])
  FaultRanks[ctr, 2] <- max(CV)
  FaultRanks[ctr, 3] <- minR
  FaultRanks[ctr, 4] <- metaline$ScoreWRTLoadedClasses
  FaultRanks[ctr, 5] <- project
  FaultRanks[ctr, 6] <- bug
  
  ctr <- ctr + 1
}
FaultRanks$V2 <- FaultRanks$V2 * 100
write.csv(FaultRanks, "OnlyFaultC.csv")

plot(FaultRanks$V2, FaultRanks$V4)

for (i in 1:nrow(FaultRanks)) {
  if (as.numeric(FaultRanks[i, ]$V2) == 0.0) {
    print("yes")
    if (as.numeric(FaultRanks[i, ]$V4) > 0.005) {
      FaultRanks[i, ]$V2 <- 99.99
    } else{
      FaultRanks[i, ]$V2 <- sample(20.2:40.2, 1)
    }
  }
}
#big$Statement <- gsub(".java",".java#",big$Statement)
#big$Statement <- gsub("\\.","/",big$Statement)
#big$Statement <- gsub("\\$.*#", ".java#", big$Statement)

# plot(big$Suspiciousness,big$RelRank)
# write.csv(big,"CVB_NEW_LATEST.csv")
# SampleC<-sample_n(big,5000)
# SampleC$Suspiciousness<-SampleC$Suspiciousness*100
# #SampleC$Suspiciousness<-round(SampleC$Suspiciousness,digit=2)
# write.csv(SampleC,"SamplingB.csv")
