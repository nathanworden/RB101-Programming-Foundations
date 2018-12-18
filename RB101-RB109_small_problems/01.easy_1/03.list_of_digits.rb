# List of Digits
# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true


# Understabd the Problem
# Write a method
#  - input: 
#     - one positive integer
#  - output: 
#     - array of integers.
#     - list of digits in the number

# Examples
# Edge Cases:
# puts digit_list(-5) => "That is not a positive ingeger"
# puts digit_list(0) => [0]

# My Answer:

def digit_list(num)
  arr = num.to_s.split(//)
  arr.map! { |str| str.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(0) == [0]                     # => true


# Book Answer:

# Algorithm:
# Chop off digits from the end of the number one by one
# Add each number to an array
# return the array.

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end