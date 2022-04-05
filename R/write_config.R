#Write configuration file
write_config = function(){
  flag = file.exists("~/.crds.config")
  if(flag){
    cfg = init()
    if(hasName(cfg, "dataPath")){
      cat("File path is:\n")
      cat(paste(cfg$dataPath, "\n"))
      fp = readline("Replace or <enter> \n")
      if(nchar(fp) == 0){fp = cfg$dataPath}
    } else{
      fp = readline("File path containing CRDS data directories: \n")
    }
    if(hasName(cfg, "refFile")){
      cat("Reference file path is:\n")
      cat(paste(cfg$refFile, "\n"))
      rf = readline("Replace or <enter> \n")
      if(nchar(rf) == 0){rf = cfg$refFile}
    } else{
      rf = readline("Reference file with full path: \n")
    }
    if(hasName(cfg, "outPath")){
      cat("Output path is:\n")
      cat(paste(cfg$outPath, "\n"))
      op = readline("Replace or <enter> \n")
      if(nchar(op) == 0){op = cfg$outPath}
    } else{
      op = readline("File path for excel output: \n")
    }
    if(hasName(cfg, "neonPath")){
      cat("NEON shipping file path is:\n")
      cat(paste(cfg$neonPath, "\n"))
      neon = readline("Replace or <enter> \n")
      if(nchar(neon) == 0){neon = cfg$neonPath}
    } else{
      neon = readline("Path for NEON shipping files: \n")
    }
    if(hasName(cfg, "reportPath")){
      cat("Data report file path is:\n")
      cat(paste(cfg$reportPath, "\n"))
      rept = readline("Replace or <enter> \n")
      if(nchar(rept) == 0){neon = cfg$reportPath}
    } else{
      rept = readline("Path for data report files: \n")
    }
    if(hasName(cfg, "user")){
      cat("Analyst name is:\n")
      cat(paste0(cfg$user, "\n"))
      usr = readline("Replace or <enter> \n")
      if(nchar(usr) == 0){usr = cfg$user}
    } else{
      usr = readline("Analyst name: \n")
    }
    if(hasName(cfg, "db")){
      cat("System database name is:\n")
      cat(paste0(cfg$db, "\n"))
      db = readline("Replace or <enter> \n")
      if(nchar(db) == 0){db = cfg$db}
    } else{
      db = readline("System database name: \n")
    }
  } else{
    fp = readline("File path containing CRDS data directories: \n")
    rf = readline("\nReference file with full path: \n")
    op = readline("\nFile path for excel output: \n")
    neon = readline("\nPath for NEON shipping files: \n")
    rept = readline("\nPath for data report files: \n")
    usr = readline("\nAnalyst name: \n")
    db = readline("\nSystem database name: \n")
  }
  
  cf = file("~/.crds.config", open = "wt")
  writeLines(paste0("dataPath=", fp), cf)
  writeLines(paste0("refFile=", rf), cf)
  writeLines(paste0("outPath=", op), cf)
  writeLines(paste0("neonPath=", neon), cf)
  writeLines(paste0("reportPath=", rept), cf)
  writeLines(paste0("user=", usr), cf)
  writeLines(paste0("db=", db), cf)
  close(cf)
}
