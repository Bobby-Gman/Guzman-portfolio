# Robert Guzman
# Problem 3 - Sit Up Challenge
# COP 2500
# Feb 11, 2024

# Using the information from week 3 this assignment went smoothly
# I clearly labled all the input variables as shown in the instuctions
# Starting with the title of the page
print("3,000 Sit-ups in 30 Days Challenge!")
daysLeft=int(input("How many days are left in the challenge?\n"))
logged=int(input("How many sit-ups have you logged so far?\n"))
dailySitups=int(input("How many sit-ups are you completing per day?\n"))

# After completing the input section I wrote this line to multiply the days
# left to do the challenge with how many sit-up they do each day.
# Then I add the situps they completed already to get their current total.
total=logged + (daysLeft * dailySitups)

# Since this is a 3000 sit-up challenge I wrote the if statement reflecting
# whether they will make it my the end of the challenge.
if total>=3000:
    print("You are on track to complete the 30 Day Challenge!")
else:
    print("You will need to complete more sit-ups per day" 
          "to complete the challenge.")
