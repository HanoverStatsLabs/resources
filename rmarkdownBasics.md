# R Markdown basics

TODO

This first section is meant to familiarize you with the format and syntax used in RMarkdown documents. Please go slowly through this section, comparing the text in the RMarkdown format to the output in the corresponding HTML file, to learn about the different components.

# Introduction to Markdown Syntax

We start a new section by using the pound sign, followed by the section title. The sections will be automatically numbered because of our header specifications.

## Use more pounds for deeper subsections

Start a new paragraph by simply adding a blank line.

> Make a blockquote out of text by preceding the lines
> with the "greater than" symbol.
>
>> You can also make nested blockquotes with more "greater than" signs.

Emphasize *text* (italics) by surrounding the text in single asterisks. Emphasize **more strongly** (bold) with double asterisks.

**Note**: When working with a RMarkdown report, it is a good idea to not use the console much, as the report window and the console window do not communicate directly with each other; actions you take in the console will not count when you "knit" your report. For that reason it is advisable to maximize the RMarkdown window by clicking the resizing icon on its upper-right corner. This will hide/minimize the console window.

- Make unnumbered lists by starting each item with a dash.
- Here's the second item!
    - You can create a sublist by starting the line with 4 spaces.
- **DO NOW**: Make the word "unnumbered" in the first bullet point appear in bold, and the word "second" in the second bullet point appear in italics.

1. Numbered lists use numbers
2. followed by periods.
3. **DO NOW**: Add a fourth item to this list.

Surrounding some text with `single backticks` makes it appear in "typewriter" font. This is useful for inline code. You probably won't need to use this feature much.

You can add horizontal rules by a sequence of three or more asterisks:

***********

They will be quite faint.

You can easily add subscripts~2~ or superscripts^3^.

There are many more specialized features that are available. A quick Google search can usually provide you with some resources, though the above should be sufficient for most reports.

***********

**DO NOW**: Replace the above ruler with a new subsection (two pound signs) with title "Introducing R Chunks".


```{r}
4 + 5
```
