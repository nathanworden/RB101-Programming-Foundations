# PEDAC


# Problem
# Write a method that takes a positive integer as an argument
# Returns that number with its digits reversed.

# Examples / Text Cases
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# Data Structures
# integer, string, possibly array

# Algorithm
# define a method called 'reversed_number' which takes a positive 'integer' as an argument
# turn the integer into a string and call reverse on it

# Code

def reversed_number(integer)
  integer.to_s.reverse.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1