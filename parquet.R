arrow::write_parquet(dados::pinguins, "pinguins.parquet")

arrow::read_parquet("pinguins.parquet")
