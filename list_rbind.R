
# remotes::install_github("tidyverse/purrr")

da1 <- tibble::tibble(a = 1)
da2 <- tibble::tibble(a = 2)

purrr::list_rbind(
  list(x = da1, y = da2)
)

