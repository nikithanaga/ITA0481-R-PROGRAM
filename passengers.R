data(AirPassengers)

air_passengers_df <- data.frame(
  Year = as.numeric(time(AirPassengers)),
  Passengers = as.numeric(AirPassengers)
)

boxplot(AirPassengers ~ cycle(AirPassengers), 
        main = "Seasonal Effect on Air Passengers", 
        xlab = "Month", 
        ylab = "Number of Passengers",
        col = "lightblue")
install.packages("nycflights13")

library(nycflights13)
flights_data <- flights





filtered_flights <- flights_data[
  flights_data$arr_delay >= 120 &
    flights_data$dest %in% c("IAH", "HOU") &
    flights_data$carrier %in% c("UA", "AA", "DL") &
    flights_data$month %in% c(7, 8, 9) &
    flights_data$arr_delay > 120 & flights_data$dep_delay <= 0 &
    flights_data$dep_delay >= 60 & (flights_data$dep_delay - flights_data$arr_delay) > 30 &
    flights_data$dep_time >= 0 & flights_data$dep_time <= 600, ]

print(filtered_flights)
