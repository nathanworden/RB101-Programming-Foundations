# PEDAC


# Problem
# Write a method that takes an Array of integers as input, multiplies all the numbers
# together, divides the result by the number of entries in the Array, and then prints
# the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples / Test Cases
# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# Data Structure
# array, integer

# Algorithm
# define a method named 'show_multiplicative_average' which takes an 'array' as an argument
# use .reduce(:*) on the array and save the result in a variable called 'multipled'
# Divide 'multipled' by array.size and save this in a variable called 'average'
# use sprintf to format the output to 3 decimal places.

# Code

def show_multiplicative_average(array)
  multiplied = array.reduce(:*)
  average = multiplied / array.size.to_f
  average.round(3)
  #sprintf('%.3f', average )
end


p show_multiplicative_average([3, 5]) == 7.500
p show_multiplicative_average([6]) == 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667


# Book Answer

# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts format('%.3f', average)
# end