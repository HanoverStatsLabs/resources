# RMarkdown documents

- RMarkdown documents are combine text along with R code.
- They allow you to keep together in one place the code that performs an analysis along with a discussion of that analysis.
- RMarkdown documents are based on the [markdown](markdown.md) format. Intermingled in the text are [R-chunks](RChunks.md), which are used to introduce executable R code.
- A process called [knitting](knitting.md) converts this RMarkdown document into a presentable output, typically HTML or PDF. This offers a convenient way to generate reports.
- Every RMarkdown document starts with a [preamble](rmarkdownSettings.md) which contains important document-wide information. You typically don't need to do anything with this, but this would be the place to go if you wanted to change the look and feel of the overall document.
- To create an RMarkdown document, use the "File -> New File -> RMarkdown" menu.
    - The "Title" is the name that will appear at the top of the file. Set it to what the title of your report should be.
    - Make sure to use the HTML output format. Our server is not set up to handle the other formats.
    - A new file will now have been created. Save it by giving the file a name. The system will automatically add the extension `.Rmd` which is the standard extension for RMarkdown documents.
    - Click the Knit button above the document to produce an HTML output. By default this will appear as a popup window, and you'll need to tell your browser to let it through. You can have the results instead appear in the viewer pane by changings one of the [global settings](globalSettings.md)
