set.seed(123)
data(iris)
sample_index <- sample(seq_len(nrow(iris)), size = 0.8 * nrow(iris))
train_data <- iris[sample_index, ]
test_data <- iris[-sample_index, ]
model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")
predicted_probs <- predict(model, newdata = test_data, type = "response")
predicted_classes <- factor(ifelse(predicted_probs > 0.5, "versicolor", "setosa"), levels = levels(test_data$Species))
confusion_matrix <- table(Predicted = predicted_classes, Actual = test_data$Species)
print(confusion_matrix)
