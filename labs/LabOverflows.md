The data in `brfss` span 15 years; we have data for 2000, 2005, 2010, and 2015.

14. Make a stacked bar graph showing `age7` (age in 10-year increments) vs. `year` (survey year).  What do you learn about the U.S. population over the last 15 years?

15. Use `tally` and `barchart` to make a graph of the general health level against the survey year, and write a conclusion.  What do you learn about general health levels in the U.S. over the time span 2000 to 2015?  Provide a plausible explanation for any pattern you see.

Whenever we notice an association between two variables, we should ask if there are "lurking" variables that might help to explain the association.  Age and sex are possible lurking variables in this situation.

16. Use the code provided below to make a graph of general health vs. survey year, broken down (paneled) by age group.

```r
myColors = brewer.pal(5, "PuBuGn")
myKey = list(text=list(levels(brfss$genhealth)), columns=4,
	rectangles=list(col=myColors))
healthVsYearAndAge <- tally(~genhealth|year+age7, data=brfss,
	format="percent", useNA="no")
healthVsYearAndAge %>% aperm(c(2,3,1)) %>% barchart(col=myColors, key=myKey)
```

Describe what you see in this final graph.  How does it compare with your observations in the previous question?  How does this make sense?

********************

TODO: more options: pch, cex

..........



=======

## Mosaicplot

12. As an alternative to the stacked bar graph, we can draw a `mosaicplot`.  A basic 2-variable example shows the relationship between `income` and `health` for the `brfss` participants:
    ```r
    healthVsIncome <- tally(~income+genhealth, data=brfss,useNA="no")
    healthVsIncome %>% mosaicplot(color=brewer.pal(5,"RdPu"))
    ```

    a. What do you learn from this plot?
    b. What is the meaning of the varying bar widths in the mosaic plot?

