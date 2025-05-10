library(tidyverse)

# define file
file_path <- "Datasets/sample_unclean_students.csv"

# load dataset
students <- read.csv(file_path, na.strings = "")

# explore dataset
str(students)

# Handling missing values: 
is.na(students)
  
# clean missing values
students_clean <- na.omit(students)

# replace na score to be 0
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






