# Robert Guzman
# Lab 6 Challenge 3
# COP 2500
# Mar 03, 2024

# As I the Instructions stated, I only filled out the conversion and cold
# functions as seen in the template.

# Lifted straight from the instructions I converted the temp from F to C
# and added the modifier between -2 and 2.
def temperature_convertion(temperature, modifier):
    converted = (temperature * 9/5) + 32
    
# For every 2 degrees away from 0 I made this to add or subtract that many
# degrees away until I got the results I was looking for.
    if abs(modifier) >= 2:      
        degrees_away = (abs(modifier) - 2) // 2
        adjustment = (degrees_away + 1) * (1 if modifier > 0 else -1)
    else:
        adjustment = 0
    final_temp = converted + adjustment
    return final_temp

# In the to_cold function I added the range of temp whether on vacation or not
def to_cold(temperature, vacation):
    if vacation:
        return temperature < 50
    else:
        return temperature < 70

# I did not touch or make any changes to the main function or how it is called.
def main():
    a = temperature_convertion(0, 1) 
    b = temperature_convertion(0, 5) 
    c = temperature_convertion(0, -8) 
    d = temperature_convertion(0, 10)
    e = temperature_convertion(28, -1) 
    f = temperature_convertion(12, 10) 
    g = temperature_convertion(27, -2) 
    h = temperature_convertion(25, 75)
    print("\ntemperature_convertion tests")
    print("temperature_convertion(0, 1) -> 32.0 \tResult: %.1f"% a)
    print("temperature_convertion(0, 5) -> 34.0 \tResult: %.1f"% b)
    print("temperature_convertion(0, -8) -> 28.0 \tResult: %.1f"% c)
    print("temperature_convertion(0, 10) -> 37.0 \tResult: %.1f"% d)
    print("temperature_convertion(28, -1) -> 82.4 \tResult: %.1f"% e)
    print("temperature_convertion(12, 10) -> 58.6 \tResult: %.1f"% f)
    print("temperature_convertion(27, -2) -> 79.6 \tResult: %.1f"% g)
    print("temperature_convertion(25, 75) -> 114.0 \tResult: %.1f"% h)

# I noticed that this line went over 80 in the column but I was unsure if you
# wanted it changed since you didnt want us to mess with the main()
    print("\nto_cold tests\nOnly work once temperature_convertion tests are correct ")
    print("to_cold(a, True) -> True \tResult: ", to_cold(a, True))
    print("to_cold(a, False) -> True \tResult: ", to_cold(a, False))
    print("to_cold(e, True) -> False \tResult: ", to_cold(e, True))
    print("to_cold(e, False) -> False \tResult: ", to_cold(e, False))
    print("to_cold(f, True) -> False \tResult: ", to_cold(f, True))
    print("to_cold(f, False) -> True \tResult: ", to_cold(f, False))

    
main()

