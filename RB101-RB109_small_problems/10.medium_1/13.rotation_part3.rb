# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# PEDAC

# Problem
# Input: integer
# Oupput: intger (the maximum rotation of the input arument)
# What is maximum rotation?
    # Rotate
    # Fix first digit
    # Rotate the rest
    # Fix first two digits
    # Rotate the rest
    # Continue until full number has been rotated

# Examples / Test Cases
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845
# max_rotation(786) = 876

# Data Strucutres
# Arrays

# Algorithm
# initate an 'array' which is the input integar array 
    #turned into a string and then an array
# Initiate a variable called 'n' which is the number of times the array 
    # is long
# The number of times the array is long - 1:
    # update the value of the 'array' to be the return value of 
    # rotate_rightmost_digits, where rotate_rightmost_digits is 
    # 'array' and 'n'

# Code

require "pry"

def max_rotation(integer)
  n = integer.to_s.chars.size
  n.downto(1) do |num|
    integer = rotate_rightmost_digits(integer, num)
  end
  integer
end


def rotate_rightmost_digits(integer, n)
  input_array = integer.to_s.chars
  start_index = input_array.length - n
  sub_array = input_array[start_index..-1]
  sub_array_rotated = rotate_array(sub_array)
  output = input_array[0...start_index] + sub_array_rotated
  output.join("").to_i
end


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


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(786) == 876



