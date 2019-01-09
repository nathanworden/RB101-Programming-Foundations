# PEDAC

# Problem
# Explicit Requirements:
# - Write a method that takes two strings as arguments.
# - Determine the longest of the two strings
# - return the result of concatenating the shorter string, the longer string, and the shorter string once again.
# - You may assume that strings are of different leangths
# Question: should we care about input validation?


# Examples / Test Cases
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Data Structure
# Strings

# Algorithm
# define a function with two arguments, 'first' and 'second'
# if the length of 'first' is shorter than the length of 'second'
#     - return 'first' + 'second' + 'first'
# else
#     - return 'second' + 'first' + 'second'
# end

# Code

# def short_long_short(first, second)
#   if first.size < second.size
#     first + second + first
#   else
#     second + first + second
#   end
# end


# def short_long_short(first, second)
#   first.size < second.size ? first + second + first : second + first + second
# end


def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end


p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"




# Short Long Short
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
# Hide Solution & Discussion
# Solution
# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end
# Discussion
# There are many ways to shorten the logic of the method. For example, we could use a ternary operator instead of the if/else/end construct. Further, we could use string interpolation rather than concatenation. But those are minor improvements and are not necessary. Clarity is more important than density.

# There are also other algorithms to use other than the if/else logic. For example, we could put string1 and string2 in an array, and then sort the array according to the element's length. Then just concatenate the elements in the array, knowing that the shortest one is first.

# Example:

# def short_long_short(string1, string2)
#   arr = [string1, string2].sort_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end
# This method is perhaps too clever for its own good and makes it hard to understand what this method is trying to do. Though a little longer, the if/else/end solution from earlier is much clearer.

  