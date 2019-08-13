# R Workshop Day 2

## RStudio projects and RMarkdown

- [RStudio projects](../morsels/rstudioProjects.md)
- [Creating an RMarkdown document](../morsels/rmarkdown.md)
- [Markdown syntax](../morsels/markdown.md)
- [Knitting](../morsels/knitting.md)
- [Rchunks](../morsels/RChunks.md)
- [The GGFormula system for graphics based on a dataset](../morsels/ggformula.md)

## Practice

- We will be working with the "driving" dataset:
    - Start a new project
    - Start a new RMarkdown document
    - Add a R-chunk to the document, that contains the code to load the packages `hanoverbase` and `ggformula`.
    - Download [this file](http://hanoverstatslabs.github.io/resources/datasets/driving.csv)
    - Upload the file into your new project space
    - Import the dataset into your RMarkdown document, but on the Import window screen, after the data was appeared, do the following:
        - Select the first column heading (day), and change it to the "Date" format, with format string `%Y/%m/%d`.
        - For the "leaveTime" and "arrTime" columns, change their format to "Time" with format `%H:%M`. We learned these formats by looking at the actual file in a program like Excel and reading the documentation for `col_date` (try `?col_date`).
        - Now copy the updated code in the import window and paste into a code chunk in your document (set it to show no output but run code). Remember to use the `View` line only in the console, not in the RMarkdown.
- In a new chunk, use `gf_histogram` to draw a histogram of the `leaveTime` variable, and describe and explain the result.
- Draw a similar histogram of the `miles` variable. What patterns do you notice?
- Draw a scatterplot (`gf_point`) comparing `miles` and `time`, restricting to the part of the dataset where `miles` is at most 48.

### More Practice

1. Create a simple RMarkdown report that includes some data and graphics from one of the datasets we have used so far.
2. Choose 3-5 states and filter the counties data to these states. Then draw a scatterplot comparing the populations in 2000 and 2010, with a different color for each state, then add smooth lines for each state as well as overall. Add title and caption to the graph, set the x and y  labels, and change the label that goes with the colors.
