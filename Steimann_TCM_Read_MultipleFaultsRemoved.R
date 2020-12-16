ranking_cost_exam <- function (arr,col) {  # cost to hit the first bug
  
  tmp_array<-arr[which(!((is.na(arr[,col]))|(is.nan(as.numeric(arr[,col]))))),]
  
  if(is.null(dim(tmp_array))){
    cost<-1
    hit_bug<-1
    cost2<-1
    cat("wierd!!","\n")
  }else{
    bugidx<-which(as.numeric(tmp_array[,'Y'])!=0)
    
    mean_score<-mean(as.numeric(tmp_array[bugidx,'Rank']))
    
    sort_array<-sort(as.numeric(tmp_array[,col]),decreasing = TRUE)
    
    max_score<-max(as.numeric(tmp_array[bugidx,col]))
    
    cost<-max(which(sort_array==as.numeric(max_score)))
    
    #cost<-length(which(sort_array==as.numeric(max_score)))
    hit_bug<-which(as.numeric(tmp_array[bugidx,col])==max_score)  # for multiple bugs
    
    
    num_of_stmt_higher_than_maxscore<-length(which(sort_array>as.numeric(max_score)))
    if(length(bugidx)==1){                  #single bug
      cost2<-num_of_stmt_higher_than_maxscore+(cost-num_of_stmt_higher_than_maxscore+1)/2
    }else{
      cost2<-num_of_stmt_higher_than_maxscore+(cost-num_of_stmt_higher_than_maxscore+1)/(length(hit_bug)+1)
    }
  }
  
  stmt2<-cost2
  stmt<-cost
  cost<-cost/length(hit_bug)
  cost<-cost/dim(arr)[1]
  cost2<-cost2/dim(arr)[1]
  lst<-list("cost"=stmt2,"stmt"=stmt,"stmt2"=stmt2)
  lst<-list("cost"=cost2,"mean"= mean_score,"rank"=stmt2)
  return(lst)
}



