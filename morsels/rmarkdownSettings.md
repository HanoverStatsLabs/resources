# RMarkdown preamble

- Every RMarkdown document starts with a *preamble* block, technically referred to as the "YAML header", which contains general document information.
- The block starts with a line of three dashes, and ends with another line of three dashes.
- The contents of the block must follow a very specific syntax: Usually a keyword, followed by a colon, followed by a "value" often enclosed in quotation marks.
- The most common keywords are `title`, `author` and `date`, with obvious meanings.
- The `output` keyword specifies the kind of output document to produce. We will be almost exclusively work with `html_document` but there are [many other options](https://rmarkdown.rstudio.com/lesson-9.html).
