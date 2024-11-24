# Robert Guzman
# Heart Rate Monitor
# COP 2500
# Feb 17, 2024


# Using the function examples from the week 5 notes I created this defined area
# so that calculating the target heart rate will be easier later in the code.
def calculate(gender,age):
    if gender=='men':
        return 226-age
    else:
        return 220-age

# I this function I also used the list notes from week 5 to create a list of
# options the user can choose from and the while statement will repeat the
# input if selecting something outside the list.
def heartRateMonitor():  
    gender=input("Do you want to use the target heart rate for men or women?\n")
    while gender not in ['men', 'women']:
        print("Please enter 'men' or 'women'.")
        gender=input("Do you want to use the target heart rate for"
                     "men or women?\n")
# Since the age is a simple integer I used the same function we've used in
# previous projects.
    age=int(input("How old are you?\n"))
    while age<=0 or age>=100:
        print("Please enter a valid age between 1 and 99.")
        age=int(input("How old are you? "))

# To make the code more digestible I consolidated the users age and gender to
# equal their target heart rate.
    target=calculate(gender,age)

    entered=0
    met=0
# Starting at 0 I created a new input function for the user to begin entering in
# their heart rate on that given session
    print("Please enter your recorded heart rates: ")
    heartRate=int(input())
    while heartRate!=-1:
        entered+=1
        if heartRate>=target:
            met+=1
        heartRate=int(input())

# This final output section informs the user about the number of times they met
# their target heart rate versus how many entries the logged.
    print("You hit your target heart rate "+str(met)+
          " times out of "+str(entered)+"!")

# This ends the function section
heartRateMonitor()
