# PEDAC


# Problem
# Write a method that tkaes a single String argument and returns a new string that contains the 
# original value of the argument with the first character of every word capitalized and all
# other letters lowercase.
# Question: 

# Example / Test Cases
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structures
# string, array

# Algorithm 1st try
# define a method called 'word_cap' which accepts a 'string' as an argument
# initiate an array called 'split_on_quote_array' to equal string.split("\"")
# define an empty array called word_array
# For each 'segment' in 'split_on_quote_array' split again on spaces, and push each word to 'word_array'
# Flatten word_array, which is an array of arrays

# Algorithm 2nd try
# define a method called 'word_cap' which accepts a 'string' as an argument
# call .downcase on the 'string' to start from a spot where everything is lowercase
# split the string into words based on spaces
# upcase the first letter of each word
# flatten the array of words


# Code
# def word_cap(string)
#   string.downcase.split.each {|word| word[0] = word[0].upcase}.join(" ")
# end


def word_cap(string)
  split_on_word = string.split
  split_on_word.each do |word| 
    cap_index = word.chars.find_index {|char| char.match(/[a-zA-Z]/)}
    word[cap_index] = word[cap_index].upcase!
  end.join(" ")
end

# p word_cap('four score and seven') #== 'Four Score And Seven'
# p word_cap('the javaScript language') #== 'The Javascript Language'
# puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

p word_cap('this is a "quoted" word') == 'This Is A "Quoted" Word'


