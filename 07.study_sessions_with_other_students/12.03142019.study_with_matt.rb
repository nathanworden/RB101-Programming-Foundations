# PEDAC

# Problem
# Takes in a string 
# Returns an array
# Number of arrays will be the number of unique characters
# Array has 4 elements
# 1st element: the value
# 2nd elemnet: indext of 1st appearace
# 3rd element: index of last appearance
# 4th element: times repeated


# Examples
# find_repeating("a") ➞ [["a", 0, 0, 1]]

# find_repeating("aabbb") ➞ [["a", 0, 1, 2], ["b", 2, 4, 3]]

# find_repeating("1337") ➞ [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]

# find_repeating("aabbbaabbb") ➞ [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]


# Data Structure
# arrays, strings, integers

# Algorithm

# define a method 'find_repeating' which accepts a string
# initialize a array called 'unique_characters', if a character is new, push it into the array. If not, don't.
# count the number of times the first character occurs and save this in a variable called 'count'
# initiaze a variable called 'first'
# save the index of the first time the character occurs in 'first'
# initialize a variable called 'last'
# save the index of the last time the character occurs in 'last'
# Do the above for each character in the string


# # Code
# require 'pry'

# def find_repeating(str)
#   new_characters = [] 
#   str.chars.each_with_index do |char, index|
#     new_characters << char unless str[index - 1] == char
#   end
  
#   output_array = []

#   new_characters.each_with_index do |char, i|
#     count = str.count(char)
#     char_array = []
#     char_array << char
#     char_array << str.index(char)
#     #char_array << # last occurance
#     final_index = 0
#     binding.pry
#     str.chars.each_with_index do |item, index|
#      if item == char
#        final_index = index
#      end
#     end
#     char_array << final_index
#     char_array << str.count(char)
#     output_array << char_array
#   end
#   output_array
# end

# # p  find_repeating("a") == [["a", 0, 0, 1]]

# # p find_repeating("aabbb") == [["a", 0, 1, 2], ["b", 2, 4, 3]]

# # p find_repeating("1337") == [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]

# p find_repeating("aabbbaabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]






# Iterate through the string
# If the character is different than the character before it, save the following:
# The character itself
# Its index
# If the character at index + 1 is the same as character, increment count and move on to the next character
# If the character at index + 1 is not the same as character, save the index of character
# Save the count

# If the character is the same as the character before it, move on to the next character


# p find_repeating("a") #== [["a", 0, 0, 1]]
# p find_repeating("aabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3]]
# p find_repeating("1337") #== [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]
# p find_repeating("aabbbaabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]


def find_repeating(str)
  output = []
  count = 0
  str.chars.each_with_index do |item, index|
    if item != str[index - 1] || index == 0
      count = 0
      output << [item, index]
      count += 1
      if item != str[index + 1]
        output[-1] << index << count
      end
    elsif item == str[index - 1]
      count += 1
      if item != str[index + 1]
        output[-1] << index << count
      end
    end
  end
  output
end



p find_repeating("a") == [["a", 0, 0, 1]]
p find_repeating("aabbb") == [["a", 0, 1, 2], ["b", 2, 4, 3]]
p find_repeating("1337") == [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]
p find_repeating("aabbbaabbb") == [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]
















# This works for the p find_repeating("aabbbaabbb") example

# def find_repeating(str)
#   output = []
#   chunky_monkey = []
#   chunks = str.chars.chunk_while {|i, j| i == j}
#   chunks = chunks.to_a
#   count = chunks.map do |arr| 
#     current_arr = []
#     current_arr << arr[0] << nil << nil << arr.count
#   end
  

#   str.chars.each_with_index do |item, index|
#     current_streak = []
#     if index == 0
#       current_streak << item << index
#       output << current_streak
#     elsif item != str[index - 1]
#       current_streak << item << index
#       if item == str[index + 1]
#         # count += 1
#         output << current_streak
#       elsif item != str[index + 1]
#         current_streak << index
#       end
#     elsif item == str[index - 1]
#       if item == str[index + 1]
#         # count += 1
#       elsif item != str[index + 1]
#         output[-1] << index
#       end
#     end
#   end

#   ends = []
#   count.each do |arr|
#     ends << arr[-1]
#   end
  
#   output.each_with_index do |arr, index|
#     arr << ends[index]
#   end

# output

# end


# p find_repeating("a") #== [["a", 0, 0, 1]]
# p find_repeating("aabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3]]
# p find_repeating("1337") #== [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]
# p find_repeating("aabbbaabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]

      

# end




# Code
# require 'pry'

# def find_repeating(str)
#   chunky = str.chars.chunk_while {|i, j| i == j}
#   chunky_monkey = chunky.to_a
# end

# p find_repeating("aabbbaabbb")

  
#   output_array = []

#     count = str.count(char)
#     char_array = []
#     char_array << char
#     char_array << str.index(char)
#     #char_array << # last occurance
#     final_index = 0
#     binding.pry
#     str.chars.each_with_index do |item, index|
#      if item == char
#        final_index = index
#      end
#     end
#     char_array << final_index
#     char_array << str.count(char)
#     output_array << char_array
#   end
#   output_array
# end

# p  find_repeating("a") == [["a", 0, 0, 1]]

# p find_repeating("aabbb") == [["a", 0, 1, 2], ["b", 2, 4, 3]]

# p find_repeating("1337") == [["1", 0, 0, 1], ["3", 1, 2, 2], ["7", 3, 3, 1]]

# p find_repeating("aabbbaabbb") #== [["a", 0, 1, 2], ["b", 2, 4, 3], ["a", 5, 6, 2], ["b", 7, 9, 3]]









































