# PEDAC

# Problem
# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the ASCII
# values of every character in the string.
# You may use #String#ord to determine the ASCII value of a character.)

# Example / Test Cases
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Data Structures
# string, array, integer

# Algorithms
#  - initiate an empty array called 'ords'
#  - for each character in the input string, put the .ord number into 'ords'
#     - call .chars on 'input'
#     - call .map on 'input', push the result of .ord of each element to 'ords'
#  - add all the elements of 'ords' together using .reduce(:+)

# Code

# MY ANSWER

def ascii_value(string)
  return 0 if string.empty?
  ords = []
  string.chars.map {|i| ords << i.ord}
  ords.reduce(:+)
end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0



# BOOK ANSWER

# def ascii_value(string)
#   sum = 0
#   string.chars.each {|i| sum += i.ord }
#   sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0




#Integer#chr is the mystery method: "a".ord.chr == "a"
"a".ord.chr == "a"




