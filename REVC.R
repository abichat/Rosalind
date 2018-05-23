library(stringr)
library(magrittr)

REVC <- function(txt){
  txt %>% 
    str_replace_all("A", "t") %>%
    str_replace_all("T", "a") %>% 
    str_replace_all("C", "g") %>% 
    str_replace_all("G", "c") %>% 
    str_to_upper() %>% 
    str_split("") %>% 
    {.[[1]]} %>% 
    rev() %>% 
    paste0(collapse = "")
}