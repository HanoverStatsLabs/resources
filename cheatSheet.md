---
css: cheatsheet.css
---

# R and RStudio Cheatsheet

## Preliminaries

Load package

:   ```r
    library(hanoverbase)
    ```

### Load Data

Data from package

:   ```r
    data(counties)
    View(counties)   # Only in console
    help(counties)   # Only in console
    ```

Data Import

:   TODO

### Data Viewer

Order rows

: TODO

Filter

: TODO

Search

: TODO

## Summaries

Numerical Variable

:   ```r
    favstats(~pop2010, data=counties)
    favstats(miles~direction, data=driving)  # miles by direction
    favstats(~miles|direction, data=driving) # same thing
    median(~female|state, data=counties) %>% sort()
    iqr(~poverty|state, data=counties)
    ```

Categorical Variable

:   ```r
    tally(~state, data=counties)
    tally(~state, data=counties) %>% sort()
    # Column-wise percents
    tally(~genhealth|sex, data=brfss, format="percent", useNA="no")
    # Total percents
    tally(~genhealth+sex, data=brfss, format="percent", useNA="no")
    ```

## Graphs

### One Variable

Histogram

:   ```r
    histogram(~pop2010, data=counties, breaks=20)
    histogram(~pop2010, data=counties %>% filter(pop2010 <= 2e6))
    ```

Barchart

: TODO

Boxplot

: TODO

Labeled Dotplot

:   ```r
    sum(~own_rate|country, data=guns) %>% sort() %>% dotplot()
    ```

### Two Variables

100% Stacked Barchart

: TODO

Scatterplot

: TODO

### Three Variables

TODO

: TODO

### Graph Additions

TODO

: TODO

### Colors

TODO

: TODO

### Panels

TODO

: TODO

## Misc

TODO

: TODO

### Head/Tail

TODO

: TODO

### Value Labels

TODO

: TODO

### Item Lists

TODO

: TODO
