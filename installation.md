# RStudio Installation Instructions

The following instructions will allow you to set up RStudio locally on your machine.

1. Install the **base** R package from [this page](https://cran.rstudio.com/). Follow the link to "install R for the first time".
2. Install RStudio Desktop by following the instructions at [this page](https://www.rstudio.com/products/rstudio/download/).
3. Install the `hanoverbase` package and its dependencies:
    - Start RStudio
    - In the console, run `install.packages("devtools")` to install the development tools package.
    - In the console, run `library(devtools)` to load the devtools package.
    - In the console, run `install_github("skiadas/hanover-base", subdir="pkg")` to install the hanoverbase package and its dependencies. This process may take a couple minutes, as it will install a lot of packages. When it is complete, you will see the message `DONE (hanoverbase)` and the RStudio prompt (`> `) will reappear.
4. You should now be good to go! Whenever you work in RStudio, start with the instruction `library(hanoverbase)` to load the hanoverbase package and its dependencies.
