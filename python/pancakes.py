# Robert Guzman
# COP 2500
# Project 8: Pancakes
# April 07, 2024

# I will be referencing the Program 8-2 pdf we were given throughout.

# Starting with Function 1: the function does not take in any parameters and
# only returns the integer given.
def return_five():
    return 5

# Function 2: prints the message given in double quotes and returns the given
# integer.
def pancake_printer():
    print('"Pancake Breakfast with Professor Patrick!"')
    return 52847

# As seen in our assignment 8 test example notes, functio 3 takes the total
# number of pancakes eaten by multiplying the pancakes eaten per min and the
# total minutes eating.
def get_pancake_count(minutes,pancakes_per_minute):
    total=minutes*pancakes_per_minute
    return total

# Function 4 calculates the rate the pancakes are eaten
def get_pancakes_per_minute(minutes,pancake_count):
    total=pancake_count/minutes
    return total

# Function 5 handles the total time spent eating
def get_minutes_spent_eating(pancake_count,pancakes_per_minute):
    total=pancake_count/pancakes_per_minute
    return total

# Function 6 no longer returns functions, these will print the functions instead.
# I was going to use the round function to complete the placement of the "."
# but while looking at the assignment 8 notes function 1 used %.3f instead.
# Similar to get_pancake_count this will instead print the function with
# 3 decimal.
def print_pancake_count(minutes,pancakes_per_minute):
    x=get_pancake_count(minutes,pancakes_per_minute)
    print("Pancakes consumed: %.3f"%x)

# Again Function 7 prints the pancakes eaten with 3 decimals
def print_pancakes_per_minute(minutes,pancake_count):
    y=get_pancakes_per_minute(minutes,pancake_count)
    print("Pancakes per minute: %.3f"%y)

# Same as the previous, function 8 takes the value of function 5 and prints
# the value with more accuracy.
def print_minutes_spent_eating(pancake_count, pancakes_per_minute):
    z=get_minutes_spent_eating(pancake_count,pancakes_per_minute)
    print("Minutes spent eating: %.3f"%z)

# In function 9 I return any missing value if a fuction is equal to 0
def get_pancake_data(pancake_count,pancakes_per_minute, minutes):

# these are the conditions for the functions
    if pancake_count==0:
        return minutes*pancakes_per_minute
    elif pancakes_per_minute==0:
        return pancake_count/minutes
    elif minutes==0:
        return pancake_count/pancakes_per_minute

# Finally Function 10 prints the data if one of the functions equals 0
def print_pancake_data(pancake_count,pancakes_per_minute,minutes):
    data=get_pancake_data(pancake_count,pancakes_per_minute,minutes)

# determins which message to print based on which function was zero
    if pancake_count==0:
        print("Pancakes consumed: %.3f"%data)
    elif pancakes_per_minute==0:
        print("Pancakes per minute: %.3f"%data)
    else:
        print("Minutes spent eating: %.3f"%data)

# As stated in the rubric I add a main function where all the previous functions
# are tested.

#I added place holders for now and the user can input any integer to test their
# results.
def main():
    print(return_five())
    print(pancake_printer())
    print(get_pancake_count(1,1))
    print(get_pancakes_per_minute(1,1))
    print(get_minutes_spent_eating(1,1))
    print_pancake_count(1,1)
    print_pancakes_per_minute(1,1)
    print_minutes_spent_eating(1,1)
    print(get_pancake_data(1,1,0))
    print_pancake_data(1,0,1)
main()
