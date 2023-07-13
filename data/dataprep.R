# shaping Northwestern data

library(tidyverse)


read_csv("data/bachelors_raw.csv") %>% 
  pivot_longer(-1:-4, names_to="year", values_to="bachelors") %>%
  filter(level=="school") %>%
  select(school, year, bachelors) %>%
  write_csv("data/bac_schools.csv")

read_csv("data/masters_raw.csv") %>% 
  pivot_longer(-1:-4, names_to="year", values_to="masters") %>%
  filter(level=="school") %>%
  select(school, year, masters) %>%
  write_csv("data/masters_schools.csv")

read_csv("data/doctorates_raw.csv") %>% 
  pivot_longer(-1:-4, names_to="year", values_to="doctorates") %>%
  filter(level=="school") %>%
  select(school, year, doctorates) %>%
  write_csv("data/doc_schools.csv")

