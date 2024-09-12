data<-data.frame(
  ID=c(1,2,3,4),
  NAME=c("a","b","c","d"),
  OCCUPATION=c("teacher","nurse","doctor","teacher"),
  EMPLOYEE=c("TRUE","TRUE","TRUE","TRUE")
)
print(data)
summary_data<-summary(data)
print(summary_data)
ocuupation_data<-data$OCCUPATION
print(occupation_data)
data$salary<-c(2000,3000,5000,2000)
print(data)

data("occupationalStatus")