BaseMetrics <- function(arr,name){
  A<-arr[,'ef']
  B<-arr[,'nf']
  C<-arr[,'ep']
  D<-arr[,'np']
  N=A+B+C+D
  
  if(name=='CVA'){
   
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      p<-(a+b)/n
      
      minusp<-1.0-p
      standerr<-sqrt((minusp*p)/n)
      cv<-standerr/p
      
      S[i]<-cv*100.0
      
    }
  }
  if(name=='CVB'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b
      if(a>0){
        p<-a/n
        minusp<-1.0-p
        standerr<-sqrt((minusp*p)/n)
        cv<-standerr/p
        if(cv>0 & !is.na(cv)){
          S[i]<-cv*100.0
        }else{
          S[i]<-NA
        }
      }else{
        S[i]<-NA
      }
    }
  }
  if(name=='CVC'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+c
      if(a>0){
        p<-a/n
        minusp<-1.0-p
        standerr<-sqrt((minusp*p)/n)
        cv<-standerr/p
        if(cv>0 & !is.na(cv)){
          S[i]<-cv*100.0
        }else{
          S[i]<-NA
        }
      }else{
        S[i]<-NA
      }
    }
  }
  if(name=='FailTestNum'){
    
    S<-A+B
  }
  if(name=='TotalTestNum'){
    
    S<-N
  }
  if(name=='LKlosgen'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      S[i] <- sqrt(a/n)*max(a/(a+c)-(a+b)/n,a/(a+b)-(a+c)/n)   # Lucia klosgen, symmetric
    }  
  }
  
  
  if(name=='TarantulaC'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      S[i] <- (a/(a+b))/(c/(c+d)+a/(a+b))*max(a/(a+b),c/(d+c))
    }
    
  }
  
  
  if(name=='Tarantula'){
    S <- (A/(A+B))/(C/(C+D)+A/(A+B))
  }
  
  if(name=='Ochiai'){
    S <- A/((A+B)*(A+C))^0.5
  }
  
  if(name=='Ku2'){
    recall <- A/(A+B)
    prec   <- A/(A+C)
    S <-(recall+prec)/2
  }
  
  if(name=='RAinKu2'){
    W <- ((A+B)+(A+C))/(2*(A+B))
    RA <- A/(A+C)-(A+B)/N   
    S <-W*RA
  }
  if(name=='RDinKu2'){
    W <- ((A+B)+(A+C))/(2*(A+B))
    RD<-A/(A+C)-(B/(B+D))
    S <-W*RD
  }
  
 
  if(name=='RAinOchiai'){    
    RA<-A/(A+C)-(A+B)/N
    S <- sqrt((A+C)/(A+B))*RA 
  }
  if(name=='RDinOchiai'){    
    RD<-A/(A+C)-(B/(B+D))
    S <- sqrt((A+C)/(A+B))*RD 
  }
  if(name=='Klosgen'){
    S<-sqrt((A+C)/N)*(A/(A+C)-(A+B)/N)
  }
  if(name=='RAinF1'){
    RA <- A/(A+C)-(A+B)/N
    S<-(2*(A+C)/N/((A+C)/N+(A+B)/N))*RA
  }
  if(name=='RDinF1'){
    RD <- A/(A+C)-(B/(B+D))
    S<-(2*(A+C)/N/((A+C)/N+(A+B)/N))*RD
  }
  
  if(name=='PePfRD'){
    RD <- A/(A+C)-(B/(B+D))
    S<-((A+C)/N)/((A+B)/N)*RD
  }
  
  if(name=='F1'){
    S <- 2/(1/(A/(A+C))+1/(A/(A+B)))
  }
  
  if(name=='RA'){
    S <- A/(A+C)-(A+B)/N
  }
  
  if(name=='RD'){      # risk difference
    S <- A/(A+C)-(B/(B+D)) 
  }
  
  if(name=='RR'){
    S <- A/(A+B)-(A+C)/N
  }
  
  
  
  if(name=='RRinF1'){
    RR<-A/(A+B)-(A+C)/N
    S<-  2/(1/(A/(A+C))+1/RR)
  }
  
  if(name=='AmpleTarantula'){
    S <- (A/(A+B))/(C/(C+D)+A/(A+B))*abs(A/(A+B)-C/(C+D))
  }
  if(name=='RRTarantula'){
    RR<-A/(A+B)-(A+C)/N
    S<- RR*(A/(A+B))/(C/(C+D)+A/(A+B))
  }
  
  
  if(name=='AFTarantula'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      AF<-max(0,((a+b)/n-b/(b+d))/((a+b)/n))
      S[i] <- AF*(a/(a+b))/(c/(c+d)+a/(a+b))
    }
  }
  
  if(name=='AmpleGP13'){
    S <- abs(A/(A+B)-C/(C+D))*A*(1+1/(A+2*C)) 
  }
  if(name=='GP13'){
    S <- A*(1+1/(A+2*C))
    
  }
  if(name=='RRGP13'){
    S <- (A/(A+B)-(A+C)/N)*A*(1+1/(A+2*C))
  }  
  if(name=="DS2RA"){
    RA<-A/(A+C)-(A+B)/N
    S<-A*A/(B+C)*RA
  }
  
  
  if(name=='AFinO'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      AF<-max(0,((a+b)/n-b/(b+d))/((a+b)/n))
      S[i] <- sqrt(a/(a+c)*AF)
    }
  }
  if(name=='AF'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      AF<-max(0,((a+b)/n-b/(b+d))/((a+b)/n))
      S[i] <- AF
    }
  }
  
  if(name=='AFinF1'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      AF<-max(0,((a+b)/n-b/(b+d))/((a+b)/n))
      S[i] <- 2/(1/(a/(a+c))+1/AF)
    }
  }
  
  if(name=='AFinK'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      AF<-max(0,((a+b)/n-b/(b+d))/((a+b)/n))
      S[i] <- ((a+b)/n)/sqrt((a+c)/n)*(AF-(a+c)/n)
    }
  }
  
  if(name=='Fmeasure'){
    beta<-0.5
    #S<-(beta*beta+1)*(A/(A+C))*(A/(A+B))/(beta*beta*(A/(A+C))+A/(A+B))
    S<-(5/4*A)/(3/2*A+1/2*B+C)
  }
  if(name=='Mmeasure'){
    m<-22.466
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      S[i] <- (a+m*(a+b)/n)/(a+c+m)
    }
  }
  if(name=='Rcost'){    # when cr=0.5, it is like Ample
    cr<-0.342
    S<-cr*A/(A+B)-(1-cr)*C/(C+D)
  }
  if(name=='RcostRA'){    # when cr=0.5, it is like Ample
    cr<-0.342
    S<-(cr*A/(A+B)-(1-cr)*C/(C+D))*(A/(A+C)-(A+B)/N)
  }
  if(name=="RAinRcost"){
    cr<-0.342
    RA<-A/(A+C)-(A+B)/N
    S<-(A+C)/(A+B)*(RA+cr-1)
  }
  if(name=='CoTarantula'){
    S <- sqrt((A+C)/N)*(A/(A+B))/(C/(C+D)+A/(A+B))
  }
  if(name=='CovTarantula'){
    S <- ((A+C)/N)*(A/(A+B))/(C/(C+D)+A/(A+B))
  }
  if(name=='recall'){
    S <- A/(A+B)
  }
  
  if(name=='MmeasureRA'){    
    m<-22.466
    S<-(A+m*(A+B)/N)/(A+C+m)*(A/(A+C)-(A+B)/N)
  }
  if(name=="RAinMmeasure"){
    m<-22.466
    RA<-A/(A+C)-(A+B)/N
    S<-((A+C)*RA+0.5*m)/(A+C+m)
  }
  if(name=='GP13RA'){    
    S<-A*(1+1/(A+2*C))*(A/(A+C)-(A+B)/N)
  }
  if(name=='RAinF05'){    
    beta<-0.5
    s_F<-(A+C)/(A+B)
    S<-5/4*s_F/(0.25+s_F)*(A/(A+C)-(A+B)/N)
  }
  if(name=="RAinRcost2"){
    cr<-0.342
    RA<-A/(A+C)-(A+B)/N
    S<-cr*(A+C)/(A+B)*RA-(1-cr)*C/(C+D)
  }
  if(name=="Cost"){
    cr<-0.437
    S<-cr*A-(1-cr)*C
  }
  
  if(name=="RRprec"){
    RR<-A/(A+B)-(A+C)/N
    S<-RR*A/(A+C)
  }
  if(name=="recallPrec"){
    recall<-A/(A+B)
    S<-recall*A/(A+C)
  }
  if(name=="recallRD"){
    recall<-A/(A+B)
    RD<-A/(A+C)-(B/(B+D))
    S<-recall*RD
  }
  if(name=="RsuppRA"){
    RA<-A/(A+C)-(A+B)/N
    S<-sqrt(A/N)*RA
  }
  if(name=="suppRA"){
    RA<-A/(A+C)-(A+B)/N
    S<-A/N*RA
  }
  if(name=='Cost'){    # P(s|F) * # Jaccard
    S<-(A/(A+B))*(A/(A+B+C))
  }
  if(name=='Ample'){
    S<-abs(A/(A+B)-C/(C+D))
  }
  if(name=='AmpleinO'){
    S<-abs(A/(A+B)-C/(C+D))*(A/(A+C))
  }
  if(name=='AmpleinK'){
    S<-abs(A/(A+B)-C/(C+D))*(A/(A+C)-(A+B)/N)
  }
  if(name=='AmpleLK'){
    S<-arr[,'ef']
    for(i in 1:dim(arr)[1]){
      a<-arr[i,'ef']
      b<-arr[i,'nf']
      c<-arr[i,'ep']
      d<-arr[i,'np']
      n=a+b+c+d
      S[i] <- abs(a/(a+b)-c/(c+d))*max(a/(a+c)-(a+b)/n,a/(a+b)-(a+c)/n)
    }
  }
  

  
  return(S)
}

