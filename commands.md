# commands.md

- tally (mosaic)
- head, tail (base)
- summary (base)
- names (base)  MIGHT NOT NEED
- arrange (dplyr)  MIGHT NOT NEED
- favstats (mosaic)
- sort (base)
- %>% (dplyr)
- filter (dplyr)
- tally(~state, data=counties) %>% sort()
- median et al from mosaic (  median(~pop2010|state, data=counties)  )
- View (rstudio)
- pdist, xpnorm, xqnorm, xpbinom (mosaic)  FOR VISUALIZING THEORETICAL DISTRIBUTIONS


# Plotting

- histogram (lattice)
- bargraph (mosaic)  MIGHT NOT NEED?
- barchart (lattice)  barchart better for Pareto charts...
- mosaicplot (mosaic)
- xyplot (lattice)
- ladd (mosaic)
- panel.abline (lattice)
- ...


# Example commands

counties %>% mutate(per_capita_spending=fed_spending/pop2010) %>% filter(!is.na(per_capita_spending)) %>% arrange(per_capita_spending) %>% tail(10)

