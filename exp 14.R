# Install package if required
if (!requireNamespace("reshape2", quietly = TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

# Load dataset
data(ChickWeight)

# Display dataset
head(ChickWeight)
summary(ChickWeight)

# Sort by weight in descending order
sorted_data <- ChickWeight[
  order(ChickWeight$weight, decreasing = TRUE),
]
print(head(sorted_data))

# Melt dataset
melted_data <- melt(
  ChickWeight,
  id.vars = c("Chick", "Diet", "Time"),
  measure.vars = "weight"
)
print(head(melted_data))

# Cast by Diet and Time
cast_data <- dcast(
  melted_data,
  Diet + Time ~ variable,
  value.var = "value",
  fun.aggregate = mean
)
print(cast_data)

# Average weight by Diet
diet_avg <- aggregate(
  weight ~ Diet,
  data = ChickWeight,
  FUN = mean
)
print(diet_avg)