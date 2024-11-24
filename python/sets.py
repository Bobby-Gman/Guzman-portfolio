# Robert Guzman
# COP 2500
# Program 5 - Set Tracking
# Mar 03, 2024

# Starting this code I created the first input variable so the user can enter
# how many days they workedout.
workoutDays=int(input("How many workouts do you have data for?\n"))

# Uing the functions we learned in week 5 I sectioned this block off to
# calculate and display the average of the users repetitions each day.
def calculateRepetitions(workoutDays):
    for workout in range(1, workoutDays + 1):
        sets = int(input("How many sets were completed in workout #"
                         + str(workout) + "?\n"))

# Starting at 0 repetitions the calculation will take the average of the total
# workouts.
        totalRepetitions = 0
        for setNumber in range(1, sets + 1):
            repetitions = int(input("How many repetitions in set #"
                                    + str(setNumber) + "?\n"))
            totalRepetitions += repetitions
        averageRepetitions = totalRepetitions / sets
        
# Lastly I added the final print output that totals the average reps and
# gives the user the average with 3 digits after the decimal.
        print("Workout #" + str(workout)
              + ": The average number of repetitions was "
              + format(averageRepetitions, '.3f') + ".\n")
calculateRepetitions(workoutDays)
