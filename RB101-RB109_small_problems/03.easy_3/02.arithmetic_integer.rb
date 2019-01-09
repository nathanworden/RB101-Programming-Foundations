# PEDAC

# Problem
# Explicit Requirements:
# - prompts the user for two positive integers
# - prints the result of:
#     - addition
#     - subtraction
#     - product
#     - quotient
#     - remainder
#     - power
# Question: worry about validating input? Answer: no
# Input: integer
# Output: String with interpolation


# Examples / Test Cases
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# Data Structures
# integers, strings

# Algorithm
# - prompt the user to enter two numbers, store these in variables called 'first_num' and 'second_num'
# puts the result of  addition, subtraction, product, quotient, remainder, and power in a interpolated string


# Code
puts "==> Enter the first number:"
first_num = gets.chomp.to_i

puts "==> Enter the second number"
second_num = gets.chomp.to_i

puts "==> #{first_num} + #{second_num} = #{first_num + second_num}"
puts "==> #{first_num} - #{second_num} = #{first_num - second_num}"
puts "==> #{first_num} * #{second_num} = #{first_num * second_num}"
puts "==> #{first_num} / #{second_num} = #{first_num / second_num}"
puts "==> #{first_num} % #{second_num} = #{first_num % second_num}"
puts "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"


# Student Rob Taylor had a good answer to this:
# Note that the inputs are kept as strings so that 'eval' can use them.

# puts '==> Enter the first number:'
# first_number = gets.chomp

# puts '==> Enter the second number:'
# second_number = gets.chomp

# operators = %w(+ - * / % **)

# operators.each do |operator|
#   result = eval(first_number + operator + second_number)
#   puts "==> #{first_number} #{operator} #{second_number} = #{result}"
# end


# ________________________________________________________________
# Arithmetic Integer
# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
# Hide Solution & Discussion
# Solution
# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
# Discussion
# There are some edge cases to consider in this exercise. We have to be careful of not having a second number that is zero. What if we wanted to use floats instead of integers? How does this change this problem?





