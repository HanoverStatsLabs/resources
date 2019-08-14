# The tidyverse family of packages

[tidyverse](https://www.tidyverse.org/) is a collection of [packages](packagesAsToolboxes.md) that collectively work to make processing and transforming data a lot easier. These are all included in our hanoverbase package.

This [online book](http://r4ds.had.co.nz/) is a great resource for learning more about this suite of packages.

Here is a brief listing of these packages and what they enable us to do:

- [**ggplot2**](https://ggplot2.tidyverse.org/) offers support for graphs. The ggformula package we have seen uses it behind the scenes.
- [**dplyr**](https://dplyr.tidyverse.org/) offers functionality for manipulating a dataset: changing variables, creating new variables from existing ones, aggregating, etc.
- [**tidyr**](https://tidyr.tidyverse.org/) helps us bring a dataset into a more standardized form: reshaping between "long format" and "wide format", breaking a column into two or more columns based on the values, etc. It is often the first step after importing a new dataset from Excel or some similar source.
- [**readr**](https://readr.tidyverse.org/) is a set of utilities for reading in datasets of various file formats.
- [**tibble**](https://tibble.tidyverse.org/) is an alternative representation of datasets, that is used under the hood by all the other libraries.
- [**stringr**](https://stringr.tidyverse.org/) provides tools for breaking a string into pieces, and is helpful when different pieces of information have been encoded in variable names.
- [**forcats**](https://forcats.tidyverse.org/) provides utilities that work with factor (categorical) variables.

Some other packages are:

- [readxl](https://readxl.tidyverse.org/) and [haven](https://haven.tidyverse.org/), used to read Excel documents and SAS/SPSS/Stata documents respectively.
- [googledrive](https://googledrive.tidyverse.org/) can be used to connect to files in Google Drive.
- There are also [other more specialized packages](https://www.tidyverse.org/packages/) for web scraping, connecting to web APIs, databases, reading XML or JSON files, and more.
