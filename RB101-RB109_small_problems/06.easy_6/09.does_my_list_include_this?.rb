# PEDAC


# Problem
# Write a method named 'include?' that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

# Examples / Test Cases
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# Data Structure
# array

# Algorithm
# define a method called 'include?' which takes two arguments, an array and a test value
# look through each item in the input array. If it is equal to the test value, return true

# Code

def include?(array, test_value)
  array.each do |element|
    return true if (element ==  test_value)
  end
  false
end


#Book answer

# def include?(array, test_value)
#   !!array.find_index(test_value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false