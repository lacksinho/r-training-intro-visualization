library(tidyverse)

df <- data.frame(name=c("A", "B"),
                 gender=c("Male","Female"), score=c(90, 85))

df <- mutate(df, passed = score > 50)

df$new_score <- df$score-10

students <- read.csv("Datasets/sample_unclean_students.csv")

View(students)

ggplot(students_clean, aes(x = Programme)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Student Count by Programme", x = "Programme", y = "Count") +
  theme_minimal()


ggplot(students_clean, aes(x = Programme, fill = gender)) +
  geom_bar(position = "fill") +  # use "dodge" for side-by-side
  labs(title = "Gender Proportion by Programme", y = "Proportion") +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_minimal()



ggplot(students_clean, aes(x = Year, y = score)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Score Distribution by Year of Study", x = "Year", y = "Score") +
  theme_minimal()


ggplot(students_clean, aes(x = age, y = score, color = Programme)) +
  geom_point(alpha = 0.6) +
  labs(title = "Score vs Age by Programme", x = "Age", y = "Score") +
  theme_minimal()


ggplot(students_clean, aes(x = age, y = score)) +  geom_point(alpha = 0.5, color = "purple") +
  facet_wrap(~ gender) +
  labs(title = "Score vs Age Faceted by Gender") +  theme_minimal()


ggplot(students_clean, aes(x = score)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(title = "Distribution of Student Scores", x = "Score", y = "Frequency") +
  theme_minimal()
