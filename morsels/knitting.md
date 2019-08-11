# Knitting an RMarkdown document

- Knitting is the process of converting an RMarkdown document into a more visually-pleasant format like a PDF or an HTML page.
- When you knit, the program first executes the various [R-chunks](RChunks.md) and replaces them with their output in the document.
- Then it processes the [markdown](markdown.md) instructions (sections, emphasis, lists etc) and produces a resulting HTML or PDF document.
- If you encounter any errors during the knitting process, there are two likely candidates:
    - There is something wrong with your [preamble](rmarkdownSettings.md) settings
    - You have somehow broken one of the [R-chunks](RChunks.md) and it has spilled into the text around it.
- You can control where the output of the knitting process resides by changing the [RStudio global settings](globalSettings.md)
