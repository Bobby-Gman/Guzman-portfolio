# Robert Guzman
# COP 2500
# Lab 9: Challenge 1
# March 31, 2024

# using a similar main function from our challenge 1 assignment with the only
# change being that instead of a single list it reads a list of lists
def challenge_1(grade_list):

# instead of 0 I used an empty list to track more than one class
    count=[]
    for x in grade_list:

# This section below will count each courses improvement starting at 0
        grade_up=0

# This will compare the grades of each list with the one before it
        for i in range(1,len(x)):
            if x[i]>x[i-1]:
                grade_up+=1

# once the grade is counted it is added to the list
        count.append(grade_up)
    return count

# I just copied and pasted the example for testing
semester = [ [95, 92, 93, 96, 92],

                       [100, 100],

                       [70, 80, 90],

                       [95, 85, 75, 70] ]

# I made sure to add a way to print the new list
grade_up=challenge_1(semester)
print(grade_up)
