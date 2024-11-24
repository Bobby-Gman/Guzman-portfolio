# Robert Guzman
# COP 2500
# March 26, 2024
# Program 7 - Smoothie Recipes

# Function 1 loads the initial ingredients that the user must input. starting
# with an empty list, the user will use the input section to add to the list.
def load_list():
    ingredients=[]

# After creating an empty list I created 5 0s to fill in space before the input.
    for _ in range(5):
        ingredients.append(0)
        
# This section of the fuction is for the user to input the data
# they want to store.
    ingredients[0]=float(input("How many bananas do you have? \n"))
    ingredients[1]=float(input("How many strawberries do you have? \n"))
    ingredients[2]=float(input("How many blueberries do you have? \n"))
    ingredients[3]=float(input("How many cups of spinach do you have? \n"))
    ingredients[4]=float(input("How many avocados do you have? \n"))

# Below each section I added a blank print statement to add space between
# the lines
    print()
    return ingredients

# Function 2 creates a menu the user can use to input their choice of what
# function they want to head to next.
def menu():
    print("What would you like to do?")
    print("1 - View Ingredients")
    print("2 - Update Ingredients")
    print("3 - Make a Smoothie")
    print("4 - Quit")
    
# After printing the options the user then gets to input his choice.
    choice=input("Select an option: \n")
    print()
    return int(choice)

# For the 3rd Function in our rubric, the user will see a printout of the
# current amount of ingredients they have at the time.
def view_ingredients(ingredients):
    print("Bananas: "+str(ingredients[0]))
    print("Strawberries: "+str(ingredients[1]))
    print("Blueberries: "+str(ingredients[2]))
    print("Spinach: "+str(ingredients[3])+" cups")
    print("Avocado: "+str(ingredients[4]))
    print()

# Function 4 allows the user to overwrite previous ingredients, as stated in
# our rubric.
def update_ingredients(ingredients):
    ingredients[0]=float(input("How many bananas do you have? \n"))
    ingredients[1]=float(input("How many strawberries do you have? \n"))
    ingredients[2]=float(input("How many blueberries do you have? \n"))
    ingredients[3]=float(input("How many cups of spinach do you have? \n"))
    ingredients[4]=float(input("How many avocados do you have? \n"))
    print()
    return ingredients

# Finally Function 5 allows the user to input the amount of ingredients they
# would like to use to create their desired smoothie.
def make_smoothie(ingredients):

# As stated in the layout for the assignment each item in the list has an
# amount needed to create a smoothie.
    needed_amounts=[1,5,12,1,0.5]

# This will then track the ingredients being used in the smoothie
    use_ingredients=[]
    for _ in range(5):
        use_ingredients.append(False)
    ingredients_list=[
        "bananas", "strawberries", "blueberries", "spinach", "avocado"]

# This block will ask the user if they wish to use a certain ingredient
# the check if theres enough in the list to create their smoothie
    for i, ingredient in enumerate(ingredients_list):
        response=input("Will you use "+ingredient+"? (yes/no) \n").lower()
        print()
        use_ingredients[i]=response=="yes"

# If they don't have enough of an item the user will be displayed this message
# and return to the menu to update their ingredients.
        if use_ingredients[i] and ingredients[i]<needed_amounts[i]:
            print("Sorry, this recipe cannot be completed.")
            print()
            return

# If the user does have enough to make the smoothie, this section will subtract
# the amount from the list.
    for i in range(5):
        if use_ingredients[i]:
            ingredients[i]-=needed_amounts[i]

# This block will then calculate the drink and health scores based on the
# ingredients used for that specific smoothie.
    drink_score=0 if use_ingredients[3] and use_ingredients[4] else 1
    health_score=(2 if use_ingredients[3] and use_ingredients[4] 
                    else sum(use_ingredients[3:5]))

    drink_messages=["Yuck!", "It will be delicious!"]
    health_messages=["It probably tastes good though.", 
                       "It is good to go!", 
                       "It will be super healthy!"]

# Once calculated the program will output the score and a message depending on
# that score.
    print("Your recipe scored a Drink Score of "+str(drink_score) 
          + ". "+drink_messages[drink_score])
    print("Your recipe scored a Health Score of "+str(health_score) 
          + ". "+health_messages[health_score])
    print()

# Lastly the main function will set the order in which each function is run.
def main():

# This will load function 1 
    ingredients=load_list()

# This will load function 2 and determine what function will load next
    choice=menu()
    while choice!=4:
        if choice==1:
            view_ingredients(ingredients)
        elif choice==2:
            ingredients=update_ingredients(ingredients)
        elif choice==3:
            make_smoothie(ingredients)
        else:
# If an unrecognized input is recorded this message will display then return
# to the menu
            print("Invalid option, please try again.")
        choice=menu()

# This statement will display when the user uses option 4 and leaves the program
    print("Quitting program.")
main()
