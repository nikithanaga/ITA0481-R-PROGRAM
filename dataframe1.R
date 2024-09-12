data<-data.frame(
  name=c("alex","lily","mark"),
  age=c(25,31,23),
  height=c(177,163,190),
  weight=c(57,69,83),
  gender=c("male","female","male")
)
print(data)
data$gender<- ifelse(data$gender=="male","female","male")
print(data)
data1<-data.frame(
  name=c("alex","lily","mark"),
  Working=c("yes","no","no")
  
)
print(data1)
merged_data<-merge(data,data1,by="name")
print(merged_data)
print(nlevels(rows))
rows <- nrow(merged_data)
columns <- ncol(merged_data)

print(paste("Number of rows:", rows))
print(paste("Number of columns:", columns))