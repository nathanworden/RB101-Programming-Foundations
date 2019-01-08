# PEDAC

# Problem
# Explicit Requirements:
# - Write a program that solicits 6 numbers from the user, then prings a message that describes whether or not the 6th number appears amongst the first 5 numbers
# Implicit Requirements:
# - Store the inputs in an array
# Inputs: 6 integers
# Output: String with interpolation for an array of integers
# Question: What do about input validation: floats? strings? nil? empty?


# Examples / Test Cases
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# Data Structure
# Array, string, and integer


# Algorithm
# Prompt the user for 6 numbers
#      - use a loop:
#          - Initialize a counter at 0
#          - break if counter = 6
#          - counter += 1
# push the first five numbers to an array called 'user_input'
# the sixth number store in a variable called 'last'
# if 'last' is included in the 'user_input' array, print:
#   - "The number #{last} appears in #{user_input}"
# if 'last' is not included in the 'user_input' array, print:
#   - "The number #{last} does not apepar in #{user_input}"

# Code

def prompt(i)
  puts " ==> Enter the #{i} number"
end

iteration = %w(1st 2nd 3rd 4th 5th last)
user_input = []

counter = 0

loop do
  prompt(iteration[counter])
  user_input << gets.chomp.to_i
  counter += 1
  break if counter == 5
end


prompt(iteration[5])
last = gets.chomp.to_i

if user_input.include?(last)
  puts "The number #{last} appears in #{user_input}"
else
  puts "The number #{last} does not appear in #{user_input}"
end


# User Holden Hinkle had a good answer to this:

# numbers = []
# %w(1st 2nd 3rd 4th 5th last).each do |label|
#   puts "Enter the #{label} number:"
#   numbers << gets.chomp.to_i
# end

# search_term = numbers.pop

# if numbers.include?(search_term)
#   puts "The number #{search_term} appears in #{numbers}."
# else
#   puts "The number #{search_term} does not appear in #{numbers}."
# end



















# Searching 101
# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
# Hide Solution & Discussion
# Solution
# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end













