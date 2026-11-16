# Load dataset
data(iris)

# Display first six rows
head(iris)

# Dimensions
print(dim(iris))

# Summary
print(summary(iris))

# Standard deviation
print(sapply(iris[1:4], sd))

# Quantiles
print(sapply(iris[1:4], quantile))

# Group by Species and calculate mean
species_mean <- aggregate(
  . ~ Species,
  data = iris,
  FUN = mean
)
print(species_mean)

# Create Sepal.Length categories
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5, 6, Inf),
  labels = c("Short", "Medium", "Long")
)

# Pivot table
pivot_table <- table(
  iris$Species,
  iris$Sepal_Category
)
print(pivot_table)

# Average Sepal.Length by Species
sepal_avg <- aggregate(
  Sepal.Length ~ Species,
  data = iris,
  FUN = mean
)
print(sepal_avg)

# Display updated dataset
head(iris)
