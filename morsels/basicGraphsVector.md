# Basic graphs for a single vector

In this section we will look at some simple graph commands for vectors, that are part of the base R system. For fancier graphics, check out [the ggPlot package](../morsels/ggplot.md).

Here is some data, in what is known as a *named vector*:
```r
x <- c(23, 14, 3, 50, -2)
names(x) <- c("Billy", "Joan", "Peter", "Melissa", "Betty")
x
```

A common graph for such data would be a *labeled dot plot*:
```r
dotchart(x)
dotchart(sort(x))      # Ordered by size
```
Another would be a bar chart:
```r
barplot(x)
barplot(sort(x))
```
If you are willing to use the [lattice package](packagesAsToolboxes.md), you can use the commands `dotplot` and `barchart` instead.

For non-labeled data, we would typically build histograms or boxplots. The following command generates 500 normally distributed random values and uses those as `x`.
```r
x <- rnorm(500)
hist(x)
boxplot(x)
```
You can also use `bwplot` instead of `boxplot`, if you use the lattice package.
