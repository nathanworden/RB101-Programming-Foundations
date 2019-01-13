# PEDAC

# Problem
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and another number
# then computes the sum of those multiples.
# For example: input of 20 will result in an output of 98. (3 + 5+ 6 + 9+ 10 + 12 + 15 + 18 + 20)
# Exlplicit Assumption: numer passed in is an integer greater than 1

# Example / Test Cases
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
# multisum(20) == 98

# Data Structure
# - array
# - integer

# Algorithms
# call .select from a range of 1 to the input number
# select each number that is a multple of 3 or 5
# call reduce(:+) to add all the numbers up

# Code

def multisum(num)
  array = (1..num).select {|i| i % 3 == 0 || i % 5 == 0}
  array.reduce(:+)
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168
p multisum(20) #== 98