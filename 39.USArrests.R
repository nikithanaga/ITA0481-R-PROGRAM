library(ggplot2)
data("USArrests")
summary(USArrests)
str(USArrests)  
nrow(USArrests) 
ncol(USArrests) 
max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the most rape arrests:", max_rape_state, "\n")
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with the highest murder rate:", max_murder_state, "\n")
cat("State with the lowest murder rate:", min_murder_state, "\n")
correlation_matrix <- cor(USArrests)
print(correlation_matrix)
median_assault <- median(USArrests$Assault)
high_assault_states <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests above median:", high_assault_states, "\n")
murder_25th_percentile <- quantile(USArrests$Murder, 0.25)
low_murder_states <- rownames(USArrests)[USArrests$Murder <= murder_25th_percentile]
cat("States in the bottom 25% for murder arrests:", low_murder_states, "\n")
ggplot(USArrests, aes(x=Murder)) + 
  geom_histogram(binwidth=1, fill="blue", color="black") + 
  ggtitle("Histogram of Murder Arrests") + 
  xlab("Murder Arrests") + 
  ylab("Frequency")

ggplot(USArrests, aes(x=Murder)) + 
  geom_density(fill="blue") + 
  ggtitle("Density Plot of Murder Arrests") + 
  xlab("Murder Arrests")

ggplot(USArrests, aes(x=UrbanPop, y=Murder, color=Assault)) + 
  geom_point(size=3) + 
  scale_color_gradient(low="blue", high="red") + 
  ggtitle("Murder Arrest Rate vs Urbanization (Colored by Assault Rate)") + 
  xlab("Urban Population (%)") + 
  ylab("Murder Arrest Rate")

ggplot(USArrests, aes(x=reorder(rownames(USArrests), Murder), y=Murder)) + 
  geom_bar(stat="identity", fill="blue") + 
  coord_flip() + 
  ggtitle("Murder Rate by State") + 
  xlab("State") + 
  ylab("Murder Rate")
