# PEDAC


# Problem
# Write a method that can rotate the last 'n' digits of a number.
# Rotating just 1 digit results in the original number being returned
# You may use the rotate_array method from the previous exercise if you want
# You may assume that n is always a positive integer.

# Examples / Test Cases
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Data Structure
# integers, array, string

# Algorithm
# define a method called 'rotate_rightmost_digits' which accepts two integers as arguments
# integer2 = 10 to the power of integer_2
# Collect in an 'array' 'integer_1' divided by 'integer_2' as well as 'integer_1' modulo 'integer_2'
# integer1 = integer1 * 10 to the power of integer_2
# turn the second element of the array into a string
# Turn the string into an array of its characters
# swap the first character for the last character
# Join the array back into a string
# Turn the string into an integer
# Add the integer to integer_1

# Code

def rotate_rightmost_digits(integer1, integer2)
  place = 10 ** integer2
  array = integer1.divmod(place)
  right_digits = array[1].to_s.chars
  rotated = right_digits[1..-1] + [right_digits[0]]
  left_digits = array[0] * place
  left_digits + rotated.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p 



# Book Answer

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end








