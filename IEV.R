source("IPRB.R")

IEV <- function(n1, n2, n3, n4, n5, n6){
   2 * (
       n1 * IPRB(2, 0, 0) +
       n2 * IPRB(1, 1, 0) +
       n3 * IPRB(1, 0, 1) +
       n4 * IPRB(0, 2, 0) +
       n5 * IPRB(0, 1, 1)
       )
}