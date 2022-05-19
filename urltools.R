
u <- paste0(
  "https://www.google.com/search",
  "?channel=trow5&client=firefox-b-d",
  "&q=teste"
)

urltools::param_get(u)
