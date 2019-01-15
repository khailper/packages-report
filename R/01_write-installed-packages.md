01\_write-installed-packages.R
================
Karl Hailperin
Tue Jan 15 17:13:17 2019

``` r
## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
library(tidyverse)
```

    ## -- Attaching packages ----------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.1.0     v purrr   0.2.5
    ## v tibble  1.4.2     v dplyr   0.7.8
    ## v tidyr   0.8.2     v stringr 1.3.1
    ## v readr   1.3.1     v forcats 0.3.0

    ## -- Conflicts -------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(here)
```

    ## here() starts at C:/Users/Karl Hailperin/Documents/RWorkDir/packages-report

``` r
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
```

    ## - Session info ----------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.5.2 (2018-12-20)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/Chicago             
    ##  date     2019-01-15                  
    ## 
    ## - Packages --------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.0   2017-04-11 [1] CRAN (R 3.5.0)
    ##  backports     1.1.3   2018-12-14 [1] CRAN (R 3.5.0)
    ##  bindr         0.1.1   2018-03-13 [1] CRAN (R 3.5.0)
    ##  bindrcpp      0.2.2   2018-03-29 [1] CRAN (R 3.5.0)
    ##  broom         0.5.1   2018-12-05 [1] CRAN (R 3.5.1)
    ##  callr         3.1.1   2018-12-21 [1] CRAN (R 3.5.2)
    ##  cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.5.0)
    ##  cli           1.0.1   2018-09-25 [1] CRAN (R 3.5.1)
    ##  colorspace    1.3-2   2016-12-14 [1] CRAN (R 3.5.0)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.5.0)
    ##  desc          1.2.0   2018-05-01 [1] CRAN (R 3.5.0)
    ##  devtools      2.0.1   2018-10-26 [1] CRAN (R 3.5.1)
    ##  digest        0.6.18  2018-10-10 [1] CRAN (R 3.5.0)
    ##  dplyr       * 0.7.8   2018-11-10 [1] CRAN (R 3.5.1)
    ##  evaluate      0.12    2018-10-09 [1] CRAN (R 3.5.0)
    ##  forcats     * 0.3.0   2018-02-19 [1] CRAN (R 3.5.0)
    ##  fs            1.2.6   2018-08-23 [1] CRAN (R 3.5.1)
    ##  generics      0.0.2   2018-11-29 [1] CRAN (R 3.5.1)
    ##  ggplot2     * 3.1.0   2018-10-25 [1] CRAN (R 3.5.1)
    ##  glue          1.3.0   2018-07-17 [1] CRAN (R 3.5.0)
    ##  gtable        0.2.0   2016-02-26 [1] CRAN (R 3.5.0)
    ##  haven         2.0.0   2018-11-22 [1] CRAN (R 3.5.1)
    ##  here        * 0.1     2017-05-28 [1] CRAN (R 3.5.0)
    ##  highr         0.7     2018-06-09 [1] CRAN (R 3.5.0)
    ##  hms           0.4.2   2018-03-10 [1] CRAN (R 3.5.0)
    ##  htmltools     0.3.6   2017-04-28 [1] CRAN (R 3.5.0)
    ##  httr          1.4.0   2018-12-11 [1] CRAN (R 3.5.0)
    ##  jsonlite      1.6     2018-12-07 [1] CRAN (R 3.5.0)
    ##  knitr         1.21    2018-12-10 [1] CRAN (R 3.5.0)
    ##  lattice       0.20-38 2018-11-04 [1] CRAN (R 3.5.1)
    ##  lazyeval      0.2.1   2017-10-29 [1] CRAN (R 3.5.0)
    ##  lubridate     1.7.4   2018-04-11 [1] CRAN (R 3.5.0)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 3.5.0)
    ##  memoise       1.1.0   2017-04-21 [1] CRAN (R 3.5.0)
    ##  modelr        0.1.2   2018-05-11 [1] CRAN (R 3.5.0)
    ##  munsell       0.5.0   2018-06-12 [1] CRAN (R 3.5.0)
    ##  nlme          3.1-137 2018-04-07 [1] CRAN (R 3.5.0)
    ##  pillar        1.3.1   2018-12-15 [1] CRAN (R 3.5.0)
    ##  pkgbuild      1.0.2   2018-10-16 [1] CRAN (R 3.5.0)
    ##  pkgconfig     2.0.2   2018-08-16 [1] CRAN (R 3.5.0)
    ##  pkgload       1.0.2   2018-10-29 [1] CRAN (R 3.5.0)
    ##  plyr          1.8.4   2016-06-08 [1] CRAN (R 3.5.0)
    ##  prettyunits   1.0.2   2015-07-13 [1] CRAN (R 3.5.0)
    ##  processx      3.2.1   2018-12-05 [1] CRAN (R 3.5.1)
    ##  ps            1.3.0   2018-12-21 [1] CRAN (R 3.5.2)
    ##  purrr       * 0.2.5   2018-05-29 [1] CRAN (R 3.5.0)
    ##  R6            2.3.0   2018-10-04 [1] CRAN (R 3.5.0)
    ##  Rcpp          1.0.0   2018-11-07 [1] CRAN (R 3.5.1)
    ##  readr       * 1.3.1   2018-12-21 [1] CRAN (R 3.5.2)
    ##  readxl        1.2.0   2018-12-19 [1] CRAN (R 3.5.2)
    ##  remotes       2.0.2   2018-10-30 [1] CRAN (R 3.5.0)
    ##  rlang         0.3.0.1 2018-10-25 [1] CRAN (R 3.5.1)
    ##  rmarkdown     1.11    2018-12-08 [1] CRAN (R 3.5.0)
    ##  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.5.0)
    ##  rstudioapi    0.8     2018-10-02 [1] CRAN (R 3.5.0)
    ##  rvest         0.3.2   2016-06-17 [1] CRAN (R 3.5.0)
    ##  scales        1.0.0   2018-08-09 [1] CRAN (R 3.5.0)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.5.1)
    ##  stringi       1.2.4   2018-07-20 [1] CRAN (R 3.5.0)
    ##  stringr     * 1.3.1   2018-05-10 [1] CRAN (R 3.5.0)
    ##  testthat      2.0.1   2018-10-13 [1] CRAN (R 3.5.1)
    ##  tibble      * 1.4.2   2018-01-22 [1] CRAN (R 3.5.0)
    ##  tidyr       * 0.8.2   2018-10-28 [1] CRAN (R 3.5.1)
    ##  tidyselect    0.2.5   2018-10-11 [1] CRAN (R 3.5.1)
    ##  tidyverse   * 1.2.1   2017-11-14 [1] CRAN (R 3.5.0)
    ##  usethis       1.4.0   2018-08-14 [1] CRAN (R 3.5.1)
    ##  withr         2.1.2   2018-03-15 [1] CRAN (R 3.5.0)
    ##  xfun          0.4     2018-10-23 [1] CRAN (R 3.5.0)
    ##  xml2          1.2.0   2018-01-24 [1] CRAN (R 3.5.0)
    ##  yaml          2.2.0   2018-07-25 [1] CRAN (R 3.5.0)
    ## 
    ## [1] C:/Users/Karl Hailperin/Documents/R/win-library/3.5
    ## [2] C:/Program Files/R/R-3.5.2/library
