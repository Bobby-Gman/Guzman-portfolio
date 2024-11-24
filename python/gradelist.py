def grade_up(grade_list):
    # Initialize a counter for the number of times the grade increases.
    count = 0
    
    # Loop through the indices of the grade_list starting from 0 up to the second-to-last item.
    for i in range(len(grade_list) - 1):
        # Compare the current grade with the next one.
        # If the next grade is higher than the current one, increment the count.
        if grade_list[i + 1] > grade_list[i]:
            count += 1
            
    # Print the total count of times the grade has gone up.
    print(count)

grade_up([100,105,99,100,101,102])
