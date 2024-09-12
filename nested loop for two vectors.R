v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
rows <- length(v1)
cols <- length(v2)
foo <- matrix(0, nrow = rows, ncol = cols)
for (i in 1:rows) 
  {
  for (j in 1:cols)
    {
    foo[i, j] <- v1[i] * v2[j]
  }
}
print(foo)
