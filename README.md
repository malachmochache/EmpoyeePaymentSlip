
# Highridge Construction Company Payment Slips

## Description

This project is a simple simulation that dynamically generates a list of at least 400 workers with randomly assigned genders and salaries. It then produces payment slips for each worker, including their classification into employee levels based on salary and gender criteria.
The logic is implemented in both Python and R.

## Files Included
- `payment_slip_generator.py` – Python implementation
- `payment_slip_generator.R` – R implementation
- `README.md` – Project description and instructions

## Features:
- Randomly generates worker data (ID, name, gender, salary).
- Classifies workers into levels:
  - `A5-F` for **Female** workers earning between **7,500** and **30,000**.
  - `A1` for any worker earning between **10,000** and **20,000**.
- Outputs formatted payment slips to the console.
- Exception handling included for runtime errors.

---

## 🐍 Python Version

### Files:
- `payment_slip_generator.py`: Python script to generate and display payment slips for workers.

### Requirements:
- Python 3.x
- No external libraries required (uses built-in `random` module)

### How to Run:
```bash
python payment_slip_generator.py
```

---

## 📊 R Version

### Files:
- `payment_slip_generator.R`: R script to perform the same worker generation and slip printing functionality.

### Requirements:
- R (version 3.5 or higher recommended)
- No additional packages required

### How to Run:
In an R console or RStudio:
```R
source("payment_slip_generator.R")
```

---

## 📧 Author
 - Malach Mochache
 - Nexford University
 - Module 1 Assignment
