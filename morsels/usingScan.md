# Using `scan()` to quickly enter some data

The easiest (but less reproducible) way to get some data into a vector in R is to use the `scan` command.

```r
x <- scan()
# Type in values followed by spaces or enter, or copy/paste a bunch of numbers at once
# End the process by typing Enter twice to leave a blank line
x    # See your values
```

You can also read in text data, but you have to specify some parameters:
```r
y <- scan(what=character())     # reads pasted text one word at a time
y <- scan(what=character(), sep="\n")  # reads pasted text one line at a time
```
