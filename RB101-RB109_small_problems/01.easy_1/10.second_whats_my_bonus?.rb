# What's my Bonus?
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# PEDAC

# Problem
# Input: A positive integer and a boolean
# Output: An integer (either 0 or half of the input integer)

# Examples / Test Cases

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# Data Structures


# Algorithm
# define a method called calculate_bonus which accepts a positive integer and a boolean as an argument
# If the boolean is true
    # Return the input integer divided by 2
# If the boolean is false
    # Return 0

# Code
def calculate_bonus(int, boolean)
  boolean ? (int / 2) : 0
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000