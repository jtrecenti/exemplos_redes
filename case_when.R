

dados::pinguins |> 
  dplyr::count(ilha)

dados::pinguins |> 
  dplyr::mutate(
    ilha = dplyr::case_when(
      ilha %in% c("Biscoe", "Dream") ~ "ilha1",
      TRUE ~ "ilha2"
    )
  ) |> 
  dplyr::count(ilha)
