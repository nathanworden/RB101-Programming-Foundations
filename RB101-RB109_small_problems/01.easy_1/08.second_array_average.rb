# Write a method that takes one argument, an array containing integers,
#  and returns the average of all numbers in the array. The array will 
#  never be empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40


#PEDAc
# Problem
# Input: an array of positive integers
# Output: a single integer, (the average of all numbers in the input array)

# Examples / Test Cases

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# puts average([40, 40]) == 40

# Data Structures
# Array

# Algorithm
# define a method called 'average' which accepts an array as an input
# Sum all the integer in the array and then divide that number by
    # the number of elements in the array


# Code

def average(array)
  array.reduce(:+) / array.size.to_f
end

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
puts average([40, 40]) #== 40