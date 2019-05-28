# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).


# Problem
# Input: a positive integer
# Output: an integer (sum of the digits of the input)

# Examples / Test Cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# puts sum(7843) == 22

# Data Structures
# Arrays

# Algorithm
# Convert the input integer to a string
# Convert the string into an Array
# sum the elements in the array

# Code

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(7843) == 22
