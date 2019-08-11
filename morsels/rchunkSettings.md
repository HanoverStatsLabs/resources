# R-chunk settings

R-chunk settings appear in two places:

- There are "global" settings that are determined by the first chunk which is a special chunk with the name `setup`. In it the line `knitr::opts_chunk$set(echo = TRUE)` determines settings for all other chunks. In this case, `echo=TRUE` means that the output from each chunk will include the code used to produce it.
- You can customize the settings for an individual R-chunk using the gear button on the right of that chunk.
    - You can give the chunk a name. This is a somewhat advanced feature that we will not use. It allows you to refer to the chunk from other parts of the code.
    - The "Output" pulldown determines what should happen to the output of the chunk when it is knitted. The default would be fine for most chunks, but on occasion there are special chunks for which you want no output to be produced (e.g. a chunk that loads some data or a package). For those chunks, you want to choose the "Show nothing (run code)" option, which will tell the Knitting program to execute the chunk but not show any output. When you use this setting, you will see a `include=FALSE` appear at the first line of the chunk.
    - The "Show warnings" and "Show messages" options can be turned off to hide those messages and diagnostics, often occurring when you load a package or a dataset.
    - The "Use custom figure size" option allows you to specify the dimensions of a figure. You can specify only one dimension and the other will be automatically adjusted, or you can set them both.
- Click "Apply" to have the settings apply to the chunk.
