# Robert Guzman
# COP 2500
# Lab 8: Challenge 3
# March 31, 2024

# The prompt as for us to create this specific function to process the string 
def joke_splicer(jokes):
    
# First I set out to separate this string into a list depending on the ##
    peteys_script=jokes.split('##')
    
# Once the string is separated I stripped the whitespace from list.
    peteys_script=[joke.strip() for joke in peteys_script if joke.strip()]
    
# Using the sort method we learned on monday I made the list go in order 1-7
    peteys_script.sort()
    
# The rubric also stated to make sure there was a block that returns the list
    return peteys_script

# The main section does go past the 80 column count but since the rubric states
# that it shouldnt be edited I left it as is.
def main():
   j = '''1. WHAT DID THE OCEAN SAY TO THE PIRATE? NOTHING, IT JUST WAVED.##
5. HOW DO PIRATES PREFER TO COMMUNICATE? AYE TO AYE!##
3. WHERE CAN YOU FIND A PIRATE WHO HAS LOST HIS WOODEN LEGS? RIGHT WHERE YE LEFT HIM.##
7. HOW DID THE PIRATE GET HIS JOLLY ROGER SO CHEAP? HE BOUGHT IT ON SAIL.##
2. WHY IS PIRATING SO ADDICTIVE? THEY SAY ONCE YE LOSE YER FIRST HAND, YE GET HOOKED.##
4. HOW MUCH DID THE PIRATE PAY FOR HIS PEG AND HOOK? AN ARM AND A LEG.##
6. HOW DO YOU MAKE A PIRATE FURIOUS? TAKE AWAY THE P.##
       '''
   answer = joke_splicer(j)
   print(answer)

main()

