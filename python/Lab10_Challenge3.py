# Robert Guzman
# COP2500
# Lab 10: Challenge 3
# April 07, 2024

# As stated in the rubric I will not import the csv reader and will get the
# information from the file location, reading line by line.
def main():
    input_file="Lab10.csv"

# To simplify the output I created an empty list to store the dictionary data.
    course_list=[]

# This line will open the file and is set to read and not edit the file itself.
    with open(input_file,"r") as file:
        for line in file:

# Similar to our Challenge 1 I created an empty dictionary and added keys to get
# specific values.
            course={}

# Just like in our string notes and previous assignments I used strip and split
# to remove all whitespace in the strings and split the list by spaces.
            order=line.strip().split(",")

# As stated in the challenge, I created keys for the information needed for the
# list that then use the variable to split and strip for formating.
            course["course_code"]=order[0]
            course["course_name"]=order[1]
            course["credit_hours"]=int(order[2])
            course["teacher"]=order[3]
            course["grade"]=order[4]

# Once the information is read and formated it is added to the list in the order
# specified.
            course_list.append(course)

# Finally the dictionary items that are formated in the list are printed.
# As stated in the comment above the empty list, I went with this formating
# so that I didnt need '+' every key into an output string.
    for courses in course_list:
        print(courses)
main()
