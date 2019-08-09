# Restricting a dataset using `filter`

When considering a dataset, we often want to restrict to a subset of it, for example only those counties in Indiana. The `filter` command is handy for this, and it requires the [hanoverbase package](packagesAsToolboxes.md). The examples below use the ["pipe" command `%>%`](piping.md) but they can also be used without it.

You can assign the results to a new name, or you can use the whole expression as is wherever you need it:
```r
data(counties)
onlyIndianaCounties <- counties %>% filter(pop2010 <= 2e6)
onlyIndianaCounties <- filter(counties, pop2010 <= 2e6)  # Without using pipe
histogram(~pop2010, data=onlyIndianaCounties)
threeStateCounties <- counties %>% filter(state %in% c("California", "Indiana", "West Virginia"))
# Using directly:
histogram(~pop2010, data=counties %>% filter(pop2010 <= 2e6))
```
