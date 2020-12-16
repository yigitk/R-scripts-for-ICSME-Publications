genCFmeansRF_fault_binerrs <- function() {
  results <- list()
  
  varnames <- list()
  
  fault_binerrs_r0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r0_1 = fault_binerrs_all$r0_1,
      r1_0 = fault_binerrs_all$r1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(r0_1 = numfldata$r0_1, r1_0 = numfldata$r1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/1.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["r0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_r0_1_treat_df, "Y", "r0_1")
  varnames[[1]] <-  "r0_1"
  
  fault_binerrs_bits_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      bits_0 = fault_binerrs_all$bits_0,
      value_2 = fault_binerrs_all$value_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(bits_0 = numfldata$bits_0, value_2 = numfldata$value_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/2.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["bits_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_bits_0_treat_df, "Y", "bits_0")
  varnames[[2]] <-  "bits_0"
  
  fault_binerrs_P64_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P64_0_0 = fault_binerrs_all$P64_0_0,
      exponent_2 = fault_binerrs_all$exponent_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P64_0_0 = numfldata$P64_0_0,
               exponent_2 = numfldata$exponent_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/3.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P64_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P64_0_0_treat_df, "Y", "P64_0_0")
  varnames[[3]] <-  "P64_0_0"
  
  fault_binerrs_P64_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P64_0_1 = fault_binerrs_all$P64_0_1,
      P64_0_0 = fault_binerrs_all$P64_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P64_0_1 = numfldata$P64_0_1, P64_0_0 = numfldata$P64_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/4.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P64_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P64_0_1_treat_df, "Y", "P64_0_1")
  varnames[[4]] <-  "P64_0_1"
  
  fault_binerrs_P21_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P21_0_1 = fault_binerrs_all$P21_0_1,
      P21_0_0 = fault_binerrs_all$P21_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P21_0_1 = numfldata$P21_0_1, P21_0_0 = numfldata$P21_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/5.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P21_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P21_0_1_treat_df, "Y", "P21_0_1")
  varnames[[5]] <-  "P21_0_1"
  
  fault_binerrs_P21_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P21_0_0 = fault_binerrs_all$P21_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P21_0_0 = numfldata$P21_0_0, P21_0_0 = numfldata$P21_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/6.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P21_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P21_0_0_treat_df, "Y", "P21_0_0")
  varnames[[6]] <-  "P21_0_0"
  
  fault_binerrs_P48_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P48_0_0 = fault_binerrs_all$P48_0_0,
      q2_3 = fault_binerrs_all$q2_3,
      maxDenominator_0 = fault_binerrs_all$maxDenominator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P48_0_0 = numfldata$P48_0_0,
      q2_3 = numfldata$q2_3,
      maxDenominator_0 = numfldata$maxDenominator_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/7.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P48_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P48_0_0_treat_df, "Y", "P48_0_0")
  varnames[[7]] <-  "P48_0_0"
  
  fault_binerrs_sign_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      sign_1 = fault_binerrs_all$sign_1,
      sign_0 = fault_binerrs_all$sign_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(sign_1 = numfldata$sign_1, sign_0 = numfldata$sign_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/8.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["sign_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_sign_1_treat_df, "Y", "sign_1")
  varnames[[8]] <-  "sign_1"
  
  fault_binerrs_sign_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      sign_0 = fault_binerrs_all$sign_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(sign_0 = numfldata$sign_0, bits_0 = numfldata$bits_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/9.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["sign_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_sign_0_treat_df, "Y", "sign_0")
  varnames[[9]] <-  "sign_0"
  
  fault_binerrs_r0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r0_0 = fault_binerrs_all$r0_0,
      value_3 = fault_binerrs_all$value_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(r0_0 = numfldata$r0_0, value_3 = numfldata$value_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/10.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["r0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_r0_0_treat_df, "Y", "r0_0")
  varnames[[10]] <-  "r0_0"
  
  fault_binerrs_P56_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P56_0_0 = fault_binerrs_all$P56_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P56_0_0 = numfldata$P56_0_0, P56_0_0 = numfldata$P56_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/11.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P56_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P56_0_0_treat_df, "Y", "P56_0_0")
  varnames[[11]] <-  "P56_0_0"
  
  fault_binerrs_P56_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P56_0_1 = fault_binerrs_all$P56_0_1,
      P56_0_0 = fault_binerrs_all$P56_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P56_0_1 = numfldata$P56_0_1, P56_0_0 = numfldata$P56_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/12.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P56_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P56_0_1_treat_df, "Y", "P56_0_1")
  varnames[[12]] <-  "P56_0_1"
  
  fault_binerrs_P13_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P13_0_0 = fault_binerrs_all$P13_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P13_0_0 = numfldata$P13_0_0, P13_0_0 = numfldata$P13_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/13.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P13_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P13_0_0_treat_df, "Y", "P13_0_0")
  varnames[[13]] <-  "P13_0_0"
  
  fault_binerrs_P13_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P13_0_1 = fault_binerrs_all$P13_0_1,
      P13_0_0 = fault_binerrs_all$P13_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P13_0_1 = numfldata$P13_0_1, P13_0_0 = numfldata$P13_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/14.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P13_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P13_0_1_treat_df, "Y", "P13_0_1")
  varnames[[14]] <-  "P13_0_1"
  
  fault_binerrs_P33_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P33_0_0 = fault_binerrs_all$P33_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P33_0_0 = numfldata$P33_0_0, P33_0_0 = numfldata$P33_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/15.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P33_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P33_0_0_treat_df, "Y", "P33_0_0")
  varnames[[15]] <-  "P33_0_0"
  
  fault_binerrs_convergent_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      convergent_0 = fault_binerrs_all$convergent_0,
      q2_2 = fault_binerrs_all$q2_2,
      p2_2 = fault_binerrs_all$p2_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      convergent_0 = numfldata$convergent_0,
      q2_2 = numfldata$q2_2,
      p2_2 = numfldata$p2_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/16.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["convergent_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_convergent_0_treat_df, "Y", "convergent_0")
  varnames[[16]] <-  "convergent_0"
  
  fault_binerrs_P3_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_1_0 = fault_binerrs_all$P3_1_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P3_1_0 = numfldata$P3_1_0,
      overflow_1 = numfldata$overflow_1,
      p2_1 = numfldata$p2_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/17.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P3_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P3_1_0_treat_df, "Y", "P3_1_0")
  varnames[[17]] <-  "P3_1_0"
  
  fault_binerrs_P3_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_1_1 = fault_binerrs_all$P3_1_1,
      P3_1_0 = fault_binerrs_all$P3_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P3_1_1 = numfldata$P3_1_1, P3_1_0 = numfldata$P3_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/18.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P3_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P3_1_1_treat_df, "Y", "P3_1_1")
  varnames[[18]] <-  "P3_1_1"
  
  fault_binerrs_P7_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P7_0_1 = fault_binerrs_all$P7_0_1,
      P7_0_0 = fault_binerrs_all$P7_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P7_0_1 = numfldata$P7_0_1, P7_0_0 = numfldata$P7_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/19.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P7_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P7_0_1_treat_df, "Y", "P7_0_1")
  varnames[[19]] <-  "P7_0_1"
  
  fault_binerrs_P28_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P28_0_1 = fault_binerrs_all$P28_0_1,
      P28_0_0 = fault_binerrs_all$P28_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P28_0_1 = numfldata$P28_0_1, P28_0_0 = numfldata$P28_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/20.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P28_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P28_0_1_treat_df, "Y", "P28_0_1")
  varnames[[20]] <-  "P28_0_1"
  
  fault_binerrs_P28_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P28_0_0 = fault_binerrs_all$P28_0_0,
      denominator_3 = fault_binerrs_all$denominator_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P28_0_0 = numfldata$P28_0_0,
               denominator_3 = numfldata$denominator_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/21.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P28_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P28_0_0_treat_df, "Y", "P28_0_0")
  varnames[[21]] <-  "P28_0_0"
  
  fault_binerrs_P7_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P7_0_0 = fault_binerrs_all$P7_0_0,
      den_0 = fault_binerrs_all$den_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P7_0_0 = numfldata$P7_0_0, den_0 = numfldata$den_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/22.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P7_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P7_0_0_treat_df, "Y", "P7_0_0")
  varnames[[22]] <-  "P7_0_0"
  
  fault_binerrs_P36_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P36_0_1 = fault_binerrs_all$P36_0_1,
      P36_0_0 = fault_binerrs_all$P36_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P36_0_1 = numfldata$P36_0_1, P36_0_0 = numfldata$P36_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/23.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P36_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P36_0_1_treat_df, "Y", "P36_0_1")
  varnames[[23]] <-  "P36_0_1"
  
  fault_binerrs_P36_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P36_0_0 = fault_binerrs_all$P36_0_0,
      value_0 = fault_binerrs_all$value_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P36_0_0 = numfldata$P36_0_0, value_0 = numfldata$value_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/24.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P36_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P36_0_0_treat_df, "Y", "P36_0_0")
  varnames[[24]] <-  "P36_0_0"
  
  fault_binerrs_P53_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P53_0_0 = fault_binerrs_all$P53_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P53_0_0 = numfldata$P53_0_0, P53_0_0 = numfldata$P53_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/25.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P53_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P53_0_0_treat_df, "Y", "P53_0_0")
  varnames[[25]] <-  "P53_0_0"
  
  fault_binerrs_d2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d2_0 = fault_binerrs_all$d2_0,
      d1_1 = fault_binerrs_all$d1_1,
      tmodd1_0 = fault_binerrs_all$tmodd1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      d2_0 = numfldata$d2_0,
      d1_1 = numfldata$d1_1,
      tmodd1_0 = numfldata$tmodd1_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/26.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d2_0_treat_df, "Y", "d2_0")
  varnames[[26]] <-  "d2_0"
  
  fault_binerrs_P0_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P0_0_0 = fault_binerrs_all$P0_0_0,
      overflow_0 = fault_binerrs_all$overflow_0,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P0_0_0 = numfldata$P0_0_0,
      overflow_0 = numfldata$overflow_0,
      a0_0 = numfldata$a0_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/27.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P0_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P0_0_0_treat_df, "Y", "P0_0_0")
  varnames[[27]] <-  "P0_0_0"
  
  fault_binerrs_P0_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P0_0_1 = fault_binerrs_all$P0_0_1,
      P0_0_0 = fault_binerrs_all$P0_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P0_0_1 = numfldata$P0_0_1, P0_0_0 = numfldata$P0_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/28.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P0_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P0_0_1_treat_df, "Y", "P0_0_1")
  varnames[[28]] <-  "P0_0_1"
  
  fault_binerrs_P17_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P17_0_0 = fault_binerrs_all$P17_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P17_0_0 = numfldata$P17_0_0, P17_0_0 = numfldata$P17_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/29.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P17_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P17_0_0_treat_df, "Y", "P17_0_0")
  varnames[[29]] <-  "P17_0_0"
  
  fault_binerrs_P61_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P61_0_0 = fault_binerrs_all$P61_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P61_0_0 = numfldata$P61_0_0, P61_0_0 = numfldata$P61_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/30.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P61_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P61_0_0_treat_df, "Y", "P61_0_0")
  varnames[[30]] <-  "P61_0_0"
  
  fault_binerrs_P17_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P17_0_1 = fault_binerrs_all$P17_0_1,
      P17_0_0 = fault_binerrs_all$P17_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P17_0_1 = numfldata$P17_0_1, P17_0_0 = numfldata$P17_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/31.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P17_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P17_0_1_treat_df, "Y", "P17_0_1")
  varnames[[31]] <-  "P17_0_1"
  
  fault_binerrs_ret_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      ret_2 = fault_binerrs_all$ret_2,
      ret_2 = fault_binerrs_all$ret_2,
      ret_0 = fault_binerrs_all$ret_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      ret_2 = numfldata$ret_2,
      ret_2 = numfldata$ret_2,
      ret_0 = numfldata$ret_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/32.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["ret_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_ret_2_treat_df, "Y", "ret_2")
  varnames[[32]] <-  "ret_2"
  
  fault_binerrs_P63_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_1_0 = fault_binerrs_all$P63_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P63_1_0 = numfldata$P63_1_0, P63_1_0 = numfldata$P63_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/33.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P63_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P63_1_0_treat_df, "Y", "P63_1_0")
  varnames[[33]] <-  "P63_1_0"
  
  fault_binerrs_P63_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_1_1 = fault_binerrs_all$P63_1_1,
      P63_1_0 = fault_binerrs_all$P63_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P63_1_1 = numfldata$P63_1_1, P63_1_0 = numfldata$P63_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/34.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P63_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P63_1_1_treat_df, "Y", "P63_1_1")
  varnames[[34]] <-  "P63_1_1"
  
  fault_binerrs_ret_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               ret_0 = fault_binerrs_all$ret_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(ret_0 = numfldata$ret_0, ret_0 = numfldata$ret_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/35.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["ret_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_ret_0_treat_df, "Y", "ret_0")
  varnames[[35]] <-  "ret_0"
  
  fault_binerrs_ret_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               ret_1 = fault_binerrs_all$ret_1,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(ret_1 = numfldata$ret_1, ret_1 = numfldata$ret_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/36.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["ret_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_ret_1_treat_df, "Y", "ret_1")
  varnames[[36]] <-  "ret_1"
  
  fault_binerrs_P68_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P68_0_1 = fault_binerrs_all$P68_0_1,
      P68_0_0 = fault_binerrs_all$P68_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P68_0_1 = numfldata$P68_0_1, P68_0_0 = numfldata$P68_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/37.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P68_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P68_0_1_treat_df, "Y", "P68_0_1")
  varnames[[37]] <-  "P68_0_1"
  
  fault_binerrs_P68_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P68_0_0 = fault_binerrs_all$P68_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P68_0_0 = numfldata$P68_0_0, P68_0_0 = numfldata$P68_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/38.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P68_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P68_0_0_treat_df, "Y", "P68_0_0")
  varnames[[38]] <-  "P68_0_0"
  
  fault_binerrs_P25_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P25_0_1 = fault_binerrs_all$P25_0_1,
      P25_0_0 = fault_binerrs_all$P25_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P25_0_1 = numfldata$P25_0_1, P25_0_0 = numfldata$P25_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/39.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P25_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P25_0_1_treat_df, "Y", "P25_0_1")
  varnames[[39]] <-  "P25_0_1"
  
  fault_binerrs_P25_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P25_0_0 = fault_binerrs_all$P25_0_0,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P25_0_0 = numfldata$P25_0_0,
               denominator_0 = numfldata$denominator_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/40.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P25_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P25_0_0_treat_df, "Y", "P25_0_0")
  varnames[[40]] <-  "P25_0_0"
  
  fault_binerrs_P10_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P10_0_0 = fault_binerrs_all$P10_0_0,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P10_0_0 = numfldata$P10_0_0, d_0 = numfldata$d_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/41.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P10_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P10_0_0_treat_df, "Y", "P10_0_0")
  varnames[[41]] <-  "P10_0_0"
  
  fault_binerrs_P10_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P10_0_1 = fault_binerrs_all$P10_0_1,
      P10_0_0 = fault_binerrs_all$P10_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P10_0_1 = numfldata$P10_0_1, P10_0_0 = numfldata$P10_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/42.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P10_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P10_0_1_treat_df, "Y", "P10_0_1")
  varnames[[42]] <-  "P10_0_1"
  
  fault_binerrs_exponent_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_5 = fault_binerrs_all$exponent_5,
      exponent_4 = fault_binerrs_all$exponent_4,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(exponent_5 = numfldata$exponent_5,
               exponent_4 = numfldata$exponent_4)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/43.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["exponent_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_exponent_5_treat_df, "Y", "exponent_5")
  varnames[[43]] <-  "exponent_5"
  
  fault_binerrs_exponent_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_1 = fault_binerrs_all$exponent_1,
      exponent_0 = fault_binerrs_all$exponent_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(exponent_1 = numfldata$exponent_1,
               exponent_0 = numfldata$exponent_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/44.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["exponent_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_exponent_1_treat_df, "Y", "exponent_1")
  varnames[[44]] <-  "exponent_1"
  
  fault_binerrs_exponent_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_0 = fault_binerrs_all$exponent_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(exponent_0 = numfldata$exponent_0,
               bits_0 = numfldata$bits_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/45.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["exponent_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_exponent_0_treat_df, "Y", "exponent_0")
  varnames[[45]] <-  "exponent_0"
  
  fault_binerrs_exponent_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_3 = fault_binerrs_all$exponent_3,
      exponent_2 = fault_binerrs_all$exponent_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(exponent_3 = numfldata$exponent_3,
               exponent_2 = numfldata$exponent_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/46.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["exponent_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_exponent_3_treat_df, "Y", "exponent_3")
  varnames[[46]] <-  "exponent_3"
  
  fault_binerrs_P57_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P57_0_0 = fault_binerrs_all$P57_0_0,
      result_0 = fault_binerrs_all$result_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P57_0_0 = numfldata$P57_0_0, result_0 = numfldata$result_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/47.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P57_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P57_0_0_treat_df, "Y", "P57_0_0")
  varnames[[47]] <-  "P57_0_0"
  
  fault_binerrs_P57_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P57_0_1 = fault_binerrs_all$P57_0_1,
      P57_0_0 = fault_binerrs_all$P57_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P57_0_1 = numfldata$P57_0_1, P57_0_0 = numfldata$P57_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/48.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P57_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P57_0_1_treat_df, "Y", "P57_0_1")
  varnames[[48]] <-  "P57_0_1"
  
  fault_binerrs_P49_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P49_0_1 = fault_binerrs_all$P49_0_1,
      P49_0_0 = fault_binerrs_all$P49_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P49_0_1 = numfldata$P49_0_1, P49_0_0 = numfldata$P49_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/49.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P49_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P49_0_1_treat_df, "Y", "P49_0_1")
  varnames[[49]] <-  "P49_0_1"
  
  fault_binerrs_P30_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P30_0_0 = fault_binerrs_all$P30_0_0,
      denominator_7 = fault_binerrs_all$denominator_7,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P30_0_0 = numfldata$P30_0_0,
               denominator_7 = numfldata$denominator_7)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/50.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P30_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P30_0_0_treat_df, "Y", "P30_0_0")
  varnames[[50]] <-  "P30_0_0"
  
  fault_binerrs_numerator_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_1 = fault_binerrs_all$numerator_1,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(numerator_1 = numfldata$numerator_1,
               numerator_0 = numfldata$numerator_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/51.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["numerator_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_numerator_1_treat_df, "Y", "numerator_1")
  varnames[[51]] <-  "numerator_1"
  
  fault_binerrs_upv_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               upv_0 = fault_binerrs_all$upv_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(upv_0 = numfldata$upv_0, upv_0 = numfldata$upv_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/52.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["upv_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_upv_0_treat_df, "Y", "upv_0")
  varnames[[52]] <-  "upv_0"
  
  fault_binerrs_P49_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P49_0_0 = fault_binerrs_all$P49_0_0,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P49_0_0 = numfldata$P49_0_0,
               numerator_0 = numfldata$numerator_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/53.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P49_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P49_0_0_treat_df, "Y", "P49_0_0")
  varnames[[53]] <-  "P49_0_0"
  
  fault_binerrs_P4_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_0_0 = fault_binerrs_all$P4_0_0,
      q2_2 = fault_binerrs_all$q2_2,
      maxDenominator_1 = fault_binerrs_all$maxDenominator_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P4_0_0 = numfldata$P4_0_0,
      q2_2 = numfldata$q2_2,
      maxDenominator_1 = numfldata$maxDenominator_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/54.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P4_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P4_0_0_treat_df, "Y", "P4_0_0")
  varnames[[54]] <-  "P4_0_0"
  
  fault_binerrs_P14_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P14_0_0 = fault_binerrs_all$P14_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P14_0_0 = numfldata$P14_0_0, P14_0_0 = numfldata$P14_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/55.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P14_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P14_0_0_treat_df, "Y", "P14_0_0")
  varnames[[55]] <-  "P14_0_0"
  
  fault_binerrs_numerator_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_5 = fault_binerrs_all$numerator_5,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(numerator_5 = numfldata$numerator_5)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/56.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["numerator_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_numerator_5_treat_df, "Y", "numerator_5")
  varnames[[56]] <-  "numerator_5"
  
  fault_binerrs_P40_0_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_0_2 = fault_binerrs_all$P40_0_2,
      P40_0_0 = fault_binerrs_all$P40_0_0,
      P40_0_1 = fault_binerrs_all$P40_0_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P40_0_2 = numfldata$P40_0_2,
      P40_0_0 = numfldata$P40_0_0,
      P40_0_1 = numfldata$P40_0_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/57.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P40_0_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P40_0_2_treat_df, "Y", "P40_0_2")
  varnames[[57]] <-  "P40_0_2"
  
  fault_binerrs_P14_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P14_0_1 = fault_binerrs_all$P14_0_1,
      P14_0_0 = fault_binerrs_all$P14_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P14_0_1 = numfldata$P14_0_1, P14_0_0 = numfldata$P14_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/58.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P14_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P14_0_1_treat_df, "Y", "P14_0_1")
  varnames[[58]] <-  "P14_0_1"
  
  fault_binerrs_numerator_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_2 = fault_binerrs_all$numerator_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(numerator_2 = numfldata$numerator_2,
               numerator_2 = numfldata$numerator_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/59.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["numerator_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_numerator_2_treat_df, "Y", "numerator_2")
  varnames[[59]] <-  "numerator_2"
  
  fault_binerrs_P27_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_1_1 = fault_binerrs_all$P27_1_1,
      P27_1_0 = fault_binerrs_all$P27_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P27_1_1 = numfldata$P27_1_1, P27_1_0 = numfldata$P27_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/60.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P27_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P27_1_1_treat_df, "Y", "P27_1_1")
  varnames[[60]] <-  "P27_1_1"
  
  fault_binerrs_P27_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_1_0 = fault_binerrs_all$P27_1_0,
      denominator_1 = fault_binerrs_all$denominator_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P27_1_0 = numfldata$P27_1_0,
               denominator_1 = numfldata$denominator_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/61.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P27_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P27_1_0_treat_df, "Y", "P27_1_0")
  varnames[[61]] <-  "P27_1_0"
  
  fault_binerrs_numerator_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_3 = fault_binerrs_all$numerator_3,
      numerator_1 = fault_binerrs_all$numerator_1,
      numerator_2 = fault_binerrs_all$numerator_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      numerator_3 = numfldata$numerator_3,
      numerator_1 = numfldata$numerator_1,
      numerator_2 = numfldata$numerator_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/62.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["numerator_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_numerator_3_treat_df, "Y", "numerator_3")
  varnames[[62]] <-  "numerator_3"
  
  fault_binerrs_P39_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P39_0_0 = fault_binerrs_all$P39_0_0,
      sign_0 = fault_binerrs_all$sign_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P39_0_0 = numfldata$P39_0_0, sign_0 = numfldata$sign_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/63.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P39_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P39_0_0_treat_df, "Y", "P39_0_0")
  varnames[[63]] <-  "P39_0_0"
  
  fault_binerrs_P40_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_0_0 = fault_binerrs_all$P40_0_0,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P40_0_0 = numfldata$P40_0_0, m_2 = numfldata$m_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/64.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P40_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P40_0_0_treat_df, "Y", "P40_0_0")
  varnames[[64]] <-  "P40_0_0"
  
  fault_binerrs_d1_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d1_0 = fault_binerrs_all$d1_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(d1_0 = numfldata$d1_0, d1_0 = numfldata$d1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/65.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d1_0_treat_df, "Y", "d1_0")
  varnames[[65]] <-  "d1_0"
  
  fault_binerrs_P39_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P39_0_1 = fault_binerrs_all$P39_0_1,
      P39_0_0 = fault_binerrs_all$P39_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P39_0_1 = numfldata$P39_0_1, P39_0_0 = numfldata$P39_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/66.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P39_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P39_0_1_treat_df, "Y", "P39_0_1")
  varnames[[66]] <-  "P39_0_1"
  
  fault_binerrs_d1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d1_1 = fault_binerrs_all$d1_1,
      d1_0 = fault_binerrs_all$d1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(d1_1 = numfldata$d1_1, d1_0 = numfldata$d1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/67.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d1_1_treat_df, "Y", "d1_1")
  varnames[[67]] <-  "d1_1"
  
  fault_binerrs_n_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               n_0 = fault_binerrs_all$n_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(n_0 = numfldata$n_0, n_0 = numfldata$n_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/68.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["n_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_n_0_treat_df, "Y", "n_0")
  varnames[[68]] <-  "n_0"
  
  fault_binerrs_n_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      n_1 = fault_binerrs_all$n_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(n_1 = numfldata$n_1, n_0 = numfldata$n_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/69.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["n_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_n_1_treat_df, "Y", "n_1")
  varnames[[69]] <-  "n_1"
  
  fault_binerrs_P63_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_0_1 = fault_binerrs_all$P63_0_1,
      P63_0_0 = fault_binerrs_all$P63_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P63_0_1 = numfldata$P63_0_1, P63_0_0 = numfldata$P63_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/70.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P63_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P63_0_1_treat_df, "Y", "P63_0_1")
  varnames[[70]] <-  "P63_0_1"
  
  fault_binerrs_P20_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P20_0_1 = fault_binerrs_all$P20_0_1,
      P20_0_0 = fault_binerrs_all$P20_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P20_0_1 = numfldata$P20_0_1, P20_0_0 = numfldata$P20_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/71.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P20_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P20_0_1_treat_df, "Y", "P20_0_1")
  varnames[[71]] <-  "P20_0_1"
  
  fault_binerrs_P20_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P20_0_0 = fault_binerrs_all$P20_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P20_0_0 = numfldata$P20_0_0, P20_0_0 = numfldata$P20_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/72.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P20_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P20_0_0_treat_df, "Y", "P20_0_0")
  varnames[[72]] <-  "P20_0_0"
  
  fault_binerrs_P29_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P29_0_0 = fault_binerrs_all$P29_0_0,
      denominator_3 = fault_binerrs_all$denominator_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P29_0_0 = numfldata$P29_0_0,
               denominator_3 = numfldata$denominator_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/73.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P29_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P29_0_0_treat_df, "Y", "P29_0_0")
  varnames[[73]] <-  "P29_0_0"
  
  fault_binerrs_d2_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d2_1 = fault_binerrs_all$d2_1,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(d2_1 = numfldata$d2_1, d2_1 = numfldata$d2_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/74.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d2_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d2_1_treat_df, "Y", "d2_1")
  varnames[[74]] <-  "d2_1"
  
  fault_binerrs_P45_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_0_1 = fault_binerrs_all$P45_0_1,
      P45_0_0 = fault_binerrs_all$P45_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P45_0_1 = numfldata$P45_0_1, P45_0_0 = numfldata$P45_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/75.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P45_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P45_0_1_treat_df, "Y", "P45_0_1")
  varnames[[75]] <-  "P45_0_1"
  
  fault_binerrs_P45_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_0_0 = fault_binerrs_all$P45_0_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P45_0_0 = numfldata$P45_0_0,
      overflow_1 = numfldata$overflow_1,
      q2_1 = numfldata$q2_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/76.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P45_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P45_0_0_treat_df, "Y", "P45_0_0")
  varnames[[76]] <-  "P45_0_0"
  
  fault_binerrs_P63_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_0_0 = fault_binerrs_all$P63_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P63_0_0 = numfldata$P63_0_0, P63_0_0 = numfldata$P63_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/77.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P63_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P63_0_0_treat_df, "Y", "P63_0_0")
  varnames[[77]] <-  "P63_0_0"
  
  fault_binerrs_overflow_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_1 = fault_binerrs_all$overflow_1,
      overflow_0 = fault_binerrs_all$overflow_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(overflow_1 = numfldata$overflow_1,
               overflow_0 = numfldata$overflow_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/78.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["overflow_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_overflow_1_treat_df, "Y", "overflow_1")
  varnames[[78]] <-  "overflow_1"
  
  fault_binerrs_p2_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               p2_0 = fault_binerrs_all$p2_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(p2_0 = numfldata$p2_0, p2_0 = numfldata$p2_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/79.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p2_0_treat_df, "Y", "p2_0")
  varnames[[79]] <-  "p2_0"
  
  fault_binerrs_P52_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P52_0_0 = fault_binerrs_all$P52_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P52_0_0 = numfldata$P52_0_0, P52_0_0 = numfldata$P52_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/80.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P52_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P52_0_0_treat_df, "Y", "P52_0_0")
  varnames[[80]] <-  "P52_0_0"
  
  fault_binerrs_overflow_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_2 = fault_binerrs_all$overflow_2,
      overflow_1 = fault_binerrs_all$overflow_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(overflow_2 = numfldata$overflow_2,
               overflow_1 = numfldata$overflow_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/81.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["overflow_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_overflow_2_treat_df, "Y", "overflow_2")
  varnames[[81]] <-  "overflow_2"
  
  fault_binerrs_overflow_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_3 = fault_binerrs_all$overflow_3,
      overflow_1 = fault_binerrs_all$overflow_1,
      overflow_2 = fault_binerrs_all$overflow_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      overflow_3 = numfldata$overflow_3,
      overflow_1 = numfldata$overflow_1,
      overflow_2 = numfldata$overflow_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/82.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["overflow_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_overflow_3_treat_df, "Y", "overflow_3")
  varnames[[82]] <-  "overflow_3"
  
  fault_binerrs_P35_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P35_0_0 = fault_binerrs_all$P35_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P35_0_0 = numfldata$P35_0_0, P35_0_0 = numfldata$P35_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/83.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P35_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P35_0_0_treat_df, "Y", "P35_0_0")
  varnames[[83]] <-  "P35_0_0"
  
  fault_binerrs_P35_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P35_0_1 = fault_binerrs_all$P35_0_1,
      P35_0_0 = fault_binerrs_all$P35_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P35_0_1 = numfldata$P35_0_1, P35_0_0 = numfldata$P35_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/84.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P35_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P35_0_1_treat_df, "Y", "P35_0_1")
  varnames[[84]] <-  "P35_0_1"
  
  fault_binerrs_p2_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p2_2 = fault_binerrs_all$p2_2,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(p2_2 = numfldata$p2_2, p2_1 = numfldata$p2_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/85.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p2_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p2_2_treat_df, "Y", "p2_2")
  varnames[[85]] <-  "p2_2"
  
  fault_binerrs_overflow_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_0 = fault_binerrs_all$overflow_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(overflow_0 = numfldata$overflow_0,
               overflow_0 = numfldata$overflow_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/86.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["overflow_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_overflow_0_treat_df, "Y", "overflow_0")
  varnames[[86]] <-  "overflow_0"
  
  fault_binerrs_p2_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p2_1 = fault_binerrs_all$p2_1,
      p1_0 = fault_binerrs_all$p1_0,
      p0_0 = fault_binerrs_all$p0_0,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      p2_1 = numfldata$p2_1,
      p1_0 = numfldata$p1_0,
      p0_0 = numfldata$p0_0,
      a1_0 = numfldata$a1_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/87.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p2_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p2_1_treat_df, "Y", "p2_1")
  varnames[[87]] <-  "p2_1"
  
  fault_binerrs_P18_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P18_0_0 = fault_binerrs_all$P18_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P18_0_0 = numfldata$P18_0_0, P18_0_0 = numfldata$P18_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/88.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P18_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P18_0_0_treat_df, "Y", "P18_0_0")
  varnames[[88]] <-  "P18_0_0"
  
  fault_binerrs_P18_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P18_0_1 = fault_binerrs_all$P18_0_1,
      P18_0_0 = fault_binerrs_all$P18_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P18_0_1 = numfldata$P18_0_1, P18_0_0 = numfldata$P18_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/89.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P18_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P18_0_1_treat_df, "Y", "P18_0_1")
  varnames[[89]] <-  "P18_0_1"
  
  fault_binerrs_P8_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P8_0_0 = fault_binerrs_all$P8_0_0,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P8_0_0 = numfldata$P8_0_0, den_1 = numfldata$den_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/90.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P8_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P8_0_0_treat_df, "Y", "P8_0_0")
  varnames[[90]] <-  "P8_0_0"
  
  fault_binerrs_P40_1_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_1_2 = fault_binerrs_all$P40_1_2,
      P40_1_0 = fault_binerrs_all$P40_1_0,
      P40_1_1 = fault_binerrs_all$P40_1_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P40_1_2 = numfldata$P40_1_2,
      P40_1_0 = numfldata$P40_1_0,
      P40_1_1 = numfldata$P40_1_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/91.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P40_1_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P40_1_2_treat_df, "Y", "P40_1_2")
  varnames[[91]] <-  "P40_1_2"
  
  fault_binerrs_P8_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P8_0_1 = fault_binerrs_all$P8_0_1,
      P8_0_0 = fault_binerrs_all$P8_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P8_0_1 = numfldata$P8_0_1, P8_0_0 = numfldata$P8_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/92.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P8_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P8_0_1_treat_df, "Y", "P8_0_1")
  varnames[[92]] <-  "P8_0_1"
  
  fault_binerrs_P40_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_1_0 = fault_binerrs_all$P40_1_0,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P40_1_0 = numfldata$P40_1_0, m_2 = numfldata$m_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/93.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P40_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P40_1_0_treat_df, "Y", "P40_1_0")
  varnames[[93]] <-  "P40_1_0"
  
  fault_binerrs_m_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               m_1 = fault_binerrs_all$m_1,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(m_1 = numfldata$m_1, m_1 = numfldata$m_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/94.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["m_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_m_1_treat_df, "Y", "m_1")
  varnames[[94]] <-  "m_1"
  
  fault_binerrs_m_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_0 = fault_binerrs_all$m_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(m_0 = numfldata$m_0, bits_0 = numfldata$bits_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/95.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["m_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_m_0_treat_df, "Y", "m_0")
  varnames[[95]] <-  "m_0"
  
  fault_binerrs_epsilon_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(epsilon_2 = numfldata$epsilon_2,
               epsilon_1 = numfldata$epsilon_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/96.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["epsilon_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_epsilon_2_treat_df, "Y", "epsilon_2")
  varnames[[96]] <-  "epsilon_2"
  
  fault_binerrs_m_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_3 = fault_binerrs_all$m_3,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(m_3 = numfldata$m_3, m_2 = numfldata$m_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/97.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["m_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_m_3_treat_df, "Y", "m_3")
  varnames[[97]] <-  "m_3"
  
  fault_binerrs_m_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_2 = fault_binerrs_all$m_2,
      m_1 = fault_binerrs_all$m_1,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(m_2 = numfldata$m_2, m_1 = numfldata$m_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/98.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["m_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_m_2_treat_df, "Y", "m_2")
  varnames[[98]] <-  "m_2"
  
  fault_binerrs_P41_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P41_0_0 = fault_binerrs_all$P41_0_0,
      k_0 = fault_binerrs_all$k_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P41_0_0 = numfldata$P41_0_0, k_0 = numfldata$k_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/99.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P41_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P41_0_0_treat_df, "Y", "P41_0_0")
  varnames[[99]] <-  "P41_0_0"
  
  fault_binerrs_tmodd1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      tmodd1_0 = fault_binerrs_all$tmodd1_0,
      d1_1 = fault_binerrs_all$d1_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(tmodd1_0 = numfldata$tmodd1_0, d1_1 = numfldata$d1_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/100.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["tmodd1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_tmodd1_0_treat_df, "Y", "tmodd1_0")
  varnames[[100]] <-  "tmodd1_0"
  
  fault_binerrs_m_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_6 = fault_binerrs_all$m_6,
      m_2 = fault_binerrs_all$m_2,
      m_5 = fault_binerrs_all$m_5,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(m_6 = numfldata$m_6,
               m_2 = numfldata$m_2,
               m_5 = numfldata$m_5)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/101.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["m_6"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_m_6_treat_df, "Y", "m_6")
  varnames[[101]] <-  "m_6"
  
  fault_binerrs_d1_2_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d1_2 = fault_binerrs_all$d1_2,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(d1_2 = numfldata$d1_2, d1_2 = numfldata$d1_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/102.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d1_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d1_2_treat_df, "Y", "d1_2")
  varnames[[102]] <-  "d1_2"
  
  fault_binerrs_P45_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_1_1 = fault_binerrs_all$P45_1_1,
      P45_1_0 = fault_binerrs_all$P45_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P45_1_1 = numfldata$P45_1_1, P45_1_0 = numfldata$P45_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/103.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P45_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P45_1_1_treat_df, "Y", "P45_1_1")
  varnames[[103]] <-  "P45_1_1"
  
  fault_binerrs_P45_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_1_0 = fault_binerrs_all$P45_1_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P45_1_0 = numfldata$P45_1_0,
      overflow_1 = numfldata$overflow_1,
      p2_1 = numfldata$p2_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/104.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P45_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P45_1_0_treat_df, "Y", "P45_1_0")
  varnames[[104]] <-  "P45_1_0"
  
  fault_binerrs_P67_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P67_0_0 = fault_binerrs_all$P67_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P67_0_0 = numfldata$P67_0_0, P67_0_0 = numfldata$P67_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/105.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P67_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P67_0_0_treat_df, "Y", "P67_0_0")
  varnames[[105]] <-  "P67_0_0"
  
  fault_binerrs_P3_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_0_1 = fault_binerrs_all$P3_0_1,
      P3_0_0 = fault_binerrs_all$P3_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P3_0_1 = numfldata$P3_0_1, P3_0_0 = numfldata$P3_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/106.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P3_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P3_0_1_treat_df, "Y", "P3_0_1")
  varnames[[106]] <-  "P3_0_1"
  
  fault_binerrs_P24_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P24_0_1 = fault_binerrs_all$P24_0_1,
      P24_0_0 = fault_binerrs_all$P24_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P24_0_1 = numfldata$P24_0_1, P24_0_0 = numfldata$P24_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/107.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P24_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P24_0_1_treat_df, "Y", "P24_0_1")
  varnames[[107]] <-  "P24_0_1"
  
  fault_binerrs_P24_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P24_0_0 = fault_binerrs_all$P24_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P24_0_0 = numfldata$P24_0_0, P24_0_0 = numfldata$P24_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/108.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P24_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P24_0_0_treat_df, "Y", "P24_0_0")
  varnames[[108]] <-  "P24_0_0"
  
  fault_binerrs_P3_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_0_0 = fault_binerrs_all$P3_0_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P3_0_0 = numfldata$P3_0_0,
      overflow_1 = numfldata$overflow_1,
      q2_1 = numfldata$q2_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/109.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P3_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P3_0_0_treat_df, "Y", "P3_0_0")
  varnames[[109]] <-  "P3_0_0"
  
  fault_binerrs_P44_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P44_0 = fault_binerrs_all$P44_0,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P44_0 = numfldata$P44_0, stop_1 = numfldata$stop_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/110.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P44_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P44_0_treat_df, "Y", "P44_0")
  varnames[[110]] <-  "P44_0"
  
  fault_binerrs_p1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p1_0 = fault_binerrs_all$p1_0,
      a0_2 = fault_binerrs_all$a0_2,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(p1_0 = numfldata$p1_0, a0_2 = numfldata$a0_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/111.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p1_0_treat_df, "Y", "p1_0")
  varnames[[111]] <-  "p1_0"
  
  fault_binerrs_P4_2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_2_0 = fault_binerrs_all$P4_2_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P4_2_0 = numfldata$P4_2_0,
      maxIterations_1 = numfldata$maxIterations_1,
      n_0 = numfldata$n_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/112.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P4_2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P4_2_0_treat_df, "Y", "P4_2_0")
  varnames[[112]] <-  "P4_2_0"
  
  fault_binerrs_P31_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P31_0_0 = fault_binerrs_all$P31_0_0,
      numerator_6 = fault_binerrs_all$numerator_6,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P31_0_0 = numfldata$P31_0_0,
               numerator_6 = numfldata$numerator_6)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/113.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P31_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P31_0_0_treat_df, "Y", "P31_0_0")
  varnames[[113]] <-  "P31_0_0"
  
  fault_binerrs_P23_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P23_0_1 = fault_binerrs_all$P23_0_1,
      P23_0_0 = fault_binerrs_all$P23_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P23_0_1 = numfldata$P23_0_1, P23_0_0 = numfldata$P23_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/114.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P23_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P23_0_1_treat_df, "Y", "P23_0_1")
  varnames[[114]] <-  "P23_0_1"
  
  fault_binerrs_P23_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P23_0_0 = fault_binerrs_all$P23_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P23_0_0 = numfldata$P23_0_0, P23_0_0 = numfldata$P23_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/115.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P23_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P23_0_0_treat_df, "Y", "P23_0_0")
  varnames[[115]] <-  "P23_0_0"
  
  fault_binerrs_P66_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P66_0_1 = fault_binerrs_all$P66_0_1,
      P66_0_0 = fault_binerrs_all$P66_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P66_0_1 = numfldata$P66_0_1, P66_0_0 = numfldata$P66_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/116.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P66_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P66_0_1_treat_df, "Y", "P66_0_1")
  varnames[[116]] <-  "P66_0_1"
  
  fault_binerrs_P66_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P66_0_0 = fault_binerrs_all$P66_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P66_0_0 = numfldata$P66_0_0, P66_0_0 = numfldata$P66_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/117.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P66_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P66_0_0_treat_df, "Y", "P66_0_0")
  varnames[[117]] <-  "P66_0_0"
  
  fault_binerrs_P5_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P5_0_1 = fault_binerrs_all$P5_0_1,
      P5_0_0 = fault_binerrs_all$P5_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P5_0_1 = numfldata$P5_0_1, P5_0_0 = numfldata$P5_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/118.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P5_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P5_0_1_treat_df, "Y", "P5_0_1")
  varnames[[118]] <-  "P5_0_1"
  
  fault_binerrs_d_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d_0 = fault_binerrs_all$d_0,
      den_4 = fault_binerrs_all$den_4,
      num_3 = fault_binerrs_all$num_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(d_0 = numfldata$d_0,
               den_4 = numfldata$den_4,
               num_3 = numfldata$num_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/119.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d_0_treat_df, "Y", "d_0")
  varnames[[119]] <-  "d_0"
  
  fault_binerrs_d_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d_1 = fault_binerrs_all$d_1,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(d_1 = numfldata$d_1, d_0 = numfldata$d_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/120.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["d_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_d_1_treat_df, "Y", "d_1")
  varnames[[120]] <-  "d_1"
  
  fault_binerrs_P5_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P5_0_0 = fault_binerrs_all$P5_0_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P5_0_0 = numfldata$P5_0_0,
      maxIterations_1 = numfldata$maxIterations_1,
      n_0 = numfldata$n_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/121.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P5_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P5_0_0_treat_df, "Y", "P5_0_0")
  varnames[[121]] <-  "P5_0_0"
  
  fault_binerrs_P46_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_0_0 = fault_binerrs_all$P46_0_0,
      q2_2 = fault_binerrs_all$q2_2,
      maxDenominator_0 = fault_binerrs_all$maxDenominator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P46_0_0 = numfldata$P46_0_0,
      q2_2 = numfldata$q2_2,
      maxDenominator_0 = numfldata$maxDenominator_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/122.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P46_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P46_0_0_treat_df, "Y", "P46_0_0")
  varnames[[122]] <-  "P46_0_0"
  
  fault_binerrs_str_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      str_1 = fault_binerrs_all$str_1,
      numerator_6 = fault_binerrs_all$numerator_6,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(str_1 = numfldata$str_1,
               numerator_6 = numfldata$numerator_6)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/123.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["str_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_str_1_treat_df, "Y", "str_1")
  varnames[[123]] <-  "str_1"
  
  fault_binerrs_value_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_4 = fault_binerrs_all$value_4,
      value_3 = fault_binerrs_all$value_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(value_4 = numfldata$value_4, value_3 = numfldata$value_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/124.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["value_4"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_value_4_treat_df, "Y", "value_4")
  varnames[[124]] <-  "value_4"
  
  fault_binerrs_value_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_5 = fault_binerrs_all$value_5,
      value_4 = fault_binerrs_all$value_4,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(value_5 = numfldata$value_5, value_4 = numfldata$value_4)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/125.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["value_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_value_5_treat_df, "Y", "value_5")
  varnames[[125]] <-  "value_5"
  
  fault_binerrs_str_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               str_0 = fault_binerrs_all$str_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(str_0 = numfldata$str_0, str_0 = numfldata$str_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/126.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["str_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_str_0_treat_df, "Y", "str_0")
  varnames[[126]] <-  "str_0"
  
  fault_binerrs_value_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_2 = fault_binerrs_all$value_2,
      value_1 = fault_binerrs_all$value_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(value_2 = numfldata$value_2, value_1 = numfldata$value_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/127.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["value_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_value_2_treat_df, "Y", "value_2")
  varnames[[127]] <-  "value_2"
  
  fault_binerrs_P62_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P62_0_0 = fault_binerrs_all$P62_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P62_0_0 = numfldata$P62_0_0, P62_0_0 = numfldata$P62_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/128.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P62_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P62_0_0_treat_df, "Y", "P62_0_0")
  varnames[[128]] <-  "P62_0_0"
  
  fault_binerrs_P62_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P62_0_1 = fault_binerrs_all$P62_0_1,
      P62_0_0 = fault_binerrs_all$P62_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P62_0_1 = numfldata$P62_0_1, P62_0_0 = numfldata$P62_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/129.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P62_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P62_0_1_treat_df, "Y", "P62_0_1")
  varnames[[129]] <-  "P62_0_1"
  
  fault_binerrs_value_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_1 = fault_binerrs_all$value_1,
      value_0 = fault_binerrs_all$value_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(value_1 = numfldata$value_1, value_0 = numfldata$value_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/130.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["value_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_value_1_treat_df, "Y", "value_1")
  varnames[[130]] <-  "value_1"
  
  fault_binerrs_str_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      str_3 = fault_binerrs_all$str_3,
      str_0 = fault_binerrs_all$str_0,
      str_3 = fault_binerrs_all$str_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      str_3 = numfldata$str_3,
      str_0 = numfldata$str_0,
      str_3 = numfldata$str_3
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/131.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["str_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_str_3_treat_df, "Y", "str_3")
  varnames[[131]] <-  "str_3"
  
  fault_binerrs_den_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_2 = fault_binerrs_all$den_2,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(den_2 = numfldata$den_2, den_1 = numfldata$den_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/132.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["den_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_den_2_treat_df, "Y", "den_2")
  varnames[[132]] <-  "den_2"
  
  fault_binerrs_P15_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P15_0_0 = fault_binerrs_all$P15_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P15_0_0 = numfldata$P15_0_0, P15_0_0 = numfldata$P15_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/133.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P15_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P15_0_0_treat_df, "Y", "P15_0_0")
  varnames[[133]] <-  "P15_0_0"
  
  fault_binerrs_den_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_3 = fault_binerrs_all$den_3,
      den_2 = fault_binerrs_all$den_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(den_3 = numfldata$den_3, den_2 = numfldata$den_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/134.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["den_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_den_3_treat_df, "Y", "den_3")
  varnames[[134]] <-  "den_3"
  
  fault_binerrs_P58_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P58_0_0 = fault_binerrs_all$P58_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P58_0_0 = numfldata$P58_0_0, P58_0_0 = numfldata$P58_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/135.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P58_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P58_0_0_treat_df, "Y", "P58_0_0")
  varnames[[135]] <-  "P58_0_0"
  
  fault_binerrs_P15_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P15_0_1 = fault_binerrs_all$P15_0_1,
      P15_0_0 = fault_binerrs_all$P15_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P15_0_1 = numfldata$P15_0_1, P15_0_0 = numfldata$P15_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/136.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P15_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P15_0_1_treat_df, "Y", "P15_0_1")
  varnames[[136]] <-  "P15_0_1"
  
  fault_binerrs_den_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_4 = fault_binerrs_all$den_4,
      den_3 = fault_binerrs_all$den_3,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      den_4 = numfldata$den_4,
      den_3 = numfldata$den_3,
      den_1 = numfldata$den_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/137.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["den_4"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_den_4_treat_df, "Y", "den_4")
  varnames[[137]] <-  "den_4"
  
  fault_binerrs_den_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_5 = fault_binerrs_all$den_5,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(den_5 = numfldata$den_5, d_0 = numfldata$d_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/138.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["den_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_den_5_treat_df, "Y", "den_5")
  varnames[[138]] <-  "den_5"
  
  fault_binerrs_P2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P2_0 = fault_binerrs_all$P2_0,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P2_0 = numfldata$P2_0, stop_1 = numfldata$stop_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/139.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P2_0_treat_df, "Y", "P2_0")
  varnames[[139]] <-  "P2_0"
  
  fault_binerrs_P27_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_0_0 = fault_binerrs_all$P27_0_0,
      numerator_1 = fault_binerrs_all$numerator_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P27_0_0 = numfldata$P27_0_0,
               numerator_1 = numfldata$numerator_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/140.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P27_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P27_0_0_treat_df, "Y", "P27_0_0")
  varnames[[140]] <-  "P27_0_0"
  
  fault_binerrs_p0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p0_1 = fault_binerrs_all$p0_1,
      p1_0 = fault_binerrs_all$p1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(p0_1 = numfldata$p0_1, p1_0 = numfldata$p1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/141.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p0_1_treat_df, "Y", "p0_1")
  varnames[[141]] <-  "p0_1"
  
  fault_binerrs_p0_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               p0_0 = fault_binerrs_all$p0_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(p0_0 = numfldata$p0_0, p0_0 = numfldata$p0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/142.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["p0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_p0_0_treat_df, "Y", "p0_0")
  varnames[[142]] <-  "p0_0"
  
  fault_binerrs_P22_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_1_0 = fault_binerrs_all$P22_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P22_1_0 = numfldata$P22_1_0, P22_1_0 = numfldata$P22_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/143.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P22_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P22_1_0_treat_df, "Y", "P22_1_0")
  varnames[[143]] <-  "P22_1_0"
  
  fault_binerrs_P19_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P19_0_1 = fault_binerrs_all$P19_0_1,
      P19_0_0 = fault_binerrs_all$P19_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P19_0_1 = numfldata$P19_0_1, P19_0_0 = numfldata$P19_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/144.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P19_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P19_0_1_treat_df, "Y", "P19_0_1")
  varnames[[144]] <-  "P19_0_1"
  
  fault_binerrs_P19_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P19_0_0 = fault_binerrs_all$P19_0_0,
      d1_0 = fault_binerrs_all$d1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P19_0_0 = numfldata$P19_0_0, d1_0 = numfldata$d1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/145.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P19_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P19_0_0_treat_df, "Y", "P19_0_0")
  varnames[[145]] <-  "P19_0_0"
  
  fault_binerrs_P22_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_1_1 = fault_binerrs_all$P22_1_1,
      P22_1_0 = fault_binerrs_all$P22_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P22_1_1 = numfldata$P22_1_1, P22_1_0 = numfldata$P22_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/146.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P22_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P22_1_1_treat_df, "Y", "P22_1_1")
  varnames[[146]] <-  "P22_1_1"
  
  fault_binerrs_uvp_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               uvp_0 = fault_binerrs_all$uvp_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(uvp_0 = numfldata$uvp_0, uvp_0 = numfldata$uvp_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/147.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["uvp_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_uvp_0_treat_df, "Y", "uvp_0")
  varnames[[147]] <-  "uvp_0"
  
  fault_binerrs_P4_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_1_0 = fault_binerrs_all$P4_1_0,
      value_4 = fault_binerrs_all$value_4,
      convergent_0 = fault_binerrs_all$convergent_0,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P4_1_0 = numfldata$P4_1_0,
      value_4 = numfldata$value_4,
      convergent_0 = numfldata$convergent_0,
      epsilon_2 = numfldata$epsilon_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/148.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P4_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P4_1_0_treat_df, "Y", "P4_1_0")
  varnames[[148]] <-  "P4_1_0"
  
  fault_binerrs_P51_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P51_0_1 = fault_binerrs_all$P51_0_1,
      P51_0_0 = fault_binerrs_all$P51_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P51_0_1 = numfldata$P51_0_1, P51_0_0 = numfldata$P51_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/149.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P51_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P51_0_1_treat_df, "Y", "P51_0_1")
  varnames[[149]] <-  "P51_0_1"
  
  fault_binerrs_P51_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P51_0_0 = fault_binerrs_all$P51_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P51_0_0 = numfldata$P51_0_0, P51_0_0 = numfldata$P51_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/150.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P51_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P51_0_0_treat_df, "Y", "P51_0_0")
  varnames[[150]] <-  "P51_0_0"
  
  fault_binerrs_P27_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_0_1 = fault_binerrs_all$P27_0_1,
      P27_0_0 = fault_binerrs_all$P27_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P27_0_1 = numfldata$P27_0_1, P27_0_0 = numfldata$P27_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/151.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P27_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P27_0_1_treat_df, "Y", "P27_0_1")
  varnames[[151]] <-  "P27_0_1"
  
  fault_binerrs_P34_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P34_0_0 = fault_binerrs_all$P34_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P34_0_0 = numfldata$P34_0_0, P34_0_0 = numfldata$P34_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/152.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P34_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P34_0_0_treat_df, "Y", "P34_0_0")
  varnames[[152]] <-  "P34_0_0"
  
  fault_binerrs_maxIterations_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      maxIterations_2 = fault_binerrs_all$maxIterations_2,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      maxIterations_2 = numfldata$maxIterations_2,
      maxIterations_1 = numfldata$maxIterations_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/153.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["maxIterations_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_maxIterations_2_treat_df,
                           "Y",
                           "maxIterations_2")
  varnames[[153]] <-  "maxIterations_2"
  
  fault_binerrs_P34_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P34_0_1 = fault_binerrs_all$P34_0_1,
      P34_0_0 = fault_binerrs_all$P34_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P34_0_1 = numfldata$P34_0_1, P34_0_0 = numfldata$P34_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/154.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P34_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P34_0_1_treat_df, "Y", "P34_0_1")
  varnames[[154]] <-  "P34_0_1"
  
  fault_binerrs_P70_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P70_0_0 = fault_binerrs_all$P70_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P70_0_0 = numfldata$P70_0_0, P70_0_0 = numfldata$P70_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/155.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P70_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P70_0_0_treat_df, "Y", "P70_0_0")
  varnames[[155]] <-  "P70_0_0"
  
  fault_binerrs_P9_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_0_0 = fault_binerrs_all$P9_0_0,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P9_0_0 = numfldata$P9_0_0, den_1 = numfldata$den_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/156.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P9_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P9_0_0_treat_df, "Y", "P9_0_0")
  varnames[[156]] <-  "P9_0_0"
  
  fault_binerrs_k_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      k_0 = fault_binerrs_all$k_0,
      exponent_1 = fault_binerrs_all$exponent_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(k_0 = numfldata$k_0, exponent_1 = numfldata$exponent_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/157.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["k_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_k_0_treat_df, "Y", "k_0")
  varnames[[157]] <-  "k_0"
  
  fault_binerrs_P9_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_0_1 = fault_binerrs_all$P9_0_1,
      P9_0_0 = fault_binerrs_all$P9_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P9_0_1 = numfldata$P9_0_1, P9_0_0 = numfldata$P9_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/158.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P9_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P9_0_1_treat_df, "Y", "P9_0_1")
  varnames[[158]] <-  "P9_0_1"
  
  fault_binerrs_q2_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q2_2 = fault_binerrs_all$q2_2,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(q2_2 = numfldata$q2_2, q2_1 = numfldata$q2_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/159.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q2_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q2_2_treat_df, "Y", "q2_2")
  varnames[[159]] <-  "q2_2"
  
  fault_binerrs_gcd_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      gcd_0 = fault_binerrs_all$gcd_0,
      denominator_6 = fault_binerrs_all$denominator_6,
      numerator_5 = fault_binerrs_all$numerator_5,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      gcd_0 = numfldata$gcd_0,
      denominator_6 = numfldata$denominator_6,
      numerator_5 = numfldata$numerator_5
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/160.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["gcd_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_gcd_0_treat_df, "Y", "gcd_0")
  varnames[[160]] <-  "gcd_0"
  
  fault_binerrs_P38_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P38_0_1 = fault_binerrs_all$P38_0_1,
      P38_0_0 = fault_binerrs_all$P38_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P38_0_1 = numfldata$P38_0_1, P38_0_0 = numfldata$P38_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/161.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P38_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P38_0_1_treat_df, "Y", "P38_0_1")
  varnames[[161]] <-  "P38_0_1"
  
  fault_binerrs_q2_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q2_0 = fault_binerrs_all$q2_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(q2_0 = numfldata$q2_0, q2_0 = numfldata$q2_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/162.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q2_0_treat_df, "Y", "q2_0")
  varnames[[162]] <-  "q2_0"
  
  fault_binerrs_P46_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_1_0 = fault_binerrs_all$P46_1_0,
      value_5 = fault_binerrs_all$value_5,
      convergent_0 = fault_binerrs_all$convergent_0,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P46_1_0 = numfldata$P46_1_0,
      value_5 = numfldata$value_5,
      convergent_0 = numfldata$convergent_0,
      epsilon_2 = numfldata$epsilon_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/163.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P46_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P46_1_0_treat_df, "Y", "P46_1_0")
  varnames[[163]] <-  "P46_1_0"
  
  fault_binerrs_q2_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q2_1 = fault_binerrs_all$q2_1,
      q0_0 = fault_binerrs_all$q0_0,
      q1_0 = fault_binerrs_all$q1_0,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      q2_1 = numfldata$q2_1,
      q0_0 = numfldata$q0_0,
      q1_0 = numfldata$q1_0,
      a1_0 = numfldata$a1_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/164.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q2_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q2_1_treat_df, "Y", "q2_1")
  varnames[[164]] <-  "q2_1"
  
  fault_binerrs_P55_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P55_0_0 = fault_binerrs_all$P55_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P55_0_0 = numfldata$P55_0_0, P55_0_0 = numfldata$P55_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/165.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P55_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P55_0_0_treat_df, "Y", "P55_0_0")
  varnames[[165]] <-  "P55_0_0"
  
  fault_binerrs_shift_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      shift_1 = fault_binerrs_all$shift_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(shift_1 = numfldata$shift_1, shift_1 = numfldata$shift_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/166.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["shift_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_shift_1_treat_df, "Y", "shift_1")
  varnames[[166]] <-  "shift_1"
  
  fault_binerrs_P55_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P55_0_1 = fault_binerrs_all$P55_0_1,
      P55_0_0 = fault_binerrs_all$P55_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P55_0_1 = numfldata$P55_0_1, P55_0_0 = numfldata$P55_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/167.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P55_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P55_0_1_treat_df, "Y", "P55_0_1")
  varnames[[167]] <-  "P55_0_1"
  
  fault_binerrs_P42_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P42_0_1 = fault_binerrs_all$P42_0_1,
      P42_0_0 = fault_binerrs_all$P42_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P42_0_1 = numfldata$P42_0_1, P42_0_0 = numfldata$P42_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/168.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P42_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P42_0_1_treat_df, "Y", "P42_0_1")
  varnames[[168]] <-  "P42_0_1"
  
  fault_binerrs_P42_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P42_0_0 = fault_binerrs_all$P42_0_0,
      overflow_0 = fault_binerrs_all$overflow_0,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P42_0_0 = numfldata$P42_0_0,
      overflow_0 = numfldata$overflow_0,
      a0_0 = numfldata$a0_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/169.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P42_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P42_0_0_treat_df, "Y", "P42_0_0")
  varnames[[169]] <-  "P42_0_0"
  
  fault_binerrs_result_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_2 = fault_binerrs_all$result_2,
      result_0 = fault_binerrs_all$result_0,
      result_1 = fault_binerrs_all$result_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      result_2 = numfldata$result_2,
      result_0 = numfldata$result_0,
      result_1 = numfldata$result_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/170.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_2_treat_df, "Y", "result_2")
  varnames[[170]] <-  "result_2"
  
  fault_binerrs_P38_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P38_0_0 = fault_binerrs_all$P38_0_0,
      exponent_0 = fault_binerrs_all$exponent_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P38_0_0 = numfldata$P38_0_0,
               exponent_0 = numfldata$exponent_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/171.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P38_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P38_0_0_treat_df, "Y", "P38_0_0")
  varnames[[171]] <-  "P38_0_0"
  
  fault_binerrs_result_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_3 = fault_binerrs_all$result_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(result_3 = numfldata$result_3,
               result_3 = numfldata$result_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/172.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_3_treat_df, "Y", "result_3")
  varnames[[172]] <-  "result_3"
  
  fault_binerrs_result_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_4 = fault_binerrs_all$result_4,
      shift_1 = fault_binerrs_all$shift_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(result_4 = numfldata$result_4, shift_1 = numfldata$shift_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/173.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_4"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_4_treat_df, "Y", "result_4")
  varnames[[173]] <-  "result_4"
  
  fault_binerrs_P29_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P29_1_0 = fault_binerrs_all$P29_1_0,
      numerator_3 = fault_binerrs_all$numerator_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P29_1_0 = numfldata$P29_1_0,
               numerator_3 = numfldata$numerator_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/174.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P29_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P29_1_0_treat_df, "Y", "P29_1_0")
  varnames[[174]] <-  "P29_1_0"
  
  fault_binerrs_shift_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      shift_0 = fault_binerrs_all$shift_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(shift_0 = numfldata$shift_0, shift_0 = numfldata$shift_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/175.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["shift_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_shift_0_treat_df, "Y", "shift_0")
  varnames[[175]] <-  "shift_0"
  
  fault_binerrs_result_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_5 = fault_binerrs_all$result_5,
      result_3 = fault_binerrs_all$result_3,
      result_4 = fault_binerrs_all$result_4,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      result_5 = numfldata$result_5,
      result_3 = numfldata$result_3,
      result_4 = numfldata$result_4
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/176.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_5_treat_df, "Y", "result_5")
  varnames[[176]] <-  "result_5"
  
  fault_binerrs_P12_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P12_0_0 = fault_binerrs_all$P12_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P12_0_0 = numfldata$P12_0_0, P12_0_0 = numfldata$P12_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/177.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P12_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P12_0_0_treat_df, "Y", "P12_0_0")
  varnames[[177]] <-  "P12_0_0"
  
  fault_binerrs_denominator_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_3 = fault_binerrs_all$denominator_3,
      denominator_1 = fault_binerrs_all$denominator_1,
      denominator_2 = fault_binerrs_all$denominator_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      denominator_3 = numfldata$denominator_3,
      denominator_1 = numfldata$denominator_1,
      denominator_2 = numfldata$denominator_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/178.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_3_treat_df, "Y", "denominator_3")
  varnames[[178]] <-  "denominator_3"
  
  fault_binerrs_result_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_0 = fault_binerrs_all$result_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(result_0 = numfldata$result_0,
               result_0 = numfldata$result_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/179.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_0_treat_df, "Y", "result_0")
  varnames[[179]] <-  "result_0"
  
  fault_binerrs_denominator_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_1 = fault_binerrs_all$denominator_1,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      denominator_1 = numfldata$denominator_1,
      denominator_0 = numfldata$denominator_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/180.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_1_treat_df, "Y", "denominator_1")
  varnames[[180]] <-  "denominator_1"
  
  fault_binerrs_numerator_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_6 = fault_binerrs_all$numerator_6,
      gcd_0 = fault_binerrs_all$gcd_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(numerator_6 = numfldata$numerator_6,
               gcd_0 = numfldata$gcd_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/181.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["numerator_6"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_numerator_6_treat_df, "Y", "numerator_6")
  varnames[[181]] <-  "numerator_6"
  
  fault_binerrs_result_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_1 = fault_binerrs_all$result_1,
      shift_0 = fault_binerrs_all$shift_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(result_1 = numfldata$result_1, shift_0 = numfldata$shift_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/182.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["result_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_result_1_treat_df, "Y", "result_1")
  varnames[[182]] <-  "result_1"
  
  fault_binerrs_denominator_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_2 = fault_binerrs_all$denominator_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      denominator_2 = numfldata$denominator_2,
      denominator_2 = numfldata$denominator_2
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/183.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_2_treat_df, "Y", "denominator_2")
  varnames[[183]] <-  "denominator_2"
  
  fault_binerrs_denominator_7_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_7 = fault_binerrs_all$denominator_7,
      gcd_0 = fault_binerrs_all$gcd_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(denominator_7 = numfldata$denominator_7,
               gcd_0 = numfldata$gcd_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/184.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_7"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_7_treat_df, "Y", "denominator_7")
  varnames[[184]] <-  "denominator_7"
  
  fault_binerrs_denominator_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_5 = fault_binerrs_all$denominator_5,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(denominator_5 = numfldata$denominator_5)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/185.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_5_treat_df, "Y", "denominator_5")
  varnames[[185]] <-  "denominator_5"
  
  fault_binerrs_denominator_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_6 = fault_binerrs_all$denominator_6,
      denominator_3 = fault_binerrs_all$denominator_3,
      denominator_5 = fault_binerrs_all$denominator_5,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      denominator_6 = numfldata$denominator_6,
      denominator_3 = numfldata$denominator_3,
      denominator_5 = numfldata$denominator_5
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/186.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["denominator_6"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_denominator_6_treat_df, "Y", "denominator_6")
  varnames[[186]] <-  "denominator_6"
  
  fault_binerrs_P22_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_0_1 = fault_binerrs_all$P22_0_1,
      P22_0_0 = fault_binerrs_all$P22_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P22_0_1 = numfldata$P22_0_1, P22_0_0 = numfldata$P22_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/187.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P22_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P22_0_1_treat_df, "Y", "P22_0_1")
  varnames[[187]] <-  "P22_0_1"
  
  fault_binerrs_P22_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_0_0 = fault_binerrs_all$P22_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P22_0_0 = numfldata$P22_0_0, P22_0_0 = numfldata$P22_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/188.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P22_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P22_0_0_treat_df, "Y", "P22_0_0")
  varnames[[188]] <-  "P22_0_0"
  
  fault_binerrs_a1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a1_0 = fault_binerrs_all$a1_0,
      r1_0 = fault_binerrs_all$r1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(a1_0 = numfldata$a1_0, r1_0 = numfldata$r1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/189.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["a1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_a1_0_treat_df, "Y", "a1_0")
  varnames[[189]] <-  "a1_0"
  
  fault_binerrs_P47_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P47_0_0 = fault_binerrs_all$P47_0_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P47_0_0 = numfldata$P47_0_0,
      maxIterations_1 = numfldata$maxIterations_1,
      n_0 = numfldata$n_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/190.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P47_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P47_0_0_treat_df, "Y", "P47_0_0")
  varnames[[190]] <-  "P47_0_0"
  
  fault_binerrs_P47_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P47_0_1 = fault_binerrs_all$P47_0_1,
      P47_0_0 = fault_binerrs_all$P47_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P47_0_1 = numfldata$P47_0_1, P47_0_0 = numfldata$P47_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/191.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P47_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P47_0_1_treat_df, "Y", "P47_0_1")
  varnames[[191]] <-  "P47_0_1"
  
  fault_binerrs_P65_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P65_0_1 = fault_binerrs_all$P65_0_1,
      P65_0_0 = fault_binerrs_all$P65_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P65_0_1 = numfldata$P65_0_1, P65_0_0 = numfldata$P65_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/192.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P65_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P65_0_1_treat_df, "Y", "P65_0_1")
  varnames[[192]] <-  "P65_0_1"
  
  fault_binerrs_P65_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P65_0_0 = fault_binerrs_all$P65_0_0,
      exponent_4 = fault_binerrs_all$exponent_4,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P65_0_0 = numfldata$P65_0_0,
               exponent_4 = numfldata$exponent_4)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/193.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P65_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P65_0_0_treat_df, "Y", "P65_0_0")
  varnames[[193]] <-  "P65_0_0"
  
  fault_binerrs_P9_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_1_0 = fault_binerrs_all$P9_1_0,
      num_1 = fault_binerrs_all$num_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P9_1_0 = numfldata$P9_1_0, num_1 = numfldata$num_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/194.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P9_1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P9_1_0_treat_df, "Y", "P9_1_0")
  varnames[[194]] <-  "P9_1_0"
  
  fault_binerrs_P9_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_1_1 = fault_binerrs_all$P9_1_1,
      P9_1_0 = fault_binerrs_all$P9_1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P9_1_1 = numfldata$P9_1_1, P9_1_0 = numfldata$P9_1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/195.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P9_1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P9_1_1_treat_df, "Y", "P9_1_1")
  varnames[[195]] <-  "P9_1_1"
  
  fault_binerrs_P6_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P6_0_0 = fault_binerrs_all$P6_0_0,
      q2_3 = fault_binerrs_all$q2_3,
      maxDenominator_1 = fault_binerrs_all$maxDenominator_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P6_0_0 = numfldata$P6_0_0,
      q2_3 = numfldata$q2_3,
      maxDenominator_1 = numfldata$maxDenominator_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/196.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P6_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P6_0_0_treat_df, "Y", "P6_0_0")
  varnames[[196]] <-  "P6_0_0"
  
  fault_binerrs_P16_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P16_0_0 = fault_binerrs_all$P16_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P16_0_0 = numfldata$P16_0_0, P16_0_0 = numfldata$P16_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/197.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P16_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P16_0_0_treat_df, "Y", "P16_0_0")
  varnames[[197]] <-  "P16_0_0"
  
  fault_binerrs_P59_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P59_0_0 = fault_binerrs_all$P59_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P59_0_0 = numfldata$P59_0_0, P59_0_0 = numfldata$P59_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/198.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P59_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P59_0_0_treat_df, "Y", "P59_0_0")
  varnames[[198]] <-  "P59_0_0"
  
  fault_binerrs_q1_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q1_0 = fault_binerrs_all$q1_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(q1_0 = numfldata$q1_0, q1_0 = numfldata$q1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/199.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q1_0_treat_df, "Y", "q1_0")
  varnames[[199]] <-  "q1_0"
  
  fault_binerrs_P46_2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_2_0 = fault_binerrs_all$P46_2_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P46_2_0 = numfldata$P46_2_0,
      maxIterations_1 = numfldata$maxIterations_1,
      n_0 = numfldata$n_0
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/200.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P46_2_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P46_2_0_treat_df, "Y", "P46_2_0")
  varnames[[200]] <-  "P46_2_0"
  
  fault_binerrs_P59_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P59_0_1 = fault_binerrs_all$P59_0_1,
      P59_0_0 = fault_binerrs_all$P59_0_0,
      P59_0_1 = fault_binerrs_all$P59_0_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P59_0_1 = numfldata$P59_0_1,
      P59_0_0 = numfldata$P59_0_0,
      P59_0_1 = numfldata$P59_0_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/201.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P59_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P59_0_1_treat_df, "Y", "P59_0_1")
  varnames[[201]] <-  "P59_0_1"
  
  fault_binerrs_q1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q1_1 = fault_binerrs_all$q1_1,
      q2_2 = fault_binerrs_all$q2_2,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(q1_1 = numfldata$q1_1, q2_2 = numfldata$q2_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/202.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q1_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q1_1_treat_df, "Y", "q1_1")
  varnames[[202]] <-  "q1_1"
  
  fault_binerrs_P16_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P16_0_1 = fault_binerrs_all$P16_0_1,
      P16_0_0 = fault_binerrs_all$P16_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P16_0_1 = numfldata$P16_0_1, P16_0_0 = numfldata$P16_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/203.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P16_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P16_0_1_treat_df, "Y", "P16_0_1")
  varnames[[203]] <-  "P16_0_1"
  
  fault_binerrs_P32_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P32_0_1 = fault_binerrs_all$P32_0_1,
      P32_0_0 = fault_binerrs_all$P32_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P32_0_1 = numfldata$P32_0_1, P32_0_0 = numfldata$P32_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/204.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P32_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P32_0_1_treat_df, "Y", "P32_0_1")
  varnames[[204]] <-  "P32_0_1"
  
  fault_binerrs_P32_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P32_0_0 = fault_binerrs_all$P32_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P32_0_0 = numfldata$P32_0_0, P32_0_0 = numfldata$P32_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/205.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P32_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P32_0_0_treat_df, "Y", "P32_0_0")
  varnames[[205]] <-  "P32_0_0"
  
  fault_binerrs_P50_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P50_0_1 = fault_binerrs_all$P50_0_1,
      P50_0_0 = fault_binerrs_all$P50_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P50_0_1 = numfldata$P50_0_1, P50_0_0 = numfldata$P50_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/206.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P50_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P50_0_1_treat_df, "Y", "P50_0_1")
  varnames[[206]] <-  "P50_0_1"
  
  fault_binerrs_P50_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P50_0_0 = fault_binerrs_all$P50_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P50_0_0 = numfldata$P50_0_0, P50_0_0 = numfldata$P50_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/207.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P50_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P50_0_0_treat_df, "Y", "P50_0_0")
  varnames[[207]] <-  "P50_0_0"
  
  fault_binerrs_r1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r1_0 = fault_binerrs_all$r1_0,
      r0_0 = fault_binerrs_all$r0_0,
      a0_2 = fault_binerrs_all$a0_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(r1_0 = numfldata$r1_0,
               r0_0 = numfldata$r0_0,
               a0_2 = numfldata$a0_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/208.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["r1_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_r1_0_treat_df, "Y", "r1_0")
  varnames[[208]] <-  "r1_0"
  
  fault_binerrs_P60_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P60_0_0 = fault_binerrs_all$P60_0_0,
      result_3 = fault_binerrs_all$result_3,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P60_0_0 = numfldata$P60_0_0, result_3 = numfldata$result_3)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/209.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P60_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P60_0_0_treat_df, "Y", "P60_0_0")
  varnames[[209]] <-  "P60_0_0"
  
  fault_binerrs_P60_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P60_0_1 = fault_binerrs_all$P60_0_1,
      P60_0_0 = fault_binerrs_all$P60_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P60_0_1 = numfldata$P60_0_1, P60_0_0 = numfldata$P60_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/210.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P60_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P60_0_1_treat_df, "Y", "P60_0_1")
  varnames[[210]] <-  "P60_0_1"
  
  fault_binerrs_a0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_0 = fault_binerrs_all$a0_0,
      r0_0 = fault_binerrs_all$r0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(a0_0 = numfldata$a0_0, r0_0 = numfldata$r0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/211.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["a0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_a0_0_treat_df, "Y", "a0_0")
  varnames[[211]] <-  "a0_0"
  
  fault_binerrs_a0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_1 = fault_binerrs_all$a0_1,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(a0_1 = numfldata$a0_1, a0_0 = numfldata$a0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/212.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["a0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_a0_1_treat_df, "Y", "a0_1")
  varnames[[212]] <-  "a0_1"
  
  fault_binerrs_a0_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_2 = fault_binerrs_all$a0_2,
      a0_1 = fault_binerrs_all$a0_1,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(a0_2 = numfldata$a0_2, a0_1 = numfldata$a0_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/213.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["a0_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_a0_2_treat_df, "Y", "a0_2")
  varnames[[213]] <-  "a0_2"
  
  fault_binerrs_a0_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_3 = fault_binerrs_all$a0_3,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(a0_3 = numfldata$a0_3, a1_0 = numfldata$a1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/214.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["a0_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_a0_3_treat_df, "Y", "a0_3")
  varnames[[214]] <-  "a0_3"
  
  fault_binerrs_den_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_1 = fault_binerrs_all$den_1,
      den_0 = fault_binerrs_all$den_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(den_1 = numfldata$den_1, den_0 = numfldata$den_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/215.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["den_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_den_1_treat_df, "Y", "den_1")
  varnames[[215]] <-  "den_1"
  
  fault_binerrs_P69_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P69_0_1 = fault_binerrs_all$P69_0_1,
      P69_0_0 = fault_binerrs_all$P69_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P69_0_1 = numfldata$P69_0_1, P69_0_0 = numfldata$P69_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/216.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P69_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P69_0_1_treat_df, "Y", "P69_0_1")
  varnames[[216]] <-  "P69_0_1"
  
  fault_binerrs_P69_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P69_0_0 = fault_binerrs_all$P69_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P69_0_0 = numfldata$P69_0_0, P69_0_0 = numfldata$P69_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/217.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P69_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P69_0_0_treat_df, "Y", "P69_0_0")
  varnames[[217]] <-  "P69_0_0"
  
  fault_binerrs_P43_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P43_0_0 = fault_binerrs_all$P43_0_0,
      value_4 = fault_binerrs_all$value_4,
      a0_1 = fault_binerrs_all$a0_1,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P43_0_0 = numfldata$P43_0_0,
      value_4 = numfldata$value_4,
      a0_1 = numfldata$a0_1,
      epsilon_1 = numfldata$epsilon_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/218.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P43_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P43_0_0_treat_df, "Y", "P43_0_0")
  varnames[[218]] <-  "P43_0_0"
  
  fault_binerrs_P43_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P43_0_1 = fault_binerrs_all$P43_0_1,
      P43_0_0 = fault_binerrs_all$P43_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P43_0_1 = numfldata$P43_0_1, P43_0_0 = numfldata$P43_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/219.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P43_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P43_0_1_treat_df, "Y", "P43_0_1")
  varnames[[219]] <-  "P43_0_1"
  
  fault_binerrs_P26_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P26_0_1 = fault_binerrs_all$P26_0_1,
      P26_0_0 = fault_binerrs_all$P26_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P26_0_1 = numfldata$P26_0_1, P26_0_0 = numfldata$P26_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/220.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P26_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P26_0_1_treat_df, "Y", "P26_0_1")
  varnames[[220]] <-  "P26_0_1"
  
  fault_binerrs_P26_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P26_0_0 = fault_binerrs_all$P26_0_0,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P26_0_0 = numfldata$P26_0_0,
               numerator_0 = numfldata$numerator_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/221.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P26_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P26_0_0_treat_df, "Y", "P26_0_0")
  varnames[[221]] <-  "P26_0_0"
  
  fault_binerrs_stop_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(stop_1 = numfldata$stop_1, stop_1 = numfldata$stop_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/222.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["stop_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_stop_1_treat_df, "Y", "stop_1")
  varnames[[222]] <-  "stop_1"
  
  fault_binerrs_P1_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P1_0_0 = fault_binerrs_all$P1_0_0,
      value_3 = fault_binerrs_all$value_3,
      a0_1 = fault_binerrs_all$a0_1,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(
      P1_0_0 = numfldata$P1_0_0,
      value_3 = numfldata$value_3,
      a0_1 = numfldata$a0_1,
      epsilon_1 = numfldata$epsilon_1
    )
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/223.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P1_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P1_0_0_treat_df, "Y", "P1_0_0")
  varnames[[223]] <-  "P1_0_0"
  
  fault_binerrs_q0_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q0_0 = fault_binerrs_all$q0_0,
               stringsAsFactors = FALSE)
  numFLOut <- data.frame(q0_0 = numfldata$q0_0, q0_0 = numfldata$q0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/224.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q0_0_treat_df, "Y", "q0_0")
  varnames[[224]] <-  "q0_0"
  
  fault_binerrs_q0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q0_1 = fault_binerrs_all$q0_1,
      q1_0 = fault_binerrs_all$q1_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(q0_1 = numfldata$q0_1, q1_0 = numfldata$q1_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/225.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["q0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_q0_1_treat_df, "Y", "q0_1")
  varnames[[225]] <-  "q0_1"
  
  fault_binerrs_P1_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P1_0_1 = fault_binerrs_all$P1_0_1,
      P1_0_0 = fault_binerrs_all$P1_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P1_0_1 = numfldata$P1_0_1, P1_0_0 = numfldata$P1_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/226.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P1_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P1_0_1_treat_df, "Y", "P1_0_1")
  varnames[[226]] <-  "P1_0_1"
  
  fault_binerrs_stop_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      stop_0 = fault_binerrs_all$stop_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(stop_0 = numfldata$stop_0, stop_0 = numfldata$stop_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/227.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["stop_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_stop_0_treat_df, "Y", "stop_0")
  varnames[[227]] <-  "stop_0"
  
  fault_binerrs_nOd_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               nOd_0 = fault_binerrs_all$nOd_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(nOd_0 = numfldata$nOd_0, nOd_0 = numfldata$nOd_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/228.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["nOd_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_nOd_0_treat_df, "Y", "nOd_0")
  varnames[[228]] <-  "nOd_0"
  
  fault_binerrs_dOn_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               dOn_0 = fault_binerrs_all$dOn_0,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(dOn_0 = numfldata$dOn_0, dOn_0 = numfldata$dOn_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/229.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["dOn_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_dOn_0_treat_df, "Y", "dOn_0")
  varnames[[229]] <-  "dOn_0"
  
  fault_binerrs_num_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_5 = fault_binerrs_all$num_5,
      num_4 = fault_binerrs_all$num_4,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(num_5 = numfldata$num_5, num_4 = numfldata$num_4)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/230.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_5"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_5_treat_df, "Y", "num_5")
  varnames[[230]] <-  "num_5"
  
  fault_binerrs_num_6_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               num_6 = fault_binerrs_all$num_6,
               stringsAsFactors = FALSE)
  numFLOut <-
    data.frame(num_6 = numfldata$num_6, num_6 = numfldata$num_6)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/231.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_6"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_6_treat_df, "Y", "num_6")
  varnames[[231]] <-  "num_6"
  
  fault_binerrs_P37_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P37_0_0 = fault_binerrs_all$P37_0_0,
      value_1 = fault_binerrs_all$value_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P37_0_0 = numfldata$P37_0_0, value_1 = numfldata$value_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/232.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P37_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P37_0_0_treat_df, "Y", "P37_0_0")
  varnames[[232]] <-  "P37_0_0"
  
  fault_binerrs_num_7_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_7 = fault_binerrs_all$num_7,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(num_7 = numfldata$num_7,
               denominator_0 = numfldata$denominator_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/233.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_7"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_7_treat_df, "Y", "num_7")
  varnames[[233]] <-  "num_7"
  
  fault_binerrs_P37_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P37_0_1 = fault_binerrs_all$P37_0_1,
      P37_0_0 = fault_binerrs_all$P37_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P37_0_1 = numfldata$P37_0_1, P37_0_0 = numfldata$P37_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/234.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P37_0_1"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P37_0_1_treat_df, "Y", "P37_0_1")
  varnames[[234]] <-  "P37_0_1"
  
  fault_binerrs_P11_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P11_0_0 = fault_binerrs_all$P11_0_0,
      den_5 = fault_binerrs_all$den_5,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P11_0_0 = numfldata$P11_0_0, den_5 = numfldata$den_5)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/235.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P11_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P11_0_0_treat_df, "Y", "P11_0_0")
  varnames[[235]] <-  "P11_0_0"
  
  fault_binerrs_P54_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P54_0_0 = fault_binerrs_all$P54_0_0,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(P54_0_0 = numfldata$P54_0_0, P54_0_0 = numfldata$P54_0_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/236.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["P54_0_0"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_P54_0_0_treat_df, "Y", "P54_0_0")
  varnames[[236]] <-  "P54_0_0"
  
  fault_binerrs_num_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_2 = fault_binerrs_all$num_2,
      num_1 = fault_binerrs_all$num_1,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(num_2 = numfldata$num_2, num_1 = numfldata$num_1)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/237.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_2"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_2_treat_df, "Y", "num_2")
  varnames[[237]] <-  "num_2"
  
  fault_binerrs_num_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_3 = fault_binerrs_all$num_3,
      num_2 = fault_binerrs_all$num_2,
      stringsAsFactors = FALSE
    )
  numFLOut <-
    data.frame(num_3 = numfldata$num_3, num_2 = numfldata$num_2)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/238.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_3"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_3_treat_df, "Y", "num_3")
  varnames[[238]] <-  "num_3"
  
  fault_binerrs_num_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_4 = fault_binerrs_all$num_4,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  numFLOut <- data.frame(num_4 = numfldata$num_4, d_0 = numfldata$d_0)
  id <- rownames(numFLOut)
  numFLOut <- cbind(id, numFLOut)
  write.table(
    numFLOut,
    file = "./NUMFL/239.txt",
    quote = F,
    row.names = F,
    col.names = T
  )
  results[["num_4"]] <-
    CFmeansForDecileBinsRF(fault_binerrs_num_4_treat_df, "Y", "num_4")
  varnames[[239]] <-  "num_4"
  
  varframe <-
    data.frame(matrix(
      unlist(varnames),
      nrow = length(varnames),
      byrow = T
    ), stringsAsFactors = FALSE)
  names(varframe) <- " Variables "
  ID <- rownames(varframe)
  varframe <- cbind(ID, varframe)
  write.csv(varframe, file = "./NUMFL/numflvariables.csv", row.names = F)
  
  return(results)
  
}
genCFmeansESP_fault_binerrs <- function() {
  results <- data.frame(row.names = seq(1, 10))
  
  Baah2010 <- data.frame(row.names = "Baah2010")
  
  fault_binerrs_r0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r0_1 = fault_binerrs_all$r0_1,
      r1_0 = fault_binerrs_all$r1_0,
      stringsAsFactors = FALSE
    )
  results[["r0_1"]] <-
    CFmeansForESP(fault_binerrs_r0_1_treat_df, "Y", "r0_1")
  Baah2010[["r0_1"]] <-
    computeBaah(fault_binerrs_r0_1_treat_df, "Y", "r0_1")
  
  fault_binerrs_bits_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      bits_0 = fault_binerrs_all$bits_0,
      value_2 = fault_binerrs_all$value_2,
      stringsAsFactors = FALSE
    )
  results[["bits_0"]] <-
    CFmeansForESP(fault_binerrs_bits_0_treat_df, "Y", "bits_0")
  Baah2010[["bits_0"]] <-
    computeBaah(fault_binerrs_bits_0_treat_df, "Y", "bits_0")
  
  fault_binerrs_P64_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P64_0_0 = fault_binerrs_all$P64_0_0,
      exponent_2 = fault_binerrs_all$exponent_2,
      stringsAsFactors = FALSE
    )
  results[["P64_0_0"]] <-
    CFmeansForESP(fault_binerrs_P64_0_0_treat_df, "Y", "P64_0_0")
  Baah2010[["P64_0_0"]] <-
    computeBaah(fault_binerrs_P64_0_0_treat_df, "Y", "P64_0_0")
  
  fault_binerrs_P64_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P64_0_1 = fault_binerrs_all$P64_0_1,
      P64_0_0 = fault_binerrs_all$P64_0_0,
      stringsAsFactors = FALSE
    )
  results[["P64_0_1"]] <-
    CFmeansForESP(fault_binerrs_P64_0_1_treat_df, "Y", "P64_0_1")
  Baah2010[["P64_0_1"]] <-
    computeBaah(fault_binerrs_P64_0_1_treat_df, "Y", "P64_0_1")
  
  fault_binerrs_P21_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P21_0_1 = fault_binerrs_all$P21_0_1,
      P21_0_0 = fault_binerrs_all$P21_0_0,
      stringsAsFactors = FALSE
    )
  results[["P21_0_1"]] <-
    CFmeansForESP(fault_binerrs_P21_0_1_treat_df, "Y", "P21_0_1")
  Baah2010[["P21_0_1"]] <-
    computeBaah(fault_binerrs_P21_0_1_treat_df, "Y", "P21_0_1")
  
  fault_binerrs_P21_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P21_0_0 = fault_binerrs_all$P21_0_0,
      stringsAsFactors = FALSE
    )
  results[["P21_0_0"]] <-
    CFmeansForESP(fault_binerrs_P21_0_0_treat_df, "Y", "P21_0_0")
  Baah2010[["P21_0_0"]] <-
    computeBaah(fault_binerrs_P21_0_0_treat_df, "Y", "P21_0_0")
  
  fault_binerrs_P48_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P48_0_0 = fault_binerrs_all$P48_0_0,
      q2_3 = fault_binerrs_all$q2_3,
      maxDenominator_0 = fault_binerrs_all$maxDenominator_0,
      stringsAsFactors = FALSE
    )
  results[["P48_0_0"]] <-
    CFmeansForESP(fault_binerrs_P48_0_0_treat_df, "Y", "P48_0_0")
  Baah2010[["P48_0_0"]] <-
    computeBaah(fault_binerrs_P48_0_0_treat_df, "Y", "P48_0_0")
  
  fault_binerrs_sign_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      sign_1 = fault_binerrs_all$sign_1,
      sign_0 = fault_binerrs_all$sign_0,
      stringsAsFactors = FALSE
    )
  results[["sign_1"]] <-
    CFmeansForESP(fault_binerrs_sign_1_treat_df, "Y", "sign_1")
  Baah2010[["sign_1"]] <-
    computeBaah(fault_binerrs_sign_1_treat_df, "Y", "sign_1")
  
  fault_binerrs_sign_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      sign_0 = fault_binerrs_all$sign_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  results[["sign_0"]] <-
    CFmeansForESP(fault_binerrs_sign_0_treat_df, "Y", "sign_0")
  Baah2010[["sign_0"]] <-
    computeBaah(fault_binerrs_sign_0_treat_df, "Y", "sign_0")
  
  fault_binerrs_r0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r0_0 = fault_binerrs_all$r0_0,
      value_3 = fault_binerrs_all$value_3,
      stringsAsFactors = FALSE
    )
  results[["r0_0"]] <-
    CFmeansForESP(fault_binerrs_r0_0_treat_df, "Y", "r0_0")
  Baah2010[["r0_0"]] <-
    computeBaah(fault_binerrs_r0_0_treat_df, "Y", "r0_0")
  
  fault_binerrs_P56_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P56_0_0 = fault_binerrs_all$P56_0_0,
      stringsAsFactors = FALSE
    )
  results[["P56_0_0"]] <-
    CFmeansForESP(fault_binerrs_P56_0_0_treat_df, "Y", "P56_0_0")
  Baah2010[["P56_0_0"]] <-
    computeBaah(fault_binerrs_P56_0_0_treat_df, "Y", "P56_0_0")
  
  fault_binerrs_P56_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P56_0_1 = fault_binerrs_all$P56_0_1,
      P56_0_0 = fault_binerrs_all$P56_0_0,
      stringsAsFactors = FALSE
    )
  results[["P56_0_1"]] <-
    CFmeansForESP(fault_binerrs_P56_0_1_treat_df, "Y", "P56_0_1")
  Baah2010[["P56_0_1"]] <-
    computeBaah(fault_binerrs_P56_0_1_treat_df, "Y", "P56_0_1")
  
  fault_binerrs_P13_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P13_0_0 = fault_binerrs_all$P13_0_0,
      stringsAsFactors = FALSE
    )
  results[["P13_0_0"]] <-
    CFmeansForESP(fault_binerrs_P13_0_0_treat_df, "Y", "P13_0_0")
  Baah2010[["P13_0_0"]] <-
    computeBaah(fault_binerrs_P13_0_0_treat_df, "Y", "P13_0_0")
  
  fault_binerrs_P13_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P13_0_1 = fault_binerrs_all$P13_0_1,
      P13_0_0 = fault_binerrs_all$P13_0_0,
      stringsAsFactors = FALSE
    )
  results[["P13_0_1"]] <-
    CFmeansForESP(fault_binerrs_P13_0_1_treat_df, "Y", "P13_0_1")
  Baah2010[["P13_0_1"]] <-
    computeBaah(fault_binerrs_P13_0_1_treat_df, "Y", "P13_0_1")
  
  fault_binerrs_P33_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P33_0_0 = fault_binerrs_all$P33_0_0,
      stringsAsFactors = FALSE
    )
  results[["P33_0_0"]] <-
    CFmeansForESP(fault_binerrs_P33_0_0_treat_df, "Y", "P33_0_0")
  Baah2010[["P33_0_0"]] <-
    computeBaah(fault_binerrs_P33_0_0_treat_df, "Y", "P33_0_0")
  
  fault_binerrs_convergent_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      convergent_0 = fault_binerrs_all$convergent_0,
      q2_2 = fault_binerrs_all$q2_2,
      p2_2 = fault_binerrs_all$p2_2,
      stringsAsFactors = FALSE
    )
  results[["convergent_0"]] <-
    CFmeansForESP(fault_binerrs_convergent_0_treat_df, "Y", "convergent_0")
  Baah2010[["convergent_0"]] <-
    computeBaah(fault_binerrs_convergent_0_treat_df, "Y", "convergent_0")
  
  fault_binerrs_P3_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_1_0 = fault_binerrs_all$P3_1_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  results[["P3_1_0"]] <-
    CFmeansForESP(fault_binerrs_P3_1_0_treat_df, "Y", "P3_1_0")
  Baah2010[["P3_1_0"]] <-
    computeBaah(fault_binerrs_P3_1_0_treat_df, "Y", "P3_1_0")
  
  fault_binerrs_P3_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_1_1 = fault_binerrs_all$P3_1_1,
      P3_1_0 = fault_binerrs_all$P3_1_0,
      stringsAsFactors = FALSE
    )
  results[["P3_1_1"]] <-
    CFmeansForESP(fault_binerrs_P3_1_1_treat_df, "Y", "P3_1_1")
  Baah2010[["P3_1_1"]] <-
    computeBaah(fault_binerrs_P3_1_1_treat_df, "Y", "P3_1_1")
  
  fault_binerrs_P7_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P7_0_1 = fault_binerrs_all$P7_0_1,
      P7_0_0 = fault_binerrs_all$P7_0_0,
      stringsAsFactors = FALSE
    )
  results[["P7_0_1"]] <-
    CFmeansForESP(fault_binerrs_P7_0_1_treat_df, "Y", "P7_0_1")
  Baah2010[["P7_0_1"]] <-
    computeBaah(fault_binerrs_P7_0_1_treat_df, "Y", "P7_0_1")
  
  fault_binerrs_P28_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P28_0_1 = fault_binerrs_all$P28_0_1,
      P28_0_0 = fault_binerrs_all$P28_0_0,
      stringsAsFactors = FALSE
    )
  results[["P28_0_1"]] <-
    CFmeansForESP(fault_binerrs_P28_0_1_treat_df, "Y", "P28_0_1")
  Baah2010[["P28_0_1"]] <-
    computeBaah(fault_binerrs_P28_0_1_treat_df, "Y", "P28_0_1")
  
  fault_binerrs_P28_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P28_0_0 = fault_binerrs_all$P28_0_0,
      denominator_3 = fault_binerrs_all$denominator_3,
      stringsAsFactors = FALSE
    )
  results[["P28_0_0"]] <-
    CFmeansForESP(fault_binerrs_P28_0_0_treat_df, "Y", "P28_0_0")
  Baah2010[["P28_0_0"]] <-
    computeBaah(fault_binerrs_P28_0_0_treat_df, "Y", "P28_0_0")
  
  fault_binerrs_P7_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P7_0_0 = fault_binerrs_all$P7_0_0,
      den_0 = fault_binerrs_all$den_0,
      stringsAsFactors = FALSE
    )
  results[["P7_0_0"]] <-
    CFmeansForESP(fault_binerrs_P7_0_0_treat_df, "Y", "P7_0_0")
  Baah2010[["P7_0_0"]] <-
    computeBaah(fault_binerrs_P7_0_0_treat_df, "Y", "P7_0_0")
  
  fault_binerrs_P36_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P36_0_1 = fault_binerrs_all$P36_0_1,
      P36_0_0 = fault_binerrs_all$P36_0_0,
      stringsAsFactors = FALSE
    )
  results[["P36_0_1"]] <-
    CFmeansForESP(fault_binerrs_P36_0_1_treat_df, "Y", "P36_0_1")
  Baah2010[["P36_0_1"]] <-
    computeBaah(fault_binerrs_P36_0_1_treat_df, "Y", "P36_0_1")
  
  fault_binerrs_P36_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P36_0_0 = fault_binerrs_all$P36_0_0,
      value_0 = fault_binerrs_all$value_0,
      stringsAsFactors = FALSE
    )
  results[["P36_0_0"]] <-
    CFmeansForESP(fault_binerrs_P36_0_0_treat_df, "Y", "P36_0_0")
  Baah2010[["P36_0_0"]] <-
    computeBaah(fault_binerrs_P36_0_0_treat_df, "Y", "P36_0_0")
  
  fault_binerrs_P53_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P53_0_0 = fault_binerrs_all$P53_0_0,
      stringsAsFactors = FALSE
    )
  results[["P53_0_0"]] <-
    CFmeansForESP(fault_binerrs_P53_0_0_treat_df, "Y", "P53_0_0")
  Baah2010[["P53_0_0"]] <-
    computeBaah(fault_binerrs_P53_0_0_treat_df, "Y", "P53_0_0")
  
  fault_binerrs_d2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d2_0 = fault_binerrs_all$d2_0,
      d1_1 = fault_binerrs_all$d1_1,
      tmodd1_0 = fault_binerrs_all$tmodd1_0,
      stringsAsFactors = FALSE
    )
  results[["d2_0"]] <-
    CFmeansForESP(fault_binerrs_d2_0_treat_df, "Y", "d2_0")
  Baah2010[["d2_0"]] <-
    computeBaah(fault_binerrs_d2_0_treat_df, "Y", "d2_0")
  
  fault_binerrs_P0_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P0_0_0 = fault_binerrs_all$P0_0_0,
      overflow_0 = fault_binerrs_all$overflow_0,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  results[["P0_0_0"]] <-
    CFmeansForESP(fault_binerrs_P0_0_0_treat_df, "Y", "P0_0_0")
  Baah2010[["P0_0_0"]] <-
    computeBaah(fault_binerrs_P0_0_0_treat_df, "Y", "P0_0_0")
  
  fault_binerrs_P0_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P0_0_1 = fault_binerrs_all$P0_0_1,
      P0_0_0 = fault_binerrs_all$P0_0_0,
      stringsAsFactors = FALSE
    )
  results[["P0_0_1"]] <-
    CFmeansForESP(fault_binerrs_P0_0_1_treat_df, "Y", "P0_0_1")
  Baah2010[["P0_0_1"]] <-
    computeBaah(fault_binerrs_P0_0_1_treat_df, "Y", "P0_0_1")
  
  fault_binerrs_P17_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P17_0_0 = fault_binerrs_all$P17_0_0,
      stringsAsFactors = FALSE
    )
  results[["P17_0_0"]] <-
    CFmeansForESP(fault_binerrs_P17_0_0_treat_df, "Y", "P17_0_0")
  Baah2010[["P17_0_0"]] <-
    computeBaah(fault_binerrs_P17_0_0_treat_df, "Y", "P17_0_0")
  
  fault_binerrs_P61_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P61_0_0 = fault_binerrs_all$P61_0_0,
      stringsAsFactors = FALSE
    )
  results[["P61_0_0"]] <-
    CFmeansForESP(fault_binerrs_P61_0_0_treat_df, "Y", "P61_0_0")
  Baah2010[["P61_0_0"]] <-
    computeBaah(fault_binerrs_P61_0_0_treat_df, "Y", "P61_0_0")
  
  fault_binerrs_P17_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P17_0_1 = fault_binerrs_all$P17_0_1,
      P17_0_0 = fault_binerrs_all$P17_0_0,
      stringsAsFactors = FALSE
    )
  results[["P17_0_1"]] <-
    CFmeansForESP(fault_binerrs_P17_0_1_treat_df, "Y", "P17_0_1")
  Baah2010[["P17_0_1"]] <-
    computeBaah(fault_binerrs_P17_0_1_treat_df, "Y", "P17_0_1")
  
  fault_binerrs_ret_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      ret_2 = fault_binerrs_all$ret_2,
      ret_2 = fault_binerrs_all$ret_2,
      ret_0 = fault_binerrs_all$ret_0,
      stringsAsFactors = FALSE
    )
  results[["ret_2"]] <-
    CFmeansForESP(fault_binerrs_ret_2_treat_df, "Y", "ret_2")
  Baah2010[["ret_2"]] <-
    computeBaah(fault_binerrs_ret_2_treat_df, "Y", "ret_2")
  
  fault_binerrs_P63_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_1_0 = fault_binerrs_all$P63_1_0,
      stringsAsFactors = FALSE
    )
  results[["P63_1_0"]] <-
    CFmeansForESP(fault_binerrs_P63_1_0_treat_df, "Y", "P63_1_0")
  Baah2010[["P63_1_0"]] <-
    computeBaah(fault_binerrs_P63_1_0_treat_df, "Y", "P63_1_0")
  
  fault_binerrs_P63_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_1_1 = fault_binerrs_all$P63_1_1,
      P63_1_0 = fault_binerrs_all$P63_1_0,
      stringsAsFactors = FALSE
    )
  results[["P63_1_1"]] <-
    CFmeansForESP(fault_binerrs_P63_1_1_treat_df, "Y", "P63_1_1")
  Baah2010[["P63_1_1"]] <-
    computeBaah(fault_binerrs_P63_1_1_treat_df, "Y", "P63_1_1")
  
  fault_binerrs_ret_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               ret_0 = fault_binerrs_all$ret_0,
               stringsAsFactors = FALSE)
  results[["ret_0"]] <-
    CFmeansForESP(fault_binerrs_ret_0_treat_df, "Y", "ret_0")
  Baah2010[["ret_0"]] <-
    computeBaah(fault_binerrs_ret_0_treat_df, "Y", "ret_0")
  
  fault_binerrs_ret_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               ret_1 = fault_binerrs_all$ret_1,
               stringsAsFactors = FALSE)
  results[["ret_1"]] <-
    CFmeansForESP(fault_binerrs_ret_1_treat_df, "Y", "ret_1")
  Baah2010[["ret_1"]] <-
    computeBaah(fault_binerrs_ret_1_treat_df, "Y", "ret_1")
  
  fault_binerrs_P68_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P68_0_1 = fault_binerrs_all$P68_0_1,
      P68_0_0 = fault_binerrs_all$P68_0_0,
      stringsAsFactors = FALSE
    )
  results[["P68_0_1"]] <-
    CFmeansForESP(fault_binerrs_P68_0_1_treat_df, "Y", "P68_0_1")
  Baah2010[["P68_0_1"]] <-
    computeBaah(fault_binerrs_P68_0_1_treat_df, "Y", "P68_0_1")
  
  fault_binerrs_P68_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P68_0_0 = fault_binerrs_all$P68_0_0,
      stringsAsFactors = FALSE
    )
  results[["P68_0_0"]] <-
    CFmeansForESP(fault_binerrs_P68_0_0_treat_df, "Y", "P68_0_0")
  Baah2010[["P68_0_0"]] <-
    computeBaah(fault_binerrs_P68_0_0_treat_df, "Y", "P68_0_0")
  
  fault_binerrs_P25_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P25_0_1 = fault_binerrs_all$P25_0_1,
      P25_0_0 = fault_binerrs_all$P25_0_0,
      stringsAsFactors = FALSE
    )
  results[["P25_0_1"]] <-
    CFmeansForESP(fault_binerrs_P25_0_1_treat_df, "Y", "P25_0_1")
  Baah2010[["P25_0_1"]] <-
    computeBaah(fault_binerrs_P25_0_1_treat_df, "Y", "P25_0_1")
  
  fault_binerrs_P25_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P25_0_0 = fault_binerrs_all$P25_0_0,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  results[["P25_0_0"]] <-
    CFmeansForESP(fault_binerrs_P25_0_0_treat_df, "Y", "P25_0_0")
  Baah2010[["P25_0_0"]] <-
    computeBaah(fault_binerrs_P25_0_0_treat_df, "Y", "P25_0_0")
  
  fault_binerrs_P10_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P10_0_0 = fault_binerrs_all$P10_0_0,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  results[["P10_0_0"]] <-
    CFmeansForESP(fault_binerrs_P10_0_0_treat_df, "Y", "P10_0_0")
  Baah2010[["P10_0_0"]] <-
    computeBaah(fault_binerrs_P10_0_0_treat_df, "Y", "P10_0_0")
  
  fault_binerrs_P10_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P10_0_1 = fault_binerrs_all$P10_0_1,
      P10_0_0 = fault_binerrs_all$P10_0_0,
      stringsAsFactors = FALSE
    )
  results[["P10_0_1"]] <-
    CFmeansForESP(fault_binerrs_P10_0_1_treat_df, "Y", "P10_0_1")
  Baah2010[["P10_0_1"]] <-
    computeBaah(fault_binerrs_P10_0_1_treat_df, "Y", "P10_0_1")
  
  fault_binerrs_exponent_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_5 = fault_binerrs_all$exponent_5,
      exponent_4 = fault_binerrs_all$exponent_4,
      stringsAsFactors = FALSE
    )
  results[["exponent_5"]] <-
    CFmeansForESP(fault_binerrs_exponent_5_treat_df, "Y", "exponent_5")
  Baah2010[["exponent_5"]] <-
    computeBaah(fault_binerrs_exponent_5_treat_df, "Y", "exponent_5")
  
  fault_binerrs_exponent_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_1 = fault_binerrs_all$exponent_1,
      exponent_0 = fault_binerrs_all$exponent_0,
      stringsAsFactors = FALSE
    )
  results[["exponent_1"]] <-
    CFmeansForESP(fault_binerrs_exponent_1_treat_df, "Y", "exponent_1")
  Baah2010[["exponent_1"]] <-
    computeBaah(fault_binerrs_exponent_1_treat_df, "Y", "exponent_1")
  
  fault_binerrs_exponent_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_0 = fault_binerrs_all$exponent_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  results[["exponent_0"]] <-
    CFmeansForESP(fault_binerrs_exponent_0_treat_df, "Y", "exponent_0")
  Baah2010[["exponent_0"]] <-
    computeBaah(fault_binerrs_exponent_0_treat_df, "Y", "exponent_0")
  
  fault_binerrs_exponent_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      exponent_3 = fault_binerrs_all$exponent_3,
      exponent_2 = fault_binerrs_all$exponent_2,
      stringsAsFactors = FALSE
    )
  results[["exponent_3"]] <-
    CFmeansForESP(fault_binerrs_exponent_3_treat_df, "Y", "exponent_3")
  Baah2010[["exponent_3"]] <-
    computeBaah(fault_binerrs_exponent_3_treat_df, "Y", "exponent_3")
  
  fault_binerrs_P57_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P57_0_0 = fault_binerrs_all$P57_0_0,
      result_0 = fault_binerrs_all$result_0,
      stringsAsFactors = FALSE
    )
  results[["P57_0_0"]] <-
    CFmeansForESP(fault_binerrs_P57_0_0_treat_df, "Y", "P57_0_0")
  Baah2010[["P57_0_0"]] <-
    computeBaah(fault_binerrs_P57_0_0_treat_df, "Y", "P57_0_0")
  
  fault_binerrs_P57_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P57_0_1 = fault_binerrs_all$P57_0_1,
      P57_0_0 = fault_binerrs_all$P57_0_0,
      stringsAsFactors = FALSE
    )
  results[["P57_0_1"]] <-
    CFmeansForESP(fault_binerrs_P57_0_1_treat_df, "Y", "P57_0_1")
  Baah2010[["P57_0_1"]] <-
    computeBaah(fault_binerrs_P57_0_1_treat_df, "Y", "P57_0_1")
  
  fault_binerrs_P49_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P49_0_1 = fault_binerrs_all$P49_0_1,
      P49_0_0 = fault_binerrs_all$P49_0_0,
      stringsAsFactors = FALSE
    )
  results[["P49_0_1"]] <-
    CFmeansForESP(fault_binerrs_P49_0_1_treat_df, "Y", "P49_0_1")
  Baah2010[["P49_0_1"]] <-
    computeBaah(fault_binerrs_P49_0_1_treat_df, "Y", "P49_0_1")
  
  fault_binerrs_P30_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P30_0_0 = fault_binerrs_all$P30_0_0,
      denominator_7 = fault_binerrs_all$denominator_7,
      stringsAsFactors = FALSE
    )
  results[["P30_0_0"]] <-
    CFmeansForESP(fault_binerrs_P30_0_0_treat_df, "Y", "P30_0_0")
  Baah2010[["P30_0_0"]] <-
    computeBaah(fault_binerrs_P30_0_0_treat_df, "Y", "P30_0_0")
  
  fault_binerrs_numerator_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_1 = fault_binerrs_all$numerator_1,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  results[["numerator_1"]] <-
    CFmeansForESP(fault_binerrs_numerator_1_treat_df, "Y", "numerator_1")
  Baah2010[["numerator_1"]] <-
    computeBaah(fault_binerrs_numerator_1_treat_df, "Y", "numerator_1")
  
  fault_binerrs_upv_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               upv_0 = fault_binerrs_all$upv_0,
               stringsAsFactors = FALSE)
  results[["upv_0"]] <-
    CFmeansForESP(fault_binerrs_upv_0_treat_df, "Y", "upv_0")
  Baah2010[["upv_0"]] <-
    computeBaah(fault_binerrs_upv_0_treat_df, "Y", "upv_0")
  
  fault_binerrs_P49_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P49_0_0 = fault_binerrs_all$P49_0_0,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  results[["P49_0_0"]] <-
    CFmeansForESP(fault_binerrs_P49_0_0_treat_df, "Y", "P49_0_0")
  Baah2010[["P49_0_0"]] <-
    computeBaah(fault_binerrs_P49_0_0_treat_df, "Y", "P49_0_0")
  
  fault_binerrs_P4_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_0_0 = fault_binerrs_all$P4_0_0,
      q2_2 = fault_binerrs_all$q2_2,
      maxDenominator_1 = fault_binerrs_all$maxDenominator_1,
      stringsAsFactors = FALSE
    )
  results[["P4_0_0"]] <-
    CFmeansForESP(fault_binerrs_P4_0_0_treat_df, "Y", "P4_0_0")
  Baah2010[["P4_0_0"]] <-
    computeBaah(fault_binerrs_P4_0_0_treat_df, "Y", "P4_0_0")
  
  fault_binerrs_P14_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P14_0_0 = fault_binerrs_all$P14_0_0,
      stringsAsFactors = FALSE
    )
  results[["P14_0_0"]] <-
    CFmeansForESP(fault_binerrs_P14_0_0_treat_df, "Y", "P14_0_0")
  Baah2010[["P14_0_0"]] <-
    computeBaah(fault_binerrs_P14_0_0_treat_df, "Y", "P14_0_0")
  
  fault_binerrs_numerator_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_5 = fault_binerrs_all$numerator_5,
      stringsAsFactors = FALSE
    )
  results[["numerator_5"]] <-
    CFmeansForESP(fault_binerrs_numerator_5_treat_df, "Y", "numerator_5")
  Baah2010[["numerator_5"]] <-
    computeBaah(fault_binerrs_numerator_5_treat_df, "Y", "numerator_5")
  
  fault_binerrs_P40_0_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_0_2 = fault_binerrs_all$P40_0_2,
      P40_0_0 = fault_binerrs_all$P40_0_0,
      P40_0_1 = fault_binerrs_all$P40_0_1,
      stringsAsFactors = FALSE
    )
  results[["P40_0_2"]] <-
    CFmeansForESP(fault_binerrs_P40_0_2_treat_df, "Y", "P40_0_2")
  Baah2010[["P40_0_2"]] <-
    computeBaah(fault_binerrs_P40_0_2_treat_df, "Y", "P40_0_2")
  
  fault_binerrs_P14_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P14_0_1 = fault_binerrs_all$P14_0_1,
      P14_0_0 = fault_binerrs_all$P14_0_0,
      stringsAsFactors = FALSE
    )
  results[["P14_0_1"]] <-
    CFmeansForESP(fault_binerrs_P14_0_1_treat_df, "Y", "P14_0_1")
  Baah2010[["P14_0_1"]] <-
    computeBaah(fault_binerrs_P14_0_1_treat_df, "Y", "P14_0_1")
  
  fault_binerrs_numerator_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_2 = fault_binerrs_all$numerator_2,
      stringsAsFactors = FALSE
    )
  results[["numerator_2"]] <-
    CFmeansForESP(fault_binerrs_numerator_2_treat_df, "Y", "numerator_2")
  Baah2010[["numerator_2"]] <-
    computeBaah(fault_binerrs_numerator_2_treat_df, "Y", "numerator_2")
  
  fault_binerrs_P27_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_1_1 = fault_binerrs_all$P27_1_1,
      P27_1_0 = fault_binerrs_all$P27_1_0,
      stringsAsFactors = FALSE
    )
  results[["P27_1_1"]] <-
    CFmeansForESP(fault_binerrs_P27_1_1_treat_df, "Y", "P27_1_1")
  Baah2010[["P27_1_1"]] <-
    computeBaah(fault_binerrs_P27_1_1_treat_df, "Y", "P27_1_1")
  
  fault_binerrs_P27_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_1_0 = fault_binerrs_all$P27_1_0,
      denominator_1 = fault_binerrs_all$denominator_1,
      stringsAsFactors = FALSE
    )
  results[["P27_1_0"]] <-
    CFmeansForESP(fault_binerrs_P27_1_0_treat_df, "Y", "P27_1_0")
  Baah2010[["P27_1_0"]] <-
    computeBaah(fault_binerrs_P27_1_0_treat_df, "Y", "P27_1_0")
  
  fault_binerrs_numerator_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_3 = fault_binerrs_all$numerator_3,
      numerator_1 = fault_binerrs_all$numerator_1,
      numerator_2 = fault_binerrs_all$numerator_2,
      stringsAsFactors = FALSE
    )
  results[["numerator_3"]] <-
    CFmeansForESP(fault_binerrs_numerator_3_treat_df, "Y", "numerator_3")
  Baah2010[["numerator_3"]] <-
    computeBaah(fault_binerrs_numerator_3_treat_df, "Y", "numerator_3")
  
  fault_binerrs_P39_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P39_0_0 = fault_binerrs_all$P39_0_0,
      sign_0 = fault_binerrs_all$sign_0,
      stringsAsFactors = FALSE
    )
  results[["P39_0_0"]] <-
    CFmeansForESP(fault_binerrs_P39_0_0_treat_df, "Y", "P39_0_0")
  Baah2010[["P39_0_0"]] <-
    computeBaah(fault_binerrs_P39_0_0_treat_df, "Y", "P39_0_0")
  
  fault_binerrs_P40_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_0_0 = fault_binerrs_all$P40_0_0,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  results[["P40_0_0"]] <-
    CFmeansForESP(fault_binerrs_P40_0_0_treat_df, "Y", "P40_0_0")
  Baah2010[["P40_0_0"]] <-
    computeBaah(fault_binerrs_P40_0_0_treat_df, "Y", "P40_0_0")
  
  fault_binerrs_d1_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d1_0 = fault_binerrs_all$d1_0,
               stringsAsFactors = FALSE)
  results[["d1_0"]] <-
    CFmeansForESP(fault_binerrs_d1_0_treat_df, "Y", "d1_0")
  Baah2010[["d1_0"]] <-
    computeBaah(fault_binerrs_d1_0_treat_df, "Y", "d1_0")
  
  fault_binerrs_P39_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P39_0_1 = fault_binerrs_all$P39_0_1,
      P39_0_0 = fault_binerrs_all$P39_0_0,
      stringsAsFactors = FALSE
    )
  results[["P39_0_1"]] <-
    CFmeansForESP(fault_binerrs_P39_0_1_treat_df, "Y", "P39_0_1")
  Baah2010[["P39_0_1"]] <-
    computeBaah(fault_binerrs_P39_0_1_treat_df, "Y", "P39_0_1")
  
  fault_binerrs_d1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d1_1 = fault_binerrs_all$d1_1,
      d1_0 = fault_binerrs_all$d1_0,
      stringsAsFactors = FALSE
    )
  results[["d1_1"]] <-
    CFmeansForESP(fault_binerrs_d1_1_treat_df, "Y", "d1_1")
  Baah2010[["d1_1"]] <-
    computeBaah(fault_binerrs_d1_1_treat_df, "Y", "d1_1")
  
  fault_binerrs_n_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               n_0 = fault_binerrs_all$n_0,
               stringsAsFactors = FALSE)
  results[["n_0"]] <-
    CFmeansForESP(fault_binerrs_n_0_treat_df, "Y", "n_0")
  Baah2010[["n_0"]] <-
    computeBaah(fault_binerrs_n_0_treat_df, "Y", "n_0")
  
  fault_binerrs_n_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      n_1 = fault_binerrs_all$n_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  results[["n_1"]] <-
    CFmeansForESP(fault_binerrs_n_1_treat_df, "Y", "n_1")
  Baah2010[["n_1"]] <-
    computeBaah(fault_binerrs_n_1_treat_df, "Y", "n_1")
  
  fault_binerrs_P63_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_0_1 = fault_binerrs_all$P63_0_1,
      P63_0_0 = fault_binerrs_all$P63_0_0,
      stringsAsFactors = FALSE
    )
  results[["P63_0_1"]] <-
    CFmeansForESP(fault_binerrs_P63_0_1_treat_df, "Y", "P63_0_1")
  Baah2010[["P63_0_1"]] <-
    computeBaah(fault_binerrs_P63_0_1_treat_df, "Y", "P63_0_1")
  
  fault_binerrs_P20_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P20_0_1 = fault_binerrs_all$P20_0_1,
      P20_0_0 = fault_binerrs_all$P20_0_0,
      stringsAsFactors = FALSE
    )
  results[["P20_0_1"]] <-
    CFmeansForESP(fault_binerrs_P20_0_1_treat_df, "Y", "P20_0_1")
  Baah2010[["P20_0_1"]] <-
    computeBaah(fault_binerrs_P20_0_1_treat_df, "Y", "P20_0_1")
  
  fault_binerrs_P20_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P20_0_0 = fault_binerrs_all$P20_0_0,
      stringsAsFactors = FALSE
    )
  results[["P20_0_0"]] <-
    CFmeansForESP(fault_binerrs_P20_0_0_treat_df, "Y", "P20_0_0")
  Baah2010[["P20_0_0"]] <-
    computeBaah(fault_binerrs_P20_0_0_treat_df, "Y", "P20_0_0")
  
  fault_binerrs_P29_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P29_0_0 = fault_binerrs_all$P29_0_0,
      denominator_3 = fault_binerrs_all$denominator_3,
      stringsAsFactors = FALSE
    )
  results[["P29_0_0"]] <-
    CFmeansForESP(fault_binerrs_P29_0_0_treat_df, "Y", "P29_0_0")
  Baah2010[["P29_0_0"]] <-
    computeBaah(fault_binerrs_P29_0_0_treat_df, "Y", "P29_0_0")
  
  fault_binerrs_d2_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d2_1 = fault_binerrs_all$d2_1,
               stringsAsFactors = FALSE)
  results[["d2_1"]] <-
    CFmeansForESP(fault_binerrs_d2_1_treat_df, "Y", "d2_1")
  Baah2010[["d2_1"]] <-
    computeBaah(fault_binerrs_d2_1_treat_df, "Y", "d2_1")
  
  fault_binerrs_P45_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_0_1 = fault_binerrs_all$P45_0_1,
      P45_0_0 = fault_binerrs_all$P45_0_0,
      stringsAsFactors = FALSE
    )
  results[["P45_0_1"]] <-
    CFmeansForESP(fault_binerrs_P45_0_1_treat_df, "Y", "P45_0_1")
  Baah2010[["P45_0_1"]] <-
    computeBaah(fault_binerrs_P45_0_1_treat_df, "Y", "P45_0_1")
  
  fault_binerrs_P45_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_0_0 = fault_binerrs_all$P45_0_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  results[["P45_0_0"]] <-
    CFmeansForESP(fault_binerrs_P45_0_0_treat_df, "Y", "P45_0_0")
  Baah2010[["P45_0_0"]] <-
    computeBaah(fault_binerrs_P45_0_0_treat_df, "Y", "P45_0_0")
  
  fault_binerrs_P63_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P63_0_0 = fault_binerrs_all$P63_0_0,
      stringsAsFactors = FALSE
    )
  results[["P63_0_0"]] <-
    CFmeansForESP(fault_binerrs_P63_0_0_treat_df, "Y", "P63_0_0")
  Baah2010[["P63_0_0"]] <-
    computeBaah(fault_binerrs_P63_0_0_treat_df, "Y", "P63_0_0")
  
  fault_binerrs_overflow_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_1 = fault_binerrs_all$overflow_1,
      overflow_0 = fault_binerrs_all$overflow_0,
      stringsAsFactors = FALSE
    )
  results[["overflow_1"]] <-
    CFmeansForESP(fault_binerrs_overflow_1_treat_df, "Y", "overflow_1")
  Baah2010[["overflow_1"]] <-
    computeBaah(fault_binerrs_overflow_1_treat_df, "Y", "overflow_1")
  
  fault_binerrs_p2_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               p2_0 = fault_binerrs_all$p2_0,
               stringsAsFactors = FALSE)
  results[["p2_0"]] <-
    CFmeansForESP(fault_binerrs_p2_0_treat_df, "Y", "p2_0")
  Baah2010[["p2_0"]] <-
    computeBaah(fault_binerrs_p2_0_treat_df, "Y", "p2_0")
  
  fault_binerrs_P52_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P52_0_0 = fault_binerrs_all$P52_0_0,
      stringsAsFactors = FALSE
    )
  results[["P52_0_0"]] <-
    CFmeansForESP(fault_binerrs_P52_0_0_treat_df, "Y", "P52_0_0")
  Baah2010[["P52_0_0"]] <-
    computeBaah(fault_binerrs_P52_0_0_treat_df, "Y", "P52_0_0")
  
  fault_binerrs_overflow_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_2 = fault_binerrs_all$overflow_2,
      overflow_1 = fault_binerrs_all$overflow_1,
      stringsAsFactors = FALSE
    )
  results[["overflow_2"]] <-
    CFmeansForESP(fault_binerrs_overflow_2_treat_df, "Y", "overflow_2")
  Baah2010[["overflow_2"]] <-
    computeBaah(fault_binerrs_overflow_2_treat_df, "Y", "overflow_2")
  
  fault_binerrs_overflow_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_3 = fault_binerrs_all$overflow_3,
      overflow_1 = fault_binerrs_all$overflow_1,
      overflow_2 = fault_binerrs_all$overflow_2,
      stringsAsFactors = FALSE
    )
  results[["overflow_3"]] <-
    CFmeansForESP(fault_binerrs_overflow_3_treat_df, "Y", "overflow_3")
  Baah2010[["overflow_3"]] <-
    computeBaah(fault_binerrs_overflow_3_treat_df, "Y", "overflow_3")
  
  fault_binerrs_P35_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P35_0_0 = fault_binerrs_all$P35_0_0,
      stringsAsFactors = FALSE
    )
  results[["P35_0_0"]] <-
    CFmeansForESP(fault_binerrs_P35_0_0_treat_df, "Y", "P35_0_0")
  Baah2010[["P35_0_0"]] <-
    computeBaah(fault_binerrs_P35_0_0_treat_df, "Y", "P35_0_0")
  
  fault_binerrs_P35_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P35_0_1 = fault_binerrs_all$P35_0_1,
      P35_0_0 = fault_binerrs_all$P35_0_0,
      stringsAsFactors = FALSE
    )
  results[["P35_0_1"]] <-
    CFmeansForESP(fault_binerrs_P35_0_1_treat_df, "Y", "P35_0_1")
  Baah2010[["P35_0_1"]] <-
    computeBaah(fault_binerrs_P35_0_1_treat_df, "Y", "P35_0_1")
  
  fault_binerrs_p2_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p2_2 = fault_binerrs_all$p2_2,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  results[["p2_2"]] <-
    CFmeansForESP(fault_binerrs_p2_2_treat_df, "Y", "p2_2")
  Baah2010[["p2_2"]] <-
    computeBaah(fault_binerrs_p2_2_treat_df, "Y", "p2_2")
  
  fault_binerrs_overflow_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      overflow_0 = fault_binerrs_all$overflow_0,
      stringsAsFactors = FALSE
    )
  results[["overflow_0"]] <-
    CFmeansForESP(fault_binerrs_overflow_0_treat_df, "Y", "overflow_0")
  Baah2010[["overflow_0"]] <-
    computeBaah(fault_binerrs_overflow_0_treat_df, "Y", "overflow_0")
  
  fault_binerrs_p2_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p2_1 = fault_binerrs_all$p2_1,
      p1_0 = fault_binerrs_all$p1_0,
      p0_0 = fault_binerrs_all$p0_0,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  results[["p2_1"]] <-
    CFmeansForESP(fault_binerrs_p2_1_treat_df, "Y", "p2_1")
  Baah2010[["p2_1"]] <-
    computeBaah(fault_binerrs_p2_1_treat_df, "Y", "p2_1")
  
  fault_binerrs_P18_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P18_0_0 = fault_binerrs_all$P18_0_0,
      stringsAsFactors = FALSE
    )
  results[["P18_0_0"]] <-
    CFmeansForESP(fault_binerrs_P18_0_0_treat_df, "Y", "P18_0_0")
  Baah2010[["P18_0_0"]] <-
    computeBaah(fault_binerrs_P18_0_0_treat_df, "Y", "P18_0_0")
  
  fault_binerrs_P18_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P18_0_1 = fault_binerrs_all$P18_0_1,
      P18_0_0 = fault_binerrs_all$P18_0_0,
      stringsAsFactors = FALSE
    )
  results[["P18_0_1"]] <-
    CFmeansForESP(fault_binerrs_P18_0_1_treat_df, "Y", "P18_0_1")
  Baah2010[["P18_0_1"]] <-
    computeBaah(fault_binerrs_P18_0_1_treat_df, "Y", "P18_0_1")
  
  fault_binerrs_P8_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P8_0_0 = fault_binerrs_all$P8_0_0,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  results[["P8_0_0"]] <-
    CFmeansForESP(fault_binerrs_P8_0_0_treat_df, "Y", "P8_0_0")
  Baah2010[["P8_0_0"]] <-
    computeBaah(fault_binerrs_P8_0_0_treat_df, "Y", "P8_0_0")
  
  fault_binerrs_P40_1_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_1_2 = fault_binerrs_all$P40_1_2,
      P40_1_0 = fault_binerrs_all$P40_1_0,
      P40_1_1 = fault_binerrs_all$P40_1_1,
      stringsAsFactors = FALSE
    )
  results[["P40_1_2"]] <-
    CFmeansForESP(fault_binerrs_P40_1_2_treat_df, "Y", "P40_1_2")
  Baah2010[["P40_1_2"]] <-
    computeBaah(fault_binerrs_P40_1_2_treat_df, "Y", "P40_1_2")
  
  fault_binerrs_P8_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P8_0_1 = fault_binerrs_all$P8_0_1,
      P8_0_0 = fault_binerrs_all$P8_0_0,
      stringsAsFactors = FALSE
    )
  results[["P8_0_1"]] <-
    CFmeansForESP(fault_binerrs_P8_0_1_treat_df, "Y", "P8_0_1")
  Baah2010[["P8_0_1"]] <-
    computeBaah(fault_binerrs_P8_0_1_treat_df, "Y", "P8_0_1")
  
  fault_binerrs_P40_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P40_1_0 = fault_binerrs_all$P40_1_0,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  results[["P40_1_0"]] <-
    CFmeansForESP(fault_binerrs_P40_1_0_treat_df, "Y", "P40_1_0")
  Baah2010[["P40_1_0"]] <-
    computeBaah(fault_binerrs_P40_1_0_treat_df, "Y", "P40_1_0")
  
  fault_binerrs_m_1_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               m_1 = fault_binerrs_all$m_1,
               stringsAsFactors = FALSE)
  results[["m_1"]] <-
    CFmeansForESP(fault_binerrs_m_1_treat_df, "Y", "m_1")
  Baah2010[["m_1"]] <-
    computeBaah(fault_binerrs_m_1_treat_df, "Y", "m_1")
  
  fault_binerrs_m_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_0 = fault_binerrs_all$m_0,
      bits_0 = fault_binerrs_all$bits_0,
      stringsAsFactors = FALSE
    )
  results[["m_0"]] <-
    CFmeansForESP(fault_binerrs_m_0_treat_df, "Y", "m_0")
  Baah2010[["m_0"]] <-
    computeBaah(fault_binerrs_m_0_treat_df, "Y", "m_0")
  
  fault_binerrs_epsilon_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  results[["epsilon_2"]] <-
    CFmeansForESP(fault_binerrs_epsilon_2_treat_df, "Y", "epsilon_2")
  Baah2010[["epsilon_2"]] <-
    computeBaah(fault_binerrs_epsilon_2_treat_df, "Y", "epsilon_2")
  
  fault_binerrs_m_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_3 = fault_binerrs_all$m_3,
      m_2 = fault_binerrs_all$m_2,
      stringsAsFactors = FALSE
    )
  results[["m_3"]] <-
    CFmeansForESP(fault_binerrs_m_3_treat_df, "Y", "m_3")
  Baah2010[["m_3"]] <-
    computeBaah(fault_binerrs_m_3_treat_df, "Y", "m_3")
  
  fault_binerrs_m_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_2 = fault_binerrs_all$m_2,
      m_1 = fault_binerrs_all$m_1,
      stringsAsFactors = FALSE
    )
  results[["m_2"]] <-
    CFmeansForESP(fault_binerrs_m_2_treat_df, "Y", "m_2")
  Baah2010[["m_2"]] <-
    computeBaah(fault_binerrs_m_2_treat_df, "Y", "m_2")
  
  fault_binerrs_P41_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P41_0_0 = fault_binerrs_all$P41_0_0,
      k_0 = fault_binerrs_all$k_0,
      stringsAsFactors = FALSE
    )
  results[["P41_0_0"]] <-
    CFmeansForESP(fault_binerrs_P41_0_0_treat_df, "Y", "P41_0_0")
  Baah2010[["P41_0_0"]] <-
    computeBaah(fault_binerrs_P41_0_0_treat_df, "Y", "P41_0_0")
  
  fault_binerrs_tmodd1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      tmodd1_0 = fault_binerrs_all$tmodd1_0,
      d1_1 = fault_binerrs_all$d1_1,
      stringsAsFactors = FALSE
    )
  results[["tmodd1_0"]] <-
    CFmeansForESP(fault_binerrs_tmodd1_0_treat_df, "Y", "tmodd1_0")
  Baah2010[["tmodd1_0"]] <-
    computeBaah(fault_binerrs_tmodd1_0_treat_df, "Y", "tmodd1_0")
  
  fault_binerrs_m_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      m_6 = fault_binerrs_all$m_6,
      m_2 = fault_binerrs_all$m_2,
      m_5 = fault_binerrs_all$m_5,
      stringsAsFactors = FALSE
    )
  results[["m_6"]] <-
    CFmeansForESP(fault_binerrs_m_6_treat_df, "Y", "m_6")
  Baah2010[["m_6"]] <-
    computeBaah(fault_binerrs_m_6_treat_df, "Y", "m_6")
  
  fault_binerrs_d1_2_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               d1_2 = fault_binerrs_all$d1_2,
               stringsAsFactors = FALSE)
  results[["d1_2"]] <-
    CFmeansForESP(fault_binerrs_d1_2_treat_df, "Y", "d1_2")
  Baah2010[["d1_2"]] <-
    computeBaah(fault_binerrs_d1_2_treat_df, "Y", "d1_2")
  
  fault_binerrs_P45_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_1_1 = fault_binerrs_all$P45_1_1,
      P45_1_0 = fault_binerrs_all$P45_1_0,
      stringsAsFactors = FALSE
    )
  results[["P45_1_1"]] <-
    CFmeansForESP(fault_binerrs_P45_1_1_treat_df, "Y", "P45_1_1")
  Baah2010[["P45_1_1"]] <-
    computeBaah(fault_binerrs_P45_1_1_treat_df, "Y", "P45_1_1")
  
  fault_binerrs_P45_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P45_1_0 = fault_binerrs_all$P45_1_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      p2_1 = fault_binerrs_all$p2_1,
      stringsAsFactors = FALSE
    )
  results[["P45_1_0"]] <-
    CFmeansForESP(fault_binerrs_P45_1_0_treat_df, "Y", "P45_1_0")
  Baah2010[["P45_1_0"]] <-
    computeBaah(fault_binerrs_P45_1_0_treat_df, "Y", "P45_1_0")
  
  fault_binerrs_P67_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P67_0_0 = fault_binerrs_all$P67_0_0,
      stringsAsFactors = FALSE
    )
  results[["P67_0_0"]] <-
    CFmeansForESP(fault_binerrs_P67_0_0_treat_df, "Y", "P67_0_0")
  Baah2010[["P67_0_0"]] <-
    computeBaah(fault_binerrs_P67_0_0_treat_df, "Y", "P67_0_0")
  
  fault_binerrs_P3_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_0_1 = fault_binerrs_all$P3_0_1,
      P3_0_0 = fault_binerrs_all$P3_0_0,
      stringsAsFactors = FALSE
    )
  results[["P3_0_1"]] <-
    CFmeansForESP(fault_binerrs_P3_0_1_treat_df, "Y", "P3_0_1")
  Baah2010[["P3_0_1"]] <-
    computeBaah(fault_binerrs_P3_0_1_treat_df, "Y", "P3_0_1")
  
  fault_binerrs_P24_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P24_0_1 = fault_binerrs_all$P24_0_1,
      P24_0_0 = fault_binerrs_all$P24_0_0,
      stringsAsFactors = FALSE
    )
  results[["P24_0_1"]] <-
    CFmeansForESP(fault_binerrs_P24_0_1_treat_df, "Y", "P24_0_1")
  Baah2010[["P24_0_1"]] <-
    computeBaah(fault_binerrs_P24_0_1_treat_df, "Y", "P24_0_1")
  
  fault_binerrs_P24_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P24_0_0 = fault_binerrs_all$P24_0_0,
      stringsAsFactors = FALSE
    )
  results[["P24_0_0"]] <-
    CFmeansForESP(fault_binerrs_P24_0_0_treat_df, "Y", "P24_0_0")
  Baah2010[["P24_0_0"]] <-
    computeBaah(fault_binerrs_P24_0_0_treat_df, "Y", "P24_0_0")
  
  fault_binerrs_P3_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P3_0_0 = fault_binerrs_all$P3_0_0,
      overflow_1 = fault_binerrs_all$overflow_1,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  results[["P3_0_0"]] <-
    CFmeansForESP(fault_binerrs_P3_0_0_treat_df, "Y", "P3_0_0")
  Baah2010[["P3_0_0"]] <-
    computeBaah(fault_binerrs_P3_0_0_treat_df, "Y", "P3_0_0")
  
  fault_binerrs_P44_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P44_0 = fault_binerrs_all$P44_0,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  results[["P44_0"]] <-
    CFmeansForESP(fault_binerrs_P44_0_treat_df, "Y", "P44_0")
  Baah2010[["P44_0"]] <-
    computeBaah(fault_binerrs_P44_0_treat_df, "Y", "P44_0")
  
  fault_binerrs_p1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p1_0 = fault_binerrs_all$p1_0,
      a0_2 = fault_binerrs_all$a0_2,
      stringsAsFactors = FALSE
    )
  results[["p1_0"]] <-
    CFmeansForESP(fault_binerrs_p1_0_treat_df, "Y", "p1_0")
  Baah2010[["p1_0"]] <-
    computeBaah(fault_binerrs_p1_0_treat_df, "Y", "p1_0")
  
  fault_binerrs_P4_2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_2_0 = fault_binerrs_all$P4_2_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  results[["P4_2_0"]] <-
    CFmeansForESP(fault_binerrs_P4_2_0_treat_df, "Y", "P4_2_0")
  Baah2010[["P4_2_0"]] <-
    computeBaah(fault_binerrs_P4_2_0_treat_df, "Y", "P4_2_0")
  
  fault_binerrs_P31_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P31_0_0 = fault_binerrs_all$P31_0_0,
      numerator_6 = fault_binerrs_all$numerator_6,
      stringsAsFactors = FALSE
    )
  results[["P31_0_0"]] <-
    CFmeansForESP(fault_binerrs_P31_0_0_treat_df, "Y", "P31_0_0")
  Baah2010[["P31_0_0"]] <-
    computeBaah(fault_binerrs_P31_0_0_treat_df, "Y", "P31_0_0")
  
  fault_binerrs_P23_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P23_0_1 = fault_binerrs_all$P23_0_1,
      P23_0_0 = fault_binerrs_all$P23_0_0,
      stringsAsFactors = FALSE
    )
  results[["P23_0_1"]] <-
    CFmeansForESP(fault_binerrs_P23_0_1_treat_df, "Y", "P23_0_1")
  Baah2010[["P23_0_1"]] <-
    computeBaah(fault_binerrs_P23_0_1_treat_df, "Y", "P23_0_1")
  
  fault_binerrs_P23_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P23_0_0 = fault_binerrs_all$P23_0_0,
      stringsAsFactors = FALSE
    )
  results[["P23_0_0"]] <-
    CFmeansForESP(fault_binerrs_P23_0_0_treat_df, "Y", "P23_0_0")
  Baah2010[["P23_0_0"]] <-
    computeBaah(fault_binerrs_P23_0_0_treat_df, "Y", "P23_0_0")
  
  fault_binerrs_P66_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P66_0_1 = fault_binerrs_all$P66_0_1,
      P66_0_0 = fault_binerrs_all$P66_0_0,
      stringsAsFactors = FALSE
    )
  results[["P66_0_1"]] <-
    CFmeansForESP(fault_binerrs_P66_0_1_treat_df, "Y", "P66_0_1")
  Baah2010[["P66_0_1"]] <-
    computeBaah(fault_binerrs_P66_0_1_treat_df, "Y", "P66_0_1")
  
  fault_binerrs_P66_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P66_0_0 = fault_binerrs_all$P66_0_0,
      stringsAsFactors = FALSE
    )
  results[["P66_0_0"]] <-
    CFmeansForESP(fault_binerrs_P66_0_0_treat_df, "Y", "P66_0_0")
  Baah2010[["P66_0_0"]] <-
    computeBaah(fault_binerrs_P66_0_0_treat_df, "Y", "P66_0_0")
  
  fault_binerrs_P5_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P5_0_1 = fault_binerrs_all$P5_0_1,
      P5_0_0 = fault_binerrs_all$P5_0_0,
      stringsAsFactors = FALSE
    )
  results[["P5_0_1"]] <-
    CFmeansForESP(fault_binerrs_P5_0_1_treat_df, "Y", "P5_0_1")
  Baah2010[["P5_0_1"]] <-
    computeBaah(fault_binerrs_P5_0_1_treat_df, "Y", "P5_0_1")
  
  fault_binerrs_d_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d_0 = fault_binerrs_all$d_0,
      den_4 = fault_binerrs_all$den_4,
      num_3 = fault_binerrs_all$num_3,
      stringsAsFactors = FALSE
    )
  results[["d_0"]] <-
    CFmeansForESP(fault_binerrs_d_0_treat_df, "Y", "d_0")
  Baah2010[["d_0"]] <-
    computeBaah(fault_binerrs_d_0_treat_df, "Y", "d_0")
  
  fault_binerrs_d_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      d_1 = fault_binerrs_all$d_1,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  results[["d_1"]] <-
    CFmeansForESP(fault_binerrs_d_1_treat_df, "Y", "d_1")
  Baah2010[["d_1"]] <-
    computeBaah(fault_binerrs_d_1_treat_df, "Y", "d_1")
  
  fault_binerrs_P5_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P5_0_0 = fault_binerrs_all$P5_0_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  results[["P5_0_0"]] <-
    CFmeansForESP(fault_binerrs_P5_0_0_treat_df, "Y", "P5_0_0")
  Baah2010[["P5_0_0"]] <-
    computeBaah(fault_binerrs_P5_0_0_treat_df, "Y", "P5_0_0")
  
  fault_binerrs_P46_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_0_0 = fault_binerrs_all$P46_0_0,
      q2_2 = fault_binerrs_all$q2_2,
      maxDenominator_0 = fault_binerrs_all$maxDenominator_0,
      stringsAsFactors = FALSE
    )
  results[["P46_0_0"]] <-
    CFmeansForESP(fault_binerrs_P46_0_0_treat_df, "Y", "P46_0_0")
  Baah2010[["P46_0_0"]] <-
    computeBaah(fault_binerrs_P46_0_0_treat_df, "Y", "P46_0_0")
  
  fault_binerrs_str_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      str_1 = fault_binerrs_all$str_1,
      numerator_6 = fault_binerrs_all$numerator_6,
      stringsAsFactors = FALSE
    )
  results[["str_1"]] <-
    CFmeansForESP(fault_binerrs_str_1_treat_df, "Y", "str_1")
  Baah2010[["str_1"]] <-
    computeBaah(fault_binerrs_str_1_treat_df, "Y", "str_1")
  
  fault_binerrs_value_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_4 = fault_binerrs_all$value_4,
      value_3 = fault_binerrs_all$value_3,
      stringsAsFactors = FALSE
    )
  results[["value_4"]] <-
    CFmeansForESP(fault_binerrs_value_4_treat_df, "Y", "value_4")
  Baah2010[["value_4"]] <-
    computeBaah(fault_binerrs_value_4_treat_df, "Y", "value_4")
  
  fault_binerrs_value_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_5 = fault_binerrs_all$value_5,
      value_4 = fault_binerrs_all$value_4,
      stringsAsFactors = FALSE
    )
  results[["value_5"]] <-
    CFmeansForESP(fault_binerrs_value_5_treat_df, "Y", "value_5")
  Baah2010[["value_5"]] <-
    computeBaah(fault_binerrs_value_5_treat_df, "Y", "value_5")
  
  fault_binerrs_str_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               str_0 = fault_binerrs_all$str_0,
               stringsAsFactors = FALSE)
  results[["str_0"]] <-
    CFmeansForESP(fault_binerrs_str_0_treat_df, "Y", "str_0")
  Baah2010[["str_0"]] <-
    computeBaah(fault_binerrs_str_0_treat_df, "Y", "str_0")
  
  fault_binerrs_value_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_2 = fault_binerrs_all$value_2,
      value_1 = fault_binerrs_all$value_1,
      stringsAsFactors = FALSE
    )
  results[["value_2"]] <-
    CFmeansForESP(fault_binerrs_value_2_treat_df, "Y", "value_2")
  Baah2010[["value_2"]] <-
    computeBaah(fault_binerrs_value_2_treat_df, "Y", "value_2")
  
  fault_binerrs_P62_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P62_0_0 = fault_binerrs_all$P62_0_0,
      stringsAsFactors = FALSE
    )
  results[["P62_0_0"]] <-
    CFmeansForESP(fault_binerrs_P62_0_0_treat_df, "Y", "P62_0_0")
  Baah2010[["P62_0_0"]] <-
    computeBaah(fault_binerrs_P62_0_0_treat_df, "Y", "P62_0_0")
  
  fault_binerrs_P62_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P62_0_1 = fault_binerrs_all$P62_0_1,
      P62_0_0 = fault_binerrs_all$P62_0_0,
      stringsAsFactors = FALSE
    )
  results[["P62_0_1"]] <-
    CFmeansForESP(fault_binerrs_P62_0_1_treat_df, "Y", "P62_0_1")
  Baah2010[["P62_0_1"]] <-
    computeBaah(fault_binerrs_P62_0_1_treat_df, "Y", "P62_0_1")
  
  fault_binerrs_value_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      value_1 = fault_binerrs_all$value_1,
      value_0 = fault_binerrs_all$value_0,
      stringsAsFactors = FALSE
    )
  results[["value_1"]] <-
    CFmeansForESP(fault_binerrs_value_1_treat_df, "Y", "value_1")
  Baah2010[["value_1"]] <-
    computeBaah(fault_binerrs_value_1_treat_df, "Y", "value_1")
  
  fault_binerrs_str_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      str_3 = fault_binerrs_all$str_3,
      str_0 = fault_binerrs_all$str_0,
      str_3 = fault_binerrs_all$str_3,
      stringsAsFactors = FALSE
    )
  results[["str_3"]] <-
    CFmeansForESP(fault_binerrs_str_3_treat_df, "Y", "str_3")
  Baah2010[["str_3"]] <-
    computeBaah(fault_binerrs_str_3_treat_df, "Y", "str_3")
  
  fault_binerrs_den_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_2 = fault_binerrs_all$den_2,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  results[["den_2"]] <-
    CFmeansForESP(fault_binerrs_den_2_treat_df, "Y", "den_2")
  Baah2010[["den_2"]] <-
    computeBaah(fault_binerrs_den_2_treat_df, "Y", "den_2")
  
  fault_binerrs_P15_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P15_0_0 = fault_binerrs_all$P15_0_0,
      stringsAsFactors = FALSE
    )
  results[["P15_0_0"]] <-
    CFmeansForESP(fault_binerrs_P15_0_0_treat_df, "Y", "P15_0_0")
  Baah2010[["P15_0_0"]] <-
    computeBaah(fault_binerrs_P15_0_0_treat_df, "Y", "P15_0_0")
  
  fault_binerrs_den_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_3 = fault_binerrs_all$den_3,
      den_2 = fault_binerrs_all$den_2,
      stringsAsFactors = FALSE
    )
  results[["den_3"]] <-
    CFmeansForESP(fault_binerrs_den_3_treat_df, "Y", "den_3")
  Baah2010[["den_3"]] <-
    computeBaah(fault_binerrs_den_3_treat_df, "Y", "den_3")
  
  fault_binerrs_P58_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P58_0_0 = fault_binerrs_all$P58_0_0,
      stringsAsFactors = FALSE
    )
  results[["P58_0_0"]] <-
    CFmeansForESP(fault_binerrs_P58_0_0_treat_df, "Y", "P58_0_0")
  Baah2010[["P58_0_0"]] <-
    computeBaah(fault_binerrs_P58_0_0_treat_df, "Y", "P58_0_0")
  
  fault_binerrs_P15_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P15_0_1 = fault_binerrs_all$P15_0_1,
      P15_0_0 = fault_binerrs_all$P15_0_0,
      stringsAsFactors = FALSE
    )
  results[["P15_0_1"]] <-
    CFmeansForESP(fault_binerrs_P15_0_1_treat_df, "Y", "P15_0_1")
  Baah2010[["P15_0_1"]] <-
    computeBaah(fault_binerrs_P15_0_1_treat_df, "Y", "P15_0_1")
  
  fault_binerrs_den_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_4 = fault_binerrs_all$den_4,
      den_3 = fault_binerrs_all$den_3,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  results[["den_4"]] <-
    CFmeansForESP(fault_binerrs_den_4_treat_df, "Y", "den_4")
  Baah2010[["den_4"]] <-
    computeBaah(fault_binerrs_den_4_treat_df, "Y", "den_4")
  
  fault_binerrs_den_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_5 = fault_binerrs_all$den_5,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  results[["den_5"]] <-
    CFmeansForESP(fault_binerrs_den_5_treat_df, "Y", "den_5")
  Baah2010[["den_5"]] <-
    computeBaah(fault_binerrs_den_5_treat_df, "Y", "den_5")
  
  fault_binerrs_P2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P2_0 = fault_binerrs_all$P2_0,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  results[["P2_0"]] <-
    CFmeansForESP(fault_binerrs_P2_0_treat_df, "Y", "P2_0")
  Baah2010[["P2_0"]] <-
    computeBaah(fault_binerrs_P2_0_treat_df, "Y", "P2_0")
  
  fault_binerrs_P27_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_0_0 = fault_binerrs_all$P27_0_0,
      numerator_1 = fault_binerrs_all$numerator_1,
      stringsAsFactors = FALSE
    )
  results[["P27_0_0"]] <-
    CFmeansForESP(fault_binerrs_P27_0_0_treat_df, "Y", "P27_0_0")
  Baah2010[["P27_0_0"]] <-
    computeBaah(fault_binerrs_P27_0_0_treat_df, "Y", "P27_0_0")
  
  fault_binerrs_p0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      p0_1 = fault_binerrs_all$p0_1,
      p1_0 = fault_binerrs_all$p1_0,
      stringsAsFactors = FALSE
    )
  results[["p0_1"]] <-
    CFmeansForESP(fault_binerrs_p0_1_treat_df, "Y", "p0_1")
  Baah2010[["p0_1"]] <-
    computeBaah(fault_binerrs_p0_1_treat_df, "Y", "p0_1")
  
  fault_binerrs_p0_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               p0_0 = fault_binerrs_all$p0_0,
               stringsAsFactors = FALSE)
  results[["p0_0"]] <-
    CFmeansForESP(fault_binerrs_p0_0_treat_df, "Y", "p0_0")
  Baah2010[["p0_0"]] <-
    computeBaah(fault_binerrs_p0_0_treat_df, "Y", "p0_0")
  
  fault_binerrs_P22_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_1_0 = fault_binerrs_all$P22_1_0,
      stringsAsFactors = FALSE
    )
  results[["P22_1_0"]] <-
    CFmeansForESP(fault_binerrs_P22_1_0_treat_df, "Y", "P22_1_0")
  Baah2010[["P22_1_0"]] <-
    computeBaah(fault_binerrs_P22_1_0_treat_df, "Y", "P22_1_0")
  
  fault_binerrs_P19_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P19_0_1 = fault_binerrs_all$P19_0_1,
      P19_0_0 = fault_binerrs_all$P19_0_0,
      stringsAsFactors = FALSE
    )
  results[["P19_0_1"]] <-
    CFmeansForESP(fault_binerrs_P19_0_1_treat_df, "Y", "P19_0_1")
  Baah2010[["P19_0_1"]] <-
    computeBaah(fault_binerrs_P19_0_1_treat_df, "Y", "P19_0_1")
  
  fault_binerrs_P19_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P19_0_0 = fault_binerrs_all$P19_0_0,
      d1_0 = fault_binerrs_all$d1_0,
      stringsAsFactors = FALSE
    )
  results[["P19_0_0"]] <-
    CFmeansForESP(fault_binerrs_P19_0_0_treat_df, "Y", "P19_0_0")
  Baah2010[["P19_0_0"]] <-
    computeBaah(fault_binerrs_P19_0_0_treat_df, "Y", "P19_0_0")
  
  fault_binerrs_P22_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_1_1 = fault_binerrs_all$P22_1_1,
      P22_1_0 = fault_binerrs_all$P22_1_0,
      stringsAsFactors = FALSE
    )
  results[["P22_1_1"]] <-
    CFmeansForESP(fault_binerrs_P22_1_1_treat_df, "Y", "P22_1_1")
  Baah2010[["P22_1_1"]] <-
    computeBaah(fault_binerrs_P22_1_1_treat_df, "Y", "P22_1_1")
  
  fault_binerrs_uvp_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               uvp_0 = fault_binerrs_all$uvp_0,
               stringsAsFactors = FALSE)
  results[["uvp_0"]] <-
    CFmeansForESP(fault_binerrs_uvp_0_treat_df, "Y", "uvp_0")
  Baah2010[["uvp_0"]] <-
    computeBaah(fault_binerrs_uvp_0_treat_df, "Y", "uvp_0")
  
  fault_binerrs_P4_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P4_1_0 = fault_binerrs_all$P4_1_0,
      value_4 = fault_binerrs_all$value_4,
      convergent_0 = fault_binerrs_all$convergent_0,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      stringsAsFactors = FALSE
    )
  results[["P4_1_0"]] <-
    CFmeansForESP(fault_binerrs_P4_1_0_treat_df, "Y", "P4_1_0")
  Baah2010[["P4_1_0"]] <-
    computeBaah(fault_binerrs_P4_1_0_treat_df, "Y", "P4_1_0")
  
  fault_binerrs_P51_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P51_0_1 = fault_binerrs_all$P51_0_1,
      P51_0_0 = fault_binerrs_all$P51_0_0,
      stringsAsFactors = FALSE
    )
  results[["P51_0_1"]] <-
    CFmeansForESP(fault_binerrs_P51_0_1_treat_df, "Y", "P51_0_1")
  Baah2010[["P51_0_1"]] <-
    computeBaah(fault_binerrs_P51_0_1_treat_df, "Y", "P51_0_1")
  
  fault_binerrs_P51_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P51_0_0 = fault_binerrs_all$P51_0_0,
      stringsAsFactors = FALSE
    )
  results[["P51_0_0"]] <-
    CFmeansForESP(fault_binerrs_P51_0_0_treat_df, "Y", "P51_0_0")
  Baah2010[["P51_0_0"]] <-
    computeBaah(fault_binerrs_P51_0_0_treat_df, "Y", "P51_0_0")
  
  fault_binerrs_P27_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P27_0_1 = fault_binerrs_all$P27_0_1,
      P27_0_0 = fault_binerrs_all$P27_0_0,
      stringsAsFactors = FALSE
    )
  results[["P27_0_1"]] <-
    CFmeansForESP(fault_binerrs_P27_0_1_treat_df, "Y", "P27_0_1")
  Baah2010[["P27_0_1"]] <-
    computeBaah(fault_binerrs_P27_0_1_treat_df, "Y", "P27_0_1")
  
  fault_binerrs_P34_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P34_0_0 = fault_binerrs_all$P34_0_0,
      stringsAsFactors = FALSE
    )
  results[["P34_0_0"]] <-
    CFmeansForESP(fault_binerrs_P34_0_0_treat_df, "Y", "P34_0_0")
  Baah2010[["P34_0_0"]] <-
    computeBaah(fault_binerrs_P34_0_0_treat_df, "Y", "P34_0_0")
  
  fault_binerrs_maxIterations_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      maxIterations_2 = fault_binerrs_all$maxIterations_2,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      stringsAsFactors = FALSE
    )
  results[["maxIterations_2"]] <-
    CFmeansForESP(fault_binerrs_maxIterations_2_treat_df,
                  "Y",
                  "maxIterations_2")
  Baah2010[["maxIterations_2"]] <-
    computeBaah(fault_binerrs_maxIterations_2_treat_df,
                "Y",
                "maxIterations_2")
  
  fault_binerrs_P34_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P34_0_1 = fault_binerrs_all$P34_0_1,
      P34_0_0 = fault_binerrs_all$P34_0_0,
      stringsAsFactors = FALSE
    )
  results[["P34_0_1"]] <-
    CFmeansForESP(fault_binerrs_P34_0_1_treat_df, "Y", "P34_0_1")
  Baah2010[["P34_0_1"]] <-
    computeBaah(fault_binerrs_P34_0_1_treat_df, "Y", "P34_0_1")
  
  fault_binerrs_P70_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P70_0_0 = fault_binerrs_all$P70_0_0,
      stringsAsFactors = FALSE
    )
  results[["P70_0_0"]] <-
    CFmeansForESP(fault_binerrs_P70_0_0_treat_df, "Y", "P70_0_0")
  Baah2010[["P70_0_0"]] <-
    computeBaah(fault_binerrs_P70_0_0_treat_df, "Y", "P70_0_0")
  
  fault_binerrs_P9_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_0_0 = fault_binerrs_all$P9_0_0,
      den_1 = fault_binerrs_all$den_1,
      stringsAsFactors = FALSE
    )
  results[["P9_0_0"]] <-
    CFmeansForESP(fault_binerrs_P9_0_0_treat_df, "Y", "P9_0_0")
  Baah2010[["P9_0_0"]] <-
    computeBaah(fault_binerrs_P9_0_0_treat_df, "Y", "P9_0_0")
  
  fault_binerrs_k_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      k_0 = fault_binerrs_all$k_0,
      exponent_1 = fault_binerrs_all$exponent_1,
      stringsAsFactors = FALSE
    )
  results[["k_0"]] <-
    CFmeansForESP(fault_binerrs_k_0_treat_df, "Y", "k_0")
  Baah2010[["k_0"]] <-
    computeBaah(fault_binerrs_k_0_treat_df, "Y", "k_0")
  
  fault_binerrs_P9_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_0_1 = fault_binerrs_all$P9_0_1,
      P9_0_0 = fault_binerrs_all$P9_0_0,
      stringsAsFactors = FALSE
    )
  results[["P9_0_1"]] <-
    CFmeansForESP(fault_binerrs_P9_0_1_treat_df, "Y", "P9_0_1")
  Baah2010[["P9_0_1"]] <-
    computeBaah(fault_binerrs_P9_0_1_treat_df, "Y", "P9_0_1")
  
  fault_binerrs_q2_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q2_2 = fault_binerrs_all$q2_2,
      q2_1 = fault_binerrs_all$q2_1,
      stringsAsFactors = FALSE
    )
  results[["q2_2"]] <-
    CFmeansForESP(fault_binerrs_q2_2_treat_df, "Y", "q2_2")
  Baah2010[["q2_2"]] <-
    computeBaah(fault_binerrs_q2_2_treat_df, "Y", "q2_2")
  
  fault_binerrs_gcd_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      gcd_0 = fault_binerrs_all$gcd_0,
      denominator_6 = fault_binerrs_all$denominator_6,
      numerator_5 = fault_binerrs_all$numerator_5,
      stringsAsFactors = FALSE
    )
  results[["gcd_0"]] <-
    CFmeansForESP(fault_binerrs_gcd_0_treat_df, "Y", "gcd_0")
  Baah2010[["gcd_0"]] <-
    computeBaah(fault_binerrs_gcd_0_treat_df, "Y", "gcd_0")
  
  fault_binerrs_P38_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P38_0_1 = fault_binerrs_all$P38_0_1,
      P38_0_0 = fault_binerrs_all$P38_0_0,
      stringsAsFactors = FALSE
    )
  results[["P38_0_1"]] <-
    CFmeansForESP(fault_binerrs_P38_0_1_treat_df, "Y", "P38_0_1")
  Baah2010[["P38_0_1"]] <-
    computeBaah(fault_binerrs_P38_0_1_treat_df, "Y", "P38_0_1")
  
  fault_binerrs_q2_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q2_0 = fault_binerrs_all$q2_0,
               stringsAsFactors = FALSE)
  results[["q2_0"]] <-
    CFmeansForESP(fault_binerrs_q2_0_treat_df, "Y", "q2_0")
  Baah2010[["q2_0"]] <-
    computeBaah(fault_binerrs_q2_0_treat_df, "Y", "q2_0")
  
  fault_binerrs_P46_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_1_0 = fault_binerrs_all$P46_1_0,
      value_5 = fault_binerrs_all$value_5,
      convergent_0 = fault_binerrs_all$convergent_0,
      epsilon_2 = fault_binerrs_all$epsilon_2,
      stringsAsFactors = FALSE
    )
  results[["P46_1_0"]] <-
    CFmeansForESP(fault_binerrs_P46_1_0_treat_df, "Y", "P46_1_0")
  Baah2010[["P46_1_0"]] <-
    computeBaah(fault_binerrs_P46_1_0_treat_df, "Y", "P46_1_0")
  
  fault_binerrs_q2_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q2_1 = fault_binerrs_all$q2_1,
      q0_0 = fault_binerrs_all$q0_0,
      q1_0 = fault_binerrs_all$q1_0,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  results[["q2_1"]] <-
    CFmeansForESP(fault_binerrs_q2_1_treat_df, "Y", "q2_1")
  Baah2010[["q2_1"]] <-
    computeBaah(fault_binerrs_q2_1_treat_df, "Y", "q2_1")
  
  fault_binerrs_P55_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P55_0_0 = fault_binerrs_all$P55_0_0,
      stringsAsFactors = FALSE
    )
  results[["P55_0_0"]] <-
    CFmeansForESP(fault_binerrs_P55_0_0_treat_df, "Y", "P55_0_0")
  Baah2010[["P55_0_0"]] <-
    computeBaah(fault_binerrs_P55_0_0_treat_df, "Y", "P55_0_0")
  
  fault_binerrs_shift_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      shift_1 = fault_binerrs_all$shift_1,
      stringsAsFactors = FALSE
    )
  results[["shift_1"]] <-
    CFmeansForESP(fault_binerrs_shift_1_treat_df, "Y", "shift_1")
  Baah2010[["shift_1"]] <-
    computeBaah(fault_binerrs_shift_1_treat_df, "Y", "shift_1")
  
  fault_binerrs_P55_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P55_0_1 = fault_binerrs_all$P55_0_1,
      P55_0_0 = fault_binerrs_all$P55_0_0,
      stringsAsFactors = FALSE
    )
  results[["P55_0_1"]] <-
    CFmeansForESP(fault_binerrs_P55_0_1_treat_df, "Y", "P55_0_1")
  Baah2010[["P55_0_1"]] <-
    computeBaah(fault_binerrs_P55_0_1_treat_df, "Y", "P55_0_1")
  
  fault_binerrs_P42_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P42_0_1 = fault_binerrs_all$P42_0_1,
      P42_0_0 = fault_binerrs_all$P42_0_0,
      stringsAsFactors = FALSE
    )
  results[["P42_0_1"]] <-
    CFmeansForESP(fault_binerrs_P42_0_1_treat_df, "Y", "P42_0_1")
  Baah2010[["P42_0_1"]] <-
    computeBaah(fault_binerrs_P42_0_1_treat_df, "Y", "P42_0_1")
  
  fault_binerrs_P42_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P42_0_0 = fault_binerrs_all$P42_0_0,
      overflow_0 = fault_binerrs_all$overflow_0,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  results[["P42_0_0"]] <-
    CFmeansForESP(fault_binerrs_P42_0_0_treat_df, "Y", "P42_0_0")
  Baah2010[["P42_0_0"]] <-
    computeBaah(fault_binerrs_P42_0_0_treat_df, "Y", "P42_0_0")
  
  fault_binerrs_result_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_2 = fault_binerrs_all$result_2,
      result_0 = fault_binerrs_all$result_0,
      result_1 = fault_binerrs_all$result_1,
      stringsAsFactors = FALSE
    )
  results[["result_2"]] <-
    CFmeansForESP(fault_binerrs_result_2_treat_df, "Y", "result_2")
  Baah2010[["result_2"]] <-
    computeBaah(fault_binerrs_result_2_treat_df, "Y", "result_2")
  
  fault_binerrs_P38_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P38_0_0 = fault_binerrs_all$P38_0_0,
      exponent_0 = fault_binerrs_all$exponent_0,
      stringsAsFactors = FALSE
    )
  results[["P38_0_0"]] <-
    CFmeansForESP(fault_binerrs_P38_0_0_treat_df, "Y", "P38_0_0")
  Baah2010[["P38_0_0"]] <-
    computeBaah(fault_binerrs_P38_0_0_treat_df, "Y", "P38_0_0")
  
  fault_binerrs_result_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_3 = fault_binerrs_all$result_3,
      stringsAsFactors = FALSE
    )
  results[["result_3"]] <-
    CFmeansForESP(fault_binerrs_result_3_treat_df, "Y", "result_3")
  Baah2010[["result_3"]] <-
    computeBaah(fault_binerrs_result_3_treat_df, "Y", "result_3")
  
  fault_binerrs_result_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_4 = fault_binerrs_all$result_4,
      shift_1 = fault_binerrs_all$shift_1,
      stringsAsFactors = FALSE
    )
  results[["result_4"]] <-
    CFmeansForESP(fault_binerrs_result_4_treat_df, "Y", "result_4")
  Baah2010[["result_4"]] <-
    computeBaah(fault_binerrs_result_4_treat_df, "Y", "result_4")
  
  fault_binerrs_P29_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P29_1_0 = fault_binerrs_all$P29_1_0,
      numerator_3 = fault_binerrs_all$numerator_3,
      stringsAsFactors = FALSE
    )
  results[["P29_1_0"]] <-
    CFmeansForESP(fault_binerrs_P29_1_0_treat_df, "Y", "P29_1_0")
  Baah2010[["P29_1_0"]] <-
    computeBaah(fault_binerrs_P29_1_0_treat_df, "Y", "P29_1_0")
  
  fault_binerrs_shift_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      shift_0 = fault_binerrs_all$shift_0,
      stringsAsFactors = FALSE
    )
  results[["shift_0"]] <-
    CFmeansForESP(fault_binerrs_shift_0_treat_df, "Y", "shift_0")
  Baah2010[["shift_0"]] <-
    computeBaah(fault_binerrs_shift_0_treat_df, "Y", "shift_0")
  
  fault_binerrs_result_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_5 = fault_binerrs_all$result_5,
      result_3 = fault_binerrs_all$result_3,
      result_4 = fault_binerrs_all$result_4,
      stringsAsFactors = FALSE
    )
  results[["result_5"]] <-
    CFmeansForESP(fault_binerrs_result_5_treat_df, "Y", "result_5")
  Baah2010[["result_5"]] <-
    computeBaah(fault_binerrs_result_5_treat_df, "Y", "result_5")
  
  fault_binerrs_P12_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P12_0_0 = fault_binerrs_all$P12_0_0,
      stringsAsFactors = FALSE
    )
  results[["P12_0_0"]] <-
    CFmeansForESP(fault_binerrs_P12_0_0_treat_df, "Y", "P12_0_0")
  Baah2010[["P12_0_0"]] <-
    computeBaah(fault_binerrs_P12_0_0_treat_df, "Y", "P12_0_0")
  
  fault_binerrs_denominator_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_3 = fault_binerrs_all$denominator_3,
      denominator_1 = fault_binerrs_all$denominator_1,
      denominator_2 = fault_binerrs_all$denominator_2,
      stringsAsFactors = FALSE
    )
  results[["denominator_3"]] <-
    CFmeansForESP(fault_binerrs_denominator_3_treat_df, "Y", "denominator_3")
  Baah2010[["denominator_3"]] <-
    computeBaah(fault_binerrs_denominator_3_treat_df, "Y", "denominator_3")
  
  fault_binerrs_result_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_0 = fault_binerrs_all$result_0,
      stringsAsFactors = FALSE
    )
  results[["result_0"]] <-
    CFmeansForESP(fault_binerrs_result_0_treat_df, "Y", "result_0")
  Baah2010[["result_0"]] <-
    computeBaah(fault_binerrs_result_0_treat_df, "Y", "result_0")
  
  fault_binerrs_denominator_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_1 = fault_binerrs_all$denominator_1,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  results[["denominator_1"]] <-
    CFmeansForESP(fault_binerrs_denominator_1_treat_df, "Y", "denominator_1")
  Baah2010[["denominator_1"]] <-
    computeBaah(fault_binerrs_denominator_1_treat_df, "Y", "denominator_1")
  
  fault_binerrs_numerator_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      numerator_6 = fault_binerrs_all$numerator_6,
      gcd_0 = fault_binerrs_all$gcd_0,
      stringsAsFactors = FALSE
    )
  results[["numerator_6"]] <-
    CFmeansForESP(fault_binerrs_numerator_6_treat_df, "Y", "numerator_6")
  Baah2010[["numerator_6"]] <-
    computeBaah(fault_binerrs_numerator_6_treat_df, "Y", "numerator_6")
  
  fault_binerrs_result_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      result_1 = fault_binerrs_all$result_1,
      shift_0 = fault_binerrs_all$shift_0,
      stringsAsFactors = FALSE
    )
  results[["result_1"]] <-
    CFmeansForESP(fault_binerrs_result_1_treat_df, "Y", "result_1")
  Baah2010[["result_1"]] <-
    computeBaah(fault_binerrs_result_1_treat_df, "Y", "result_1")
  
  fault_binerrs_denominator_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_2 = fault_binerrs_all$denominator_2,
      stringsAsFactors = FALSE
    )
  results[["denominator_2"]] <-
    CFmeansForESP(fault_binerrs_denominator_2_treat_df, "Y", "denominator_2")
  Baah2010[["denominator_2"]] <-
    computeBaah(fault_binerrs_denominator_2_treat_df, "Y", "denominator_2")
  
  fault_binerrs_denominator_7_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_7 = fault_binerrs_all$denominator_7,
      gcd_0 = fault_binerrs_all$gcd_0,
      stringsAsFactors = FALSE
    )
  results[["denominator_7"]] <-
    CFmeansForESP(fault_binerrs_denominator_7_treat_df, "Y", "denominator_7")
  Baah2010[["denominator_7"]] <-
    computeBaah(fault_binerrs_denominator_7_treat_df, "Y", "denominator_7")
  
  fault_binerrs_denominator_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_5 = fault_binerrs_all$denominator_5,
      stringsAsFactors = FALSE
    )
  results[["denominator_5"]] <-
    CFmeansForESP(fault_binerrs_denominator_5_treat_df, "Y", "denominator_5")
  Baah2010[["denominator_5"]] <-
    computeBaah(fault_binerrs_denominator_5_treat_df, "Y", "denominator_5")
  
  fault_binerrs_denominator_6_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      denominator_6 = fault_binerrs_all$denominator_6,
      denominator_3 = fault_binerrs_all$denominator_3,
      denominator_5 = fault_binerrs_all$denominator_5,
      stringsAsFactors = FALSE
    )
  results[["denominator_6"]] <-
    CFmeansForESP(fault_binerrs_denominator_6_treat_df, "Y", "denominator_6")
  Baah2010[["denominator_6"]] <-
    computeBaah(fault_binerrs_denominator_6_treat_df, "Y", "denominator_6")
  
  fault_binerrs_P22_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_0_1 = fault_binerrs_all$P22_0_1,
      P22_0_0 = fault_binerrs_all$P22_0_0,
      stringsAsFactors = FALSE
    )
  results[["P22_0_1"]] <-
    CFmeansForESP(fault_binerrs_P22_0_1_treat_df, "Y", "P22_0_1")
  Baah2010[["P22_0_1"]] <-
    computeBaah(fault_binerrs_P22_0_1_treat_df, "Y", "P22_0_1")
  
  fault_binerrs_P22_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P22_0_0 = fault_binerrs_all$P22_0_0,
      stringsAsFactors = FALSE
    )
  results[["P22_0_0"]] <-
    CFmeansForESP(fault_binerrs_P22_0_0_treat_df, "Y", "P22_0_0")
  Baah2010[["P22_0_0"]] <-
    computeBaah(fault_binerrs_P22_0_0_treat_df, "Y", "P22_0_0")
  
  fault_binerrs_a1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a1_0 = fault_binerrs_all$a1_0,
      r1_0 = fault_binerrs_all$r1_0,
      stringsAsFactors = FALSE
    )
  results[["a1_0"]] <-
    CFmeansForESP(fault_binerrs_a1_0_treat_df, "Y", "a1_0")
  Baah2010[["a1_0"]] <-
    computeBaah(fault_binerrs_a1_0_treat_df, "Y", "a1_0")
  
  fault_binerrs_P47_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P47_0_0 = fault_binerrs_all$P47_0_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  results[["P47_0_0"]] <-
    CFmeansForESP(fault_binerrs_P47_0_0_treat_df, "Y", "P47_0_0")
  Baah2010[["P47_0_0"]] <-
    computeBaah(fault_binerrs_P47_0_0_treat_df, "Y", "P47_0_0")
  
  fault_binerrs_P47_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P47_0_1 = fault_binerrs_all$P47_0_1,
      P47_0_0 = fault_binerrs_all$P47_0_0,
      stringsAsFactors = FALSE
    )
  results[["P47_0_1"]] <-
    CFmeansForESP(fault_binerrs_P47_0_1_treat_df, "Y", "P47_0_1")
  Baah2010[["P47_0_1"]] <-
    computeBaah(fault_binerrs_P47_0_1_treat_df, "Y", "P47_0_1")
  
  fault_binerrs_P65_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P65_0_1 = fault_binerrs_all$P65_0_1,
      P65_0_0 = fault_binerrs_all$P65_0_0,
      stringsAsFactors = FALSE
    )
  results[["P65_0_1"]] <-
    CFmeansForESP(fault_binerrs_P65_0_1_treat_df, "Y", "P65_0_1")
  Baah2010[["P65_0_1"]] <-
    computeBaah(fault_binerrs_P65_0_1_treat_df, "Y", "P65_0_1")
  
  fault_binerrs_P65_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P65_0_0 = fault_binerrs_all$P65_0_0,
      exponent_4 = fault_binerrs_all$exponent_4,
      stringsAsFactors = FALSE
    )
  results[["P65_0_0"]] <-
    CFmeansForESP(fault_binerrs_P65_0_0_treat_df, "Y", "P65_0_0")
  Baah2010[["P65_0_0"]] <-
    computeBaah(fault_binerrs_P65_0_0_treat_df, "Y", "P65_0_0")
  
  fault_binerrs_P9_1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_1_0 = fault_binerrs_all$P9_1_0,
      num_1 = fault_binerrs_all$num_1,
      stringsAsFactors = FALSE
    )
  results[["P9_1_0"]] <-
    CFmeansForESP(fault_binerrs_P9_1_0_treat_df, "Y", "P9_1_0")
  Baah2010[["P9_1_0"]] <-
    computeBaah(fault_binerrs_P9_1_0_treat_df, "Y", "P9_1_0")
  
  fault_binerrs_P9_1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P9_1_1 = fault_binerrs_all$P9_1_1,
      P9_1_0 = fault_binerrs_all$P9_1_0,
      stringsAsFactors = FALSE
    )
  results[["P9_1_1"]] <-
    CFmeansForESP(fault_binerrs_P9_1_1_treat_df, "Y", "P9_1_1")
  Baah2010[["P9_1_1"]] <-
    computeBaah(fault_binerrs_P9_1_1_treat_df, "Y", "P9_1_1")
  
  fault_binerrs_P6_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P6_0_0 = fault_binerrs_all$P6_0_0,
      q2_3 = fault_binerrs_all$q2_3,
      maxDenominator_1 = fault_binerrs_all$maxDenominator_1,
      stringsAsFactors = FALSE
    )
  results[["P6_0_0"]] <-
    CFmeansForESP(fault_binerrs_P6_0_0_treat_df, "Y", "P6_0_0")
  Baah2010[["P6_0_0"]] <-
    computeBaah(fault_binerrs_P6_0_0_treat_df, "Y", "P6_0_0")
  
  fault_binerrs_P16_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P16_0_0 = fault_binerrs_all$P16_0_0,
      stringsAsFactors = FALSE
    )
  results[["P16_0_0"]] <-
    CFmeansForESP(fault_binerrs_P16_0_0_treat_df, "Y", "P16_0_0")
  Baah2010[["P16_0_0"]] <-
    computeBaah(fault_binerrs_P16_0_0_treat_df, "Y", "P16_0_0")
  
  fault_binerrs_P59_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P59_0_0 = fault_binerrs_all$P59_0_0,
      stringsAsFactors = FALSE
    )
  results[["P59_0_0"]] <-
    CFmeansForESP(fault_binerrs_P59_0_0_treat_df, "Y", "P59_0_0")
  Baah2010[["P59_0_0"]] <-
    computeBaah(fault_binerrs_P59_0_0_treat_df, "Y", "P59_0_0")
  
  fault_binerrs_q1_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q1_0 = fault_binerrs_all$q1_0,
               stringsAsFactors = FALSE)
  results[["q1_0"]] <-
    CFmeansForESP(fault_binerrs_q1_0_treat_df, "Y", "q1_0")
  Baah2010[["q1_0"]] <-
    computeBaah(fault_binerrs_q1_0_treat_df, "Y", "q1_0")
  
  fault_binerrs_P46_2_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P46_2_0 = fault_binerrs_all$P46_2_0,
      maxIterations_1 = fault_binerrs_all$maxIterations_1,
      n_0 = fault_binerrs_all$n_0,
      stringsAsFactors = FALSE
    )
  results[["P46_2_0"]] <-
    CFmeansForESP(fault_binerrs_P46_2_0_treat_df, "Y", "P46_2_0")
  Baah2010[["P46_2_0"]] <-
    computeBaah(fault_binerrs_P46_2_0_treat_df, "Y", "P46_2_0")
  
  fault_binerrs_P59_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P59_0_1 = fault_binerrs_all$P59_0_1,
      P59_0_0 = fault_binerrs_all$P59_0_0,
      P59_0_1 = fault_binerrs_all$P59_0_1,
      stringsAsFactors = FALSE
    )
  results[["P59_0_1"]] <-
    CFmeansForESP(fault_binerrs_P59_0_1_treat_df, "Y", "P59_0_1")
  Baah2010[["P59_0_1"]] <-
    computeBaah(fault_binerrs_P59_0_1_treat_df, "Y", "P59_0_1")
  
  fault_binerrs_q1_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q1_1 = fault_binerrs_all$q1_1,
      q2_2 = fault_binerrs_all$q2_2,
      stringsAsFactors = FALSE
    )
  results[["q1_1"]] <-
    CFmeansForESP(fault_binerrs_q1_1_treat_df, "Y", "q1_1")
  Baah2010[["q1_1"]] <-
    computeBaah(fault_binerrs_q1_1_treat_df, "Y", "q1_1")
  
  fault_binerrs_P16_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P16_0_1 = fault_binerrs_all$P16_0_1,
      P16_0_0 = fault_binerrs_all$P16_0_0,
      stringsAsFactors = FALSE
    )
  results[["P16_0_1"]] <-
    CFmeansForESP(fault_binerrs_P16_0_1_treat_df, "Y", "P16_0_1")
  Baah2010[["P16_0_1"]] <-
    computeBaah(fault_binerrs_P16_0_1_treat_df, "Y", "P16_0_1")
  
  fault_binerrs_P32_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P32_0_1 = fault_binerrs_all$P32_0_1,
      P32_0_0 = fault_binerrs_all$P32_0_0,
      stringsAsFactors = FALSE
    )
  results[["P32_0_1"]] <-
    CFmeansForESP(fault_binerrs_P32_0_1_treat_df, "Y", "P32_0_1")
  Baah2010[["P32_0_1"]] <-
    computeBaah(fault_binerrs_P32_0_1_treat_df, "Y", "P32_0_1")
  
  fault_binerrs_P32_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P32_0_0 = fault_binerrs_all$P32_0_0,
      stringsAsFactors = FALSE
    )
  results[["P32_0_0"]] <-
    CFmeansForESP(fault_binerrs_P32_0_0_treat_df, "Y", "P32_0_0")
  Baah2010[["P32_0_0"]] <-
    computeBaah(fault_binerrs_P32_0_0_treat_df, "Y", "P32_0_0")
  
  fault_binerrs_P50_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P50_0_1 = fault_binerrs_all$P50_0_1,
      P50_0_0 = fault_binerrs_all$P50_0_0,
      stringsAsFactors = FALSE
    )
  results[["P50_0_1"]] <-
    CFmeansForESP(fault_binerrs_P50_0_1_treat_df, "Y", "P50_0_1")
  Baah2010[["P50_0_1"]] <-
    computeBaah(fault_binerrs_P50_0_1_treat_df, "Y", "P50_0_1")
  
  fault_binerrs_P50_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P50_0_0 = fault_binerrs_all$P50_0_0,
      stringsAsFactors = FALSE
    )
  results[["P50_0_0"]] <-
    CFmeansForESP(fault_binerrs_P50_0_0_treat_df, "Y", "P50_0_0")
  Baah2010[["P50_0_0"]] <-
    computeBaah(fault_binerrs_P50_0_0_treat_df, "Y", "P50_0_0")
  
  fault_binerrs_r1_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      r1_0 = fault_binerrs_all$r1_0,
      r0_0 = fault_binerrs_all$r0_0,
      a0_2 = fault_binerrs_all$a0_2,
      stringsAsFactors = FALSE
    )
  results[["r1_0"]] <-
    CFmeansForESP(fault_binerrs_r1_0_treat_df, "Y", "r1_0")
  Baah2010[["r1_0"]] <-
    computeBaah(fault_binerrs_r1_0_treat_df, "Y", "r1_0")
  
  fault_binerrs_P60_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P60_0_0 = fault_binerrs_all$P60_0_0,
      result_3 = fault_binerrs_all$result_3,
      stringsAsFactors = FALSE
    )
  results[["P60_0_0"]] <-
    CFmeansForESP(fault_binerrs_P60_0_0_treat_df, "Y", "P60_0_0")
  Baah2010[["P60_0_0"]] <-
    computeBaah(fault_binerrs_P60_0_0_treat_df, "Y", "P60_0_0")
  
  fault_binerrs_P60_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P60_0_1 = fault_binerrs_all$P60_0_1,
      P60_0_0 = fault_binerrs_all$P60_0_0,
      stringsAsFactors = FALSE
    )
  results[["P60_0_1"]] <-
    CFmeansForESP(fault_binerrs_P60_0_1_treat_df, "Y", "P60_0_1")
  Baah2010[["P60_0_1"]] <-
    computeBaah(fault_binerrs_P60_0_1_treat_df, "Y", "P60_0_1")
  
  fault_binerrs_a0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_0 = fault_binerrs_all$a0_0,
      r0_0 = fault_binerrs_all$r0_0,
      stringsAsFactors = FALSE
    )
  results[["a0_0"]] <-
    CFmeansForESP(fault_binerrs_a0_0_treat_df, "Y", "a0_0")
  Baah2010[["a0_0"]] <-
    computeBaah(fault_binerrs_a0_0_treat_df, "Y", "a0_0")
  
  fault_binerrs_a0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_1 = fault_binerrs_all$a0_1,
      a0_0 = fault_binerrs_all$a0_0,
      stringsAsFactors = FALSE
    )
  results[["a0_1"]] <-
    CFmeansForESP(fault_binerrs_a0_1_treat_df, "Y", "a0_1")
  Baah2010[["a0_1"]] <-
    computeBaah(fault_binerrs_a0_1_treat_df, "Y", "a0_1")
  
  fault_binerrs_a0_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_2 = fault_binerrs_all$a0_2,
      a0_1 = fault_binerrs_all$a0_1,
      stringsAsFactors = FALSE
    )
  results[["a0_2"]] <-
    CFmeansForESP(fault_binerrs_a0_2_treat_df, "Y", "a0_2")
  Baah2010[["a0_2"]] <-
    computeBaah(fault_binerrs_a0_2_treat_df, "Y", "a0_2")
  
  fault_binerrs_a0_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      a0_3 = fault_binerrs_all$a0_3,
      a1_0 = fault_binerrs_all$a1_0,
      stringsAsFactors = FALSE
    )
  results[["a0_3"]] <-
    CFmeansForESP(fault_binerrs_a0_3_treat_df, "Y", "a0_3")
  Baah2010[["a0_3"]] <-
    computeBaah(fault_binerrs_a0_3_treat_df, "Y", "a0_3")
  
  fault_binerrs_den_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      den_1 = fault_binerrs_all$den_1,
      den_0 = fault_binerrs_all$den_0,
      stringsAsFactors = FALSE
    )
  results[["den_1"]] <-
    CFmeansForESP(fault_binerrs_den_1_treat_df, "Y", "den_1")
  Baah2010[["den_1"]] <-
    computeBaah(fault_binerrs_den_1_treat_df, "Y", "den_1")
  
  fault_binerrs_P69_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P69_0_1 = fault_binerrs_all$P69_0_1,
      P69_0_0 = fault_binerrs_all$P69_0_0,
      stringsAsFactors = FALSE
    )
  results[["P69_0_1"]] <-
    CFmeansForESP(fault_binerrs_P69_0_1_treat_df, "Y", "P69_0_1")
  Baah2010[["P69_0_1"]] <-
    computeBaah(fault_binerrs_P69_0_1_treat_df, "Y", "P69_0_1")
  
  fault_binerrs_P69_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P69_0_0 = fault_binerrs_all$P69_0_0,
      stringsAsFactors = FALSE
    )
  results[["P69_0_0"]] <-
    CFmeansForESP(fault_binerrs_P69_0_0_treat_df, "Y", "P69_0_0")
  Baah2010[["P69_0_0"]] <-
    computeBaah(fault_binerrs_P69_0_0_treat_df, "Y", "P69_0_0")
  
  fault_binerrs_P43_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P43_0_0 = fault_binerrs_all$P43_0_0,
      value_4 = fault_binerrs_all$value_4,
      a0_1 = fault_binerrs_all$a0_1,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  results[["P43_0_0"]] <-
    CFmeansForESP(fault_binerrs_P43_0_0_treat_df, "Y", "P43_0_0")
  Baah2010[["P43_0_0"]] <-
    computeBaah(fault_binerrs_P43_0_0_treat_df, "Y", "P43_0_0")
  
  fault_binerrs_P43_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P43_0_1 = fault_binerrs_all$P43_0_1,
      P43_0_0 = fault_binerrs_all$P43_0_0,
      stringsAsFactors = FALSE
    )
  results[["P43_0_1"]] <-
    CFmeansForESP(fault_binerrs_P43_0_1_treat_df, "Y", "P43_0_1")
  Baah2010[["P43_0_1"]] <-
    computeBaah(fault_binerrs_P43_0_1_treat_df, "Y", "P43_0_1")
  
  fault_binerrs_P26_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P26_0_1 = fault_binerrs_all$P26_0_1,
      P26_0_0 = fault_binerrs_all$P26_0_0,
      stringsAsFactors = FALSE
    )
  results[["P26_0_1"]] <-
    CFmeansForESP(fault_binerrs_P26_0_1_treat_df, "Y", "P26_0_1")
  Baah2010[["P26_0_1"]] <-
    computeBaah(fault_binerrs_P26_0_1_treat_df, "Y", "P26_0_1")
  
  fault_binerrs_P26_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P26_0_0 = fault_binerrs_all$P26_0_0,
      numerator_0 = fault_binerrs_all$numerator_0,
      stringsAsFactors = FALSE
    )
  results[["P26_0_0"]] <-
    CFmeansForESP(fault_binerrs_P26_0_0_treat_df, "Y", "P26_0_0")
  Baah2010[["P26_0_0"]] <-
    computeBaah(fault_binerrs_P26_0_0_treat_df, "Y", "P26_0_0")
  
  fault_binerrs_stop_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      stop_1 = fault_binerrs_all$stop_1,
      stringsAsFactors = FALSE
    )
  results[["stop_1"]] <-
    CFmeansForESP(fault_binerrs_stop_1_treat_df, "Y", "stop_1")
  Baah2010[["stop_1"]] <-
    computeBaah(fault_binerrs_stop_1_treat_df, "Y", "stop_1")
  
  fault_binerrs_P1_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P1_0_0 = fault_binerrs_all$P1_0_0,
      value_3 = fault_binerrs_all$value_3,
      a0_1 = fault_binerrs_all$a0_1,
      epsilon_1 = fault_binerrs_all$epsilon_1,
      stringsAsFactors = FALSE
    )
  results[["P1_0_0"]] <-
    CFmeansForESP(fault_binerrs_P1_0_0_treat_df, "Y", "P1_0_0")
  Baah2010[["P1_0_0"]] <-
    computeBaah(fault_binerrs_P1_0_0_treat_df, "Y", "P1_0_0")
  
  fault_binerrs_q0_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               q0_0 = fault_binerrs_all$q0_0,
               stringsAsFactors = FALSE)
  results[["q0_0"]] <-
    CFmeansForESP(fault_binerrs_q0_0_treat_df, "Y", "q0_0")
  Baah2010[["q0_0"]] <-
    computeBaah(fault_binerrs_q0_0_treat_df, "Y", "q0_0")
  
  fault_binerrs_q0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      q0_1 = fault_binerrs_all$q0_1,
      q1_0 = fault_binerrs_all$q1_0,
      stringsAsFactors = FALSE
    )
  results[["q0_1"]] <-
    CFmeansForESP(fault_binerrs_q0_1_treat_df, "Y", "q0_1")
  Baah2010[["q0_1"]] <-
    computeBaah(fault_binerrs_q0_1_treat_df, "Y", "q0_1")
  
  fault_binerrs_P1_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P1_0_1 = fault_binerrs_all$P1_0_1,
      P1_0_0 = fault_binerrs_all$P1_0_0,
      stringsAsFactors = FALSE
    )
  results[["P1_0_1"]] <-
    CFmeansForESP(fault_binerrs_P1_0_1_treat_df, "Y", "P1_0_1")
  Baah2010[["P1_0_1"]] <-
    computeBaah(fault_binerrs_P1_0_1_treat_df, "Y", "P1_0_1")
  
  fault_binerrs_stop_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      stop_0 = fault_binerrs_all$stop_0,
      stringsAsFactors = FALSE
    )
  results[["stop_0"]] <-
    CFmeansForESP(fault_binerrs_stop_0_treat_df, "Y", "stop_0")
  Baah2010[["stop_0"]] <-
    computeBaah(fault_binerrs_stop_0_treat_df, "Y", "stop_0")
  
  fault_binerrs_nOd_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               nOd_0 = fault_binerrs_all$nOd_0,
               stringsAsFactors = FALSE)
  results[["nOd_0"]] <-
    CFmeansForESP(fault_binerrs_nOd_0_treat_df, "Y", "nOd_0")
  Baah2010[["nOd_0"]] <-
    computeBaah(fault_binerrs_nOd_0_treat_df, "Y", "nOd_0")
  
  fault_binerrs_dOn_0_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               dOn_0 = fault_binerrs_all$dOn_0,
               stringsAsFactors = FALSE)
  results[["dOn_0"]] <-
    CFmeansForESP(fault_binerrs_dOn_0_treat_df, "Y", "dOn_0")
  Baah2010[["dOn_0"]] <-
    computeBaah(fault_binerrs_dOn_0_treat_df, "Y", "dOn_0")
  
  fault_binerrs_num_5_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_5 = fault_binerrs_all$num_5,
      num_4 = fault_binerrs_all$num_4,
      stringsAsFactors = FALSE
    )
  results[["num_5"]] <-
    CFmeansForESP(fault_binerrs_num_5_treat_df, "Y", "num_5")
  Baah2010[["num_5"]] <-
    computeBaah(fault_binerrs_num_5_treat_df, "Y", "num_5")
  
  fault_binerrs_num_6_treat_df <-
    data.frame(Y = fault_binerrs_all$Y,
               num_6 = fault_binerrs_all$num_6,
               stringsAsFactors = FALSE)
  results[["num_6"]] <-
    CFmeansForESP(fault_binerrs_num_6_treat_df, "Y", "num_6")
  Baah2010[["num_6"]] <-
    computeBaah(fault_binerrs_num_6_treat_df, "Y", "num_6")
  
  fault_binerrs_P37_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P37_0_0 = fault_binerrs_all$P37_0_0,
      value_1 = fault_binerrs_all$value_1,
      stringsAsFactors = FALSE
    )
  results[["P37_0_0"]] <-
    CFmeansForESP(fault_binerrs_P37_0_0_treat_df, "Y", "P37_0_0")
  Baah2010[["P37_0_0"]] <-
    computeBaah(fault_binerrs_P37_0_0_treat_df, "Y", "P37_0_0")
  
  fault_binerrs_num_7_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_7 = fault_binerrs_all$num_7,
      denominator_0 = fault_binerrs_all$denominator_0,
      stringsAsFactors = FALSE
    )
  results[["num_7"]] <-
    CFmeansForESP(fault_binerrs_num_7_treat_df, "Y", "num_7")
  Baah2010[["num_7"]] <-
    computeBaah(fault_binerrs_num_7_treat_df, "Y", "num_7")
  
  fault_binerrs_P37_0_1_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P37_0_1 = fault_binerrs_all$P37_0_1,
      P37_0_0 = fault_binerrs_all$P37_0_0,
      stringsAsFactors = FALSE
    )
  results[["P37_0_1"]] <-
    CFmeansForESP(fault_binerrs_P37_0_1_treat_df, "Y", "P37_0_1")
  Baah2010[["P37_0_1"]] <-
    computeBaah(fault_binerrs_P37_0_1_treat_df, "Y", "P37_0_1")
  
  fault_binerrs_P11_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P11_0_0 = fault_binerrs_all$P11_0_0,
      den_5 = fault_binerrs_all$den_5,
      stringsAsFactors = FALSE
    )
  results[["P11_0_0"]] <-
    CFmeansForESP(fault_binerrs_P11_0_0_treat_df, "Y", "P11_0_0")
  Baah2010[["P11_0_0"]] <-
    computeBaah(fault_binerrs_P11_0_0_treat_df, "Y", "P11_0_0")
  
  fault_binerrs_P54_0_0_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      P54_0_0 = fault_binerrs_all$P54_0_0,
      stringsAsFactors = FALSE
    )
  results[["P54_0_0"]] <-
    CFmeansForESP(fault_binerrs_P54_0_0_treat_df, "Y", "P54_0_0")
  Baah2010[["P54_0_0"]] <-
    computeBaah(fault_binerrs_P54_0_0_treat_df, "Y", "P54_0_0")
  
  fault_binerrs_num_2_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_2 = fault_binerrs_all$num_2,
      num_1 = fault_binerrs_all$num_1,
      stringsAsFactors = FALSE
    )
  results[["num_2"]] <-
    CFmeansForESP(fault_binerrs_num_2_treat_df, "Y", "num_2")
  Baah2010[["num_2"]] <-
    computeBaah(fault_binerrs_num_2_treat_df, "Y", "num_2")
  
  fault_binerrs_num_3_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_3 = fault_binerrs_all$num_3,
      num_2 = fault_binerrs_all$num_2,
      stringsAsFactors = FALSE
    )
  results[["num_3"]] <-
    CFmeansForESP(fault_binerrs_num_3_treat_df, "Y", "num_3")
  Baah2010[["num_3"]] <-
    computeBaah(fault_binerrs_num_3_treat_df, "Y", "num_3")
  
  fault_binerrs_num_4_treat_df <-
    data.frame(
      Y = fault_binerrs_all$Y,
      num_4 = fault_binerrs_all$num_4,
      d_0 = fault_binerrs_all$d_0,
      stringsAsFactors = FALSE
    )
  results[["num_4"]] <-
    CFmeansForESP(fault_binerrs_num_4_treat_df, "Y", "num_4")
  Baah2010[["num_4"]] <-
    computeBaah(fault_binerrs_num_4_treat_df, "Y", "num_4")
  
  write.csv(
    getTheBiggest(Baah2010),
    file = paste(
      "/home/osboxes/Desktop/",
      project,
      "/",
      project,
      version,
      "Antlr/resultBaah2010.csv",
      sep = ""
    )
  )
  
  return(results)
  
}