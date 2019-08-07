# Loading Excel files

Loading an Excel file is a two-three-step process:

0. If the file is somewhere on the web, download the Excel file to your local computer.
1. [Upload the Excel](uploadFiles.md) file from your local computer to your RStudio workspace.
2. Import the Excel file from the Rstudio workspace into your project workflow/document.

We will describe this last step here.

- Locate the file in the *Files* pane.
- Click the file name and select "Import Dataset". This will bring up the Import dialog window.
- Optionally change the "name" of the resulting object in the bottom left of the dialog.
- You may choose which sheet you want to include, as well as how many lines to skip.
- You should see on the right bottom a few lines of code similar to the ones below. Copy those lines and place them where they should go.
    - The `library(readxl)` line is only needed once if you load multiple files, and should only appear once in your RMarkdown document if you use one.
    - If you are using RMarkdown, the `View(...)` line needs to instead go to the console, and it is used to offer a tabular visualization of the data.

```r
library(readxl)
guns <- read_excel("~/Math217Labs/blank/guns.xlsx")
View(guns)
## Below lines showcase a graph, and are not part of "loading the data"
own_rate <- guns$own_rate
names(own_rate) <- guns$country
dotchart(sort(own_rate))
```
