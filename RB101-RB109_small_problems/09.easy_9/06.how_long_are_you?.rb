# PEDAC


# Problem
# Write a method that takes a string as an argument.
# Returns an Array that contains every word from the string, with an appended space and the word length

# Examples / Test Cases
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# Data Structures
# array, string

# Algorithm
# define a method called 'word_lengths' which accepts a 'string' as an argument
# Split the string into individual words
# for each word, use .map update each word to include a space and the size of the word

# Code

def word_lengths(string)
  string.split.map {|word| word + " " + word.size.to_s}
end



p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []