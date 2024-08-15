# Lab 3: Generating Reports with R Markdown

## Introduction

In this lab we learn how to integrate R code and text into a single report. We use the RMarkdown file format for this (`.Rmd`), which has many advantages:

- The R code that produces our results is incorporated into our report. This way our results can be reproduced very easily.
- We can work within the RStudio application, without the need for a separate text editing application.
- The RMarkdown document can easily produce different outputs, e.g. PDF, Web pages, Word documents.
- RMarkdown is built atop of Markdown, which is a very popular formatting standard for creating structured plain text documents. You can learn more about RMarkdown at the following link: [http://rmarkdown.rstudio.com/](http://rmarkdown.rstudio.com/).

## Overall Goals

In this lab we will learn how to:

- create a basic RMarkdown document
- add code, results and graphics into the document
- create structural elements like sections, quoted and highlighted parts
- export the RMarkdown document to various formats

At the same time we will get a chance to practice the R commands we learned in the previous labs.

New R commands introduced in this lab: `sum`, `panel.abline`, `ladd`.

## Creating an RStudio Project

RStudio projects allow us to organize our work. A project is essentially a folder/directory of related files. You can easily start a new project or download someone else's project to start.

We have created a starting project for you. In order to set it up:

- In RStudio, go to `File > New Project`. Choose "Version Control" from the "Create Project" dialog.
- Choose "Git".  You will then see three textboxes.
- Click the **Browse** button to display a list of all the folders in your home directory on vault.
- We will now create a parent folder to hold all of your lab assignments for this class. Click the **New Folder** button (lower left) and name your new folder something appropriate, like `Math217Labs`.  Click **Choose** (lower right) to make this the parent folder for Lab 3.
- In future labs, of course, you don't need to create a new parent folder, just use the Browse button to select Math217Labs as the parent folder.
- Enter the following URL into the "Repository URL" field but **DO NOT** press `<enter>` right away. Either type the URL by hand (no spaces) or copy it from the HTML version.

    > [https://github.com/HanoverStatsLabs/Lab-Intro-RMarkdown](https://github.com/HanoverStatsLabs/Lab-Intro-RMarkdown)

- Move to the middle textbox and enter a name for the project directory. `Lab_3_yourname` might be a reasonable choice.
- Click on **Create Project** to finalize the setup process.

If all has gone well, you should now see the project files in the **Files pane** at the bottom right of RStudio.

The file we are interested in is called `Lab3Report.Rmd`. Click on it to open it up for editing. It should appear at the top left of the application window. We will work on this file in the subsequent sections.

## Working with RMarkdown Documents

RMarkdown documents typically start with a *header* section. In it you get to specify title, author and date for the report, as well as some other technical settings that we will not worry about right now. Take a moment to add your own information in the header fields. Make sure to save your edits (File > Save) before proceeding. The rest of the RMarkdown document will contain the actual contents of your report.

### Exporting an RMarkdown Document

Exporting an RMarkdown document into other formats is called **Knitting**. You will find a **Knit** pulldown at the top of the editing pane. Use the arrow to its right to select an output format.

DO NOW: Use **Knit to HTML** to create a compiled version of the report. You will need to do this frequently as you work on your report.

You will likely see a pop-up blocker dialog, click **Try Again** to have the output report show up on a new browser window. Make sure you have added your own title, name and date information to the header.

As this pop-up can get quite annoying after a while, you may wish to tell RStudio to instead show the output in the bottom right **Viewer** pane. To set that as the default behavior, go to `Tools > Global Options ... > R Markdown > Show output preview in:`, change that to "Viewer Pane" and click **Apply** and **OK**.

### Completing the Lab

The first section of the Lab 3 report introduces R Code chunks, which are the way to combine our code with the report text. The subsequent sections contain the actual assignment, where you will be prompted to make statistical investigations and to document those investigations in the report. Follow those prompts to complete the assignment.

### Submissions

When you are ready to submit:

- Make sure to knit the final report before downloading.
- Download the Lab3Report.Rmd file as follows.  In the **Files** pane, which is at the lower right of the application window, click the checkbox for the RMD file, then choose `More > Export... > Download`. Do the same for Lab3Report.html.
- **Submit both files via Moodle**.
