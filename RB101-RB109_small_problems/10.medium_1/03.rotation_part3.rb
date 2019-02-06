# PEDAC


# Problem
# Write a method that takes an integer as argument
# Returns the maximum rotation of that argument

# Examples / Test Cases
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# Data Structures
# integers, arrays 


# Algorithm
# define a method called 'max_rotation' which accepts an integer as an argument
# initiate a counter variable to the size of the integer
# while the counter is greater than 0:
# run 'rotate_rightmost_digits' passing in the the integer and the counter variable as arguments
# update the value of counter by subtracting 1
# you may need to update the value of integer to be the returned value of 'rotate_rightmost_digits'
# return integer


# Code



# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

def max_rotation(integer)
  counter = integer.to_s.length
  while counter > 0
    integer = rotate_rightmost_digits(integer, counter)
    counter -= 1
  end
  integer
end


# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845



# Further Exploration

# def max_rotation(number)
#   all_digits = number.to_s.chars

#   0.upto(all_digits.count - 1) do |x|
#     all_digits << all_digits.delete_at(x)
#   end

#   all_digits.join.to_i
# end



# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845










