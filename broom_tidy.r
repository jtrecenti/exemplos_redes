# exemplo de tidy com a base mtcars

m <- lm(
  mpg ~ wt + cyl + disp + hp + drat + qsec + vs + am + gear + carb,
  data = mtcars
)

summary(m)

broom::tidy(m)

# exemplo anova com a base PlantGrowth

lm(weight ~ group, data = PlantGrowth) |>
  anova() |>
  broom::tidy()
