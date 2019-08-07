# Basic statistics for a vector

The simplest kind of work we can do in R with a vector is to compute various elementary statistics based on a vector.

For numerical vectors, a number of statistics can be computed:

- Minima and maxima, via the command `min` and `max`.
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
mean(z)    # 0
sd(z)      # 1
```

For character vectors, we typically want to build a frequency table, or also a percent table:
```r
y <- c("M", "F", "M", "F", "No Answer", "F", "M", "No Answer")
table(y)
prop.table(table(y))
```
