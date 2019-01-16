# PEDAC

# Problem
# Write a method that takes a positive integer or zero, and converts it to a string


# Example / Test Cases
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Data Structure
# Hash, array, integer, and string

# Algorithm
# Create a hash called 'DIGITS' with mapping from integers to corisponding number strings
# initiate an array called 'holder'
# holder << integer.digits.reverse.map {|i| DIGITS[i]}
# holder.join

# Code

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


def integer_to_string(integer)
  holder = []
  holder << integer.digits.reverse.map {|i| DIGITS[i] }
  holder.join
end





p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'