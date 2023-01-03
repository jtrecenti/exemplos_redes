library(captcha)

arquivo <- "tjrs99b44060785c.jpeg"

cap <- read_captcha(arquivo)

# annotate ----------------------------------------------------------------

captcha_annotate(cap)


# load and decrypt ------------------------------------------------------------

modelo <- captcha_load_model("tjrs")

decrypt(cap, modelo)
