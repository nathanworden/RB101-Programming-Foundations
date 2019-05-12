# PEDAC

# Problem
# Write  a method that displays an 8-pointed star in an nxn grid
# where n is an odd integer that is supplied as an argument to 
# the method.
# Smallest star you need to handle is 7x7

# Examples / Test Cases
# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *


# Data Structures
# array, strings

# Algorithm
# First line has a star in the first, middle, and last spots
# Middle can be found by divinding the input integer by 2 and adding 1
# Do this (integer / 2 - 2 ) times:
# Front star = 0
# Back star = - 1
# Create an array with a star at Front start + 1 index
# Back star - 1 index
# middle star
# increment front star up by one and back star index down by 1
# Add in an array of all stars
# Reverse the first half of arrays and add them to the end of the larger array


# Code

# def star(integer)
#   eight_point = []
#   front_star = 0
#   back_star = -1

#   (integer/2).times do 
#     current_row = Array.new(integer, " ")
#     current_row[front_star], current_row[back_star], current_row[integer/2] = "*", "*", "*"
#     eight_point << current_row
#     front_star += 1
#     back_star -= 1
#   end

#   back_half = eight_point.clone.reverse
#   eight_point << Array.new(integer, "*")
#   back_half.each {|array| eight_point << array}

#   eight_point.each do |line| 
#       line.each {|char| print char}
#       puts
#     end
# end

# star(9)



# Book Answer

def print_row(grid_size, distance_from_center)

end



















