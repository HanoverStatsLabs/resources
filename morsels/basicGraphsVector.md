# Basic graphs for a single vector

R has a variety of graphs that can be generated. [The ggPlot package](../morsels/ggplot.md) allows us to generate some fancy graphics. In this section we instead see some simpler graphics.

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

For non-labeled data, we would typically build histograms or boxplots. The following command generates 500 normally distributed random values and uses those as `x`.
```r
x <- rnorm(500)
hist(x)
boxplot(x)
```
