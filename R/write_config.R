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
    if(hasName(cfg, "ioPath")){
      cat("Input/output path is:\n")
      cat(paste(cfg$ioPath, "\n"))
      iop = readline("Replace or <enter> \n")
      if(nchar(iop) == 0){iop = cfg$ioPath}
    } else{
      iop = readline("File path for file input/output: \n")
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
    iop = readline("\nFile path for file input/output: \n")
    usr = readline("\nAnalyst name: \n")
    db = readline("\nSystem database name: \n")
  }
  
  cf = file("~/.crds.config", open = "wt")
  writeLines(paste0("dataPath=", fp), cf)
  writeLines(paste0("refFile=", rf), cf)
  writeLines(paste0("ioPath=", iop), cf)
  writeLines(paste0("outPath=", file.path(iop, "CRDS_liquidH2O")), cf)
  writeLines(paste0("neonPath=", file.path(iop, "NEON_shipping")), cf)
  writeLines(paste0("reportPath=", file.path(iop, "Data_reports")), cf)
  writeLines(paste0("user=", usr), cf)
  writeLines(paste0("db=", db), cf)
  close(cf)
}
