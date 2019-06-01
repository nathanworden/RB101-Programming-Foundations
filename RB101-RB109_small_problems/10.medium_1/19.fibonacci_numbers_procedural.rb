# PEDAC
# Write a program that computes the nth fibonacci number (without recursion)
# input: integer
# oupput: integer (fibonacci number)


# Examples / Test Cases
# fibonacci(12) == 144
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# Data Structures
# Array

# Algorithm
# Initiate an array called 'fibs' to [1, 1]
# Input Number Times - 2 do:
    # fibs << fibs[num] + fib[nums + 1]
# Return fibs.last


def fibonacci(integer)
  fibs = [1, 1]
  (integer - 2).times do |num|
    fibs << fibs[num] + fibs[num + 1]
  end
  fibs.last
end


p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501