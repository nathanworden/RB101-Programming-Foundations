# Task
# Given string s, which contains only letters from a to z in lowercase.

# A set of alphabet is given by abcdefghijklmnopqrstuvwxyz.

# 2 sets of alphabets mean 2 or more alphabets.

# Your task is to find the missing letter(s). You may need to output them by the order a-z. It is possible that there is more than one missing letter from more than one set of alphabet.

# If the string contains all of the letters in the alphabet, return an empty string ""

# Example
# For s='abcdefghijklmnopqrstuvwxy'

# The result should be 'z'

# For s='aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy'

# The result should be 'zz'

# For s='abbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxy'

# The result should be 'ayzz'

# For s='codewars'

# The result should be 'bfghijklmnpqtuvxyz'

# Input/Output
# [input] string s

# Given string(s) contains one or more set of alphabets in lowercase.

# [output] a string

# Find the letters contained in each alphabet but not in the string(s). Output them by the order a-z. If missing alphabet is repeated, please repeat them like "bbccdd", not "bcdbcd"

# # Problem
# we get given a string
# we have a complete alphabet
# we want to find the letters in the alphabet that aren't in the string
# if we have more than 1 letter occurance in the passed in string, we have that many alphabets
# the returned string needs to be in alphbatical order
# If we have multiple alphabets we add them together and return the letters together. 

# # Example
# abcdefghijklmnopqrstuvwxyz
# s = 'abcd'
# return = 'efghijklmnopqrstuvwxyz'

# s = 'jemima'
# abcdefghijklmnopqrstuvwxyz
# abcdefghijklmnopqrstuvwxyz
# return = 'abbccddeffgghhijkkllnnooppqqrrssttuuvvwwxxyyzz' in alphabetical order

# # Data
# input: string
# output: string

# # Agorithm
# constant = alphabet as string
# string convert an array
# loop through the array
#   if it's in the alphabet, remove from the alpha
  
# else
#   add another alphabet, 
#   remove it from the alphabet

# sort that and return as string



# Code
ALPHA = 'abcdefghijklmnopqrstuvwxyz'

def missing_letters(str)
  remaining_letters = '' 
  str.chars.each do |c|
    if !remaining_letters.slice(c)
      remaining_letters << ALPHA
    end
    remaining_letters.slice!(c)
  end
  
  remaining_letters.chars.sort.join
end

# Examples
p missing_letters('abcd') == 'efghijklmnopqrstuvwxyz'
p missing_letters('tu') == 'abcdefghijklmnopqrsvwxyz'
p missing_letters('jemima') == 'abbccddeffgghhijkkllnnooppqqrrssttuuvvwwxxyyzz'
# s = 'abcd'
# return = 'efghijklmnopqrstuvwxyz'