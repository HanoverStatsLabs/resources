# The Markdown syntax

- Markdown is a simple syntax for generating text files along with some structure to them. These files can then be converted into various output formats.
- Think of it a little bit like working with a Word document, but with limited functionality in terms of formatting.
- For example you can create distinct paragraphs, have different levels of sections, create numbered  or unnumbered lists, mark some text as italic or bold, show code in a monospaced font, include links and images, introduce a quoted section, etc.
- But you cannot set different colors or font sizes for a particular part of the text.
- You can however customize the overall look and feel of your document through some ["document-level" settings in the preamble](rmarkdownSettings.md).
- Here is a [quick though somewhat overwhelming reference](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf), including some of the [RMarkdown](rmarkdown.md) additions.
- Here is a shorter reference to the [basic markdown elements](https://commonmark.org/help/).

Brief example: You can put this in your RMarkdown document and [Knit](knitting.md) to see how it looks:

```
# A top level heading, the title automatically provides this

## A main section heading

### A subsection here

1. A numbered list of items
2. Here's how you can make something **bold**
3. Or *italic*. You can also use _underscores instead_.

- Unnumbered list start with dashes or stars.
    a. Make subslists by prepending four spaces.
        * Can even nest deeper. It is useful to use different icons to keep it straight.

> Create a quote by using a "greater-than" symbol then a space.
> Can continue on multiple lines.

A link: [The link text](www.google.com)

You can also put reference links, where the actual link is somwhere else, typically the bottom of the document:  [Link text][1]

![Image links have exclamations in front](https://flaglane.com/download/greek-flag/greek-flag-medium.jpg)

![You can control their size with extra parameters](https://flaglane.com/download/greek-flag/greek-flag-medium.jpg){width=100px}

[1]: www.google.com
```
