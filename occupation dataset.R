library(datasets)
data("occupationalStatus")print(occupationalStatus)
total_cases <- sum(occupationalStatus)
same_status_cases <- sum(diag(occupationalStatus))
probability_same_status <- same_status_cases / total_cases
probability_same_status
normalized_data <- apply(occupationalStatus, 1, function(row) row / sum(row))
normalized_data <- t(normalized_data)  
print(normalized_data)
prob_status_1 <- sum(normalized_data[1, 1:3])
prob_status_8 <- sum(normalized_data[8, 1:3])
prob_status_1
prob_status_8
