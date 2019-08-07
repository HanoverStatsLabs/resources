# Working with vectors/sequences

- The most fundamental data container in R is the *vector*, which is simply a finite sequence of elements of the same type.
- You can create a vector most simply using the `c` command, followed by a comma-separated list of values. For example: `c(2, 5, 7)`, `c("Blue", "Yellow", "Green")`
- The `seq` command can be used to create a regular sequence of numbers. Try the following:

    ```r
    seq(1, 10)
    seq(1, 10, by=0.1)
    seq(1, 10, length.out=30)
    ```
- You can use a colon between two integers to generate the sequence of integers from the first to the second, e.g. `17:15` will produce the sequence `c(17, 16, 15)`
- Printed vectors appear often in multiple lines, where the start of a line indicates in brackets the index for the first element in that line, starting from 1.
- You can find out the length of a vector using `length`:

    ```r
    x <- seq(1, 10, by=0.1)
    length(x)    #  produces 91
    ```
-  Operations on vectors happen element-wise:

    ```r
    x <- 1:10
    y <- x + 5
    x
    y
    x + y
    x ^ 2
    2 ^ x
    ```

