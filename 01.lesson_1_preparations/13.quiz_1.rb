
# Question 5
# Select all of the code examples below that meet the following 
# requirements.

# Write a method that takes one argument, a sentence string, and 
# returns an array of integers. The value of each integer in the array 
# should be equal to the length of the word in the corresponding position 
# in the sentence. For example, if the sentence was 'To be or not to be' 
# the array of integers would be [2, 2, 2, 3, 2, 2].


# 1 - MY ANSWER: YES
# def string_lengths(sentence)
#   strings = sentence.split

#   strings.map { |chars| chars.length }
# end



# shakespeare = 'To be or not to be'
# p string_lengths(shakespeare)





#2 - MY ANSWER: NO
# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []

#   strings.each do |string|
#     lengths << string.size
#   end
# end

# shakespeare = 'To be or not to be'
# p string_lengths(shakespeare)




#3 - MY ANSWER: YES
# def string_lengths(sentence)
#   words = sentence.split
#   word_lengths = []
#   counter = 0

#   while counter < words.size do
#     word_lengths << words[counter].length
#     counter += 1
#   end

#   word_lengths
# end


# shakespeare = 'To be or not to be'
# p string_lengths(shakespeare)


#4 - MY ANSWER: NO
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

shakespeare = 'To be or not to be'
p string_lengths(shakespeare)










###################################################################

# All page contents


# RB101 - Programming Foundations
# Assignment: Quiz Student Name: Nathan Worden Submitted at: 5 days ago Time taken: 0.53 hour(s)
# Score: 5/5 (100.0%)
# Question 1 1 / 1 Points Correct
# Question 2 1 / 1 Points Correct
# Question 3 1 / 1 Points Correct
# Question 4 1 / 1 Points Correct
# Question 5 1 / 1 Points Correct
# Select all of the code examples below that meet the following requirements.

# Write a method that takes one argument, a sentence string, and returns an array of integers. The value of each integer in the array should be equal to the length of the word in the corresponding position in the sentence. For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].

# Your Answer
# A
# def string_lengths(sentence)
#   strings = sentence.split

#   strings.map { |chars| chars.length }
# end
# B
# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []

#   strings.each do |string|
#     lengths << string.size
#   end
# end
# C
# def string_lengths(sentence)
#   words = sentence.split
#   word_lengths = []
#   counter = 0

#   while counter < words.size do
#     word_lengths << words[counter].length
#     counter += 1
#   end

#   word_lengths
# end
# D
# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []
#   counter = 1

#   until counter == strings.size do
#     word_length = strings[counter - 1].length
#     lengths.push(word_length)
#     counter += 1
#   end

#   lengths
# end
# Discussion
# Correct:

# A & C. Both of these methods, although slightly different in their implementation, take a sentence string as an argument and return an array of integers with each integer representing the length of its equivalent string.

# Incorrect:

# B. Although this method adds the size of each string to the lengths array, the method doesn't then return the lengths array. The return value here is actually the return value of the each method call, which is the strings array.

# D. This method adds the word lengths to a new array and returns it; however, because of the way the loop is constructed, the loop exits before it gets to the final word in the sentence. The length of the final word therefore isn't included in the returned array.



