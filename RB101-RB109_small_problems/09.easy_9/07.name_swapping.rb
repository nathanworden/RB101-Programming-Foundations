# PEDAC


# Problem
# Write a method that takes a first name, a space, and a last name passed as a stingle String
# Returns a string that contains the last name, a comma, a space, and the first name.

# Examples/ Test Cases
# swap_name('Joe Roberts') == 'Roberts, Joe'

# Data Structures
# string, array

# Algorithm
# define a method called 'swap_name' which accepts a 'string' as an argument
# assign first, last to string.split 
# return an interpolated string in the form: last, first

# Code

def swap_name(string)
  first, last = string.split
  "#{last}, #{first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'


# def swap_name(name)
#   name.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'