data("airquality")

temp_values <- airquality$Temp[!is.na(airquality$Temp)]
mean_temp <- sum(temp_values) / length(temp_values)
print(paste("Mean Temperature:", mean_temp))

first_five_rows <- head(airquality, 5)
print(first_five_rows)

columns_to_exclude <- c("Temp", "Wind")
subset_data <- airquality[, !(names(airquality) %in% columns_to_exclude)]
print(head(subset_data))

coldest_day <- airquality[which.min(airquality$Temp), ]
print(coldest_day)

days_high_wind <- sum(airquality$Wind > 17, na.rm = TRUE)
print(paste("Number of days with wind speed greater than 17 mph:", days_high_wind))
