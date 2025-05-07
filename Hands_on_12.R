library(tidyverse)

# Load dataset
students <- read.csv("Datasets/sample_unclean_students.csv")

# View structure
str(students)

# Remove NAs
students_clean <- na.omit(students)

# Rename columns
students_clean <- students_clean %>%
  rename(
    FirstName = first.name,
    LastName = last.name,
    Year = year_of_study,
    Programme = programme
  )

# Filter rows - e.g., only 3rd year students from Dar es Salaam
students_filtered <- students_clean %>%
  filter(Year == "3rd", city == "Dar es Salaam")

# Summary table by programme and gender
summary_table <- students_clean %>%
  group_by(Programme, gender) %>%
  summarise(
    Count = n(),
    Avg_Score = mean(score, na.rm = TRUE)
  ) 

print(summary_table)
