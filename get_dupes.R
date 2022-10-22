da <- tibble::tribble(
  ~nome, ~papel, ~salario,
  "A", "Professor", 10,
  "A", "Consultor", 20,
  "V", "Professor", 30
)

janitor::get_dupes(da, nome, papel)
