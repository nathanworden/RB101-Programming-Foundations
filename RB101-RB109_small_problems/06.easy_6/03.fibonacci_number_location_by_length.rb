#PEDAC


# Problem
# Write a method that calculates and returns the index of the first Fibonacci numbers that 
# has the number of digits specified as an argument. (The first Fibonacci number has index 1)

# Example / Test Cases
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(4) == 17         # 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# Data Structure
# integer, array

# Algorithm
# define a method called 'find_fibonacci_index_by_length' that takes an integer as an argument
# assign the first fibonacci number to a variable called 'fibonacci'
# assign the second fibonacci number (1) to a variable called 'next_fib'
# subtract one from the initial 'integer' argument and then save 10 to the power of this in a variable called 'comparison'
# initiate an array called 'fib_set' with two elements: 'fibonacci' and 'next_fib'
# while fibonacci is less than 'comparison':
#      - fibonacci, next = (fibonacci + next), fibonacci
#      - fib_set << fibonacci
# fib_set.index(fibonacci)

# Code

# def find_fibonacci_index_by_length(integer)
#   fibonacci = 1
#   next_fib = 1
#   comparison = 10 ** (integer - 1)
#   fib_set = [1, 1]
#   while fibonacci < comparison
#     fibonacci, next_fib = (fibonacci + next_fib), fibonacci
#     fib_set << fibonacci
#   end
#   fib_set.index(fibonacci) + 1
# end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(4) == 17         # 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847






def find_fibonacci_index_by_length(number_digits)
  fibonacci = 1
  next_fib = 1
  fib_set = [1, 1]
  while fibonacci.to_s.size < number_digits
    fibonacci, next_fib = (fibonacci + next_fib), fibonacci
    fib_set << fibonacci
  end
  fib_set.index(fibonacci) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(4) == 17         # 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847





