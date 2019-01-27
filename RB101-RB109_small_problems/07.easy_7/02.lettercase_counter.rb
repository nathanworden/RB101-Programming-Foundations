# PEDAC


# Problem
# Write a method that takes a string, and then returns a hash that contains 3 entries: one
# represents the number of characters in the string that are lowercase letters, one the 
# number of characters that are uppercase letters, and one the number of characters that
# are neither.


# Exampels / Test Cases
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Strcutres
# strings, hashes, array

# Algorithm
# define a method called letter_case_count which accepts a 'string' as an argument
#  - Turn the string into an array (.chars)
#  - call .select on string and select just the elements which are downcase letters
#  - call .select on string and sllect just the elements which are uppercase letters
#  - call .select on string and select just the elements which are neither uppercase or lower case
#  - save these in their ownn array
#  - hash[:lowercase] = string.chars.select {just the lements which are downcase}.size

# Code

def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.chars.select {|element| element.match(/[a-z]/)}.size
  hash[:uppercase] = string.chars.select {|element| element.match(/[A-Z]/)}.size
  hash[:neither] = string.chars.select {|element| element.match(/[^a-z]/i)}.size
  hash
end




p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }