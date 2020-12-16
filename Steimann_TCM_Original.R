


ranking_cost_exam <-
  function (arr, col) {
    # cost to hit the first bug
    
    tmp_array <-
      arr[which(!((is.na(arr[, col])) | (is.nan(as.numeric(
        arr[, col]
      ))))),]
    
    if (is.null(dim(tmp_array))) {
      cost <- 1
      hit_bug <- 1
      cost2 <- 1
      cat("wierd!!", "\n")
    } else{
      bugidx <- which(as.numeric(tmp_array[, 'Y']) != 0)
      max_score <- max(as.numeric(tmp_array[bugidx, col]))
      sort_array <-
        sort(as.numeric(tmp_array[, col]), decreasing = TRUE)
      cost <- max(which(sort_array == as.numeric(max_score)))
      #cost<-length(which(sort_array==as.numeric(max_score)))
      hit_bug <-
        which(as.numeric(tmp_array[bugidx, col]) == max_score)  # for multiple bugs
      
      
      num_of_stmt_higher_than_maxscore <-
        length(which(sort_array > as.numeric(max_score)))
      if (length(bugidx) == 1) {
        #single bug
        cost2 <-
          num_of_stmt_higher_than_maxscore + (cost - num_of_stmt_higher_than_maxscore +
                                                1) / 2
      } else{
        cost2 <-
          num_of_stmt_higher_than_maxscore + (cost - num_of_stmt_higher_than_maxscore +
                                                1) / (length(hit_bug) + 1)
      }
      
      
    }
    
    stmt2 <- cost2
    stmt <- cost
    cost <- cost / length(hit_bug)
    cost <- cost / dim(arr)[1]
    cost2 <- cost2 / dim(arr)[1]
    #lst<-list("cost"=stmt2,"stmt"=stmt,"stmt2"=stmt2)
    lst <- list("cost" = cost2,
                "stmt" = stmt,
                "stmt2" = stmt2)
    return(lst)
  }

Xtab <- function (arr) {
  #filename_common_part <- paste(dir_base_data, statement, sep = '')
  #statement_dt_all <- read.csv( paste(filename_common_part, '_baah_samp.csv', sep = '') )
  #dt_baah_samp<-statement_dt_all[testcaseset,]
  
  S <- arr[, 'ef']
  
  
  
  for (i in 1:dim(arr)[1]) {
    A <- arr[i, 'ef']
    B <- arr[i, 'nf']
    C <- arr[i, 'ep']
    D <- arr[i, 'np']
    N = A + B + C + D
    
    Ecf <- (A + C) * (A + B) / N
    Ecs <- (A + C) * (C + D) / N
    Euf <- (B + D) * (A + B) / N
    Eus <- (B + D) * (C + D) / N
    chi <-
      ((A - Ecf) ^ 2) / Ecf + ((C - Ecs) ^ 2) / Ecs + ((B - Euf) ^ 2) / Euf +
      ((D - Eus) ^ 2) / Eus
    L = (A / (A + B)) / (C / (C + D))
    if (is.nan(L)) {
      S[i] <- NA
      next
    }
    if (L < 1) {
      S[i] = (-1) * chi / N
    } else if (L > 1) {
      S[i] = chi / N
    } else{
      S[i] = 0
    }
    
  }
  
  return (S)
}


BaseMetrics <- function(arr, name) {
  A <- arr[, 'ef']
  B <- arr[, 'nf']
  C <- arr[, 'ep']
  D <- arr[, 'np']
  N = A + B + C + D
  
  if (name == 'CVA') {
    # for(i in 1:dim(arr)[1]){
    #   a<-arr[i,'ef']
    #   b<-arr[i,'nf']
    #   c<-arr[i,'ep']
    #   d<-arr[i,'np']
    #   n=a+b+c+d
    #   S[i] <- (a+m*(a+b)/n)/(a+c+m)
    # }
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      p <- (a + b) / n
      
      minusp <- 1.0 - p
      standerr <- sqrt((minusp * p) / n)
      cv <- standerr / p
      
      S[i] <- cv * 100.0
      
    }
  }
  if (name == 'CVB') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b
      p <- a / n
      minusp <- 1.0 - p
      standerr <- sqrt((minusp * p) / n)
      cv <- standerr / p
      if (cv > 0 & !is.na(cv)) {
        S[i] <- cv * 100.0
      } else{
        S[i] <- NA
      }
      
    }
  }
  if (name == 'CVC') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + c
      p <- a / n
      minusp <- 1.0 - p
      standerr <- sqrt((minusp * p) / n)
      cv <- standerr / p
      if (cv > 0 & !is.na(cv)) {
        S[i] <- cv * 100.0
      } else{
        S[i] <- NA
      }
      
    }
  }
  if (name == 'FailTestNum') {
    S <- A + B
  }
  if (name == 'TotalTestNum') {
    S <- N
  }
  if (name == 'LKlosgen') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      S[i] <-
        sqrt(a / n) * max(a / (a + c) - (a + b) / n, a / (a + b) - (a + c) / n)   # Lucia klosgen, symmetric
    }
  }
  
  
  if (name == 'TarantulaC') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      S[i] <-
        (a / (a + b)) / (c / (c + d) + a / (a + b)) * max(a / (a +
                                                                 b), c / (d + c))
    }
    
  }
  
  
  if (name == 'Tarantula') {
    S <- (A / (A + B)) / (C / (C + D) + A / (A + B))
  }
  
  if (name == 'Ochiai') {
    S <- A / ((A + B) * (A + C)) ^ 0.5
  }
  
  if (name == 'Ku2') {
    recall <- A / (A + B)
    prec   <- A / (A + C)
    S <- (recall + prec) / 2
  }
  
  if (name == 'RAinKu2') {
    W <- ((A + B) + (A + C)) / (2 * (A + B))
    RA <- A / (A + C) - (A + B) / N
    S <- W * RA
  }
  if (name == 'RDinKu2') {
    W <- ((A + B) + (A + C)) / (2 * (A + B))
    RD <- A / (A + C) - (B / (B + D))
    S <- W * RD
  }
  
  #   if(name=='RAinMasri'){
  #     recall <- A/(A+B)
  #     RA<-A/(A+C)-(A+B)/N
  #     S <-(recall+prec)/2
  #   }
  #   if(name=='RDinMasri'){
  #     recall <- A/(A+B)
  #     RD<-A/(A+C)-((B/(B+D)))
  #     S <-(recall+prec)/2
  #   }
  
  if (name == 'RAinOchiai') {
    RA <- A / (A + C) - (A + B) / N
    S <- sqrt((A + C) / (A + B)) * RA
  }
  if (name == 'RDinOchiai') {
    RD <- A / (A + C) - (B / (B + D))
    S <- sqrt((A + C) / (A + B)) * RD
  }
  if (name == 'Klosgen') {
    S <- sqrt((A + C) / N) * (A / (A + C) - (A + B) / N)
  }
  if (name == 'RAinF1') {
    RA <- A / (A + C) - (A + B) / N
    S <- (2 * (A + C) / N / ((A + C) / N + (A + B) / N)) * RA
  }
  if (name == 'RDinF1') {
    RD <- A / (A + C) - (B / (B + D))
    S <- (2 * (A + C) / N / ((A + C) / N + (A + B) / N)) * RD
  }
  
  if (name == 'PePfRD') {
    RD <- A / (A + C) - (B / (B + D))
    S <- ((A + C) / N) / ((A + B) / N) * RD
  }
  
  if (name == 'F1') {
    S <- 2 / (1 / (A / (A + C)) + 1 / (A / (A + B)))
  }
  
  if (name == 'RA') {
    S <- A / (A + C) - (A + B) / N
  }
  
  if (name == 'RD') {
    # risk difference
    S <- A / (A + C) - (B / (B + D))
  }
  
  if (name == 'RR') {
    S <- A / (A + B) - (A + C) / N
  }
  
  
  
  if (name == 'RRinF1') {
    RR <- A / (A + B) - (A + C) / N
    S <-  2 / (1 / (A / (A + C)) + 1 / RR)
  }
  
  if (name == 'AmpleTarantula') {
    S <-
      (A / (A + B)) / (C / (C + D) + A / (A + B)) * abs(A / (A + B) - C /
                                                          (C + D))
  }
  if (name == 'RRTarantula') {
    RR <- A / (A + B) - (A + C) / N
    S <- RR * (A / (A + B)) / (C / (C + D) + A / (A + B))
  }
  
  
  if (name == 'AFTarantula') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      AF <- max(0, ((a + b) / n - b / (b + d)) / ((a + b) / n))
      S[i] <- AF * (a / (a + b)) / (c / (c + d) + a / (a + b))
    }
  }
  
  if (name == 'AmpleGP13') {
    S <- abs(A / (A + B) - C / (C + D)) * A * (1 + 1 / (A + 2 * C))
  }
  if (name == 'GP13') {
    S <- A * (1 + 1 / (A + 2 * C))
    
  }
  if (name == 'RRGP13') {
    S <- (A / (A + B) - (A + C) / N) * A * (1 + 1 / (A + 2 * C))
  }
  if (name == "DS2RA") {
    RA <- A / (A + C) - (A + B) / N
    S <- A * A / (B + C) * RA
  }
  
  
  if (name == 'AFinO') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      AF <- max(0, ((a + b) / n - b / (b + d)) / ((a + b) / n))
      S[i] <- sqrt(a / (a + c) * AF)
    }
  }
  if (name == 'AF') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      AF <- max(0, ((a + b) / n - b / (b + d)) / ((a + b) / n))
      S[i] <- AF
    }
  }
  
  if (name == 'AFinF1') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      AF <- max(0, ((a + b) / n - b / (b + d)) / ((a + b) / n))
      S[i] <- 2 / (1 / (a / (a + c)) + 1 / AF)
    }
  }
  
  if (name == 'AFinK') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      AF <- max(0, ((a + b) / n - b / (b + d)) / ((a + b) / n))
      S[i] <- ((a + b) / n) / sqrt((a + c) / n) * (AF - (a + c) / n)
    }
  }
  
  if (name == 'Fmeasure') {
    beta <- 0.5
    #S<-(beta*beta+1)*(A/(A+C))*(A/(A+B))/(beta*beta*(A/(A+C))+A/(A+B))
    S <- (5 / 4 * A) / (3 / 2 * A + 1 / 2 * B + C)
  }
  if (name == 'Mmeasure') {
    m <- 22.466
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      S[i] <- (a + m * (a + b) / n) / (a + c + m)
    }
  }
  if (name == 'Rcost') {
    # when cr=0.5, it is like Ample
    cr <- 0.342
    S <- cr * A / (A + B) - (1 - cr) * C / (C + D)
  }
  if (name == 'RcostRA') {
    # when cr=0.5, it is like Ample
    cr <- 0.342
    S <-
      (cr * A / (A + B) - (1 - cr) * C / (C + D)) * (A / (A + C) - (A +
                                                                      B) / N)
  }
  if (name == "RAinRcost") {
    cr <- 0.342
    RA <- A / (A + C) - (A + B) / N
    S <- (A + C) / (A + B) * (RA + cr - 1)
  }
  if (name == 'CoTarantula') {
    S <- sqrt((A + C) / N) * (A / (A + B)) / (C / (C + D) + A / (A + B))
  }
  if (name == 'CovTarantula') {
    S <- ((A + C) / N) * (A / (A + B)) / (C / (C + D) + A / (A + B))
  }
  if (name == 'recall') {
    S <- A / (A + B)
  }
  
  if (name == 'MmeasureRA') {
    m <- 22.466
    S <-
      (A + m * (A + B) / N) / (A + C + m) * (A / (A + C) - (A + B) /
                                               N)
  }
  if (name == "RAinMmeasure") {
    m <- 22.466
    RA <- A / (A + C) - (A + B) / N
    S <- ((A + C) * RA + 0.5 * m) / (A + C + m)
  }
  if (name == 'GP13RA') {
    S <- A * (1 + 1 / (A + 2 * C)) * (A / (A + C) - (A + B) / N)
  }
  if (name == 'RAinF05') {
    beta <- 0.5
    s_F <- (A + C) / (A + B)
    S <- 5 / 4 * s_F / (0.25 + s_F) * (A / (A + C) - (A + B) / N)
  }
  if (name == "RAinRcost2") {
    cr <- 0.342
    RA <- A / (A + C) - (A + B) / N
    S <- cr * (A + C) / (A + B) * RA - (1 - cr) * C / (C + D)
  }
  if (name == "Cost") {
    cr <- 0.437
    S <- cr * A - (1 - cr) * C
  }
  
  if (name == "RRprec") {
    RR <- A / (A + B) - (A + C) / N
    S <- RR * A / (A + C)
  }
  if (name == "recallPrec") {
    recall <- A / (A + B)
    S <- recall * A / (A + C)
  }
  if (name == "recallRD") {
    recall <- A / (A + B)
    RD <- A / (A + C) - (B / (B + D))
    S <- recall * RD
  }
  if (name == "RsuppRA") {
    RA <- A / (A + C) - (A + B) / N
    S <- sqrt(A / N) * RA
  }
  if (name == "suppRA") {
    RA <- A / (A + C) - (A + B) / N
    S <- A / N * RA
  }
  if (name == 'Cost') {
    # P(s|F) * # Jaccard
    S <- (A / (A + B)) * (A / (A + B + C))
  }
  if (name == 'Ample') {
    S <- abs(A / (A + B) - C / (C + D))
  }
  if (name == 'AmpleinO') {
    S <- abs(A / (A + B) - C / (C + D)) * (A / (A + C))
  }
  if (name == 'AmpleinK') {
    S <- abs(A / (A + B) - C / (C + D)) * (A / (A + C) - (A + B) / N)
  }
  if (name == 'AmpleLK') {
    S <- arr[, 'ef']
    for (i in 1:dim(arr)[1]) {
      a <- arr[i, 'ef']
      b <- arr[i, 'nf']
      c <- arr[i, 'ep']
      d <- arr[i, 'np']
      n = a + b + c + d
      S[i] <-
        abs(a / (a + b) - c / (c + d)) * max(a / (a + c) - (a + b) / n, a / (a +
                                                                               b) - (a + c) / n)
    }
  }
  
  #   if(name=='SuppTarantula'){
  #     S <- (A/N)*(A/(A+B))/(C/(C+D)+A/(A+B))
  #  }
  #   if(name=='RRRA'){
  #
  #     S<-sqrt((A/(A+C)-(A+B)/N)*(A/(A+B)-(A+C)/N))
  #   }
  #   if(name=='SKPrec'){
  #     S<-arr[,'ef']
  #     for(i in 1:dim(arr)[1]){
  #       a<-arr[i,'ef']
  #       b<-arr[i,'nf']
  #       c<-arr[i,'ep']
  #       d<-arr[i,'np']
  #       n=a+b+c+d
  #       S[i] <- sqrt(a/n)*max(a/(a+c),a/(a+b))   #
  #     }
  #
  #   }
  
  
  #   if(name=='AV'){
  #     S<-arr[,'ef']
  #     for(i in 1:dim(arr)[1]){
  #       a<-arr[i,'ef']
  #       b<-arr[i,'nf']
  #       c<-arr[i,'ep']
  #       d<-arr[i,'np']
  #       n=a+b+c+d
  #       S[i] <- max(a/(a+c)-(a+b)/n,a/(a+b)-(a+c)/n)   #
  #     }
  #
  #   }
  
  
  #   if(name=='sFRA'){
  #     S <- sqrt(A/(A+B)*(A/(A+C)-(A+B)/N))   #  klosgen,
  #
  #   }
  
  
  
  #if(name=='AFRA'){
  #  S<-arr[,'ef']
  #  for(i in 1:dim(arr)[1]){
  #    a<-arr[i,'ef']
  #    b<-arr[i,'nf']
  #    c<-arr[i,'ep']
  #    d<-arr[i,'np']
  #    n=a+b+c+d
  #    S[i] <- sqrt(max(0,((a+b)/n-b/(b+d))/((a+b)/n))*(a/(a+c)-(a+b)/n))   #  klosgen, symmetric
  #  }
  #
  #}
  
  #if(name=='AFRAL'){
  #  S<-arr[,'ef']
  #  for(i in 1:dim(arr)[1]){
  #    a<-arr[i,'ef']
  #    b<-arr[i,'nf']
  #    c<-arr[i,'ep']
  #    d<-arr[i,'np']
  #    n=a+b+c+d
  #    S[i] <- sqrt(max(0,((a+b)/n-b/(b+d))/((a+b)/n))*max(a/(a+c)-(a+b)/n,a/(a+b)-(a+c)/n))   #  , symmetric
  #  }
  #
  #}
  
  
  #   if(name=='sFRAL'){
  #     S<-arr[,'ef']
  #     for(i in 1:dim(arr)[1]){
  #       a<-arr[i,'ef']
  #       b<-arr[i,'nf']
  #       c<-arr[i,'ep']
  #       d<-arr[i,'np']
  #       n=a+b+c+d
  #       S[i] <- sqrt(a/(a+b)*max(a/(a+c)-(a+b)/n,a/(a+b)-(a+c)/n))   #  klosgen, symmetric
  #     }
  #
  #   }
  #   if(name=="RsfRA"){   # root square of P(s|F) * RA
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-sqrt((A+C)/(A+B))*RA
  #   }
  #   if(name=="sfRA"){   # RR
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-(A+C)/(A+B)*RA
  #   }
  #   if(name=="RpsfRA"){
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-sqrt(A/(A+B))*RA
  #   }
  #   if(name=="PsFRA"){     ## recall * RA
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-RA*A/(A+B)
  #   }
  #   if(name=="Ku"){
  #     S<-A/(B+C)
  #   }
  #   if(name=="KuRA"){
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-A/(B+C)*RA
  #   }
  #   if(name=="suppRA"){   RR
  #
  #     RA<-A/(A+C)-(A+B)/N
  #     S<-(A+C)/(B+C)*RA
  #   }
  
  #   if(name=='RAinO'){
  #     S<-sqrt(A/(A+B)*(A/(A+C)-(A+B)/N))
  #
  #   }
  #   if(name=='RRinO'){
  #     RR<-A/(A+B)-(A+C)/N
  #     S <- sqrt(RR*A/(A+C))
  #   }
  
  
  
  #if(name=='WRRinO'){
  #  RR<-A/(A+B)-(A+C)/N
  #  S <- sqrt((A+C)/N)*sqrt(RR*A/(A+C))
  #}
  
  #   if(name=='PS2'){
  #
  #     S <- -4*(B+0.1)*(C+0.5)/((N+0.6)*(N+0.6))
  #   }
  #   if(name=='RAinPS2'){
  #     RA<-RA <- A/(A+C)-(A+B)/N
  #     S <- -4*((A+B)/N)*(1-A/(A+B))*((A+C)/N)*(1-RA)-2/N*((A+B)/N)*(1-A/(A+B))-0.4/N*A/(A+C)*(1-RA)
  #   }
  
  
  #if(name=='AFRA'){
  #  S<-arr[,'ef']
  #  for(i in 1:dim(arr)[1]){
  #    a<-arr[i,'ef']
  #    b<-arr[i,'nf']
  #    c<-arr[i,'ep']
  #    d<-arr[i,'np']
  #    n=a+b+c+d
  #    S[i] <- sqrt(max(0,((a+b)/n-b/(b+d))/((a+b)/n))*(a/(a+c)-(a+b)/n))   #  klosgen, symmetric
  #  }
  #
  #}
  
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

numbug = 'outM'     # contains ALL (2,4,8,16,32) multiple-bug versions
#num_vers=1000    # originally designed for random select 1000 from all the base. (useless now)

programs <-
  c(
    'daikon',
    'eventbus',
    'jaxen',
    'Jester1.37b (+tests)',
    'Jexel',
    'JParsec',
    'org.apache.commons.codec 1.3 (+test, resolved abstr. tests)',
    'org.apache.commons.lang3',
    'org.eclipse.draw2d 3.4.2',
    'org.htmlparser 1.6'
  )

dir  <-
  'C:/Users/yigit/Desktop/TCM/src/'    # original coverage information file, the format is on website

fin_cols <- c(
  'program',
  'Tarantula',
  'TarantulaC',
  'Klosgen',
  'LKlosgen',
  'RA',
  'RD',
  'recallPrec',
  'RRprec',
  'RRTarantula',
  'recallRD',
  'F1',
  'RAinF1',
  'RDinF1',
  'recall',
  'RR',
  'PePfRD',
  'Ku2',
  'RAinKu2',
  'RDinKu2',
  'Ochiai',
  'RAinOchiai',
  'RDinOchiai',
  'CVA',
  'CVB',
  'CVC',
  'FailTestNum',
  'TotalTestNum'
)
fin_array <-
  matrix(nrow = length(programs), ncol = length(fin_cols))
