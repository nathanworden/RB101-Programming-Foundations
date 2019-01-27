# PEDAC

# Problem
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains
# all elements from both Array arguments, with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Examples / Test Cases
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# Data Structure
# array, strings

# Algorithms
# define a method called interleave which accepts two arrays as arguments, 'array1' and 'array2'
# initiate a counter to '1'
# initiate 'index' to 0
# initiate a loop
# call .insert(counter, index) on 'array1' 
# increment counter and index
# break if index is greater than array2.size

# Code

def interleave(array1, array2)
  counter = 1
  index = 0
  loop do
    array1.insert(counter, array2[index])
    counter += 2
    index += 1
    break if index >= array2.size
  end
  array1
end


# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']