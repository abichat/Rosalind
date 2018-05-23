library(stringi)

SUBS <- function(s, t){
  stri_locate_all_regex(s, pattern = paste0("(?=", t, ")"))[[1]][, 1]
}