library(ggplot2)
data("ChickWeight")
ggplot(ChickWeight, aes(x=factor(Diet), y=weight, fill=factor(Diet))) +
  geom_boxplot() +
  ggtitle("Box Plot of Weight Grouped by Diet") +
  xlab("Diet") + ylab("Weight") +
  scale_fill_discrete(name = "Diet")  
ggplot(subset(ChickWeight, Diet == 1), aes(x=weight)) +
  geom_histogram(binwidth=10, fill="blue", color="black") +
  ggtitle("Histogram of Weight for Diet-1") +
  xlab("Weight") + ylab("Frequency")
ggplot(ChickWeight, aes(x=Time, y=weight, color=factor(Diet))) +
  geom_point(size=3) +
  ggtitle("Scatter Plot of Weight vs Time Grouped by Diet") +
  xlab("Time") + ylab("Weight") +
  scale_color_discrete(name = "Diet")  
