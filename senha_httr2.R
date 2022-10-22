library(httr2)

chave_nao_compartilhar <- secret_make_key()

senha <- "MINHA SENHA NAO MOSTRAR"

senha_compartilhavel <- secret_encrypt(
  senha, 
  chave_nao_compartilhar
)

senha_compartilhavel

secret_decrypt(
  senha_compartilhavel,
  chave_nao_compartilhar
)
