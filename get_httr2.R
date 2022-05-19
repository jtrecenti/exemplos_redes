library(httr2)

req <- request("https://httpbin.org/get")

req |> 
  req_perform()

req |> 
  req_url_query(a = 1, b = 2) |> 
  req_perform()
