# Basic statistics for a vector

The simplest kind of work we can do in R with a vector is to compute various elementary statistics.

For numerical vectors, a number of statistics can be computed:

- Minima and maxima, via the commands `min` and `max`.
- Average and median values, via the commands `mean` and `median`.
- Measures of spread like the standard deviation, via the command `sd`.

```r
x <- c(23, 14, 3, 50, -2)
mean(x)
median(x)
sd(x)
max(x)
```

We can even combine these to compute, for example, standardized z-scores for the x values:
```r
z <- (x - mean(x)) / sd(x)
mean(z)    # should be 0
sd(z)      # should be 1
```

For character vectors, we typically want to build a count/frequency table, or a percent/relative frequency table:
```r
y <- c("M", "F", "M", "F", "No Answer", "F", "M", "No Answer")
tally(y)
tally(y, format="percent")          # for proportions
```

The tally command requires [the hanoverbase package](packagesAsToolboxes.md)
