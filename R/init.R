#Initialize paths and variables
init = function(){
  cfg = readLines("~/.crds.config")
  cfg = strsplit(cfg, "=")
  
  cfgn = list()
  for(i in seq_along(cfg)){
    cfgn[[i]] = cfg[[i]][2]
    names(cfgn)[i] = cfg[[i]][1]
  }
  
  return(cfgn)
}
