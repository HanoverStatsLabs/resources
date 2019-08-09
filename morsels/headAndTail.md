# Head and Tail

- `head` and `tail` are two commands that can help us quickly look near the beginning or end of long lists of values.
- They work with both [vectors](vectors.md) and [datasets](basicStatisticsDataset.md)
- They expect the object in question as their first argument, and you can use the [pipe operation](piping.md) for that.
- They optionally take as a second argument the number of entries to show, with the default being 6.

```r
# Ten Most frequent county names
tally(~name, data=counties) %>% sort() %>% tail(10)
# Ten states with smallest number of counties
tally(~state, data=counties) %>% sort() %>% head(10)
```
