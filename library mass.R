library(MASS)
data("UScereal")
calories <- UScereal$calories
cat("Calories:\n")
print(calories)

lower_than_50 <- sum(UScereal$rating < 50)
higher_than_5 <- sum(UScereal$rating > 5)
cat("\nNumber of cereals with ratings lower than 50:", lower_than_50, "\n")
cat("Number of cereals with ratings higher than 5:", higher_than_5, "\n")

unhealthy_cereal <- sum(UScereal$rating < 20)
healthy_cereal <- sum(UScereal$rating > 80)
cat("\nNumber of unhealthy cereals (rating < 20):", unhealthy_cereal, "\n")
cat("Number of healthy cereals (rating > 80):", healthy_cereal, "\n")


cat("\nRelationship between Manufacturer and Shelf:\n")
manufacturer_shelf_table <- table(UScereal$mfr, UScereal$shelf)
print(manufacturer_shelf_table)
barplot(manufacturer_shelf_table, main = "Manufacturer vs. Shelf", 
        col = rainbow(length(unique(UScereal$mfr))), legend = rownames(manufacturer_shelf_table))


cat("\nRelationship between Fat and Vitamins:\n")
plot(UScereal$fat, UScereal$vitamins, main = "Fat vs. Vitamins", 
     xlab = "Fat", ylab = "Vitamins", col = "blue", pch = 16)


cat("\nRelationship between Fat and Shelf:\n")
boxplot(UScereal$fat ~ UScereal$shelf, main = "Fat vs. Shelf", 
        xlab = "Shelf", ylab = "Fat", col = "lightgreen")


cat("\nRelationship between Carbohydrates and Sugars:\n")
plot(UScereal$carbo, UScereal$sugars, main = "Carbohydrates vs. Sugars", 
     xlab = "Carbohydrates", ylab = "Sugars", col = "red", pch = 16)

cat("\nRelationship between Fibre and Manufacturer:\n")
boxplot(UScereal$fiber ~ UScereal$mfr, main = "Fibre vs. Manufacturer", 
        xlab = "Manufacturer", ylab = "Fibre", col = "orange")

cat("\nRelationship between Sodium and Sugars:\n")
plot(UScereal$sodium, UScereal$sugars, main = "Sodium vs. Sugars", 
     xlab = "Sodium", ylab = "Sugars", col = "purple", pch = 16)
