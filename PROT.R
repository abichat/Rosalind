library(stringi)
library(dplyr)
library(magrittr)

rna_codon_table <- read.table("rna_codon_table", stringsAsFactors = FALSE)

PROT <- function(str){
  str %>% 
    stri_sub(., seq(1, stri_length(.), by = 3), length = 3) %>% 
    data.frame(codon = ., stringsAsFactors = FALSE) %>% 
    left_join(rna_codon_table, by = "codon") %>% 
    pull(aminoacid) %>% 
    {.[-length(.)]} %>% 
    paste0(collapse = "")
}