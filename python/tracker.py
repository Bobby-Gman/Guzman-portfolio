# Robert Guzman
# COP 2500
# Program 9 - Tracker
# April 14, 2024

# This block will allow the user to set goals for the week.
def load_goals(goals):

    # Prints a message to prompt the user to enter their goals
    print("Set your goals for the week!")

    # This will make the prmpt loop 3 times
    for _ in range(3):
        category=input("Enter a category for your goal: \n")
        target=int(input("Enter your target for "+category+": \n"))

        # Finally it will add the category and amount to the dictionary
        goals[category]=target

# All function names were used from the example shown monday
def load_data():

    # First you wanted us to start with an empty dictionary
    daily={}

    #
    print("Enter your data with the category and measurement.")
    print("Type 'done' when done for today.")
    category=input("Enter category: \n")

    # It will loop until the category is done
    while category.lower()!='done':

        # These print statements will prompt the user to enter
        # their info and loop
        value=int(input("Enter value: \n"))

        # This will check if data entered is already used and will as the user
        # to either replace or add to the value
        if category in daily:
            print("You have a value for "+category+".")
            choice=input("Do you want to (1) Add to "+category+
                         ", or (2) Replace "+category+"? \n")
            if choice=='1':
                daily[category]+=value
            elif choice=='2':
                daily[category]=value
        else:

            # If a value isn't in the dictionary it will be added
            daily[category]=value
        category=input("Enter category: \n")       
    return daily

# This section will take the information from the 2 dictionaries 
def compare_goals(goals,daily):

    # This will loop through goals in the dictionary
    for category,target in goals.items():

        # It will then check if a category is in the daily dictionary
        if category in daily:

            # If the daily is less than the goal it returns 0
            if daily[category]<target:
                return 0
            
        # If the key is not in the daily it returns 0
        else:
            return 0
        
    # If all the goals were met then return 1
    return 1


def main():

    # Again starting with the empty dictionary that adds the goals
    goals={}

    # The count will start at 0 when the program starts
    total_met_goals=0

    # This section will call the first function to add to the dictionary
    load_goals(goals)

    # I created a list of day titles for the week
    week = ["Monday","Tuesday","Wednesday","Thursday",
                    "Friday - Happy Friday!","Saturday","Sunday"]

    # This will loop the days of the week
    for day in week:
        print("It's "+day)

        # This will call the second function and store its info for the other
        # dictionary
        daily=load_data()

        # This will total the amount of what data was returned, either 1 or 0
        total_met_goals+=compare_goals(goals,daily)

    # At the end the total is displayed with this message
    print("You hit your goals "+str(total_met_goals)+" times this week!")
main()
