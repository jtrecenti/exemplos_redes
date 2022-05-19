library(httr)
GET(
  "https://httpbin.org/get"
)

GET(
  "https://httpbin.org/get",
  query = list(
    a = 1, b = 2
  )
)
