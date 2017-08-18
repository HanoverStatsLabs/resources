# Lab 2: Categorical Data and Multi-Variable Investigations

## Overall Goals

In [Lab 1](Lab1Instructions.md) we were introduced to the basic operations of RStudio. In this lab we expand on the ways R helps us analyze datasets. We will learn how to:

- aggregate data based on a categorical variable
- work with individual variables (e.g. sorting, filtering)
- visualize categorical information with barcharts and pareto charts
- visualize "labeled" quantitative information via dotplots
- visualize categorical-quantitative relationships via boxplots

Specific R commands encountered: `tally`, `sort`, `barchart`, `dotplot`, `tail`, `head`, `bwplot`, `median`


Recall that before we start any work, we need to load our main functions package:
```{r}
library(hanoverbase)
```

We will continue working with the `counties` dataset introduced in Lab 1. If the `counties` set is not visible in the Environment pane, you will need to "reload" it by running:
```{r}
data(counties)
```

## Working with Categorical Variables

Recall that categorical variables take values from a limited set of options, one value for each individual case. In our `counties` data set the "individual cases" are the U.S. counties.

1. What are the categorical variables in the `counties` dataset? You may need to bring up the help file for `counties`.

\vfill

We start by asking for the number of counties in each state. This is what we would commonly call the *frequencies* of the "state" variable. The `tally` command is used to compute frequencies:
```{r}
tally(~state, data=counties)
```
It would be nice to have these values ordered. Use the UP arrow to recall your last command, and add a "`%>%`" pipe step to sort the values calling the sort command:
```{r}
tally(~state, data=counties) %>% sort()
```

2. List the five states with the highest number of counties, including how many counties they each have.

\vfill
\vfill
\newpage
We can get a visual representation of these counts using a barchart:
```{r}
tally(~state, data=counties) %>% barchart()
```
The default barchart makes no attempt to order the categories, which can make the barchart hard to read. We can combine `tally`, `sort` and `barchart` to achieve a barchart ordered by the frequencies. This is typically called a **Pareto chart**:
```{r}
tally(~state, data=counties) %>% sort() %>% barchart()
```

3. Which states have fewer than 10 counties?

\vfill

On a lighter note, let us use the county name as a categorical variable, and determine for instance what are the most popular county names. We will combine `tally` and `sort` as above but using the `name` variable instead of the `state` variable.
```{r}
tally(~name, data=counties) %>% sort()
```
The result of that command is not very helpful. Since there are so many counties whose names only appear once, we do not get to see the end of the list. To do that, we can use the `tail` command, which shows a number of entries from the end:
```{r}
tally(~name, data=counties) %>% sort() %>% tail(10)
```
There is similarly a `head` command that would show us a number of entries from the top. This is not useful in this particular instance.

4. What are the top 5 most frequent county names? Why does it make sense that these are popular county names?

\vfill

5. We are curious to find out which states have a "Union County". We will use the data table on the top left of the screen for this. If the county data is not visible there, double-click it in the Environment pane to bring up the data table. Use the filter option at the top right of the data table to only show the rows that contain the name "Union County". How many of the original 13 colonies have a "Union" County?

\vfill

\newpage
## Working with Two Variables of a Dataset

In most situations in statistics we deal with more than one variable at a time, and more specifically we are interested in the relationships between variables. For example, we may look at the percent of female population for each county as a variable on its own (one variable analysis), or we may look at how these percents vary across states (two variable analysis).

6. Let us start by looking at the `female` variable. Look at the help file for the `counties` dataset. What is the meaning of the `female` variable's values?

\vfill

We can start our investigation by making a histogram and a five-number summary for the `female` variable:
```{r}
histogram(~female, data=counties, breaks=40)
favstats(~female, data=counties)
```

7. Describe the distribution in plain English. Include a discussion of the range, shape and center.

\vfill

8. Why does it make sense that the distribution is unimodal? Does the mode's value make sense?

\vfill
\newpage

9. Using the data table and sorting the female column, identify the 3 counties with the smallest percent of females. Possible reasons for a small female percentage could be the presence of a larger male prison or military base compared to the county population. Does this explanation seem to apply to the 3 counties (Hint: Wikipedia or Google search)?

\vfill

10. Which county has the highest female percentage? Can you explain the probable reason for that?

\vfill

We would like to compare these female percentages across states. Are there states whose counties tend to have unusual gender disparity? Or is the gender distribution quite uniform across states? A first step to answering this would be a boxplot of the female percentage against the states:
```{r}
bwplot(state~female, data=counties)
```

11. Which state stands out as having counties which tend to have a low percentage of females? Why does that make sense?

\vfill

It is difficult from this boxplot to identify anything more than the most extreme cases. We can provide "less" information per state to enable us to compare the states more easily. For instance we can ask what the median is for each state of the female percentage by county:
```{r}
median(~female|state, data=counties) %>% sort()
```

For a visual depiction of this table, we can use a **dotplot**:
```{r}
median(~female|state, data=counties) %>% sort() %>% dotplot()
```
We should point out that the values in this table are NOT the percent of females in the state. They are instead the median of the percentages of the various counties in the state. We will see a bit later how to compute the state-wide percentages by *aggregating* the data.

\newpage

##### Digging Deeper {-}

We might be interested in a single state and the distribution of female percentages in its counties.

We can get a quick listing of these counties for a single state by typing the state name in the "filter" of the data table.

12. Use this method to find which county in Indiana has the highest female percentage. Is there a good explanation for why this county has such a high percentage?

\vfill

Alternatively, we can make a visual display by using a filter and dotplot:
```{r}
alaskaCounties <- counties %>% filter(state=="Alaska")
dotplot(name~female, data = alaskaCounties)
```

You should also use the following two commands for alternative views of the same distribution:
```{r}
 bwplot(~female, data=alaskaCounties)
 histogram(~female, data=alaskaCounties, breaks=20, type="count")
```

13. Describe the pattern of the distribution of female percentages on the various counties in Alaska (typical values, outliers).

\vfill

\newpage
