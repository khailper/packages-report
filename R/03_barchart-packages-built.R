## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
library(tidyverse)
library(here)

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
non_base_freqtable <- read_csv(here("data", "add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
built_bar_plot <- ggplot(non_base_freqtable, aes(x = Built, y = n)) +
  geom_col() + labs(x = "R version package built under",
                    y = "Number of packages")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggsave(here("figs", "built-barchart.png"), built_bar_plot)

## YES overwrite the file that is there now
## that's old output from me (Jenny)
