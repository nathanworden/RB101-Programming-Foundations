# PEDAC


# Problem
# Write a method that returns the next to last word in the string passed to it as an argument
# Words are any sequence of non-blank characters
# You may assume that the input String will always contain at least two words

# Examples / Test Cases
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
# penultimate('What the $%*&! were you talking about?')

# Data Structure
# array, string

# Algorithm
# Define a method which accepts a string as an argument
# Split the string into seperate words
# Return the second to last word

# Code

def penultimate(string)
  words = string.split
  words[-2]
end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'


# Further Exploration

def middle_word(string)
  return string if string.length == 1 || string.length == 0
  words = string.split
  index = words.size / 2
  even_set = []
  if words.size.odd?
    return words[index]
  elsif 
    even_set << words[index - 1] << words[index]
  end
    even_set
end

p middle_word("This is a string of odd number") #== ['string']
p middle_word("This is a string of even num hairs") #== ['string', 'of']
p middle_word("") #== ''
p middle_word("The!") #== 'The!'
p middle_word('I love strawberry poptarts and popcorn and processed sugar... NOT') #== ['and', 'popcorn']