# Robert Guzman
# COP 2500
# Program 0 - Motivation
# Jan 1, 2024

x=int(input("What is x"))

def black_and_gold(x):
    answer=4
    if(x<5):
        x*=2
    else:
        x+=10
    answer+=x
    if(answer==10):
        return "Charge right through the line"
    return "Wrong answer"
