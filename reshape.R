data_wide <- data.frame(
  Countries = c("A", "B", "C"),
  population_in_million = c(100, 200, 120),
  gdp_per_capita = c(2000, 7000, 15000)
)
data_long <- reshape(data_wide,
                     varying = list(c("population_in_million", "gdp_per_capita")),
                     v.names = "Value",
                     timevar = "Metric",
                     times = c("population_in_million", "gdp_per_capita"),
                     direction = "long")
data_wide_again <- reshape(data_long,
                           idvar = "Countries",
                           timevar = "Metric",
                           v.names = "Value",
                           direction = "wide")

print(data_wide)
print(data_long)
print(data_wide_again)
