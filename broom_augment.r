# exemplo de broom::augment() com a base mtcars
# usando ggplot2, adicionando a reta de .fitted

m <- lm(
  mpg ~ disp,
  data = mtcars
)

# plot da reta ajustada usando broom::augment()

library(ggplot2)

broom::augment(m, mtcars) |>
  ggplot(aes(x = disp, y = mpg)) +
  geom_point() +
  geom_line(
    aes(y = .fitted),
    color = "red",
    linewidth = 1.5
  )
