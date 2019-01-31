# PEDAC


# Problem
# Write a method that returns all substrings of a string.
# The returned list should be ordered by where in the string the substring begins. 
# All substrings that start at position 0 come first, then all substrings at position 1, etc.
# The substrings at a given position should be returned in order from shortest to longest.

# Examples / Test Cases
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# Data Structures
# string, array

# Algorithm
# define a method called 'substrings' which accepts a 'string' as an argument.
# initiate an empty array called 'all_substrings'
# from 0 to the length of the string (0.upto(string.length)) using an intermediate variable 'index':
#     - call 'substrings_at_start(string.slice(index, string.length))
#     - push the result of this to all_substrings
# flatten all_substrings and return

# Code
def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |index|
    substrings << string.slice(0, index)
  end
  substrings
end


def substrings(string)
  all_substrings = []
  0.upto(string.length) do |index|
    all_substrings << substrings_at_start(string.slice(index, string.length))
  end
  all_substrings.flatten
end



p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]




# Book Answer:

# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end















