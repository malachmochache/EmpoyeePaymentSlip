# load required libraries
import random

# Define number of workers, gender and salary ranges
NUM_WORKERS = 400
MIN_SALARY = 4000
MAX_SALARY = 40000
GENDERS = ['Male', 'Female']

# Function to dynamically create a dummy list of at least 400 workers.
def generate_workers():
    workers = []
    
    for i in range(NUM_WORKERS):
        worker = {
            'id': i + 1,
            'name': f'Employee_{i + 1}', # Assign an arbitrary name
            'gender': random.choice(GENDERS), # Assign a random gender. Either Male or Female
            'salary': random.randint(MIN_SALARY, MAX_SALARY) # Assign a random salary between MIN and MAX salaries
        }
        workers.append(worker)
    return workers

# Function to generate payment slips for each of the workers with conditions and exception handling
def generate_payment_slips(workers):
    try:
        for worker in workers:
            level = "None"
            salary = worker["salary"]
            gender = worker["gender"]

            # Apply conditional logic for employee level assignment
            if 7500 < salary < 30000 and gender == "Female":
                level = "A5-F"
            elif 10000 < salary < 20000:
                level = "A1"

            # Print payment slip
            print(f"Payment Slip for Worker ID: {worker['id']}")
            print(f"Name: {worker['name']}")
            print(f"Gender: {gender}")
            print(f"Weekly Salary: ${salary}")
            print(f"Employee Level: {level}")
            print("-" * 60)

    except Exception as e:
        print(f"An error occurred while generating payment slips: {e}")

# Execute the program
try:
    workers = generate_workers()
    generate_payment_slips(workers)
except Exception as e:
    print(f"Critical error in processing: {e}")
