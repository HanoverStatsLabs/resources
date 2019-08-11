# R-chunks

- R-chunks are specific parts of an [RMarkdown document](rmarkdown.md) which contain R code that is meant to be executed as part of your analysis.
- Every R command that you need to execute must be in an R-chunk, but each chunk may contain multiple R commands.
- R-chunks are marked by a start line consisting of three backticks followed by a pair of braces containing the letter `r` along with other configuration options. They terminate by a line consisting of three backticks only.
- It is better to generate the R-chunks using the options that RStudio provides. There is an "Insert" pulldown above the document, and one of the options there is "R". This will insert and R-chunk at the current position in the document.
- They appear as slightly different-colored sections in the document, so that you can distinguish them.
- Everything that goes incide an R-chunk (i.e. between the open and close lines) must be valid R code.
- There are numerous [settings](rchunkSettings.md) that you can access via the gear buttom to the right of each R-chunk.
- You have a number of options for how to [run an Rchunk](rchunkRunning.md)
