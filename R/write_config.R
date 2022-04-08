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
      cat("Analyst email is:\n")
      cat(paste0(cfg$user, "\n"))
      usr = readline("Replace or <enter> \n")
      if(nchar(usr) == 0){usr = cfg$user}
    } else{
      usr = readline("Analyst email: \n")
    }
    if(hasName(cfg, "db")){
      cat("System database name is:\n")
      cat(paste0(cfg$db, "\n"))
      db = readline("Replace or <enter> \n")
      if(nchar(db) == 0){db = cfg$db}
    } else{
      db = readline("System database name (or <enter> if none): \n")
    }
  } else{
    fp = readline("File path containing CRDS data directories: \n")
    rf = readline("\nReference file with full path: \n")
    iop = readline("\nFile path for file input/output: \n")
    usr = readline("\nAnalyst email: \n")
    db = readline("\nSystem database name (or <enter> if none): \n")
  }
  
  crdsp = file.path(iop, "CRDS_liquidH2O")
  drsp = file.path(iop, "Data_reports")
  nssp = file.path(iop, "NEON_shipping")
  
  if(!dir.exists(crdsp)){
    tok = readline(paste("\nDirectory", crdsp, "does not exist, create? (Y/N)"))
    if(tok == "Y"){dir.create(crdsp)}
  }
  if(!dir.exists(drsp)){
    tok = readline(paste("\nDirectory", drsp, "does not exist, create? (Y/N)"))
    if(tok == "Y"){dir.create(drsp)}
  }
  if(!dir.exists(nssp)){
    tok = readline(paste("\nDirectory", nssp, "does not exist, create? (Y/N)"))
    if(tok == "Y"){dir.create(nssp)}
  }
  
  cf = file("~/.crds.config", open = "wt")
  writeLines(paste0("dataPath=", fp), cf)
  writeLines(paste0("refFile=", rf), cf)
  writeLines(paste0("ioPath=", iop), cf)
  writeLines(paste0("outPath=", crdsp), cf)
  writeLines(paste0("neonPath=", nssp), cf)
  writeLines(paste0("reportPath=", drsp), cf)
  writeLines(paste0("user=", usr), cf)
  writeLines(paste0("db=", db), cf)
  close(cf)
}
