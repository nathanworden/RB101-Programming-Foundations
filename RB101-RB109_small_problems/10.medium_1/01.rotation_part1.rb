# PEDAC


# Problem
# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# Examples / Test Cases
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
# rotate_array(['apple', 6292, 'banana', 98, 'tritip', '1']) == [6292, 'banana', 98, 'tritip', '1', 'apple']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# Data Structures
# array, integer, string

# Algorithm
# define a method called 'rotate_array' which accepts an 'array' as an argument
# initiate a new empty array called 'result'
# From 1 up to the size of 'array' minus one, do the following:
# Take the |index| numbered element of 'array' and push it into result
# After you have done this, then push the first element of 'array' to result
# return result

# Code

def rotate_array(array)
  result = []
  1.upto(array.size - 1) {|index| result << array[index]}
  result << array[0]
  result
end


# mutation method
# def rotate_array(arr)
#   first_el = arr.shift
#   arr << first_el
#   arr
# end



p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array(['apple', 6292, 'banana', 98, 'tritip', '1']) == [6292, 'banana', 98, 'tritip', '1', 'apple']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   #== true
p x == [1, 2, 3, 4]     # => true


# Book Answer
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# Further Exploration
# Write a moethod that rotates a string instead of an array.
# Do the same for integers.
# You may use 'rotate_array' from inside your new method


# def rotate_string(string)
#   array = string.chars
#   result = array[1..-1] + [array[0]]
#   result.join
# end

# p rotate_string('normandyostritch') == 'ormandyostritchn'
# p rotate_string('abc') == 'bca'
# p rotate_string('a') == 'a'
# p rotate_string('apple dog bark wag') == 'pple dog bark waga'

# x = 'abc'
# p rotate_string(x) == 'bca'  # => true
# p x == 'abc'     # => true

# # Further Further Exploration

# def rotate_integer(integer)
#   array = integer.to_s.chars
#   result = array[1..-1] + [array[0]]
#   result.join.to_i
# end

# p rotate_integer(567756) == 677565
# p rotate_integer(123) == 231
# p rotate_integer(1) == 1
# p rotate_integer(475_829_4812) == 758_294_8124

# x = 123
# p rotate_integer(x) == 231  # => true
# p x == 123     # => true

























