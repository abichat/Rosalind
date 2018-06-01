library(dplyr)
library(stringr)

source("functions.R")


GRPH <- function(df_fasta){
  df <-
    expand.grid(df_fasta$name, df_fasta$name, stringsAsFactors = FALSE) %>% 
    filter(Var1 != Var2) %>% 
    left_join(df, by = c("Var1" = "name")) %>% 
    left_join(df, by = c("Var2" = "name")) %>% 
    mutate(subseq.x = str_sub(sequence.x, start = -3),
           subseq.y = str_sub(sequence.y, end = 3)) %>% 
    filter(subseq.x == subseq.y) %>% 
    select(Var1, Var2)
  
  apply(df, 1, function(x) cat(x, "\n"))
}