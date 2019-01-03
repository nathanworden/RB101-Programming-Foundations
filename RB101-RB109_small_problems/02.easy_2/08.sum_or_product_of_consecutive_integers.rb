# PEDAC

# Problem
#  - Write a program that asks the user to enter an integer greater than 0
#  - Then asks if the user wants to determine the sum or the product of all numbers between 1 and the entered integer
#  - Input: integer
#  - Output: string (with interpolation)
# Explicit Requirements: perform addition or multiplication based on user input
# Implicit Requirements: Collect all the numbers between 1 and entered integer
# Questions: 
#     - What to do with negative or float input?
#     - 


# Examples / Test Cases
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Data Structure
# - strings
# - numbers

# Algorithm
# Prompt user for an integer greater than 0
#     - store integer in variable called 'integer'
#     - convert using to_i, because 'gets' will give you a string
# Prompt user to enter 's' or 'p' to compute the sum or product
#     - store this in a variable called 'choice'
# Initialize a variable called 'num_set' as a range between 1 and 'integer' inclusive
#     - call to_a on 'num_set' so you have an array
# Initialize a vairable called 'counter' to 0
# Use a case statement for 'choice'
# When 'choice' is 's':
#     - use a loop to add all the numbers of 'num_set'
#          - increment counter
#          - break the loop once counter reaches the size of 'num_set'
#          - save the sum of 'num_set' in a variable called 'sum'
#     - puts 'The sum of the integers between 1 and #{integer} is #{sum}
# When 'choice' is 'p':
#     - use another loop to multiply all the numbers up and return the product of 'num_set'
#     - save the product of 'num_set' in a variable called 'product'
#     - puts 'The product of the integers between 1 and #{integer} is #{product}
# If 'choice' is 'p':

# Code



# puts "Please enter an integer greater than 0:"
# integer = gets.to_i

# puts "Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# num_set = (1..integer).to_a
# counter = 0
# sum = 0
# product = 1

# case choice
# when 's'
#   loop do
#     sum += num_set[counter]
#     counter += 1
#     break if counter >= num_set.size
#   end
#   puts "The sum of the integers between 1 and #{integer} is #{sum}."
# when 'p'
#   loop do
#     product *= num_set[counter]
#     counter += 1
#     break if counter >= num_set.size
#   end
#     puts "The product of integers between 1 and #{integer} is #{product}."
# end



# If you use 'reduce' instead of a loop:

puts "Please enter an integer greater than 0:"
integer = gets.to_i
choice = ''

puts "Enter 's' to compute the sum, 'p' to compute the product."
loop do
  choice = gets.chomp.downcase
  break if choice == 's' || choice == 'p'
  puts "Your input wasn't 's' or 'p', please try again, silly"
end

case choice
when 's'
  sum = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
when 'p'
  product = (1..integer).reduce(:*)
    puts "The product of integers between 1 and #{integer} is #{product}."
end






# Sum or Product of Consecutive Integers
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
# Hide Solution & Discussion
# Solution
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end
# Discussion
# For brevity and simplicity, our solution doesn't try too hard to validate the user input. Your own solution probably should try to validate input and issue error messages as needed.

# This solution first obtains the integer and operation to be performed from the user, then we perform the requested operation using one of two methods: compute_sum adds the numbers together, while compute_product multiplies them. Once we have the result, we just print it.

# Further Exploration
# The compute_sum and compute_product methods are simple and should be familiar. A more rubyish way of computing sums and products is with the Enumerable#inject method. #inject is a very useful method, but if you've never used it before, it can be difficult to understand.

# Take some time to read the documentation for #inject. (Note that all Enumerable methods can be used on Array.) Try to explain how it works to yourself.

# Try to use #inject in your solution to this problem.































