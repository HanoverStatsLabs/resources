# The str_subset command from stringr

The `str_subset` command allows us to specify which specific strings we want to select from a list, based on a "regular expression/pattern".

In our example case, we have the following vector:
```r
sheetNames <- c("Trend Report", "18-19", "17-18", "16-17")
```
We basically want to only count those entries that match that "year" format. We can do it with `str_subset`  as follows:
```r
sheetNames_to_process <- str_subset(sheetsNames, "\\d\\d-\\d\\d")
```
This tells the system to only include the entries that contain a digit (`\\d`) followed by another digit, then a dash then two more digits.
