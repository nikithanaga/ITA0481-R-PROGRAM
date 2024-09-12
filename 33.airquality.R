install.packages(c("tidyr", "dplyr"))
library(tidyr)
library(dplyr)
data("airquality")
summary_stats <- summary(airquality)
print(summary_stats)
melted_data_long <- airquality %>%
  pivot_longer(cols = everything(), names_to = "Variable", values_to = "Value")
print(head(melted_data_long))
melted_data_id_vars <- airquality %>%
  pivot_longer(cols = c(Ozone, Solar.R, Wind, Temp), names_to = "Variable", values_to = "Value") %>%
  pivot_longer(cols = c(Month, Day), names_to = "ID_Variable", values_to = "ID_Value")
print(head(melted_data_id_vars))
casted_data <- melted_data_id_vars %>%
  pivot_wider(names_from = Variable, values_from = Value)
print(head(casted_data))

average_per_month <- airquality %>%
  group_by(Month) %>%
  summarise(
    avg_Ozone = mean(Ozone, na.rm = TRUE),
    avg_Solar.R = mean(Solar.R, na.rm = TRUE),
    avg_Wind = mean(Wind, na.rm = TRUE),
    avg_Temp = mean(Temp, na.rm = TRUE)
  )
print(average_per_month)
