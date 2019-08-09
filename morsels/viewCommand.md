# Viewing a loaded dataset: The View command

- RStudio offers a powerful and convenient spreadsheet-style view of a dataset with its `View` command.
- This is the only command that starts with a capital letter. This is a convenient reminder that it is a special command: It cannot be used within RMarkdown documents. It must only be used in the console, and only works within the RStudio environment.

```r
data(counties)
View(counties)
```

The new spreadsheet view offers some convenient features:

- You can sort the rows by any particular column simply by clicking that column heading (and reverse the sort order on a second click).
- The "Filter" button opens up new options on each column heading, where we can restrict which entries appear. For example clicking on the `pop2010` column brings up a slider.

Note that you CANNOT edit the dataset via this spreadsheet, it is only there for viewing.
