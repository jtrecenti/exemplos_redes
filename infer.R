
dados::pinguins |> 
  infer::specify(
    comprimento_bico ~ ilha
  ) |> 
  infer::calculate(stat = "F")

dados::pinguins |> 
  infer::specify(
    comprimento_bico ~ ilha + especie
  ) |> 
  infer::fit()
