# Script name: Dummy dataset
# Purpose: create a dummy dataset and demonstrate some use of tidyverse. 
# Author: Jordan Iles
# Date created: 2019-05-15
# Contact: jordan.iles@jcu.edu.au

#### Clear workspace and clear memory ----
rm(list = ls(all.names = TRUE))
gc(full = TRUE)

#### load required packages ----
require(tidyverse)

#### Set working directory ----
setwd('~/../Dropbox/JCU/R/FirstGIT/analysis')

#### create dataframe (tibble) ----

dat <- tibble(x = rnorm(n = 500, 
                        mean = 10, 
                        sd = 5),
              y = rnorm(n = 500, 
                        mean = 100, 
                        sd = 2.5),
              g = c(rep('a', 125), rep('b', 125), rep('c', 125), rep('d', 125)))


#### make a plot -----

p1 <- ggplot(dat, aes(x = x, y = y)) +
  geom_point(aes(col = g, size = y), show.legend = FALSE) +
  scale_color_manual(values = c('dark red', 'brown', 'orange', 'light yellow')) +
  theme_void() 

ggsave(filename = 'output/plots/scatter_plot.png',
       plot = p1,
       width = 10.6, height = 10.6, units = 'cm')

#### END ----


