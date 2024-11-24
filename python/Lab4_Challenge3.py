# Robert Guzman
# COP 2500
# Lab4_Challenge3
# Feb 11, 2024

# Starting the page off I added the variables wins and games to so the code has
# a way of counting after the first game is played.
wins=0
games=1

# As stated in the instructions this loop while statement will run as long as
# UCF continues to win starting from their first game.
while games>0:

# This line will be used to keep track of the number of games UCF has played
# and print them so the user can see
    print("Game #"+str(games))
    ucf=int(input("What did UCF score: \n"))
    opponent=int(input("What did the oppenent score: \n"))

# This line checks if the UCF score is greater and falls within the score limit
    if 0<= ucf<=100 and 0<=opponent<=100:

# If the UCF score is greater than they win and the games are recorded
        if ucf>opponent:
            wins+=1
            games+=1
# If they lose the total games won is printed
        else:
            print("The season is over.")
            print("UCF won " +str(wins)+ " games.")
# Setting the games to -1 will exit the loop
            games = -1

# This will only come up if the score doesn't fall within the range
# in the original if statement
    else: 
            print("Invalid score enrty.Scores must be between 0 and 100")
