# Robert Guzman
# COP 2500
# Program 1 - Turtle
# Jan 28, 2024

import turtle

turtle.shape("turtle")

#For this assignment I thought I would pick my favorite healthy pastime
#to make a logo out of, which is running.
#To do this I attempted to make a shoe running on pavement with the UCF
#logo underneath

#to start the logo I made a circular border around where I want to start
turtle.circle(250)
turtle.circle(250,90)

#I created a box acting as the base of the shoe and divider for the image
turtle.left(90)
turtle.forward(500)
turtle.left(90)
turtle.circle(250,15)
turtle.left(75)
turtle.forward(485)
turtle.penup()

#I am using these lines to reposition the turtle to start the shoe image 
turtle.left(180)
turtle.forward(60)
turtle.right(90)
turtle.forward(65)
turtle.pendown()
#once I found a good place to start I began the toe part of the shoe
turtle.circle(80,180)
#following the line from the divider I traced the circle and positioned the
#turtle on the top left
turtle.right(90)
turtle.forward(274)
turtle.right(90)
turtle.circle(-250,70)

#To make the body of the shoe I brought the turtle down to meet with the
#arch I made earlier
turtle.right(100)
turtle.forward(130)
turtle.left(65)
turtle.forward(140)
turtle.penup()
#Thinking the shoe looked a little too plain I wanted to add some laces
turtle.left(150)
turtle.forward(50)
turtle.left(45)
turtle.forward(100)
turtle.pendown()

#Starting with the bottom laces, I thought to keep it looking minimal
#a box would work fine
turtle.forward(80)
turtle.right(90)
turtle.forward(25)
turtle.right(90)
turtle.forward(80)
turtle.right(90)
turtle.forward(20)
turtle.penup()
#After finishing the first lace I moved to make the second above it
turtle.left(180)
turtle.forward(65)
turtle.left(90)
turtle.forward(10)
turtle.pendown()
#I tried to seporate each portion of my drawing with notes to keep better
#organized
turtle.forward(75)
turtle.right(90)
turtle.forward(25)
turtle.right(90)
turtle.forward(75)
turtle.right(90)
turtle.forward(25)
turtle.penup()
#Bringing the pen back up I started working on the bottom of the divider
#I wanted to add the abbreviation for the University at the bottom of the image
turtle.forward(280)
turtle.right(90)
turtle.forward(45)
turtle.left(90)
#Starting on the left with the "U", which was a bit difficult when dealing with
#the arch
turtle.pendown()
turtle.forward(50)
turtle.circle(25,180)
turtle.forward(50)
turtle.left(90)
turtle.forward(15)
turtle.left(90)
turtle.forward(45)
turtle.circle(-10,180)
turtle.forward(45)
turtle.left(90)
turtle.forward(15)
turtle.penup()
#Moving to the left I started with the "C"
turtle.left(180)
turtle.forward(130)
turtle.pendown()
#This ended up being much smoother to get the correct proportions than the "U"
turtle.right(90)
turtle.forward(15)
turtle.right(90)
turtle.circle(25,180)
turtle.right(90)
turtle.forward(15)
turtle.right(90)
turtle.circle(-40,180)
turtle.penup()
#Finally I moved the turtle further right to finish the "F"
turtle.forward(110)
turtle.pendown()
#This was definitely easier than the others since it's composed of right angles
turtle.right(90)
turtle.forward(15)
turtle.right(90)
turtle.forward(30)
turtle.left(90)
turtle.forward(20)
turtle.left(90)
turtle.forward(17)
turtle.right(90)
turtle.forward(15)
turtle.right(90)
turtle.forward(17)
turtle.left(90)
turtle.forward(30)
turtle.right(90)
turtle.forward(15)
turtle.right(90)
turtle.forward(80)
turtle.right(90)
turtle.forward(45)
turtle.penup()
#Wanting to add a bit more to fill in space I wanted to add an underline
turtle.right(90)
turtle.forward(90)
turtle.pendown()
#This was simply a rectangle that crossed under the "UCF" 
turtle.forward(10)
turtle.right(90)
turtle.forward(240)
turtle.right(90)
turtle.forward(10)
turtle.right(90)
turtle.forward(240)
turtle.penup()
#Lastly I wanted to add one more ring around the image to round it out
turtle.right(180)
turtle.forward(120)
turtle.left(90)
turtle.forward(85)
turtle.pendown()
turtle.left(90)
turtle.circle(278)
#Overal this took a long time just to make something that looks so simple
#Hopefully it fits all the criteria
