sorted_matrix <- t(apply(foo, 1, sort, decreasing = TRUE))
product_vector <- apply(sorted_matrix, 2, prod)