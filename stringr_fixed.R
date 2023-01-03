
library(stringr)

texto <- "umapaginaweb.com.br"

str_extract(texto, "web\\.com\\.br")

str_extract(texto, fixed("web.com.br"))
