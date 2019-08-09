# Loading data from CSV files

- Comma-Separated-Value format is a simple data format that is easier to transport and share as compared to Excel.
- You can export your Excel data into CSV, and you can open CSV files from within Excel, so it is easy to work with. Furthermore, many different system can work with CSV files.
- R can also directly load your [Excel](loadingDataExcel.md) files.
- For CSV files R can work either with downloaded data files, or directly using a URL for the file.

To load a CSV file into R:

- In the Environment Pane, use the "Import Dataset" pulldown, and choose "From CSV ...".
- In the resulting window, type or copy-paste the file path or URL of the file you want to open. We will use `https://hanoverstatslabs.github.io/resources/datasets/guns.csv`.
- Click "Update" and you should see your data arranged in columns.
- In the bottom left under "Import Options", as needed, change:
    - the *Name* that will be given to store the data,
    - the number of lines to *skip* before reading data (for example there might have been some header/title lines),
    - whether the first row contains the names of the variables,
    - what is used as the "delimiter" between entries (if they don't seem to be vertically arranged properly),
    - and a few other options as needed.
- You should see on the bottom right a few lines of code similar to the ones below. Copy those lines and place them where they should go.
    - The `library(readr)` line is only needed once even if you load multiple files, and should only appear once in your RMarkdown document if you have one.
    - If you are using RMarkdown, the `View(...)` line needs to instead be run in the console, and it is used to offer a tabular visualization of the data.
- Click "Cancel" to close the dialog.

```r
library(readr)
guns <- read_CSV("https://hanoverstatslabs.github.io/resources/datasets/guns.csv")
View(guns)             # Opens up the data for viewing
## Below lines showcase a graph, and are not part of "loading the data"
own_rate <- guns$own_rate
names(own_rate) <- guns$country
dotchart(sort(own_rate))
```
