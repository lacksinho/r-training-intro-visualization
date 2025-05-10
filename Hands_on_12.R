library(tidyverse)

# Load dataset
students <- read.csv("Datasets/sample_unclean_students.csv")

# Load dataset
students2 <- read.csv("Datasets/sample_students.csv")

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
  filter(Year == "3rd", city == "Dar es Salaam", age > 20)


# select some columns
students_clean_with_fav_columns <- select(students_clean, gender:city)

students_clean$gender <- as.factor(students_clean$gender)

# Summary table by programme and gender
summary_table <- students_clean %>%
  group_by(Programme, gender) %>%
  summarise(
    Count = n(),
    Avg_Score = mean(score, na.rm = TRUE)
  ) 

print(summary_table)

hist(students_clean$score)

hist(students_clean$score, main="Distribution of Scores", xlab="Score", col="skyblue")


boxplot(score ~ gender, data=students_clean,
        col=c("yellow", "green"),
        main="Scores by Gender",
        ylab="Score")



plot(students_clean$age, students_clean$score,
     main="Age vs Score",
     xlab="Age",
     ylab="Score",
     pch=10,
     col="blue")



programme_counts <- table(students_clean$Programme)
barplot(programme_counts, main = "Number of Students per Programme", col = "skyblue", xlab = "Programme",  ylab = "Number of Students")

data("mtcars")

ggplot(mtcars, aes(x = wt, y = mpg))+
  geom_point()


ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) + 
  geom_point(size = 3) +
  labs(title = "MPG vs Weight by Cylinder 
Count", x = "Weight (1000 lbs)", y = "Miles per Gallon")
+ theme_light()


ggplot(students_clean, aes(x = Programme)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Student Count by Programme", x = "Programme", y = "Count") +
  theme_minimal()



ggplot(students_clean, aes(x = Programme, fill = gender)) +
  geom_bar(position = "dodge") +  # use "dodge" for side-by-side
  labs(title = "Gender Proportion by Programme", y = "Proportion")


ggplot(students_clean, aes(x = age, y = score, color = Programme)) +
  geom_point(alpha = 0.6) +
  labs(title = "Score vs Age by Programme", x = "Age", y = "Score") +
  theme_minimal()


ggplot(students_clean, aes(x = age, y = score)) +  geom_point(alpha = 0.5, color = "purple") +
  facet_wrap(~ gender) +
  labs(title = "Score vs Age Faceted by Gender") +  theme_minimal()


model1 <-lm(Score ~ Age,data=students2)
summary(model1)

plot(students2$Age, students2$Score,main="Age vs Score with Regression Line",
     xlab="Age",ylab="Score",pch=19)

abline(model1, col="red", lwd=2)  


