library(ggplot2)
data("Titanic")
titanic_df <- as.data.frame(Titanic)
ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) + 
  geom_bar(stat="identity", position="dodge") + 
  ggtitle("Survival on Titanic by Passenger Class") + 
  xlab("Passenger Class") + 
  ylab("Count")
ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) + 
  geom_bar(stat="identity", position="dodge") + 
  facet_wrap(~Sex) +
  ggtitle("Survival on Titanic by Passenger Class and Gender") + 
  xlab("Passenger Class") + 
  ylab("Count")

