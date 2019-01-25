# PEDAC


# Problem
# Write a method that takes an array of strings, and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

# Examples / Test Casees
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structures
# array, string

# Algorithm
# define a method called 'remove_vowels' which accepts an array of strings as an arguments
# for each string in array:
# - call .delete('aeiou')

# Code

def remove_vowels(array)
  array.each {|string| string.delete!("aeiouAEIOU")}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']