# means  ------------------------------------------------------------------
#Remove variables with missing values
omitir_na <- select_vars %>%
  filter(!is.na(Sexo))

mean_pienso <- omitir_na %>%
  summarise(across(c(3, 4, 5, 6), ~ mean(.x, na.rm = TRUE))) %>%
  mutate(mean_general = rowMeans (select(., 1:4)), .after = 4)

mean_siento <- omitir_na %>%
  summarise(across(c(7, 8, 9, 10, 11, 12, 13), ~ mean(.x, na.rm = TRUE))) %>%
  mutate(mean_general = rowMeans (select(., 1:7)), .after = 7)

mean_hago <- omitir_na %>%
  summarise(across(c(14, 15, 16, 17, 18, 19, 20, 21, 22), ~ mean(.x, na.rm = TRUE))) %>%
  mutate(mean_general = rowMeans (select(., 1:9)), .after = 9)










