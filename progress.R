
# remotes::install_github("tidyverse/purrr")

purrr::map(1:10, ~Sys.sleep(1), .progress = TRUE)
