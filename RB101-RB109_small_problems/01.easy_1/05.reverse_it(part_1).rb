# Understand the Problem
#   - method which takes one argument
#      - a string
#      - need to validate?
#   - output:
#      - a new string with words in reverse order

# Examples / Test Cases
# puts reverse_sentence(' ') == ' '

# Algorithm
#  - receive a string
#  - split the string into an array of words
#  - loop through each word from the back to the front
#  - each word add to a new array
#  - join the array into a string, while adding spaces between the words
#  - return the new string

# MY ANSWER

def reverse_sentence(string)
  array = string.split
  array.reverse!
  array.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# ANOTHER ANSWER FROM ME

# def reverse_sentence(string)
#   array = string.split
#   new_array = []
#   loop do
#     new_array << array.pop
#     break if array == []
#   end
#   new_array.join(" ")
# end


# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'



# BOOK ANSER
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end


