library(tidyverse)

df <- data.frame(name=c("A", "B"),
                 Gender=c("Male","Female"), score=c(90, 85))
df <- mutate(df, passed = score > 50)
print(df)


hist(ds$Score,
     breaks=20,col="lightgreen",
     main="Histogram of Student Scores",
     xlab="Scores")


boxplot(Score ~ Gender, data=ds,
        col=c("orange", "cyan"),
        main="Scores by Gender",
        ylab="Score")

plot(ds$Age, ds$Score,
     main="Age vs Score",
     xlab="Age",
     ylab="Score",
     pch=19,
     col="blue")

programme_counts <- table(ds$Programme)

barplot(programme_counts, main = "Number of Students per Programme", col = "skyblue", xlab = "Programme",  ylab = "Number of Students")


model1 <-lm(Score ~ Age,data=ds)
summary(model1)






plot(ds$Age, ds$Score,main="Age vs Score with Regression Line",
     xlab="Age",ylab="Score",pch=19)

abline(model1, col="red", lwd=2)


ds$Gender <- as.factor(ds$Gender)
ds$Programme <- as.factor(ds$Programme)

model2 <- lm(Score ~ Age + Gender + Programme, data=ds)
summary(model2)