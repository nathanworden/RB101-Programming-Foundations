# PEDAC


# Problem
# Write a method that takes a non-empty string argument
# returns the middle character or characters of the argument
# If the argument has odd length, return exactly one character.
# If the argument has 

# Examples / Test Cases
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# Data Structures
# strings, possibly arrays

# Algorithm
# define a method called 'center_of' which accepts a 'string' as an argument
# if the size of the string is odd:
#     Divide the string by 2 and return the character at that index
# if the size of the string is even:
#     Divide the string by 2 and return the character at that index and the character directly after


# Code

def center_of(string)
  if string.size.odd?
    return string[(string.size)/2]
  else
    string[(string.size)/2 - 1] + string[((string.size)/2)]
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'