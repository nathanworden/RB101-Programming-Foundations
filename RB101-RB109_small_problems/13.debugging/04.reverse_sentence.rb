# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# The reverse_sentence method should return a new string with the words of 
# its argument in reverse order, without using any of Ruby's built-in reverse 
# methods. However, the code below raises an error. Change it so that it behaves 
# as expected.

# My Answer:
# words[i] on line 7 returns an element of the words array which is a String.
# You can't concatenate a string with an Array. To fix this you can put words[i]
# in an array itself

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'









