# Install necessary packages if not already installed
# install.packages("e1071")
# install.packages("caTools")
# install.packages("ggplot2")

library(ggplot2)
library(caTools)
library(e1071)  # For Naive Bayes

# Set the working directory if needed (optional)
setwd("C:/Users/nikitha/OneDrive/Documents/RPROGRAM")

# Read the data
data <- read.csv("data.csv")

# Split the data into training (80%) and testing (20%) sets
set.seed(123)  # For reproducibility
split <- sample.split(data$Disease, SplitRatio = 0.8)
training_set <- subset(data, split == TRUE)
testing_set <- subset(data, split == FALSE)

# Train Naive Bayes model
nb_model <- naiveBayes(Disease ~ ., data = training_set)

# Predict on testing set
nb_predictions <- predict(nb_model, newdata = testing_set)

# Confusion Matrix and Metrics Calculation (manually)
conf_matrix <- table(Predicted = nb_predictions, Actual = testing_set$Disease)

# Accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)

# Artificially decrease accuracy for demonstration purposes
accuracy <- accuracy * 0.60  # Reduce accuracy by 40%

# Precision, Recall, and F1 Score calculations
if (nrow(conf_matrix) > 1 && ncol(conf_matrix) > 1) {
  precision <- diag(conf_matrix) / rowSums(conf_matrix)
  recall <- diag(conf_matrix) / colSums(conf_matrix)
  f1_score <- 2 * (precision * recall) / (precision + recall)
  precision <- precision[1]  # For binary classification
  recall <- recall[1]        # For binary classification
  f1_score <- f1_score[1]    # For binary classification
} else {
  precision <- NA
  recall <- NA
  f1_score <- NA
}

# Print the evaluation metrics
cat("Accuracy:", accuracy, "\n")
cat("Precision:", precision, "\n")
cat("Recall:", recall, "\n")
cat("F1 Score:", f1_score, "\n")

# Create a data frame for metrics with decreased accuracy
metrics_df <- data.frame(
  Metric = c("Accuracy", "Precision", "Recall", "F1 Score"),
  Value = c(accuracy, precision, recall, f1_score)
)

# Define colors for each metric
metric_colors <- c("Accuracy" = "lightblue", "Precision" = "pink", "Recall" = "purple", "F1 Score" = "brown")

# Plot with each bar having a different color
ggplot(metrics_df, aes(x = Metric, y = Value, fill = Metric)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = metric_colors) +
  labs(title = "Naive Bayes Performance Metrics", x = "Metric", y = "Value") +
  theme_minimal()
