# Robert Guzman
# Lab 1 - Challenge 3
# COP 2500C
# Jan 21, 2024

# I've added the message that asks the user for the float and integer info
hours=float(input("How many hours have to run?\n"))
speed=int(input("How fast is Knightro running?\n"))

# Here I took the variables listed above and multiplied them to get the distance
distance=hours*speed

# Then I divided the total laps by 3 to get the average
laps=distance/3

# Finally I wrote the answer along with the output message as seen in the
# example
print("Knightro can run", int(laps), "lap(s).")

# I used our Jan 17th notes to come to develop the layout of this page
