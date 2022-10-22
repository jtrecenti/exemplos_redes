vetor <- c("julio", "caio", "igor", NA)

da <- tibble::tribble(
  ~col1, ~col2,
  NA, "A",
  "B", NA,
  "C", "D",
  NA, NA
)

vetor |> 
  tidyr::replace_na("B")
da |> 
  tidyr::replace_na(list(col1 = "F", col2 = "Z"))





