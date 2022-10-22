
da <- tibble::tribble(
  ~a, ~b, ~c,
  NA, 10, NA,
  10, 10, NA,
  NA, NA, NA
)

janitor::remove_empty(da, "rows")
