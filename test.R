vec<- c(3:6, rep(c(2, -5.1, -33), 2), (7/42) + 2)
print(vec)
new_object<- c(vec[1], vec[length(vec)])
print(new_object)
vec_c<- vec[-c(1,length(vec))]
print(vec_c)
reconstruct<- c(new_object[1], vec_c, new_object[2])
print(reconstruct)
vec<- sort(vec)
print(vec)
reversed_vec <- vec[length(vec):1]
print(reversed_vec)

sorted_decreasing <- sort(vec, decreasing = TRUE)
print(sorted_decreasing)
vec_g <- c(rep(vec_c[3], 3), rep(vec_c[6], 4), vec_c[length(vec_c)])
print(vec_g)





