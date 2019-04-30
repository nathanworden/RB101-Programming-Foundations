# PEDAC

# Problem
# Fibonacci Series: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
# In Mathmatical terms:
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2


# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end


# sum(4)                          |  10
# 4 + sum(4 - 1)                  |  4 + 6 = 10
#     3 + sum(3 - 1)              |  3 + 3 = 6
#         2 + sum(2 - 1)          |  2 + 1 = 3
#             return 1 if n == 1  |

# Recursive methods have three primary qualities:
# 1. They call themselves at least once
# 2. THey have a condition that stops the recursion (n == 1 above)
# 3. They use the result returned by themselves


# Write a recursive method that computs the nth Fibonacci number
# where nth is an argument to the method

# examples / Test cases
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765


# Data Structions
# integers


# Algorithm
# define a method called 'fibonacci' which accepts an integer as
# a parameter
# If the integer is less than 2, return the integer
# If the intger is equal to or more than 2:
# Add together the last two numbers in the fibonacci list:
# To get these last two numbers, just call fibonacci again
# with the parameter being the current integer minus one,
# And add that to calling fibonacci with the current integer 
# minus 2


# Code

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765











