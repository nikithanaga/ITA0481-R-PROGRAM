group1 <- rnorm(50)
group2 <- rnorm(50, mean = 2)
# Create a box plot
boxplot(group1, group2, names = c("Group 1", "Group 2"), main = "Box Plot of Two Groups", ylab = "Values", col = c("lightblue", "lightcoral"))
