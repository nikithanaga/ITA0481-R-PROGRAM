scores <- c(8, 5, 8, 5, 7, 6, 7, 7, 5, 7, 5, 5, 6, 6, 9, 8, 9, 7, 9, 9, 6, 8, 6, 6, 7)
score_table <- table(scores)
mode_score <- names(score_table)[which.max(score_table)]
print(mode_score)
