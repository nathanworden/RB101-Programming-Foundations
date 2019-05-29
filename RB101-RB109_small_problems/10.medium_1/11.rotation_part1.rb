# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# PEDAC
# Problem
# input: An Array
# output: A new array with the beginning element of the input array at the 
    # end of the array, and every other element shifted one index space to 
    # the left


# Examples / Test Cases
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
# rotate_array([3, 4, 5, "a", "b", "c"]) == [4, 5, "a", "b", "c", 3]

# Data Structures
# Array

# Algorithm
# Define a method called 'rotate_array' which accepts an array as an input
# Initiate a new empty array called 'new_array'
# Initiate a index counter to 1
# Loop through the input array, starting with the element at index 1
    # push each element to the 'new array'
    # increment the 'index_counter' by one
    # break when index_counter >= input_array.size - 1
# push the first element of input_array to the end of 'new_array'
# return 'new_array'

# Code

# My Answer 

def rotate_array(input_array)
  return input_array if input_array.size <= 1
  new_array = []
  index_counter = 1
  loop do
    new_array << input_array[index_counter]
    index_counter += 1
    break if index_counter >= input_array.size
  end
  new_array << input_array[0]
  new_array
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array([3, 4, 5, "a", "b", "c"]) == [4, 5, "a", "b", "c", 3]

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


# Book Answer

# def rotate_array(input_array)
#   input_array[1..-1] + [input_array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']
# p rotate_array([3, 4, 5, "a", "b", "c"]) == [4, 5, "a", "b", "c", 3]















