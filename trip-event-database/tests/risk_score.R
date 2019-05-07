

rs <- function(n, d) {
 
  d <- d * (n/n)
  
  ifelse(d < 2,
         (-3/10*d + 11/10) * n,
         n/d)
}


d <- seq(1/3, 30, 0.5)
n <- c(1, 5, 10, 20, 50, 100, 200)

plot(d, rs(200, d), type = 'l')


n <- seq(1, 200)
d <- c(1/3, 1, 2, )

plot(n, rs(n, 5), type = 'l')
