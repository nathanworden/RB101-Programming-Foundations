

# Questions 10-20
# The remaining questions in this quiz have a focus on reading and understanding code, so try to avoid simply running the complete code samples in order to arrive at the correct answers. Feel free to refer to documentation, and you may even want to test out individual pieces of a larger code example in irb or similar; but the point here is to read code like this and be able to parse it in order to understand what each line is doing rather than just running it and basing your answer on the output or return value.
# Question 10 Saved
# Identify all the code samples which are examples of selection.

# Your Answer
# arr = [1, 2, 3, 4, 5]
# counter = 0

# new_arr = []

# loop do
#   num = arr[counter]
#   if num >= 3
#     new_arr << 0
#   else
#     new_arr << num * 2
#   end

#   counter += 1
#   break if counter == arr.size
# end
#  hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
# counter = 0

# new_hsh = {}

# for letter, fruit in hsh
#   new_hsh[letter] = fruit if fruit.size > 4
# end
#  def some_method(words)
#   arr = []
#   counter = 0

#   loop do
#     word = words[counter]
#     arr << word if word.size < 4

#     counter += 1
#     break if counter == words.size
#   end

#   arr
# end

# poem = %w(April is the cruelest month)
# some_method(poem)
#  num_arr = [2, 4, 7, 8, 11, 15]
# counter = 0

# until counter == num_arr.size
#   puts num_arr[counter] + 1

#   counter += 1
# end