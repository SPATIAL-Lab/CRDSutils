knit = function(inputFile, encoding){
  rmarkdown::render(inputFile, encoding = encoding, params = "ask",
                    output_file = file.path(dirname(inputFile), instrument, "_", rundate, ".html"))
}


knit: (function(inputFile, encoding){rmarkdown::render(inputFile, encoding = encoding, params = "ask",
                    output_file = file.path(dirname(inputFile), instrument, "_", rundate, ".html"))})


setHook("knit", 
        function(inputFile){
          cfg = CRDSutils::init()
          rmarkdown::render(inputFile, params = "ask",
                            output_file = file.path(
                              cfg$outPath, "/", instrument, "_", rundate, ".html"))
        })
