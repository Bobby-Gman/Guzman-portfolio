# Robert Guzman
# COP 2500
# Problem 2 - BMI
# Feb 04, 2024

#For the final calculation I wanted to use the math function we learned in the
#week 4 notes
import math

#I thought this would be a good intro to the input section so that the user
#knows what they're entering when they start
print("BMI Calculator\n")

#Similar to the if statement notes for temp, I wanted to use a similar statement
height=int(input("What is your height in inches?\n"))
while height<=0 or height>=100:
    print("Invalid height")
    height=int(input("What is your height in inches?\n"))

#For the weight, it was nearly identical to the height I just copied and pasted
#altering the specific information when needed
weight=int(input("What is your weight in pounds?\n"))
while weight<=0 or weight>=1000:
    print("Invalid weight")
    weight=int(input("What is your weight in pounds?\n"))
    
#based on the loop notes I used the math.pow to get the height to the power of 2 
height=math.pow(height,2)
bmi=(weight*703)/height

#I decided to go back to our first notes of last week and use % to round the
#final calculation because using math.ceil was rounding to the whole number.
print("Your BMI is calculated at %.2f\n"%bmi)
