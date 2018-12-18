# Understand the Problem

# Write a method with one argument 
# input: an array containing integers
# output: the average of all numbers in the array
# The array will never be empty and the numbers will always be positive integers

# Examples / Test Cases:
# puts average([47, 78, 9876, 2, 3, 5, 7]) == 1431
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data structure
# Arrays

# Algorithm
# Divide the sum of all the elements in the array by the length of the array.

# MY ANSWER

# def average(array)
#   array.sum / array.length
# end


# puts average([47, 78, 9876, 2, 3, 5, 7]) == 1431
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# puts average([1, 2, 3]) == 2


# BOOK ANSWER

# Solution
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end
# Discussion
# Two things need to be done to find the average. First, add every number together. Second, divide the sum by the number of elements. We accomplish the first part by using Enumerable#reduce(also known as #inject), which combines all elements of the given array by applying a binary operation. This operation is specified by a block or symbol. We used a block in our solution, but we could have just as easily used a symbol, like this:

# numbers.reduce(:+)
# Once we have the sum, all that's left is to divide it by the number of elements. To do that, we use #count to count the number of elements in numbers. Then, we divide sum by the number of elements and return the quotient.

# Further Exploration
# Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. Can you change the return value of average from an Integer to a Float?


# def average(array)
#   array.sum.to_f / array.length
# end

# More Exploration with .reduce

# def average(array)
#   array.reduce(:+) / array.size
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# ----------------------------------------------------------------
# More Exploration with .reduce

def average(numbers)
  output = numbers.reduce do |accumulator, num|
                    accumulator + num
                  end
  output / numbers.size
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

