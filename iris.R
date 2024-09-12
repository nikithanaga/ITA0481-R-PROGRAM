data(iris)
par(mfrow = c(2, 2))
plot(iris$Sepal.Length, iris$Sepal.Width,
     xlab = "Sepal Length (cm)",
     ylab = "Sepal Width (cm)",
     main = "Scatter Plot of Sepal Length vs Sepal Width",
     col = iris$Species,
     pch = 19)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19)
avg_sepal_length <- tapply(iris$Sepal.Length, iris$Species, mean)
barplot(avg_sepal_length,
        xlab = "Species",
        ylab = "Average Sepal Length (cm)",
        main = "Average Sepal Length by Species",
        col = c("lightblue", "lightgreen", "lightcoral"),
        beside = TRUE)
boxplot(Sepal.Length ~ Species,
        data = iris,
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        main = "Box Plot of Sepal Length by Species",
        col = c("lightblue", "lightgreen", "lightcoral"))
plot.new()
par(mfrow = c(1, 1))