#####################################################
###   the above are codes for functions
######################################################


###################################################
#  In the following codes, we need to assure 
#  	1. the value in variable  "numbug" decides which directory the script will access.  (Important!!)
#	2. the value in variable "dir", which is the path of inputs (dtatset)  (Important!!)
#	3. the path in variable "output_cost_filekk", which is used to store unexpected situation.  For the dataset I have now, this variable is useless. (Not important!!)
#	4. the path in variable "output_cost_file1", which stores the cost for each version.(for debugging and not important)     
#	5. the path in variable "output_cost_file", which stores the cost results for each program.  (Important!!)
#
##################################################



#numbug='out1'     #single bug

#numbug='outM'     # contains ALL (2,4,8,16,32) multiple-bug versions
#num_vers=1000    # originally designed for random select 1000 from all the base. (useless now)

programs<-c('daikon','eventbus','jaxen','Jester1.37b (+tests)','Jexel','JParsec','org.apache.commons.codec 1.3 (+test, resolved abstr. tests)',
            'org.apache.commons.lang3','org.eclipse.draw2d 3.4.2','org.htmlparser 1.6')
#numbugs<-c('out1','out2','out4','out8','out16','out32')
numbugs<-c('Removed20','Removed40','Removed60','Removed80')
dir  <- 'D:/Steimann-FailRemove/'    # original coverage information file, the format is on website

# fin_cols <- c('program','Tarantula','TarantulaC',
#               'Klosgen','LKlosgen',
#               'RA','RD',
#               'recallPrec','RRprec','RRTarantula','recallRD',
#               'F1','RAinF1','RDinF1',
#               'recall','RR','PePfRD','Ku2','RAinKu2','RDinKu2',
#               'Ochiai','RAinOchiai','RDinOchiai','CVA','CVB','CVC','FailTestNum','TotalTestNum'
# )
# fin_array<-matrix(nrow = length(programs), ncol = length(fin_cols))
# colnames(fin_array) <- fin_cols
# 
# fin_array2<-matrix(nrow = length(programs), ncol = length(fin_cols))
# colnames(fin_array2) <- fin_cols


