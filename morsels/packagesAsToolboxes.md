# R Packages

- The core R language is relatively small.
- A lot of its power comes from *packages* that you can load.
- These packages add new commands and capabilities.
- Think of them as *toolboxes:* Depending on what task you want to do, you load the appropriate packages.
- [hanoverbase](hanoverbasePackage.md) is a package we have put together that collects in one place the functionality provided by many useful packages. You would usually want to start each work session and RMarkdown document by loading this package, as many of the commands we use require it.
- You can see what packages are available on our server in the "Packages" pane in the bottom right section.
- In order to actually use a package, you need to *load* it, using the `library` command, like so: `library(hanoverbase)`
- There are numerous other packages that are not present in our server currently, but we would be happy to add them upon request.
