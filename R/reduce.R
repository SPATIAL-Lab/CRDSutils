reduce = function(instrument, runDate){
  cfg = CRDSutils::init()
  inputFile = system.file("dataReduction_template.RMD", 
                          package = "CRDSutils")
  outputFile = file.path(cfg$outPath, 
                          paste0(instrument, "_",
                                 runDate, ".html"))
  rmarkdown::render(inputFile, 
                    params = list(instrument = instrument,
                                  runDate = runDate),
                    output_file = outputFile)
  browseURL(outputFile)
}