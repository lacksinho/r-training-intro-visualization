import pandas as pd
import random
import numpy as np

# Set seed
random.seed(42)
np.random.seed(42)

# Number of rows
n = 500

# Generate sample data
data = {
    "student_id": [f"S{str(i).zfill(4)}" for i in range(1, n + 1)],
    "first name": np.random.choice(["John", "Jane", "Alice", "Bob", "Mary", "Peter", "Grace", "Daniel"], n),
    "last name": np.random.choice(["Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis"], n),
    "gender": np.random.choice(["Male", "Female"], n),
    "age": np.random.randint(18, 26, size=n),
    "year_of_study": np.random.choice(["1st", "2nd", "3rd", "4th"], n),
    "programme": np.random.choice(["Computer Science", "Statistics", "Business", "Engineering"], n),
    "score": np.round(np.random.normal(loc=65, scale=10, size=n), 1),
    "city": np.random.choice(["Dodoma", "Arusha", "Mwanza", "Mbeya", "Dar es Salaam"], n)
}

df_students = pd.DataFrame(data)

# Inject some missing values in 'score' and 'city'
for _ in range(30):  # Randomly make 30 rows have NA in score
    df_students.loc[random.randint(0, n-1), 'score'] = np.nan
for _ in range(20):  # Randomly make 20 rows have NA in city
    df_students.loc[random.randint(0, n-1), 'city'] = np.nan

# Save to CSV
df_students.to_csv("sample_unclean_students.csv", index=False)
