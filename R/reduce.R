reduce = function(instrument, runDate){
  cfg = CRDSutils::init()
  inputFile = paste0(cfg$outPath, "/dataReduction_template.Rmd")
  outputFile = file.path(cfg$outPath, 
                          paste0(instrument, "_",
                                 runDate, ".html"))
  rmarkdown::render(inputFile, 
                    params = list(instrument = instrument,
                                  runDate = runDate),
                    output_file = outputFile)
  browseURL(outputFile)
}