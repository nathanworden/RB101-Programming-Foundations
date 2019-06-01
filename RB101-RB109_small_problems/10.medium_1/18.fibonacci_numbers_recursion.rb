# 1, 1, 2, 3, 5, 8, 13, 21

# PEDAC

# Problem
# Write a recursive method that computes the nth Fibonacci number, where nth is
# an argument to the method

# Examples:
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(6) == 8
# fibonacci(12) == 144
# fibonacci(20) == 6765

# Data Structures

# Algorithm


def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num -2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(6) == 8
p fibonacci(12) == 144
p fibonacci(20) == 6765

