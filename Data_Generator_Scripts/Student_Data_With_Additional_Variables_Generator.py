import pandas as pd
import random
import numpy as np

# Set seed for reproducibility
random.seed(42)
np.random.seed(42)

# Sample data generation
n = 500

data = {
    # StudentID: Unique identifier for each student (e.g., S0001, S0002, ...)
    "StudentID": [f"S{str(i).zfill(4)}" for i in range(1, n + 1)],

    # FirstName: First name of the student (randomly chosen from a list)
    "FirstName": np.random.choice(["John", "Jane", "Alice", "Bob", "Mary", "Peter", "Grace", "Daniel"], n),

    # LastName: Last name of the student (randomly chosen from a list)
    "LastName": np.random.choice(["Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis"], n),

    # Gender: Gender of the student (randomly chosen between Male and Female)
    "Gender": np.random.choice(["Male", "Female"], n),

    # Age: Age of the student (randomly generated between 18 and 25)
    "Age": np.random.randint(18, 26, size=n),

    # YearOfStudy: Current year of study for the student (1st, 2nd, 3rd, or 4th year)
    "YearOfStudy": np.random.choice(["1st", "2nd", "3rd", "4th"], n),

    # Programme: Academic programme the student is enrolled in (e.g., Computer Science, Engineering, etc.)
    "Programme": np.random.choice(["Computer Science", "Statistics", "Business", "Engineering"], n),

    # Score: Score the student achieved (randomly generated with normal distribution around 65, with a standard deviation of 10)
    "Score": np.round(np.random.normal(loc=65, scale=10, size=n), 1),

    # StudyHours: Number of hours the student spends studying per week (randomly chosen between 5 and 40)
    # This can be used to explore its relationship with Score.
    "StudyHours": np.random.randint(5, 40, size=n),

    # Attendance: Percentage of classes attended by the student (random value between 50% and 100%)
    # This is used to explore how attendance affects performance (Score).
    "Attendance": np.random.uniform(50, 100, size=n),

    # PreviousScore: Score the student achieved in the previous semester or year (randomly generated)
    # This can be used to study how past performance influences current performance.
    "PreviousScore": np.round(np.random.normal(loc=65, scale=8, size=n), 1),

    # StudyMethod: The method of study the student uses (Group, Solo, Online)
    # This categorical variable can help explore whether the study method affects performance.
    "StudyMethod": np.random.choice(["Group", "Solo", "Online"], n),

    # PartTimeJob: Whether the student has a part-time job (Yes or No)
    # Can be used to explore if working a part-time job affects performance (Score).
    "PartTimeJob": np.random.choice(["Yes", "No"], n),

    # UniversityRank: The rank of the university (1st, 2nd, 3rd, 4th)
    # This ordinal variable can be used to see if the rank of the university has an impact on performance.
    "UniversityRank": np.random.choice([1, 2, 3, 4], n),

    # Region: Region of origin for the student (Urban or Rural)
    # This can be used to see if the student's region impacts performance (Score).
    "Region": np.random.choice(["Urban", "Rural"], n),

    # ExtracurricularActivity: Whether the student participates in extracurricular activities (Yes or No)
    # This variable helps to study the effect of extracurricular involvement on performance.
    "ExtracurricularActivity": np.random.choice(["Yes", "No"], n),

    # Scholarship: Whether the student receives a scholarship (Yes or No)
    # You can use this to explore if scholarship students perform better than others.
    "Scholarship": np.random.choice(["Yes", "No"], n),

    # SocialMediaUsage: Hours spent on social media per week (randomly between 5 and 25 hours)
    # This variable could explore whether social media usage has any negative or positive effects on academic performance.
    "SocialMediaUsage": np.random.randint(5, 25, size=n)
}

# Create DataFrame from the dictionary
df_students = pd.DataFrame(data)

# Save to CSV
df_students.to_csv("sample_students_with_additional_variables.csv", index=False)
