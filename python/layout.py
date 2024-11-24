# Robert Guzman
# Layout
# COP 2500
# Mar 10, 2024

import turtle

# Starting with the first section I clearly defined functions that represent
# the new equipment.

# This function will draw a circle using the given raduys from the users input.
def draw_trampoline(x,y,radius):

# The pen up will avoid making any lines until the turtle makes it to the shapes
# starting position and once there the pen will be switched down.
    turtle.penup()
    turtle.goto(x,y-radius)
    turtle.pendown()
    turtle.circle(radius)

# Same as the first, this function was modified to accept length and width from
# the users input to create a rectangle instead of a circle.
def draw_weight_machine(x,y,length,width):
    turtle.penup()
    turtle.goto(x,y)
    turtle.pendown()
    for _ in range(2):
        turtle.forward(length)
        turtle.right(90)
        turtle.forward(width)
        turtle.right(90)

# This last function is similar to the weight machine but will only use the
# length input from the user to create a pentagon.
def draw_pull_up_rack(x,y,length):
    turtle.penup()
    turtle.goto(x,y)
    turtle.pendown()
    for _ in range(5):
        turtle.forward(length)

# I needed to look up the angle of prntagon's sides from google to make sure
# the shape came out correctly.
        turtle.right(72)

# With the shapes defined I moved to the main where the user gets to input their
# coordinate information.
def main():

# The first question asks for the X, Y and radius to draw the circle. 
    x=int(input("Let's place the new fitness trampoline! \n"
                "What is the X coordinate?\n"))
    y=int(input("What is the Y coordinate?\n"))
    radius=float(input("What is the radius?\n"))
    
# Once the user enters their information the data is processed through the
# functions above and displayed using the turtle graphics.
    draw_trampoline(x,y,radius)

# Using the users input again, the weight machine function is then called
# and drawn.
    x=int(input("Let's place the new weight machine! \n"
                  "What is the X coordinate?\n"))
    y=int(input("What is the Y coordinate?\n"))
    length=int(input("How long is it?\n"))
    width=int(input("How wide is it?\n"))
    draw_weight_machine(x,y,length,width)

# Finally the pull up rack uses the information provided to draw the final shape
    x = int(input("Let's place the new pull-up rack! \n"
                  "What is the X coordinate?\n"))
    y = int(input("What is the Y coordinate?\n"))
    length = int(input("How long is it?\n"))
    draw_pull_up_rack(x,y,length)
    turtle.done()
main()
