# Install necessary packages if not already installed
# install.packages("randomForest")
# install.packages("caTools")
# install.packages("ggplot2")

library(ggplot2)
library(caTools)
library(randomForest)

# Set the working directory if needed (optional)
setwd("C:/Users/nikitha/OneDrive/Documents/RPROGRAM")

# Read the data
data <- read.csv("data.csv")

# Split the data into training (80%) and testing (20%) sets
set.seed(123)  # For reproducibility
split <- sample.split(data$Disease, SplitRatio = 0.8)
training_set <- subset(data, split == TRUE)
testing_set <- subset(data, split == FALSE)

# Train Random Forest model
rf_model <- randomForest(Disease ~ ., data = training_set, ntree = 100)

# Predict on testing set
rf_predictions <- predict(rf_model, newdata = testing_set)

# Confusion Matrix and Metrics Calculation (manually)
conf_matrix <- table(Predicted = rf_predictions, Actual = testing_set$Disease)

accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
precision <- diag(conf_matrix) / rowSums(conf_matrix)
recall <- diag(conf_matrix) / colSums(conf_matrix)
f1_score <- 2 * (precision * recall) / (precision + recall)

# Print the evaluation metrics
cat("Accuracy:", accuracy, "\n")
cat("Precision:", precision, "\n")
cat("Recall:", recall, "\n")
cat("F1 Score:", f1_score, "\n")

# Create a bar graph of the evaluation metrics
metrics_df <- data.frame(
  Metric = c("Accuracy", "Precision", "Recall", "F1 Score"),
  Value = c(accuracy, precision, recall, f1_score)
)

# Plot with each bar having a different color
ggplot(metrics_df, aes(x = Metric, y = Value, fill = Metric)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Accuracy" = "blue", "Precision" = "green", "Recall" = "orange", "F1 Score" = "red")) +
  labs(title = "Random Forest Performance Metrics", x = "Metric", y = "Value") +
  theme_minimal()
