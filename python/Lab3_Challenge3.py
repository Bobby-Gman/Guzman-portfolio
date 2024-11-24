# Robert Guzman
# Lab 3: Challenge 3
# COP 2500
# Feb 04, 2024

import random
import math

#As shown in the previous labs I used the same random.randint function to
#generate Petey's lacation.
peteysX=random.randint(-100,100)
peteysY=random.randint(-100,100)

#To make sure that you are able to test both if statements I have included
#Petey's exact location using the % we learned in the if statement notes.
print("Petey is located at(%d,%d)"%(peteysX,peteysY))

#I've made sure to add the user input section as seen in the examples.
usersX=int(input("What is your X coordinate?\n"))
usersY=int(input("What is your Y coordinate?\n"))

#Since we had a choice to use the .dist or .sqrt, I thought that using the
#math.dist would suit this assignment better and needed less math.
distance=math.dist((peteysX,peteysY),(usersX,usersY))

#Finally I added the print output for whether you are close to Petey or not
if distance<=50:
    print("Oh no! Petey is near!\n")
elif distance>50:
    print("No Petey in sight.\n")
