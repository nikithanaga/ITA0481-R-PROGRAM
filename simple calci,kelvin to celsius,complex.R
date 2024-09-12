calculator <- function(a, b, operation) {
  if (operation == "add") {
    return(a + b)
  } else if (operation == "subtract") {
    return(a - b)
  } else if (operation == "multiply") {
    return(a * b)
  } else if (operation == "divide") {
    return(a / b)
  } else {
    return("Invalid operation")
  }
}
result_add <- calculator(5, 3, "add")
print(result_add)
kelvin_to_celsius <- function(kelvin) {
  celsius <- kelvin - 273.15
  return(celsius)
}
temperature_in_celsius <- kelvin_to_celsius(300)
print(temperature_in_celsius) 
z1 <- complex(real = 3, imaginary = 4)
z2 <- 5 + 6i
print(z2)

