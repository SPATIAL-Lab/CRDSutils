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
      db = readline("System database name: \n")
    }
  } else{
    fp = readline("File path containing CRDS data directories: \n")
    rf = readline("\nReference file with full path: \n")
    op = readline("\nFile path for excel output: \n")
    usr = readline("\nAnalyst email: \n")
    db = readline("\nSystem database name: \n")
  }
  
  cf = file("~/.crds.config", open = "wt")
  writeLines(paste0("dataPath=", fp), cf)
  writeLines(paste0("refFile=", rf), cf)
  writeLines(paste0("outPath=", op), cf)
  writeLines(paste0("user=", usr), cf)
  writeLines(paste0("db=", db), cf)
  close(cf)
}
