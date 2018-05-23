FIB <- function(n, k){
  if(n < 3){
    return(1)
  } else {
    return(FIB(n-1, k) + k * FIB(n-2, k))
  }
}