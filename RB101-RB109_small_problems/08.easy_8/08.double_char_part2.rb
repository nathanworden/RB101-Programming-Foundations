# PEDAC


# Problem
# Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled. 

# Examples / Test Cases
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# Data Structures
# string, array

# Algorithm
# define a method called 'double_consonants' which accepts a single 'string'
# map each character in 'string' thus:
# |char| char * 2 unless char.match(/([aeiou]|\d|\s|\W)/)
# end

# Code

def double_consonants(string)
  result = ''
  string.each_char do |char| 
    if char.match(/([aeiou]|\d|\s|\W)/)
      result << char
    elsif
      result << (char * 2)
    end
  end
  result
end


# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""


# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end





