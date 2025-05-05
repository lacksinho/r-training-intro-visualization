import pandas as pd
import random
import numpy as np

# Set seed for reproducibility
random.seed(42)
np.random.seed(42)

# Sample data generation
n = 500
data = {
    "StudentID": [f"S{str(i).zfill(4)}" for i in range(1, n + 1)],
    "FirstName": np.random.choice(["John", "Jane", "Alice", "Bob", "Mary", "Peter", "Grace", "Daniel"], n),
    "LastName": np.random.choice(["Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis"], n),
    "Gender": np.random.choice(["Male", "Female"], n),
    "Age": np.random.randint(18, 26, size=n),
    "YearOfStudy": np.random.choice(["1st", "2nd", "3rd", "4th"], n),
    "Programme": np.random.choice(["Computer Science", "Statistics", "Business", "Engineering"], n),
    "Score": np.round(np.random.normal(loc=65, scale=10, size=n), 1)
}

df_students = pd.DataFrame(data)

# Save to CSV
df_students.to_csv("sample_students.csv", index=False)
