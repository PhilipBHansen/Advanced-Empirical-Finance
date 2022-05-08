

 No_short_sale_weight <- function(mu,
                                          Sigma,
                                          gamma = gamma_default){
   N <- ncol(Sigma)
   A <- diag(N)
   out <- quadprog::solve.QP(Dmat = gamma * Sigma,
                             dvec = mu,
                             Amat = A,
                             bvec = c(rep(0, N)),
                             meq = 1)
   return(as.numeric(out$solution))
 }
 
