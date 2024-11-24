# Robert Guzman
# COP 2500C
# Lab7: Challenge 3
# Mar 10, 2024

# This script should calsulate the total amount of treasure the user enters
# and print if it's enough to cover tuition costs or not.
def calc_total(treasures):
    
# This calc function will manually calculate the total amount of treasure
# without relying on the sum function.
    total=0
    for treasure in treasures:
        total+=treasure
    return total

def main():
    
# As labled in the assignment I have made the total cost of the tuition $1,500.
    tuition=1500
    
# Next I created a blank list to store the value of each treasure found.
    treasures=[]

# This will ask the user for the number of treasures they wish to find and will
# determine how many entries the user can put
    num_treasures=int(input("How many treasures would you like to find?\n"))

# This loop will collect the value of each treasure as the user enters their
# information.
    for i in range(1,num_treasures+1):
        value=float(input("How much is treasure #"+str(i)+" worth?\n"))
# I will use the append function we used in part 1 of this lab to add values
# to the list.
        treasures.append(value)

# This line will calculate the total value of all treasure found.
    total_amount=calc_total(treasures)

# I added this if statement to see if the total amount of treasure covers the
# users tuition.
    if total_amount>=tuition:
        print("You have enough to pay for the next semester! Yay!")
    else:
        print("You don't have enough to pay for the next semester.")
main()

