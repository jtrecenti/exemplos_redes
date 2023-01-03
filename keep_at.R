library(purrr)

lista <- list(
  a = "1",
  b = "2",
  z = "3",
  ab = "y"
)

lista[c("a", "z")]

keep_at(lista, c("a", "z"))
