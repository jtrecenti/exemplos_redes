
f <- system.file(
  "examples", 
  "data.pdf", 
  package = "tabulizer"
)

tabulizer::extract_tables(f)
