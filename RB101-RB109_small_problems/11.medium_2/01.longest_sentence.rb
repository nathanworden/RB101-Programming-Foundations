# PEDAC

# Problem
# input: text file. (long string)
# output: longest sentence, and an integer (length of longest sentence in words)
# Sentence enders: (.), (!), (?)
# word = any sequence of characters that are not spaces or sentence enders


# Example / Test Case
# longest_sentence("Whose woods these are, I do not know. Frodo Baggins.") == ["Whose woods these are, I do not know", 8]

# Data Structure
# string, array, integer

# Algorithm
# define a method called longest_sentence which accepts a string as a parameter
# Split the string on periods, excamation points and question marks
# delete exclamation points, periods, and question marks
# push the longest sentence into an array
# push the length of the sentence to the array

# Code


# def longest_sentence(string)
#   arr = string.split(/!|\?|\./)
#   arr.delete_if {|element| element.match(/\!|\?|\./)}
#   longest = [""]
#   arr.each do |sentence|
#     longest[0] = sentence.strip if sentence.split(" ").length > longest[0].split(" ").length
#   end
#   puts "Containing #{longest[0].split(" ").length} words"
#   "#{longest[0]}"
# end

# text = File.read('Frankenstein_text.txt')

# p longest_sentence(text)



# My answer refactored

# text = File.read("../../../../../../Desktop/Frankenstein_.txt")
text = File.read("Frankenstein_text.txt")

def longest_sentence(text)
  sentences = text.split(/!|\?|\./)
  sentences.delete_if {|element| element.match(/\!|\?|\./)}
  longest = [""]
  sentences.each do |sentence|
    longest[0] = sentence.strip if sentence.split(" ").length > longest[0].split(" ").length
  end
  puts "#{longest[0]}"
  puts "Containing #{longest[0].split(" ").length} words"
end

longest_sentence(text)






# Book Answer
# text = File.read('Frankenstein_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"








