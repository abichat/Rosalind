IPRB <- function(k, m, n){
  (k * ((k-1) + m + n) + 
            m * (k + (m-1) * 3/4 + 
            n * 1/2) + n * (k + m *1/2)) / 
           max(2 * choose(k + m + n, 2), 1)
}