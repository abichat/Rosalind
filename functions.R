
ReadFasta <- function(file) {
  
  # Mostly from https://stackoverflow.com/questions/26843995
  
  # Read the file line by line
  fasta <- readLines(file)
  
  # Identify header lines
  ind <- grep(">", fasta)
  
  # Identify the sequence lines
  s <- data.frame(ind = ind, from = ind + 1,
                  to = c((ind - 1)[-1], length(fasta)))
  
  # Process sequence lines
  seqs <- rep(NA, length(ind))
  for (i in 1:length(ind)) {
    seqs[i] <- paste(fasta[s$from[i]:s$to[i]], collapse = "")
  }
  
  # Create a data frame
  DF <- data.frame(name = gsub(">", "", fasta[ind]), sequence = seqs, 
                   stringsAsFactors = FALSE)
  
  # Return the data frame as a result object from the function
  return(DF)
}


