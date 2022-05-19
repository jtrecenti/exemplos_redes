library(httr)
POST(
  "https://httpbin.org/post"
)

POST(
  "https://httpbin.org/post",
  body = list(
    a = 1, b = 2
  )
)
