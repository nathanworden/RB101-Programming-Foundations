# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples:
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# The tests above should print true.


# Algorithm
# convert the string to an array and then reverse and return

def reverse_sentence(string)
  string.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'