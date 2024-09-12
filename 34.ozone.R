library(ggplot2)

data("airquality")
missing_summary <- sapply(airquality, function(x) sum(is.na(x)))
print(missing_summary)
threshold <- 0.1 * nrow(airquality)
cleaned_data <- airquality
cleaned_data <- cleaned_data[complete.cases(cleaned_data) | 
                               rowSums(is.na(cleaned_data)) <= threshold, ]

for (col in names(cleaned_data)) {
  if (any(is.na(cleaned_data[[col]]))) {
    mean_value <- mean(cleaned_data[[col]], na.rm = TRUE)
    cleaned_data[[col]][is.na(cleaned_data[[col]])] <- mean_value
  }
}
model <- lm(Ozone ~ Solar.R, data = cleaned_data)
summary(model)  
ggplot(cleaned_data, aes(x = Solar.R, y = Ozone)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", color = "red") +
  ggtitle("Scatter Plot of Ozone vs Solar.R with Regression Line") +
  xlab("Solar Radiation") +
  ylab("Ozone")
