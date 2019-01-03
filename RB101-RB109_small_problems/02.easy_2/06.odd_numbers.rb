# PEDAC

# Problem
# - Print all odd numbers from 1 to 99 inclusive. 
# Explicit Requirements: 
# - All numbers should be printed on separate lines

# Examples / Test Cases
# .... Yeah... don't need to print all of those just for the example.

# Data Structures
# Integers

# Algorithm
#  - use range and 'to_a' to create an array of integers from 1 to 99
#       - save this range in a variable called 'numbers'
#  - use '.each' to puts the number if the number is odd.

# Code

# My Answer: 

# numbers = (1..99).to_a

# numbers.each do |i|
#   puts i if i.odd?
# end




# Book Answer

# value = 1

# while value <= 99
#   puts value
#   value += 2
# end

# Another Answer:

1.upto(99) do |i| 
  puts i if i.odd?
end






# Odd Numbers
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Hide Solution & Discussion
# Solution
# value = 1
# while value <= 99
#   puts value
#   value += 2
# end
# Discussion
# There are a variety of different ways to approach this problem, so don't be worried if your solution is significantly different.

# Our solution simply takes a very basic approach of counting up from 1 to 99 by 2s, and printing each value.

# Further Exploration
# Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?


