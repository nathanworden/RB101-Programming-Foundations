# PEDAC


# Problem
# Write a method that takes a string, and returns a new string in which every character is doubled

# Examples / Test Cases
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''
# # repeater('yo yo yo!') == "yyoo  yyoo  yyoo!!""

# Data Strcutures
# string, perhaps array

# Algorithm
# define a method called 'repeater' which accepts a 'string' as an argument
# initiate an empty string called 'doubled'
# for each_char in 'string' push |char| char * 2 to 'doubled'
# return doubled 

# Code

def repeater(string)
  doubled = ''
  string.each_char {|char| doubled << char * 2}
  doubled
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
p repeater('yo yo yo!') == "yyoo  yyoo  yyoo!!"