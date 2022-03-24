knit = function(inputFile, encoding){
  rmarkdown::render(inputFile, encoding = encoding, params = "ask",
                    output_file = file.path(dirname(inputFile), instrument, "_", rundate, ".html"))
}


knit: (function(inputFile, encoding){rmarkdown::render(inputFile, encoding = encoding, params = "ask",
                    output_file = file.path(dirname(inputFile), instrument, "_", rundate, ".html"))})


setHook("knit", 
        function(inputFile){
          rmarkdown::render(
            inputFile, 
            params = "ask")})
