# Rotation (Part 2)
# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# PEDAC
# Problem
# input: (2): integer, and "n" which is another integer
# output: integer with "n" digits rotated

# Examples / Test Cases
# See above

# Algorithm
# Convert the first input integer to a string and then an array
# obtain a 'start_index' variable by taking the length of the first integer and subtracting 'n'
# create a sub_array by slicing the array from the 'start_index' to end
# feed the 'sub_array' into the 'rotate_array' method
    # Save the reult as 'sub_array_rotated'
# Piece the array back together
    # Take the beginning of the input array, up to the 'start_index' non-inclusive
    # combine it with the 'sub_array_rotated'

# Code
def rotate_rightmost_digits(array, n)
  input_array = array.to_s.chars
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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(8976, 4) == 9768


# Book answer is brilliant
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end












