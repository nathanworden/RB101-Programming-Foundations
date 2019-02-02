# PEDAC


# Problem
# Write a method that takes a number as an argument
# If the argument is positive, return the negative of that number
# IF the number is 0 or negative, return the original number

# Example / Test Cases
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby
# negative(45678765) == -45678765
# negative(567.3) == -567.3

# Data Structures
# integer

# Algorithms
# define a method which takes a 'number' as an argument
# If 'number' is greater than 0, subtract 2 times the 'number' from 'number'

# Code

# def negative(number)
#   return number - (number * 2) if number > 0
#   number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby
# p negative(45678765) == -45678765
# p negative(567.3) == -567.3


# Book Answer

# def negative(number)
#   number > 0 ? -number : number
# end


def negative(number)
  -number.abs
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
p negative(45678765) == -45678765
p negative(567.3) == -567.3
















