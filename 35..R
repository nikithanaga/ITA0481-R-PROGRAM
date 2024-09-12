# Install and load necessary libraries
install.packages(c("tidyr", "dplyr"))
library(tidyr)
library(dplyr)

# Load the ChickWeight dataset
data("ChickWeight")

# (i) Order the data frame by 'weight' within each 'Diet' group and extract the last 6 records
ordered_data <- ChickWeight %>%
  arrange(Diet, weight)  # Arrange by 'Diet' and 'weight'

# Extract the last 6 records
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

# (ii) a. Melt the dataset based on 'Chick', 'Time', 'Diet'
melted_data <- ChickWeight %>%
  pivot_longer(cols = weight, names_to = "variable", values_to = "value")
print(head(melted_data))

# (ii) b. Cast to display the mean weight grouped by Diet
mean_weight_by_diet <- melted_data %>%
  group_by(Diet) %>%
  summarise(mean_weight = mean(value))
print(mean_weight_by_diet)

# (ii) c. Cast to display the mode of weight grouped by Diet
# Calculate mode
get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

mode_weight_by_diet <- ChickWeight %>%
  group_by(Diet) %>%
  summarise(mode_weight = get_mode(weight))
print(mode_weight_by_diet)
