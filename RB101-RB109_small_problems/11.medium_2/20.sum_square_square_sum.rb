# # PEDAC

# Problem
# Input: Integer
# Output: Integer (The difference between the square of the sum of the first n
    # positive integers and the sum of the squares of the first n postitive integers)

# Rules: (squre of sums) - (sum of squares)

# Examples / Test Cases

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150


# sum_square_difference(10) == 2640
#square of sums
    # (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10) ** 2
    # (1**2 + 2**2 + 3**2 + 4**2 + 5**2 + 6**2 + 7**2 + 8**2 + 9**2 + 10**2)

# Data Structures
# Array

# Algorithm
# Obtain the square of sums
    # Create an Array called 'range' from 1 to n: (1..n).to_a and add them together
    # Take the square of 'range' and assign it to a variable 'square of sums'
# Obtain the sum of squares
    # Transform 'range' so that each element is squared
# Subtract sum of squares from square of sums and return the result.


#Code

def sum_square_difference(integer)
  range = (1..integer).to_a
  square_of_sums = range.reduce(:+) ** 2
  sum_of_squares = range.map {|element| element ** 2}
  square_of_sums - sum_of_squares.reduce(:+)
end



p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150











