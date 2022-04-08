
library(ggplot2)



set.seed(2)
dados::mtcarros |> 
  tibble::rownames_to_column() |> 
  dplyr::slice_sample(n = 15) |> 
  ggplot(aes(milhas_por_galao, cilindrada)) +
  geom_point() +
  ggrepel::geom_label_repel(aes(label = rowname))
