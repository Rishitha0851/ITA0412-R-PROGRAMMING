# Install package if required
if (!requireNamespace("reshape2", quietly = TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

# Load dataset
data(airquality)

# Melt data
melted_data <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp")
)
print(head(melted_data))

# Cast data into wide format
cast_data <- dcast(
  melted_data,
  Month + Day ~ variable,
  value.var = "value"
)
print(head(cast_data))

# Calculate monthly averages
monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data = airquality,
  FUN = mean,
  na.rm = TRUE
)

print(monthly_avg)