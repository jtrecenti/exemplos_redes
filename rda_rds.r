
meu_objeto <- mtcars

save(meu_objeto, file = "obj.RData")
saveRDS(meu_objeto, "obj.rds")

load("obj.RData")
meu_objeto

outro_objeto <- readRDS("obj.rds")
