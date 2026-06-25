library(tidyverse)

file_path <- "Datasets/sample_unclean_students.csv"
students <- read.csv(file_path, na.strings = "")

str(students)

is.na(students)

students_clean <- na.omit(students)

# keep the rows instead of dropping them, just zero out the missing scores
students_clean2 <- replace_na(students, list(score =0))
students_clean2 <- rename(students_clean2, score2 = score)


students_clean$Year <- as.factor(students_clean$Year)
students_clean$Programme <- as.factor(students_clean$Programme)
students_clean$city <- as.factor(students_clean$city)

summary(students_clean)
mean(df$age)
median(df$score)
sd(df$score)
IQR(df$score)
