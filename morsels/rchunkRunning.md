# Running R-chunks

There are various ways to run one or more R-chunks:

- When you [knit](knitting.md) the document, all R-chunks are executed in order on a brand-new system instance. Anything you have in the environment or the console at the moment will be completely ignored. It is therefore important to make sure that everything you want to have executed be in a R-chunk in your RMarkdown document, and in the correct order.
- You can press the green right arrow to the right of a chunk to execute that single chunk. This will execute the code of the chunk into the console, and will show you the resulting output just below the chunk (as well as in the console).
    - If the chunk you executed had multiple commands with multiple outputs, a series of tabs will appear below the chunk allowing you to switch between the different outputs.
- You can press a downward arrow right before the green right arrow. This will execute all all the chunks that appear before this chunk, in the corresponding order. This is a useful option when you restart a project or document, as the console will likely be reset at that point.
- There is also a "run" menu above the document, with a number of useful options.