colnames(fin_array) <- fin_cols

fin_array2 <-
  matrix(nrow = length(programs), ncol = length(fin_cols))
colnames(fin_array2) <- fin_cols


for (i in 1:length(programs)) {
  sub_dir <- paste(dir, programs[i], '/', numbug, '/', sep = '')
  
  vers <- list.files(path = sub_dir)
  
  #vers_id<-sample(1:length(vers),num_vers)
  
  num_vers <- length(vers)
  vers_id <- c(1:num_vers)        # use all data sets in the folder
  
  
  
  
  res_cols <-
    c(
      'id',
      'Xtab',
      'Tarantula',
      'TarantulaC',
      'Ochiai',
      'F1',
      'Klosgen',
      'LKlosgen',
      'PePfRD',
      'recall',
      'RDinOchiai',
      'RRprec',
      'RRTarantula',
      'recallPrec',
      'RAinF1',
      'RA',
      'RD',
      'recallRD',
      'RDinF1',
      'Ku2',
      'RAinKu2',
      'RDinKu2',
      'RR',
      'AFinK',
      'RAinOchiai',
      'filename',
      'CVA',
      'CVB',
      'CVC',
      'FailTestNum',
      'TotalTestNum'
    )
  res_array <-
    matrix(nrow = num_vers, ncol = length(res_cols))  # store relative cost
  colnames(res_array) <- res_cols
  
  res_array2 <-
    matrix(nrow = num_vers, ncol = length(res_cols))  # store absolute cost
  colnames(res_array2) <- res_cols
  
  
  
  for (j in 1:num_vers) {
    tar_path <- paste(sub_dir, vers[vers_id[j]], sep = '')
    tarfile <- read.csv(tar_path)
    
    ver_cols <-
      c(
        'method',
        'Xtab',
        'Tarantula',
        'TarantulaC',
        'Ochiai',
        'F1',
        'Klosgen',
        'LKlosgen',
        'PePfRD',
        'recall',
        'RDinOchiai',
        'RRprec',
        'RRTarantula',
        'recallPrec',
        'RAinF1',
        'RA',
        'RD',
        'recallRD',
        'RDinF1',
        'RR',
        'AFinK',
        'RAinOchiai',
        'Ku2',
        'RAinKu2',
        'RDinKu2',
        'Y',
        'CVA',
        'CVB',
        'CVC',
        'FailTestNum',
        'TotalTestNum'
      )
    ver_array <-
      matrix(nrow = dim(tarfile)[1], ncol = length(ver_cols))
    colnames(ver_array) <- ver_cols
    
    ver_array[, 'method'] <- tarfile[, 'method']
    ver_array[, 'Y'] <- tarfile[, 'faulty']
    
    ver_array[, 'LKlosgen'] <- BaseMetrics(tarfile, 'LKlosgen')
    
    
    ver_array[, 'TarantulaC'] <- BaseMetrics(tarfile, 'TarantulaC')
    
    ver_array[, 'Klosgen'] <- BaseMetrics(tarfile, 'Klosgen')
    
    ver_array[, 'recall'] <- BaseMetrics(tarfile, 'recall')
    ver_array[, 'RR'] <- BaseMetrics(tarfile, 'RR')
    ver_array[, 'PePfRD'] <- BaseMetrics(tarfile, 'PePfRD')
    
    ver_array[, 'Tarantula'] <- BaseMetrics(tarfile, 'Tarantula')
    ver_array[, 'RA'] <- BaseMetrics(tarfile, 'RA')
    ver_array[, 'RD'] <- BaseMetrics(tarfile, 'RD')
    
    ver_array[, 'F1'] <- BaseMetrics(tarfile, 'F1')
    ver_array[, 'RAinF1'] <- BaseMetrics(tarfile, 'RAinF1')
    ver_array[, 'RDinF1'] <- BaseMetrics(tarfile, 'RDinF1')
    
    ver_array[, 'Ochiai'] <- BaseMetrics(tarfile, 'Ochiai')
    ver_array[, 'RAinOchiai'] <- BaseMetrics(tarfile, 'RAinOchiai')
    ver_array[, 'RDinOchiai'] <- BaseMetrics(tarfile, 'RDinOchiai')
    
    ver_array[, 'Ku2'] <- BaseMetrics(tarfile, 'Ku2')
    ver_array[, 'RAinKu2'] <- BaseMetrics(tarfile, 'RAinKu2')
    ver_array[, 'RDinKu2'] <- BaseMetrics(tarfile, 'RDinKu2')
    
    ver_array[, 'recallPrec'] <- BaseMetrics(tarfile, 'recallPrec')
    ver_array[, 'RRprec'] <-
      BaseMetrics(tarfile, 'RRprec')       # Enhanced Tarantula
    ver_array[, 'RRTarantula'] <-
      BaseMetrics(tarfile, 'RRTarantula')
    ver_array[, 'recallRD'] <- BaseMetrics(tarfile, 'recallRD')
    
    ver_array[, 'CVA'] <- BaseMetrics(tarfile, 'CVA')
    
    ver_array[, 'CVB'] <- BaseMetrics(tarfile, 'CVB')
    ver_array[, 'CVC'] <- BaseMetrics(tarfile, 'CVC')
    ver_array[, 'FailTestNum'] <-
      BaseMetrics(tarfile, 'FailTestNum')
    ver_array[, 'TotalTestNum'] <-
      BaseMetrics(tarfile, 'TotalTestNum')
    #ver_array[,'Xtab']<-Xtab(tarfile)
    
    #ver_array[,'sFRA']<-BaseMetrics(tarfile,'sFRA')
    #ver_array[,'RAinMmeasure']<-BaseMetrics(tarfile,'RAinMmeasure')
    #ver_array[,'AFRAL']<-BaseMetrics(tarfile,'AFRAL')
    #ver_array[,'RpsfRA']<-BaseMetrics(tarfile,'RpsfRA')
    #ver_array[,'Cost']<-BaseMetrics(tarfile,'Cost')
    #ver_array[,'Ample']<-BaseMetrics(tarfile,'Ample')
    
    #ver_array[,'AmpleinK']<-BaseMetrics(tarfile,'AmpleinK')
    #ver_array[,'AmpleLK']<-BaseMetrics(tarfile,'AmpleLK')
    #ver_array[,'PsFRA']<-BaseMetrics(tarfile,'PsFRA')
    #ver_array[,'CovTarantula']<-BaseMetrics(tarfile,'CovTarantula')
    #ver_array[,'SuppTarantula']<-BaseMetrics(tarfile,'SuppTarantula')
    #ver_array[,'AFinO']<-BaseMetrics(tarfile,'AFinO')
    #ver_array[,'AFTarantula']<-BaseMetrics(tarfile,'AFTarantula')
    #ver_array[,'AF']<-BaseMetrics(tarfile,'AF')
    #ver_array[,'RcostRA']<-BaseMetrics(tarfile,'RcostRA')
    #ver_array[,'CoTarantula']<-BaseMetrics(tarfile,'CoTarantula')
    #ver_array[,'RAinF05']<-BaseMetrics(tarfile,'RAinF05')
    
    #ver_array[,'RRinF1']<-BaseMetrics(tarfile,'RRinF1')
    #ver_array[,'RAinRcost']<-BaseMetrics(tarfile,'RAinRcost')
    #ver_array[,'sfRA']<-BaseMetrics(tarfile,'sfRA')
    
    #ver_array[,'AFinK']<-BaseMetrics(tarfile,'AFinK')
    
    #ver_array[,'AFinF1']<-BaseMetrics(tarfile,'AFinF1')
    #ver_array[,'Mmeasure']<-BaseMetrics(tarfile,'Mmeasure')
    #ver_array[,'Fmeasure']<-BaseMetrics(tarfile,'Fmeasure')
    #ver_array[,'Rcost']<-BaseMetrics(tarfile,'Rcost')
    
    output_cost_file1 <-
      paste(
        'C:/Users/yigit/Desktop/TCM/output_metrics/',
        '__array',
        programs[i],
        '_',
        basename(tar_path),
        '_',
        numbug,
        '.csv',
        sep = ''
      )
    write.csv(ver_array, output_cost_file1, row.names = FALSE)
    
    res_array[j, 'id'] <- j
    #res_array[j,'Xtab']<-ranking_cost_exam(ver_array,'Xtab')$cost
    res_array[j, 'Tarantula'] <-
      ranking_cost_exam(ver_array, 'Tarantula')$cost
    res_array[j, 'TarantulaC'] <-
      ranking_cost_exam(ver_array, 'TarantulaC')$cost
    res_array[j, 'Ochiai'] <-
      ranking_cost_exam(ver_array, 'Ochiai')$cost
    res_array[j, 'F1'] <- ranking_cost_exam(ver_array, 'F1')$cost
    res_array[j, 'Klosgen'] <-
      ranking_cost_exam(ver_array, 'Klosgen')$cost
    res_array[j, 'RRprec'] <-
      ranking_cost_exam(ver_array, 'RRprec')$cost
    res_array[j, 'LKlosgen'] <-
      ranking_cost_exam(ver_array, 'LKlosgen')$cost
    #res_array[j,'sFRA']<-ranking_cost_exam(ver_array,'sFRA')$cost
    #res_array[j,'RAinMmeasure']<-ranking_cost_exam(ver_array,'RAinMmeasure')$cost
    #res_array[j,'AFRAL']<-ranking_cost_exam(ver_array,'AFRAL')$cost
    #res_array[j,'RpsfRA']<-ranking_cost_exam(ver_array,'RpsfRA')$cost
    #res_array[j,'Cost']<-ranking_cost_exam(ver_array,'Cost')$cost
    #res_array[j,'Ample']<-ranking_cost_exam(ver_array,'Ample')$cost
    res_array[j, 'PePfRD'] <-
      ranking_cost_exam(ver_array, 'PePfRD')$cost
    #res_array[j,'AmpleinK']<-ranking_cost_exam(ver_array,'AmpleinK')$cost
    #res_array[j,'AmpleLK']<-ranking_cost_exam(ver_array,'AmpleLK')$cost
    #res_array[j,'PsFRA']<-ranking_cost_exam(ver_array,'PsFRA')$cost
    res_array[j, 'recall'] <-
      ranking_cost_exam(ver_array, 'recall')$cost
    #res_array[j,'CovTarantula']<-ranking_cost_exam(ver_array,'CovTarantula')$cost
    #res_array[j,'SuppTarantula']<-ranking_cost_exam(ver_array,'SuppTarantula')$cost
    #res_array[j,'AFinO']<-ranking_cost_exam(ver_array,'AFinO')$cost
    #res_array[j,'AFTarantula']<-ranking_cost_exam(ver_array,'AFTarantula')$cost
    #res_array[j,'AF']<-ranking_cost_exam(ver_array,'AF')$cost
    res_array[j, 'RDinOchiai'] <-
      ranking_cost_exam(ver_array, 'RDinOchiai')$cost
    #res_array[j,'RcostRA']<-ranking_cost_exam(ver_array,'RcostRA')$cost
    #res_array[j,'CoTarantula']<-ranking_cost_exam(ver_array,'CoTarantula')$cost
    #res_array[j,'RAinF05']<-ranking_cost_exam(ver_array,'RAinF05')$cost
    res_array[j, 'RRTarantula'] <-
      ranking_cost_exam(ver_array, 'RRTarantula')$cost
    #res_array[j,'RRinF1']<-ranking_cost_exam(ver_array,'RRinF1')$cost
    res_array[j, 'RAinF1'] <-
      ranking_cost_exam(ver_array, 'RAinF1')$cost
    res_array[j, 'RA'] <- ranking_cost_exam(ver_array, 'RA')$cost
    res_array[j, 'recallPrec'] <-
      ranking_cost_exam(ver_array, 'recallPrec')$cost
    res_array[j, 'RD'] <- ranking_cost_exam(ver_array, 'RD')$cost
    res_array[j, 'recallRD'] <-
      ranking_cost_exam(ver_array, 'recallRD')$cost
    res_array[j, 'RDinF1'] <-
      ranking_cost_exam(ver_array, 'RDinF1')$cost
    #res_array[j,'RAinRcost']<-ranking_cost_exam(ver_array,'RAinRcost')$cost
    #res_array[j,'sfRA']<-ranking_cost_exam(ver_array,'sfRA')$cost
    res_array[j, 'RR'] <- ranking_cost_exam(ver_array, 'RR')$cost
    #res_array[j,'AFinK']<-ranking_cost_exam(ver_array,'AFinK')$cost
    res_array[j, 'RAinOchiai'] <-
      ranking_cost_exam(ver_array, 'RAinOchiai')$cost
    #res_array[j,'AFinF1']<-ranking_cost_exam(ver_array,'AFinF1')$cost
    #res_array[j,'Mmeasure']<-ranking_cost_exam(ver_array,'Mmeasure')$cost
    #res_array[j,'Fmeasure']<-ranking_cost_exam(ver_array,'Fmeasure')$cost
    #res_array[j,'Rcost']<-ranking_cost_exam(ver_array,'Rcost')$cost
    res_array[j, 'Ku2'] <- ranking_cost_exam(ver_array, 'Ku2')$cost
    res_array[j, 'RAinKu2'] <-
      ranking_cost_exam(ver_array, 'RAinKu2')$cost
    res_array[j, 'RDinKu2'] <-
      ranking_cost_exam(ver_array, 'RDinKu2')$cost
    res_array[j, 'CVA'] <- as.numeric(ver_array[1, 'CVA'])
    res_array[j, 'CVB'] <-
      mean(as.numeric(ver_array[, 'CVB']), na.rm = TRUE)
    res_array[j, 'CVC'] <-
      mean(as.numeric(ver_array[, 'CVC']), na.rm = TRUE)
    res_array[j, 'FailTestNum'] <-
      as.numeric(ver_array[1, 'FailTestNum'])
    res_array[j, 'TotalTestNum'] <-
      as.numeric(ver_array[1, 'TotalTestNum'])
    
    if (is.infinite(res_array[j, 'Ochiai'])) {
      output_cost_filekk <-
        paste(
          'C:/Users/yigit/Desktop/TCM/output_considerRD/',
          '__coverage_array',
          programs[i],
          j,
          '.csv',
          sep = ''
        )
      write.csv(ver_array, output_cost_filekk, row.names = FALSE)
      cat(tar_path, '\n')
    }
    
    
    
    if (j %% 100 == 0) {
      cat(i, '/', programs[i], '/', j, '/ # of versions:', num_vers, '\n')
    }
  }
  
  for (j in 1:num_vers) {
    res_array[j, 'filename'] <-
      paste(sub_dir, vers[vers_id[j]], sep = '')
  }
  
  output_cost_file1 <-
    paste(
      'C:/Users/yigit/Desktop/TCM/output_considerRD/details/_',
      i,
      '_',
      programs[i],
      '_',
      numbug,
      '_numofstmt_costALLstmt2.csv',
      sep = ''
    )   #store the details easy for debugging
  write.csv(res_array, output_cost_file1, row.names = FALSE)
  
  #  output_cost_file2<- paste('C:/Users/yigit/Desktop/TCM/output_6metrics/details/_',i,'_',programs[i],'_',numbug,'_absolute_costALLstmt2.csv', sep = '')
  #  write.csv(res_array2, output_cost_file2, row.names = FALSE)
  
  fin_array[i, 'program'] <- programs[i]
  #fin_array[i,'Xtab']<-mean(as.numeric(res_array[,'Xtab']))
  #fin_array[i,'Xtabdev']<-sd(as.numeric(res_array[,'Xtab']))
  fin_array[i, 'Tarantula'] <-
    mean(as.numeric(res_array[, 'Tarantula']))
  #fin_array[i,'Tarantuladev']<-sd(as.numeric(res_array[,'Tarantula']))
  fin_array[i, 'TarantulaC'] <-
    mean(as.numeric(res_array[, 'TarantulaC']))
  #fin_array[i,'TarantulaCdev']<-sd(as.numeric(res_array[,'TarantulaC']))
  fin_array[i, 'Ochiai'] <- mean(as.numeric(res_array[, 'Ochiai']))
  #fin_array[i,'Ochiaidev']<-sd(as.numeric(res_array[,'Ochiai']))
  fin_array[i, 'F1'] <- mean(as.numeric(res_array[, 'F1']))
  #fin_array[i,'F1dev']<-sd(as.numeric(res_array[,'F1']))
  fin_array[i, 'Klosgen'] <-
    mean(as.numeric(res_array[, 'Klosgen']))
  #fin_array[i,'Klosgendev']<-sd(as.numeric(res_array[,'Klosgen']))
  fin_array[i, 'RRprec'] <- mean(as.numeric(res_array[, 'RRprec']))
  fin_array[i, 'LKlosgen'] <-
    mean(as.numeric(res_array[, 'LKlosgen']))
  #fin_array[i,'LKlosgendev']<-sd(as.numeric(res_array[,'LKlosgen']))
  #fin_array[i,'sFRA']<-mean(as.numeric(res_array[,'sFRA']))
  #fin_array[i,'sFRAdev']<-sd(as.numeric(res_array[,'sFRA']))
  #fin_array[i,'RAinMmeasure']<-mean(as.numeric(res_array[,'RAinMmeasure']))
  #fin_array[i,'Fmeasuredev']<-sd(as.numeric(res_array[,'AFRA']))
  #fin_array[i,'AFRAL']<-mean(as.numeric(res_array[,'AFRAL']))
  #fin_array[i,'Mmeasuredev']<-sd(as.numeric(res_array[,'AFRAL']))
  #fin_array[i,'RpsfRA']<-mean(as.numeric(res_array[,'RpsfRA']))
  #fin_array[i,'Cost']<-mean(as.numeric(res_array[,'Cost']))
  #fin_array[i,'Ample']<-mean(as.numeric(res_array[,'Ample']))
  fin_array[i, 'PePfRD'] <- mean(as.numeric(res_array[, 'PePfRD']))
  #fin_array[i,'AmpleinK']<-mean(as.numeric(res_array[,'AmpleinK']))
  #fin_array[i,'AmpleLK']<-mean(as.numeric(res_array[,'AmpleLK']))
  #fin_array[i,'PsFRA']<-mean(as.numeric(res_array[,'PsFRA']))
  fin_array[i, 'recall'] <- mean(as.numeric(res_array[, 'recall']))
  #fin_array[i,'CovTarantula']<-mean(as.numeric(res_array[,'CovTarantula']))
  #fin_array[i,'SuppTarantula']<-mean(as.numeric(res_array[,'SuppTarantula']))
  #fin_array[i,'AFinO']<-mean(as.numeric(res_array[,'AFinO']))
  #fin_array[i,'AFTarantula']<-mean(as.numeric(res_array[,'AFTarantula']))
  #fin_array[i,'AF']<-mean(as.numeric(res_array[,'AF']))
  fin_array[i, 'RDinOchiai'] <-
    mean(as.numeric(res_array[, 'RDinOchiai']))
  #fin_array[i,'RcostRA']<-mean(as.numeric(res_array[,'RcostRA']))
  #fin_array[i,'CoTarantula']<-mean(as.numeric(res_array[,'CoTarantula']))
  #fin_array[i,'RAinF05']<-mean(as.numeric(res_array[,'RAinF05']))
  fin_array[i, 'RRTarantula'] <-
    mean(as.numeric(res_array[, 'RRTarantula']))
  #fin_array[i,'RRinF1']<-mean(as.numeric(res_array[,'RRinF1']))
  fin_array[i, 'RAinF1'] <- mean(as.numeric(res_array[, 'RAinF1']))
  fin_array[i, 'RA'] <- mean(as.numeric(res_array[, 'RA']))
  fin_array[i, 'recallPrec'] <-
    mean(as.numeric(res_array[, 'recallPrec']))
  fin_array[i, 'RD'] <- mean(as.numeric(res_array[, 'RD']))
  fin_array[i, 'recallRD'] <-
    mean(as.numeric(res_array[, 'recallRD']))
  fin_array[i, 'RDinF1'] <- mean(as.numeric(res_array[, 'RDinF1']))
  #fin_array[i,'RAinRcost']<-mean(as.numeric(res_array[,'RAinRcost']))
  #fin_array[i,'sfRA']<-mean(as.numeric(res_array[,'sfRA']))
  fin_array[i, 'RR'] <- mean(as.numeric(res_array[, 'RR']))
  #fin_array[i,'AFinK']<-mean(as.numeric(res_array[,'AFinK']))
  fin_array[i, 'RAinOchiai'] <-
    mean(as.numeric(res_array[, 'RAinOchiai']))
  #fin_array[i,'AFinF1']<-mean(as.numeric(res_array[,'AFinF1']))
  #fin_array[i,'Mmeasure']<-mean(as.numeric(res_array[,'Mmeasure']))
  #fin_array[i,'Fmeasure']<-mean(as.numeric(res_array[,'Fmeasure']))
  #fin_array[i,'Rcost']<-mean(as.numeric(res_array[,'Rcost']))
  fin_array[i, 'Ku2'] <- mean(as.numeric(res_array[, 'Ku2']))
  fin_array[i, 'RAinKu2'] <-
    mean(as.numeric(res_array[, 'RAinKu2']))
  
}

## for ICST ver.
##output_cost_file <- paste('C:/Users/yigit/Desktop/TCM/output_6metrics/','final_with_numofstmt_',numbug,'2_ALLstmt3.csv', sep = '')
##write.csv(fin_array, output_cost_file, row.names = FALSE)

# for ICST CRC version
output_cost_file <-
  paste(
    'C:/Users/yigit/Desktop/TCM/output_considerRD/',
    'final_with_numofstmt_',
    numbug,
    '_after_submission.csv',
    sep = ''
  )
write.csv(fin_array, output_cost_file, row.names = FALSE)
