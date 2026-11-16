# Create matrices
a1 <- matrix(1:6, nrow = 2, byrow = TRUE)
a2 <- matrix(7:12, nrow = 2, byrow = TRUE)
a3 <- matrix(13:18, nrow = 2, byrow = TRUE)

# Display matrices
print(a1)
print(a2)
print(a3)

# Combine row-wise
combined <- rbind(a1, a2, a3)

print(combined)