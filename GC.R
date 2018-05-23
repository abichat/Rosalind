library(dplyr)
library(stringr)
library(magrittr)

GC <- function(df_fasta){
  df <- 
    df_fasta %>% 
    mutate(perc_gc = 100 * str_count(sequence, c("C|G")) / str_length(sequence)) %>% 
    arrange(desc(perc_gc))
  
  s <- df[1, 3]
  names(s) <- df[1, 1]
  s
}