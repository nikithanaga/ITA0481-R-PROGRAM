
titanic_data <- as.data.frame(Titanic)


gender_sum <- apply(titanic_data, 2, function(x) tapply(x["Freq"], x["Sex"], sum))
print(gender_sum)


survivors_sex <- xtabs(Freq ~ Survived + Sex, data = titanic_data)
print(survivors_sex)


sex_age <- xtabs(Freq ~ Sex + Age, data = titanic_data)
print(sex_age)
