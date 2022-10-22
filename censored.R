library(tidymodels)
library(censored)
library(survival)
tidymodels_prefer()

data(cancer)

lung <- lung |> drop_na()
lung_train <- lung[-c(1:5), ]
lung_test <- lung[1:5, ]

sr_spec <- 
  survival_reg(dist = "weibull") |> 
  set_engine("survival") |> 
  set_mode("censored regression") 

sr_spec

set.seed(1)

sr_fit <- sr_spec %>% 
  fit(Surv(time, status) ~ ., data = lung_train)

sr_fit
