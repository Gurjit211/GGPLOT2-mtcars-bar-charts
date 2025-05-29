# Load required libraries

install.packages("ggplot2")
install.packages("dplyr")
library(dplyr)
library(ggplot2)


# Filter the dataset
filtered_data <- mtcars %>% filter(carb >= 3)

# Plot: Count of each gear type with carb >= 3
gear_count_plot <- ggplot(filtered_data, aes(x = factor(gear))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Number of Each Gear Type (carb ≥ 3)",
       x = "Gear",
       y = "Count") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5)

# Display plot
print(gear_count_plot)


#----------------------  PART 2 


# Plot: Stacked bar graph of gear divided by cyl
stacked_plot <- ggplot(mtcars, aes(x = factor(gear), fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Gear Type Distribution by Number of Cylinders",
       x = "Gear",
       y = "Count",
       fill = "Cylinders")

# Display plot
print(stacked_plot)
