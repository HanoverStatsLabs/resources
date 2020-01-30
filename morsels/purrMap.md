# The map command from purr

The `map` command from the `purr` package allows us to perform the same operation across multiple elements. In our example we have the following:
```r
sheetNames_to_process <- c("18-19", "17-18", "16-17")
```
For each of these names, we want to perform `read_excel(path, sheetName)`.  To do this in R we will create a function:
```r
getSheet <- function(sheetName) {
    read_excel(path, sheetName,
    rename_at(vars(ends_with("Level")), function(x) "Level") %>%
    drop_na(Level) %>%
    filter(`Assigned Librarian` %in% librarians) %>%
    mutate(`Section 1` = parse_date(`Section 1`, format="%m/%d/%y")) %>%
    mutate(year=sheetName)
}

sheets <- map(sheetNames_to_process, getSheet)
```

Now sheets a list of three tibbles, one for each year. If we get more year, we'll also automatically see more entries in the list.
