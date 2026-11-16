# Read a CSV file

student <- data.frame(
  Name = c("Anu", "Bala", "Charan", "Divya"),
  Marks = c(85, 90, 78, 95)
)

write.csv(student, "student.csv", row.names = FALSE)

data <- read.csv("student.csv")

print(data)