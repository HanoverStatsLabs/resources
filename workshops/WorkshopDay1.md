# R Workshop Day 1

## Warmup

- Introductions
- What is your main goal for this workshop?
- What type of data analysis are you most interested in?

## RStudio basics

- [What are R and RStudio?](../morsels/whatAreRAndRStudio.md)
- [Why might one use RStudio over something like Excel or SPSS?](../morsels/whyRStudio.md)
- [Logging in to the RStudio server.](../morsels/loggingToRStudio.md)
- Type `library(hanoverbase)` in the "console" window and press Enter. We will talk about what this does later.
- [The different sections and panes in RStudio.](../morsels/RStudioSections.md)
- [Using the console, including help and history](../morsels/WorkingWithConsole.md)
- [Basic arithmetic and use of scientific notation in RStudio.](../morsels/arithmetic.md)
- [Assigning to variables.](../morsels/variableAssignment.md)
- [Working with vectors/sequences.](../morsels/vectors.md)
- [Quickly entering some data using `scan()`.](../morsels/usingScan.md)
- [Basic statistics for a vector](../morsels/basicStatisticsVector.md)
- [Basic graphs for a vector](../morsels/basicGraphsVector.md)

## Analyzing data

- [Packages](../morsels/packagesAsToolboxes.md)
- [Loading data from CSV files](../morsels/loadingDataCSV.md)
- [Loading built-in datasets with `data()`](../morsels/builtInDataSets.md)
- [Your Rstudio workspace vs your computer](../morsels/workspaceVsComputer.md)
- [Loading data from Excel.](../morsels/loadingDataExcel.md)
- [Viewing a loaded dataset](../morsels/viewCommand.md)
- [Basic statistics for variables in datasets](../morsels/basicStatisticsDataset.md)
- [Basic graphs for variables in datasets](../morsels/basicGraphsDataset.md)
- [Restricting a dataset using `filter`](../morsels/filteringDatasets.md)
- [Viewing only the top or bottom of a list: `head` and `tail`](../morsels/headAndTail.md)

### Practice

1. Which counties have the smallest/largest population?
2. Draw a histogram of the different counties populations. How would we describe the distribution? Restrict the dataset to smaller and smaller ranges to get a better view.
3. What are the mean and median populations for counties? Which one is larger, how does that make sense?
4. The following command draws histograms of the percent of foreign_born on each county for each of three states. What can we learn about the states from this graph?

    ```r
    histogram(~foreign_born|state,
        data=counties %>%
            filter(state %in% c("California", "Indiana", "West Virginia")),
        layout=c(1,3,1), breaks=20)
    ```
5. Change the above code to instead show you the percent of residents that have graduated from high school for the counties of Indiana, Kentucky and Ohio, and compare the states.
6. Do the same looking at the percent of residents with incomes below the poverty line.
7. Produce dotplot or barchart with one dot/bar for each state where the value is the number (tally) of counties in that state. What stands out?
8. What are some popular county names?
9. Create a new dataset `lincolnCounties` that contains only those counties named `Lincoln County`.
10. Draw histograms and statistics for the percent of females in the different counties, and discuss interesting patterns.
11. Identify counties with extremely small or extremely large percent of female population. Repeat for some specific state.
