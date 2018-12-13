# Understand the Problem
# Examples / Test Cases
# Data Structure
# Algorithm
# Abstraction


# Understand the Problem
# Write a method
# - one argument: a positive integer
# - output: list of the digits in the number

# Examples / Test Cases
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true
# puts digit_list(000) == [0]                   # => true
# puts digit_list(544.35) == [5, 4, 4, ., 3, 5] # => true

# Algorithm
#  1) initialize an empty array
#  2) loop through the digits in the input integer
#       - each iteration take the last digit of the input integer
#       - put it in the array
#  3) break the loop when there aren't any more digits in the input integer
#  3) return the array

# Brute Force:

# def digit_list(number)
#   arr = []
#   loop do
#     number, remainder = number.divmod(10)
#     arr.unshift(remainder)
#     break if number == 0
#   end
#   arr
# end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# &:to_i is shorthand for:
# something.map { |char| char.to_i }

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(000) == [0]                   # => true

# Figure this out...
# puts digit_list(544.35) == [5, 4, 4, ., 3, 5] # => true