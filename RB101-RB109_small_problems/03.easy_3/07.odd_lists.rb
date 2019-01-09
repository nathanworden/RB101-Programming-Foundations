# PEDAC

# Problem
# Explicit Requirements
# - Return an array that contains every other element of an Array that is passed in as an argument.
# - The values in the returned list should be those values that are in the 1st, 3rd, 5th and so on elements
# input: array
# output: array
# question: input validation if the input isn't an array?
# question: should we return the original array or a new one?

# Example / Test Cases
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Data Structure
# Array

# Algorithm
# write a method that takes in one argument
# this argument should be an array
# initialize a new array called 'new_array'
# call 'each_with_index' on 'array'
# for each element with an even index, push them to 'new_array'
# return 'new_array'

# Code

# def oddities(array)
#   new_array = []
#   array.each_with_index do |item, index|
#     new_array << item if index.even?
#   end
#   new_array
# end


# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []


# def evens(array)
#   new_array = []
#   array.each_with_index do |item, index|
#     new_array << item if index.odd?
#   end
#   new_array
# end

# p evens([2, 3, 4, 5, 6]) #== [3, 5]
# p evens([1, 2, 3, 4, 5, 6]) #== [2, 4, 6]
# p evens(['abc', 'def']) #== ['def']
# p evens([123]) #== []
# p evens([]) #== []


# def evens(array)
#   new_array = []
#   index = 0
#   while index < array.size
#     new_array << array[index]
#     index += 2
#   end
#   new_array
# end


def oddities(array)
  array.select {|item| array.index(item).even?}
end


p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []



#Book Answer

# def oddities(array)
#   new_array = []
#   index = 0
#   while index < array.size
#     new_array << array[index]
#     index += 2
#   end
#   new_array
# end

# p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
# p oddities(['abc', 'def']) #== ['abc']
# p oddities([123]) #== [123]
# p oddities([]) #== []






# Odd Lists
# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# Hide Solution & Discussion
# Solution
# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end
# Discussion
# This problem can be slightly confusing because we want the 1st, 3rd, 5th, and so elements of the array, but these correspond to elements with indexes 0, 2, 4, etc. As long as you keep that in mind, there are many different ways to solve this problem correctly.

# Our solution takes the most basic approach; rather than using any of a number of different Array methods, we use a simple while loop, incrementing our index by 2 with each iteration. For each iteration, we add the element value to our result Array, odd_elements.

# Further Exploration
# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

# Try to solve this exercise in at least 2 additional ways.