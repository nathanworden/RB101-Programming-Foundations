# PEDAC


# Problem
# - Write a method that takes a string of words and returns a string in which 
# the first and last letters of every word are swapped.
# - The string is made of words separated by spaces
# - You can assume that every word contains at least one letter
# - The string will always contain at least one word
# - Each string contains nothing but words and spaces
# Implicit Requirements: 
# - Case matters


# Examples / Test Cases
# swap("Hello my little friend") == "oellH ym eittll drienf"
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# Data Structures
# string, array

# Algorithm
# define a method called 'swap' that accepts an argument called 'sentence'
# Call .split(' ') on 'sentence' to create an array of the words in the sentence
# Call .each on 'sentence' using |word|
#  - word[0], word[-1] = word[-1], word[0]
# save this output in an array called 'switched'
# call .join(" ") on 'switched'

# Code

def swap(sentence)
   switched = sentence.split(' ').each do |word|
      word[0], word[-1] = word[-1], word[0]
   end
    switched.join(" ")
end



p swap("Hello my little friend") == "oellH ym eittll drienf"
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap(' yamonB B Johnson a rhba zooglebarf') == "Bamony B nohnsoJ a ahbr fooglebarz"





# Further Exploration

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end


# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end

# p swap("Hello my little friend") #== "oellH ym eittll drienf"
# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') #== 'ebcdA'
# p swap('a') #== 'a'
# p swap(' yamonB B Johnson a rhba zooglebarf') #== "Bamony B nohnsoJ a ahbr fooglebarz"


# This will not work because swap_first_last_characters will output
# swapped characters, but the |word| will remain unchanged.
# you will probably get a string of two word characters.



# I was right!
# the only difference is that because it is reslut.join(" ") it was a string
# of one letter characters.





