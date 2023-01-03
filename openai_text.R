# usethis::edit_r_envirion()
# adicionar OPENAI_API_KEY="xxx"
# install.packages("openai")

result <- openai::create_completion(
  model = "text-davinci-003",
  prompt = "write a ggplot of mtcars data using R", 
  max_tokens = 4000
)
