# PEDAC


# Problem
# Write a method that returns a list of all substrings of a string 
# Starts at the beginning of the original string
# Return value should be arranged in order from shortest to longest substring

# Examples / Text Cases
# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# substrings_at_start('Normandy was') == ['N', 'No', 'Nor', 'Norm', 'Norma', 'Norman', 'Normand', 'Normandy', 'Normandy ', 'Normandy w', 'Normandy wa', 'Normandy was']

# Data Structures
# array, string

# Algorithm
# define a method called 'substrings_at_start' which accepts a 'string' as an argument
# initiate an empty array called 'substrings'
# from 1 to the length of the string
# slice the string from 0 to index and push that substring to the substrings array
# return the substrings array

# Code

def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |index|
    substrings << string.slice(0, index)
  end
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p substrings_at_start('Normandy was') == ['N', 'No', 'Nor', 'Norm', 'Norma', 'Norman', 'Normand', 'Normandy', 'Normandy ', 'Normandy w', 'Normandy wa', 'Normandy was']