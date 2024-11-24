# Robert Guzman
# COP 2500
# Lab5: Challenge 2
# Feb 18, 2024


# Starting the document off I created an input for the amount of days the user
# wants to work out for.
days=int(input("How many days are we tracking?\n"))

# Next I made sure to add a range that the input should read and will print
# a message if outside that range.
while days<1 or days>10:
    print("Please enter a value between 1 and 10.")
    days=int(input("How many days are we tracking?\n"))

# If entered correctly the user can begin to enter their information based on
# the number of days selected, starting at 0 days.
totalSteps=0
for count in range(1,days+1):
    steps=int(input("Day"+str(count)+": How many steps?\n"))
    if steps>=10000:
        print("You walked enough")
    else:
        print("You should walk more")
    totalSteps+=steps

# I made sure to check the average outside the loop
average=totalSteps/days

# According to the instructions we shouldn't print a message if the fail to meet
# the goal so I didn't add an else function to the if statement.
if average>=10000:
    print("You hit your goal of 10,000 steps per day.")
