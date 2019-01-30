# PEDAC


# Problem
# Write a method that takes two Array arguments
# Each array contains a list of numers
# Returns a new array that contains the product of every pair of numbers that can be formed between the elements of the two arrays
# Sort the results by increasing value


# Examples / Test Cases
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# multiply_all_pairs([4, 23, 5], [2, 6, 7, 4, 9]) == [8, 10, 16, 20, 24, 28, 30, 35, 36, 45, 46, 92, 138, 161, 207]

# Data Structures
# arrays, integers

# Algorithm
# define a method which accepts two arrays as arguments
# initiate an empty 'products' array
# for each element in the first array, multiply the element by each element in the second array 
# - push the product to the 'products' array
# sort the 'products' array

# Code

def multiply_all_pairs(array_a, array_b)
  products = []
  array_a.each do |element_a|
    array_b.each do |element_b|
      products << element_a * element_b
    end
  end
  products.sort
end




p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([4, 23, 5], [2, 6, 7, 4, 9]) == [8, 10, 16, 20, 24, 28, 30, 35, 36, 45, 46, 92, 138, 161, 207]




# Book Answer
# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
# end