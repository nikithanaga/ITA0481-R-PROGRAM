# Read the CSV file
data <- read.csv("input.csv")

# Get the maximum salary
max_salary <- max(data$Salary)

# Get details of the person with the maximum salary
person_with_max_salary <- data[data$Salary == max_salary, ]

# Get all people in the IT department
it_department <- data[data$Department == "IT", ]

# Get IT department people with salary > 600
it_high_salary <- data[data$Department == "IT" & data$Salary > 600, ]

# Get people who joined on or after 2014
joined_after_2014 <- data[data$Joining_Date >= 2014, ]

# Save the result to a new CSV file
write.csv(joined_after_2014, "output.csv", row.names = FALSE)
