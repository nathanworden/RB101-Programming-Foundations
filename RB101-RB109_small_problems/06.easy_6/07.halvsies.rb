# PEDAC


# Problem
# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of the original
# Array, respectively. If the original array contains an odd number of elements, the middle
# lelent should be placed in the first half Array.

# Examples / Test Cases
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Data Structure
# Array, integers

# Algorithm
# define a method called 'halvsies' which accepts a single array as an argument
# initiate an array called 'first_array'
# initiate an array called 'second_array'
# if the 'array' has an even number of elements:
#     - array.each {|element| (first_array << element) unless array.index(element) > ((array.size / 2) - 1)}
#     - 

# Code