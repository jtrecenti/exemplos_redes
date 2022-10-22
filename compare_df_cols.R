
da_2020 <- tibble::tribble(
  ~ano, ~coluna_velha, ~salario,
  "2020", "olar", 10,
)
da_2021 <- tibble::tribble(
  ~ano, ~coluna_nova, ~salario,
  2021, "olar", 10,
)
janitor::compare_df_cols(da_2020, da_2021)
