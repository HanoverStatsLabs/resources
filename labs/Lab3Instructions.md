#Lab 3: Generating Reports with R Markdown

## Introduction

In this lab we learn how to integrate R code and text into a single report. We use the RMarkdown file format for this (`.Rmd`), which has many advantages:

- The R code that produces our results is incorporated into our report. This way our results can be reproduced very easily.
- We can work within the RStudio application, without the need for a separate text editing application.
- The RMarkdown document can easily produce different outputs, e.g. PDF, Web pages, Word documents.
- RMarkdown is built atop of Markdown, which is a very popular standard for creating structured plain text documents.

You can learn more about RMarkdown at the following link: [http://rmarkdown.rstudio.com/](http://rmarkdown.rstudio.com/)

## Overall Goals

In this lab we will learn how to:

- create a basic RMarkdown document
- add code, results and graphics into the document
- create structural elements like sections, quoted and highlighted parts
- export the RMarkdown document to various formats

At the same time we will get a chance to practice the R commands we learned in the previous labs.

## Creating an RStudio Project

RStudio projects allow us to organize our work. A project is essentially a folder/directory of related files. You can easily start a new project or download someone else's project to start.

We have created a starting project for you. In order to set it up:

- In RStudio, go to `File > New Project`. Choose "Version Control" from the "Create Project" dialog.
- Choose "Git" and then paste the following URL into the "Repository URL" field:

    `https://github.com/HanoverStatsLabs/Lab-Intro-RMarkdown`
- Enter a name for the project directory. `Lab3_yourname` might be a reasonable choice.
- Use the Browse button to choose the parent directory in which to save this project. You may want to create a new parent directory for this class, to hold all your projects for the class.
- Click on "Create Project" to finalize the setup process.

If all has gone well, you should now see the project files in the **Files pane** at the bottom right.

The file we are interested in is called `Lab3Report.Rmd`. Click on it to open it up for editing. It should appear at the top left. We will work on this file in the subsequent sections.

## Working with RMarkdown Documents

RMarkdown documents typically start with a "header" section. In it you get to specify title, author and date for the report, as well as some other technical settings that we will not worry about right now. Take a moment to add your own information in the header fields. Make sure to save your edits before proceeding.

The rest of the document contains the actual contents of your report.

### Exporting RMarkdown documents

Exporting an RMarkdown into other formats is called **Knitting**. You will find a "Knit" pulldown at the top of the editing pane. Use the arrow to its right to select an output format. We will use "Knit to HTML" for now.

DO NOW: Use "Knit to HTML" to create a compiled version of the report. You will need to do this frequently as you work on your report.

If everything is in order you should see the output of your report so far. (Hint: You can customize where the output will be shown by changing the settings at `Tools > Global Options > R Markdown`.)

### Completing the Lab

The first section of the lab 3 report is designed to introduce the main structures used in RMarkdown. Take a few minutes to compare the text in the RMarkdown window with the corresponding HTML output to learn how to add these basic structures.

The subsequent sections contain the actual assignment, where you will be prompted to make statistical investigations and to document those investigations in the report. Follow those prompts to complete the assignment.

### Submissions

You should always submit the RMarkdown document, as well as the knitted HTML file. You **must** make sure before you submit that the RMarkdown document knits without any errors and produces the desired HTML/PDF document.
