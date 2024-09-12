data(iris)

dim_iris <- dim(iris)
str_iris <- str(iris)
summary_iris <- summary(iris)
std_dev_iris <- sapply(iris[, 1:4], sd)

print(dim_iris)
print(str_iris)
print(summary_iris)
print(std_dev_iris)

mean_sd_by_species <- aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(mean_sd_by_species)

quantiles_sepal_width <- quantile(iris$Sepal.Width)
quantiles_sepal_length <- quantile(iris$Sepal.Length)

print(quantiles_sepal_width)
print(quantiles_sepal_length)

iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length, probs = 0:4 / 4), include.lowest = TRUE, labels = c("Q1", "Q2", "Q3", "Q4"))

print(head(iris1))

average_by_species_cate <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)
print(average_by_species_cate)

average_mean_by_species_cate <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(x, na.rm = TRUE))
print(average_mean_by_species_cate)

library(reshape2)
pivot_table <- dcast(iris1, Species ~ Sepal.Length.Cate, fun.aggregate = mean, value.var = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
print(pivot_table)
