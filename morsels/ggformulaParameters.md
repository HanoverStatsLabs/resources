# Parameters in GGFormula graphs

All graph methods in ggformula take a number of extra parameters that can alter the look and feel of the data. The parameters differ slightly from method to method, so always consult the method documentation for details.

## Mapping vs Setting

There are fundamentally two ways to set a value to most of these parameters:

- **Set** it to a specific value or list of values, e.g. `color="blue"`.
- **Map** it to a dataset variable, in which case it behave differently for each type of variable but typically will take a different value for each data point. You specify mapping behavior using a tilde. For example `color=~genhealth` will color the data with a different color for each level of the `genhealth` variable.

## Standard settings

- `alpha` sets the transparency/opacity of the elements, with 0 being invisible and 1 being perfectly opaque.
- `color` sets the (boundary) color of the elements.
- `fill` sets the fill color of the elements, where applicable.
- `size` determines the size of the corresponding elements.
- `shape` determines different shapes for different values.
- `stroke` determines the thickness of the line, where applicable.

A number of other settings allow the setting of titles, axis labels etc. They are better introduced as a separate [addon step](ggformulaAddons.md) via the `gf_labs` function.

```r
library(hanoverbase)
library(readr)
guns <- read_csv("https://hanoverstatslabs.github.io/resources/datasets/guns.csv")
guns %>% gf_point(mort_rate~own_rate, size=~hdi, color=~hdi, alpha=0.7)
```
