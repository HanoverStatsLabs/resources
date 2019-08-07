# Your RStudio workspace vs your computer

It is important to understand the different "spaces" that your various files might be in. There are two important distinctions:

1. The *RStudio workspace* is space allocated to you remotely on the Hanover College servers (matches your Vault space if you are familiar with that). You can think of it a bit like "the cloud". *Whenever you work with files in RStudio, these files must recide on this workspace*.
2. The computer that you use to access Rstudio via the browser has its own storage drive and folder structure. RStudio cannot directly access any of these files.

Therefore there are typically two common taks you need to do:

- [Upload files](uploadFiles.md) from your local computer to the RStudio workspace. For example if you have some data of your own that you would need to analyze, this would be the first step in the process of getting RStudio to work with your data.
- [Download files](downloadFiles.md) from your RStudio workspace to your local computer. For instance you may need to do this when you want to print out or email a generated report.
