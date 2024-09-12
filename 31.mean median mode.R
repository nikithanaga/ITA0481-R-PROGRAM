values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

mean_value <- sum(values) / length(values)
print(paste("Mean:", mean_value))

median_value <- median(values)
print(paste("Median:", median_value))

mode_value <- as.numeric(names(sort(table(values), decreasing = TRUE))[1])
print(paste("Mode:", mode_value))

sorted_values <- sort(values)

second_highest <- sorted_values[length(sorted_values) - 1]
print(paste("2nd Highest Value:", second_highest))

third_lowest <- sorted_values[3]
print(paste("3rd Lowest Value:", third_lowest))
