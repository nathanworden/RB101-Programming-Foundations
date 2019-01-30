# PEDAC


# Problem
# - Write a method that takes two array arguments
# - Each array contains a list of numbers
# - Method returns a new array that contains the product of each pair of numbers from the arguments
#   that have the same index.
# - Assume that the arguments contain the same number of elements.


# Examples / Test Cases
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# multiply_list([8, 3, 4, 9, 1, 23], [2, 3, 4, 5, 6, 7]) == [16, 9, 16, 45, 6, 161]


# Data Structures
# arrays, integers

# Algorithms
# define a method which takes two arrays as arguments
# initiate a new empty array called 'output'
# initiate a counter variable to 0
# while the counter is less than the size of 'array1':
#     - multiply the elements at index [counter] together and push them to the 'output' array
#     - increment counter
# return 'output'

# Code

def multiply_list(array1, array2)
  output = []
  counter = 0
  while counter < array1.size
    output << array1[counter] * array2[counter]
    counter += 1
  end
  output
end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# p multiply_list([8, 3, 4, 9, 1, 23], [2, 3, 4, 5, 6, 7]) == [16, 9, 16, 45, 6, 161]



# Further Exploration using .zip

def multiply_list(array1, array2)
  array1.zip(array2).map! {|array| array.reduce(:*)}
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([8, 3, 4, 9, 1, 23], [2, 3, 4, 5, 6, 7]) == [16, 9, 16, 45, 6, 161]











