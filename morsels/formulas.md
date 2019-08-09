# Formulas in R

Many of the commands in R allow us to use a syntax as follows:

```r
command(formula, data=datasetName, ...otherOptions)
```

A *formula* is a special syntax in R that in general looks as one of the following:
```r
~<rhs>
<lhs>~<rhs>
~<rhs>|<groups>
<lhs>~<rhs>|<groups>
```
So it consists of a tilde followed by a "right-hand-side" expression, typically the name of a variable. It can optionally take a "left-hand-side" expression to the left of the tilde, and may end with a vertical line followed by a "groups" section. All sections contain the variables to be considered or expressions of such variables some times, and multiple variables can be typically separated by a plus sign.

lhs
  ~ The variables on the left-hand-side are the target variables and we are interested in how they are influenced by the other variables. When doing a scatterplot, `lhs` corresponds to the y axis.

rhs
  ~ The variables on the right-hand-side are the source variables and we are interested in themselves if there is no left-hand-side, or how they influence the variables in the left-hand-side if there are any.

groups
  ~ The variables in the groups section are meant to be variables used to break down the results. If used in a graph situation for example, the graph would have a different panel for each value of the group variables.

#### Examples

```r
# Looking at general health on its own
~genhealth
# Compare physical health against mental health,
# break down by general health category
physhealth~menthealth|genhealth
# Look at both physical health and mental health
~physhealth+menthealth

fewStates <- counties %>% filter(state %in% c("Indiana", "Kentucky", "Alaska", "California", "Florida", "New York"))
# Boxplot of foreign-born percentages per county with separate box per state.
bwplot(state~foreign_born, data=fewStates)
# Histogram of foreign-born percentages per county with separate panel per state.
histogram(~foreign_born | state, data=fewStates)
# Median of foreign-born percentages for counties computed per state
median(~foreign_born | state, data=counties)
```

