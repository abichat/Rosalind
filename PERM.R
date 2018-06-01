library(dplyr)

PERM <- function(N){
N %>% 
  seq_len() %>% 
  list() %>% 
  rep(., length(.[[1]])) %>% 
  do.call(expand.grid, .) %>% 
  mutate(., 
         length = apply(., 1, function(x) length(unique(x)))) %>% 
  filter(length == N) %>% 
  select(-length)
}