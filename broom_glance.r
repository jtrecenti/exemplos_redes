# exemplo de glance com a base mtcars

m <- lm(
  mpg ~ wt + cyl + disp + hp + drat + qsec + vs + am + gear + carb,
  data = mtcars
)

summary(m)

broom::glance(m) |>
  dplyr::glimpse()
