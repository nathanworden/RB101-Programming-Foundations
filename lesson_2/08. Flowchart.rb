# give us N collections of numbers. We want to take the largest number
 # out of each collection, and display it.

# How would we approach coming up with a solution to that type of problem?

# Let's try to high level pseudo-code this.


# Given N collections of numbers.
# For each collection of numbers:
# Save the first number
# iterate through each collection comparing the saved number to the next number
# if the next number is larger than the saved number, replace the saved number with the new number
# display the saved number


#Book Answer:

# START

# SET large_numbers = []
# SET keep_going = true

# WHILE keep_going = true
#   GET "enter a collection"
#   SET collection
#   SET largest_number = SUBPROCESS "extract the largest one from that collection"
#   large_numbers.push(largest_number)
#   GET "enter another collection?"
#   IF "yes"
#     keep_going = true
#   ELSE
#     keep_going = false
#   IF keep_going == false
#     exit the loop

# PRINT large_numbers

# END