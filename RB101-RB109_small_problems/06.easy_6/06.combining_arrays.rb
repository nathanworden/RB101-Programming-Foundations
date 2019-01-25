# PEDAC


# Problem
# Write a method that takes two arrays as arguments, and returns an Array that contains
# all of the values from the argument Arrays. There should be no duplication of values
# in the returned Array, even if there are duplicates in the original Arrays
# Questions:
# - Should we return a new array or the same array?
# - Should the output be ordered by the size of number or the postion in the original array?


# Examples / Test Cases
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Data Structures
# arrays

# Algorithm
# define a method called 'merge' that takes two arrays as arguments
# call .each on the second one and add each element to the first array
# call .uniq on the array
# call .sort on the array

# Code

def merge(array1, array2)
  array2.each {|element| array1 << element}
  array1.uniq.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]



# Book Answer

# def merge(array1, array2)
#   array1 | array2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]