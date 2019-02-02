# PEDAC


# Problem
# A double number is a number with an even number of didgits whose left-side digits are 
# exactly the same as its right-side digits.
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
# Write a method thawt returns 2 times the number provided as an argument, unless the 
# argument is a double number; double numbers should be returned as-is.

# Examples / Test Cases
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# Data Structures
# integers, array

# Algorithm
# define a method called 'twice' which accepts an 'integer' as an argument
# second_half = []
# from 1 to the number of digits in integer divided by 2 (integer.digits.size / 2)
# first_half, digit = integer.divmod(10)
# second_half.unshift(digit)
# if first_half is equal to second_half then leave integer alone
# if first_half is not equal to second_half then integer *= 2

# Code

def twice(integer)
  second_half = []
  first_half = integer
  ((integer.digits.size) / 2).times do 
    first_half, digit = first_half.divmod(10)
    second_half.unshift(digit)
  end
  integer *= 2 if first_half != second_half.join.to_i
  integer
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10





# Book Answer

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center -1]
  right_side = string_numner[center..-1]
  return number if left_side == right_side
  return number * 2
end