for(i in 1:length(programs)){
  for(numbug in numbugs){
    sub_dir<-paste(dir,programs[i],'/',numbug,'/',sep='')  
    
    vers<-list.files(path=sub_dir)
    
    #vers_id<-sample(1:length(vers),num_vers)
    
    num_vers<-length(vers)
    vers_id<-c(1:num_vers)        # use all data sets in the folder
    
    
    
    
    res_cols <- c('id','Ochiai','F1','Klosgen','Rank','MeanRank','MaxRank','filename','CVA','CVB','CVC','FailTestNum','TotalTestNum','NumBug')
    res_array<-matrix(nrow = num_vers, ncol = length(res_cols))  # store relative cost
    colnames(res_array) <- res_cols
    
    res_array2<-matrix(nrow = num_vers, ncol = length(res_cols))  # store absolute cost
    colnames(res_array2) <- res_cols
    
    
    
    for(j in 1:num_vers){
      tar_path<-paste(sub_dir,vers[vers_id[j]],sep='')
      tarfile<-read.csv(tar_path)  
      
      ver_cols <- c('method','Ochiai','F1','Klosgen','Rank',"RelRank",
                    'Y','CVA','CVB','CVC','FailTestNum','TotalTestNum')
      ver_array<-matrix(nrow = dim(tarfile)[1], ncol = length(ver_cols))
      colnames(ver_array) <- ver_cols
      
      ver_array[,'method']<-tarfile[,'method']
      ver_array[,'Y']<-tarfile[,'faulty']
      
      ver_array[,'Klosgen']<-BaseMetrics(tarfile,'Klosgen')
      
      ver_array[,'F1']<-BaseMetrics(tarfile,'F1')
      
      
      ver_array[,'Ochiai']<-BaseMetrics(tarfile,'Ochiai')
      
      
      ver_array[,'CVA']<-BaseMetrics(tarfile,'CVA')
      
      ver_array[,'CVB']<-BaseMetrics(tarfile,'CVB')
      ver_array[,'CVC']<-BaseMetrics(tarfile,'CVC')
      ver_array[,'FailTestNum']<-BaseMetrics(tarfile,'FailTestNum')
      ver_array[,'TotalTestNum']<-BaseMetrics(tarfile,'TotalTestNum')
      
      ver_array[,'Rank']<-rank(desc(ver_array[,'Ochiai']),ties.method = "average",na.last = TRUE)
      
      max_rank<-max(ver_array[,'Rank'])
      ver_array[,'RelRank']<-ver_array[,'Rank']/max_rank
      
      output_cost_file1<- paste('D:/Steimann-FailRemove/output_metricsRem/',numbug,'/','array',programs[i],'-',basename(tar_path),'_',numbug,'.csv', sep = '')
      write.csv(ver_array, output_cost_file1, row.names = FALSE) 
      
      res_array[j,'id']<-j
      
      res_array[j,'Ochiai']<-ranking_cost_exam(ver_array,'Ochiai')$cost
      res_array[j,'F1']<-ranking_cost_exam(ver_array,'F1')$cost
      res_array[j,'Klosgen']<-ranking_cost_exam(ver_array,'Klosgen')$cost
      res_array[j,'Rank']<-ranking_cost_exam(ver_array,'Ochiai')$rank
      res_array[j,'MeanRank']<-ranking_cost_exam(ver_array,'Ochiai')$mean
      res_array[j,'MaxRank']<-max_rank
      
      res_array[j,'CVA']<-as.numeric(ver_array[1,'CVA'])
      res_array[j,'CVB']<-mean(as.numeric(ver_array[,'CVB']),na.rm = TRUE)
      res_array[j,'CVC']<-mean(as.numeric(ver_array[,'CVC']),na.rm = TRUE)
      res_array[j,'FailTestNum']<-as.numeric(ver_array[1,'FailTestNum'])
      res_array[j,'TotalTestNum']<-as.numeric(ver_array[1,'TotalTestNum'])
      
      
      # if(is.infinite(res_array[j,'Ochiai'])){
      #   output_cost_filekk<- paste('D:/Steimann-FailRemove/output_considerRD/','__coverage_array',programs[i],j,'.csv', sep = '')
      #   write.csv(ver_array, output_cost_filekk, row.names = FALSE)
      #   cat(tar_path,'\n')
      # }
      # 
      
      
      if(j%%50==0){
        cat(i,'/',programs[i],'/',j,'/ # of versions:',num_vers,'\n')
      }
    }
    
    for(j in 1:num_vers){
      res_array[j,'filename']<-paste(sub_dir,vers[vers_id[j]],sep='')
    }
    res_array[,'NumBug']<-numbug
    output_cost_file1<- paste('D:/Steimann-FailRemove/output_considerRD/detailsRem/',numbug,'/','_',i,'_',programs[i],'_', numbug ,'_average.csv', sep = '')   #store the details easy for debugging
    write.csv(res_array, output_cost_file1, row.names = FALSE)
  }
}

