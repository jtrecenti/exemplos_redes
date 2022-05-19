library(httr2)

req <- request("https://httpbin.org/post")

req |> 
  req_body_form(a = 1, b = 2) |> 
  req_perform()

req |>
  req_body_form(x = NULL) |> 
  req_perform()
