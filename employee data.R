employee_data <- data.frame(
  position = c("Manager", "Manager", "Analyst", "Analyst", "Clerk", "Clerk", "Manager", "Analyst", "Clerk"),
  gender = c("Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female", "Male")
)

counts <- table(employee_data$position, employee_data$gender)

barplot(counts, beside = TRUE, col = c("blue", "pink"), 
        main = "Job positions by gender", 
        xlab = "Job position", 
        ylab = "Employee count", 
        legend = rownames(counts), 
        args.legend = list(x = "bottom", inset = 0.05))

legend("bottom", legend = colnames(counts), fill = c("blue", "pink"), inset = 0.05)
