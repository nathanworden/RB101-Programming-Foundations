# PEDAC


# Problem
# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of the original
# Array, respectively. If the original array contains an odd number of elements, the middle
# lelent should be placed in the first half Array.

# Examples / Test Cases
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Data Structure
# Array, integers

# Algorithm
# define a method called 'halvsies' which accepts a single array as an argument
# initiate an array called 'first_array'
# initiate an array called 'second_array'
# if the 'array' has an even number of elements:
#       array.each {|element| (first_array << element) unless array.index(element) > ((array.size / 2) - 1)}
# if the 'array' has an odd number of elements:
#       array.each {|element| (second_array << element) unless array.index(element) < ((array.size / 2) - 1)}
# output = [first_array, second_array]

# Code


def halvsies(array)
  first_array = []
  second_array = []
  counter = 0
  array.size.even? ? index = 1 : index = 0
  while index <= (array.size / 2)
    first_array << array[counter]
    counter += 1
    index += 1
  end
  while counter < (array.size)
    second_array << array[counter]
    counter += 1
  end
  output = [first_array, second_array]
end


# Book Answer

# def halvsies(array)
#   first_half = array.slice(0, (array.size / 2.0).ceil)
#   second_half = array.slice(first_half.size, array.size - first_half.size)
#   [first_half, second_half]
# end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([9, 5, 3, 4, 3, 43, 2, 543, 5, 3, 0]) == [[9, 5, 3, 4, 3, 43], [2, 543, 5, 3, 0]]
p halvsies([2, 543, 5, 3, 0, 6]) == [[2, 543, 5], [3, 0, 6]]




# First try, FAIL
# def halvsies(array)
#   first_array = []
#   second_array = []
#   if array.size.even?
#     array.each {|element| (first_array << element) unless (array.index(element) + 1) > (array.size / 2)}
#     array.each{|element| (second_array << element) unless array.index(element) < (array.size / 2)}
#   elsif array.size.odd?
#     array.each {|element| (first_array << element) unless array.index(element) > (array.size / 2)}
#     array.each{|element| (second_array << element) unless array.index(element) <= (array.size / 2)}
#   end
#   output = [first_array, second_array]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]
# p halvsies([9, 5, 3, 4, 3, 43, 2, 543, 5, 3, 0]) #== [[9, 5, 3, 4, 3, 43], [2, 543, 5, 3, 0]]















