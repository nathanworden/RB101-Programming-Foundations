#PEDAC

# Problem
# Write a method that can calculate the nth fibonacci number


# Examples / Test cases
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# Data Structures
# integers

#Algorithm
# define a method called fibonacci which accepts one integer as a parameter
# Initialize a local variable called 'curent' to 1
# Initialize an array to contain two 1s [1 , 1]
# Do this 'integer' times:
# array << array[-1] + array[-2]
# return array[-1]


# Code

def fibonacci(num)
  fib = [1, 1]
  (num - 2).times do |_|
    fib << fib[-1] + fib[-2]
  end
  fib[-1]
end


# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501