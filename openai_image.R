# usethis::edit_r_envirion()
# adicionar OPENAI_API_KEY="xxx"
# install.packages("openai")

result_img <- openai::create_image(
  "A coffee machine making scrambled eggs", 
  size = "512x512"
)

magick::image_read(result_img$data$url)