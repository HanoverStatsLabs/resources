# Variable assignment

One of the most important features in any programming environment is the ability to provide names to the results of computations, and refer to those names later on. We call these names *variables*.

- You can assign a computation to a variable by using the arrow notation as follows:

    ```r
    bill <- 14.99
    tip <- bill * 0.15
    totalAmount <- bill * tip
    ```
- When you run the above lines, you will not see any output printed, but the *Environment* pane will now contain three new entries, for `bill`, `tip` and `totalAmount`.
- You can also simply type these names in the console to see their value, or use them in computations like we did above.
