# Load dataset
data(USArrests)

# 1. Summary statistics
print(summary(USArrests))

# 2. State with the largest rape arrest rate
print(rownames(USArrests)[which.max(USArrests$Rape)])
print(max(USArrests$Rape))

# 3. Maximum and minimum Murder rates
print(max(USArrests$Murder))
print(min(USArrests$Murder))

print(rownames(USArrests)[which.max(USArrests$Murder)])
print(rownames(USArrests)[which.min(USArrests$Murder)])

# 4. Correlation among features
print(cor(USArrests))

# 5. States above median Assault arrests
above_median <- USArrests[
  USArrests$Assault > median(USArrests$Assault), 
]
print(above_median)

# 6. States in the bottom 25% for Murder
q25 <- quantile(USArrests$Murder, 0.25)

bottom_murder <- USArrests[
  USArrests$Murder <= q25, 
]
print(bottom_murder)

# 7. Histogram of Murder
hist(USArrests$Murder,
     main = "Histogram of Murder Arrests",
     xlab = "Murder Arrest Rate",
     col = "lightblue")

# 8. Density plot of Assault
plot(density(USArrests$Assault),
     main = "Density of Assault Arrests",
     xlab = "Assault Arrest Rate")

# 9. Scatterplot: Murder vs Assault
plot(USArrests$Murder, USArrests$Assault,
     main = "Murder vs Assault",
     xlab = "Murder Arrest Rate",
     ylab = "Assault Arrest Rate",
     pch = 19,
     col = "blue")

# 10. Bar graph of Murder rates for each state
barplot(USArrests$Murder,
        names.arg = rownames(USArrests),
        main = "Murder Arrest Rates by State",
        xlab = "State",
        ylab = "Murder Arrest Rate",
        las = 2,
        cex.names = 0.5)