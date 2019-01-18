# PEDAC


# Problem
# - Write a method that takes a string wtih one or more space separated words
# - Method returns a hash that shows the number of words of different sizes
# - Words consist of any string of characters that do not include a space


# Example / Test Cases
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
# word_sizes('a') == {1 => 1}


# Data Strctures
# String, hash, array

# Algorithm
# Define a method called 'word_sizes' which accepts an argument called 'string'
# Call .split on 'string' and save the array in a varable called 'words'
# initiate an empty hash called 'output'
# iterate through word's sizes with .each using |word|
#     - If length of |word| is in already in the 'output' hash, increment that length key by 1
#     - If the length of |word| is not in the 'output' hash, add it, with a value of 1
# Return the output hash

# Code

# def word_sizes(string)
#   output = {}
#   string.split.each do |word|
#     if output[word.size] == nil
#       output[word.size] = 1
#     else
#       output[word.size] += 1
#     end
#   end
#   output
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}
# p word_sizes('a') == {1 => 1}



# Refactored

def word_sizes(string)
  output = {}
  string.split.each do |word|
    output[word.size] == nil ? output[word.size] = 1 : output[word.size] += 1
  end
  output
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
p word_sizes('a') == {1 => 1}




# Book Answer

# def word_sizes(sentence)
#   output = Hash.new(0)
#   sentence.split.each do |word|
#     output[word.size] += 1
#   end
#   output
# end


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}
# p word_sizes('a') == {1 => 1}







































