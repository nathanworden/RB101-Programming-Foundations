
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



