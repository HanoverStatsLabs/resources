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

:   - Upload local file or use a URL
    - File > Import > Dataset > From ...
    - Add import code to code chunk (exclude the View command)

### Data Viewer

Order rows

:   - Click on column heading
    - Click again to change direction

Filter

:   - Click Filter button on top left of viewer
    - Use controls below column headings

Search

:   - Use the search box in top-right

## RMarkdown Basics

Main section

: `## Heading here`

Subsection

: `### Heading here`

Italic

: `*text here*`

Bold

: `**text here**`

Numbered List

: `1. text here`

Unnumbered List

: `- text here`

Blockquote

: `> text here`

## Summaries

### Numerical Variable

favstats

:   ```r
    favstats(~pop2010, data=counties)
    favstats(miles~direction, data=driving)  # miles by direction
    favstats(~miles|direction, data=driving) # same thing
    ```

median etc

:   ```r
    median(~female|state, data=counties) %>% sort()
    iqr(~poverty|state, data=counties)
    ```

### Categorical Variable

frequency

:   ```r
    tally(~state, data=counties)
    tally(~state, data=counties) %>% sort()
    ```

### Two Variables

Crosstabs

:   ```r
    # Column-wise percents
    tally(~genhealth|sex, data=brfss, format="percent", useNA="no")
    # Total percents
    tally(~genhealth+sex, data=brfss, format="percent", useNA="no")
    ```

Correlation

:   ```r
    cor(mort_rate~own_rate, data=guns)
    ```

## Graphs

### One Variable

Pie Chart

:   ```r
    tally(~genhealth, data=brfss, useNA="no") %>% pie()
    ```

Histogram

:   ```r
    histogram(~pop2010, data=counties, breaks=20)
    histogram(~pop2010, data=counties %>% filter(pop2010 <= 2e6))
    ```

Barchart

:   ```r
    tally(~state, data=counties) %>% barchart()
    tally(~state, data=counties) %>% t() %>% barchart() # Pareto chart
    ```

Boxplot

:   ```r
    bwplot(state~female, data=counties)
    ```

Labeled Dotplot

:   ```r
    sum(~own_rate|country, data=guns) %>% sort() %>% dotplot()
    ```

### Two Variables

100% Stacked Barchart

:   ```r
    healthVsExer <- tally(~genhealth|exerciseany, data=brfss,
        format="percent", useNA="no")
    healthVsExer %>% t() %>% barchart(auto.key=list(space="right"))
    ```

Scatterplot

:   ```r
    xyplot(mort_rate~own_rate, data=guns)
    ladd(panel.loess(x, y, col="magenta", lwd=2)) # add smooth fit line
    ```

### Three Variables

Paneled Scatterplot

:   ```r
    xyplot(mort_rate~own_rate|hdicat, data=guns)
    ```

### Colors

list by name

:   ```r
    colors() # in console
    ```

palette list

:   ```r
    display.brewer.all()  # in console
    ```

pick a palette

:   ```r
    brewer.pal(4, "Accent")
    ```

add in graph

:   ```r
    ..plot..(..., col=name-or-palette, ...)
    ```

## Misc

### Linear Modeling

add to graph

:   ```r
    ladd(panel.lmline(x, y, col="magenta", lwd=2))
    ```

get model

:   ```r
    fit <- lm(mort_rate~own_rate, data=guns)
    coefficients(fit)
    summary(fit)
    ```

diagnostics

:   ```r
    xyplot(resid(fit)~fitted(fit))   # residual plot
    ladd(panel.abline(h=0))
    cor(mort_rate~own_rate, data=guns)^2  # r-squared
    ```
