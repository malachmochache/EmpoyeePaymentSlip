# Define number of workers, gender and salary ranges
NUM_WORKERS <- 400
MIN_SALARY <- 4000
MAX_SALARY <- 40000
GENDERS <- c("Male", "Female")

# Function to dynamically create a dummy list of at least 400 workers.
generate_workers <- function() {
    workers <- data.frame(
        id = 1:NUM_WORKERS,
        name = paste0("Employee_", 1:NUM_WORKERS), # Assign an arbitrary name
        gender = sample(GENDERS, NUM_WORKERS, replace = TRUE), # Assign a random gender. Either Male or Female
        salary = sample(MIN_SALARY:MAX_SALARY, NUM_WORKERS, replace = TRUE), # Assign a random salary between MIN and MAX salaries
        stringsAsFactors = FALSE
    )
    return(workers)
}

# Function to generate payment slips for each of the workers with conditions and exception handling
generate_payment_slips <- function(workers) {
    tryCatch({
        for (i in 1:nrow(workers)) {
            worker <- workers[i, ]
            level <- "None"
            salary <- worker$salary
            gender <- worker$gender
            
            # Apply conditional logic for employee level assignment
            if (salary > 7500 && salary < 30000 && gender == "Female") {
                level <- "A5-F"
            } else if (salary > 10000 && salary < 20000) {
                level <- "A1"
            }
            
            # Print payment slip
            cat("Payment Slip for Worker ID:", worker$id, "\n")
            cat("Name:", worker$name, "\n")
            cat("Gender:", gender, "\n")
            cat("Weekly Salary: $", salary, "\n")
            cat("Employee Level:", level, "\n")
            cat(strrep("-", 60), "\n")
        }
    }, error = function(e) {
        cat("An error occurred while generating payment slips:", e$message, "\n")
    })
}

# Execute the program
tryCatch({
    workers <- generate_workers()
    generate_payment_slips(workers)
}, error = function(e) {
    cat("Critical error in processing:", e$message, "\n")
})