#' ---
#' output: github_document
#' ---

## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
library(tidyverse)
library(here)
inst_tbl <- installed.packages() %>% as_tibble()

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
inst_tble <- select(inst_tbl, Package, LibPath, Version, Priority,
                  License, License_is_FOSS, NeedsCompilation, Built) %>%

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write_csv(here("data", "installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
devtools::session_info()

## serious conflict part 2
