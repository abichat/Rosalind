options(digits = 11)

library(dplyr)
library(stringr)

monoisotopic_mass_table <- read.table("monoisotopic_mass_table", stringsAsFactors = FALSE)

PRTM <- function(str ){
  str %>% 
    str_split("") %>% 
    {.[[1]]} %>% 
    data.frame(aminoacid = ., stringsAsFactors = FALSE) %>% 
    left_join(monoisotopic_mass_table, by = "aminoacid") %>% 
    pull(mass) %>% 
    sum()
}