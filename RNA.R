library(stringr)

RNA <- function(txt){
  str_replace_all(txt, "T", "U")
}