# PEDAC


# Problem
# Write a method that takes a string argument, 
# Returns true if all of the alphabetic characters inside the sting are uppercase
# Returns false otherwise
# Characters that are not alphabetic should be ignored

# Examples / Test Cases
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
# uppercase?('5676&*^%') == true

# Data Structure
# string

# Algorithm
# define a method called 'uppercase?' which takes a 'string' as an argument
# compare string to string.upcase. If they are the same, return true, if not, return false

# Code

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
p uppercase?('5676&*^%') == true