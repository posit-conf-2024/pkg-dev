library(readxl)
library(tidyverse)
library(clipr)

dat <- read_excel("~/Downloads/Workshop Registrations Aug 5.xlsx")
dat |>
  filter(`SESSION TITLE` == "Package Development: The Rest of the Owl
") |>
  pull(EMAIL) |>
  str_c(collapse = ",") |>
  write_clip()
