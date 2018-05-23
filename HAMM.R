library(stringr)
library(magrittr)

HAMM <- function(s1, s2){
  str_split(c(s1, s2), "") %>% 
    {.[[1]] != .[[2]]} %>% 
    sum()
}