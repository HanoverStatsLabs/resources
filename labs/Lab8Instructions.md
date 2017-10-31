# Lab 8: RStudio Review

## Introduction

In this lab you will review the different techniques we have discussed for analyzing data in RStudio. The dataset contains information about various 2015 car models.

## Start Project and Get Data

- Download the file at
[http://www.lock5stat.com/datasets/Cars2015.xlsx](http://www.lock5stat.com/datasets/Cars2015.xlsx)
- Start a new project in RStudio (Lab_8).
- Upload the data from the Excel file to the Lab_8 project.
- Start a new RMarkdown document for your lab report.
- Add chunks to your RMarkdown to load the hanoverbase library and to import the Excel data.
- Make sure you can view the Cars2015 data in the data viewer.
- Remember to save and knit often as you work on your report.

### Understanding the Variables in the Cars Dataset

If you find yourself unsure of, for example, the units used for the weight of a car, you should do a Google search on one of the car makes and models, like "Hyundai Accent" to find its weight. That information should help you determine proper units for the weight variable in the dataset.

## Statistical Investigations

Provide relevant graphs, numerical summaries, and discussions to answer the following questions. As you investigate the data, you should create **at least one of each** of the following types of graphs (you can also use other kinds of graphs, of course):

- histogram
- boxplot
- simple barchart
- stacked barchart
- simple scatterplot with smooth fit line
- scatterplot with panels
- piechart

For help with writing your R code chunks, refer to the R and RStudio Cheatsheet and to the previous lab assignments: [https://hanoverstatslabs.github.io/resources/](https://hanoverstatslabs.github.io/resources/)

### Questions

1. Investigate the distributions of the car type and size for this dataset.
2. Investigate the relationship between type and size.
3. Investigate the distributions of the highway mileage and city mileage data, including any possible association with type and size.
4. What effect, if any, does the car type and weight have on the car's time to accelerate from 0 to 60 mph? Does the weight effect on acceleration differ across the different car types? Which car type tends to have the fastest acceleration?
5. Investigate a possible association between fuel capacity and car type. Do the same for fuel capacity and size.

### Submission

- Make sure to knit one last time, then download the Lab8Report.Rmd file: in the **Files pane** (lower right), click the checkbox for the RMD file, then choose `More > Export... > Download`. *Do the same for Lab8Report.html.*
- **Submit both files via Moodle**.
