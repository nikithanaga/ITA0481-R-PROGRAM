# Load the Titanic dataset
titanic_data <- as.data.frame(Titanic)

# (i) Use an appropriate apply function to get the sum of males vs females aboard
gender_sum <- apply(titanic_data, 2, function(x) tapply(x["Freq"], x["Sex"], sum))
print(gender_sum)

# (ii) Get a table with the sum of survivors vs sex
survivors_sex <- xtabs(Freq ~ Survived + Sex, data = titanic_data)
print(survivors_sex)

# (iii) Get a table with the sum of passengers by sex vs age
sex_age <- xtabs(Freq ~ Sex + Age, data = titanic_data)
print(sex_age)
