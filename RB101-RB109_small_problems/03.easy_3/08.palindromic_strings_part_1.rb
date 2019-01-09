# PEDAC


# Problem
# Explicit Requirements:
# - Write a method that returns true if the string passed as an argument is a palindrome, false otherwise
# - A palindrome reads the same forward and backward
# - Case matters as does punctuation and spaces
# input: string
# output: boolean 


# Example / Test Cases
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Data Structures
# string

# Algorithm
# test if the string is equivelant to the string.reverse?

# Code

# def palindrome?(string)
#   string == string.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true




def palindrome(array)
  array == array.reverse
end

p palindrome([2, 5, 7, 9, 2, 4, 6, 4, 2, 9, 7, 5, 2]) 
p palindrome(['cat', 'dog', 'dog', 'cat']) 
p palindrome(['barf', 3, '89', 'cat']) 
p palindrome('yormandydnamroy')


