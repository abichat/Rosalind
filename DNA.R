library(stringr)

DNA <- function(txt){
  str_count(txt, c("A", "C", "G", "T"))
}