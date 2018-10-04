library(tidyverse)

interviews <- read_csv('data/SAFI_clean.csv')

interviews_plotting <- interviews %>%
  ## spread data by items_owned
  mutate(split_items = strsplit(items_owned, ";")) %>%
  unnest() %>%
  mutate(items_owned_logical = TRUE) %>%
  spread(key = split_items, value = items_owned_logical, fill = FALSE) %>%
  rename(no_listed_items = `NULL`) %>%
  ## spread data by months_lack_food
  mutate(split_months = strsplit(months_lack_food, ";")) %>%
  unnest() %>%
  mutate(months_lack_food_logical = TRUE) %>%
  spread(key = split_months, value = months_lack_food_logical, fill = FALSE) %>%
  ## add some summary columns
  mutate(number_months_lack_food = rowSums(select(., Apr:Sept))) %>%
  mutate(number_items = rowSums(select(., bicycle:television)))

# write_csv(interviews_plotting, 'data_output/interviews_plotting.csv')
