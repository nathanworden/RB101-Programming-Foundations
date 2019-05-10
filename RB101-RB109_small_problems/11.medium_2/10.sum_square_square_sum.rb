# PEDAC
# Input: Integer
# Output: The difference between the square of the sums of n positive integers
#          and the sum of the squares of the n postive integers


# Examples / Test Cases
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Data Structures
# Array

# Algorithm
# From 1 to input integer inclusive create an array, square that array
# initialize a new variable to point to the square of that array
# initialize a new variable to point to map being called on the array
    # transform each element to be the square of that element. Sum this array
# Subtract the first array from the second


# Code


def sum_square_difference(num)
  sum_of_squares = (1..num).to_a.map {|num| num ** 2}.reduce(:+)
  square_of_sums = (1..num).reduce(:+) ** 2
  square_of_sums - sum_of_squares
end


p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150