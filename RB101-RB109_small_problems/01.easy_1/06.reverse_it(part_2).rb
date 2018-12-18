# Understand the Problem
# - write a method with one argument
#   - a string
#   - need to validate?
# - returns the given string (want the same string mutated?)
# - if word is five letters or more:
#    - reverse the letters
# - if the word is less than five letters:
#    - leave the word alone
# - Include spaces unless the input string is only one word

# Examples / Test Cases
# Input:
# - a string
# Output:
# - the string mutated so that words with five letters or more are reversed

# puts reverse_words('Professional')           # => lanoisseforP
# puts reverse_words('Walk around the block')  # => Walk dnuora the kcolb
# puts reverse_words('Launch School')          # => hcnuaL loohcS
# puts reverse_words('olleh my elttil dneirf') # => hello my little friend


# MY ANSWER
# def reverse_words(string)
#   array = string.split
#   array.each do |word|
#      if word.length >= 5
#        word.reverse!
#      end
#    end
#     array.join(' ')
# end

# puts reverse_words('Professional')           # => lanoisseforP
# puts reverse_words('Walk around the block')  # => Walk dnuora the kcolb
# puts reverse_words('Launch School')          # => hcnuaL loohcS
# puts reverse_words('olleh my elttil dneirf') # => hello my little friend



# MY BETTER(?) ANSWER
def reverse_words(string)
  new_string = string.split.each do |word|
                 word.reverse! if word.size >= 5
               end
  new_string.join(' ')
end


puts reverse_words('Professional')           # => lanoisseforP
puts reverse_words('Walk around the block')  # => Walk dnuora the kcolb
puts reverse_words('Launch School')          # => hcnuaL loohcS
puts reverse_words('olleh my elttil dneirf') # => hello my little friend

# BOOK ANSWER

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >=5
#     words << word
#   end

#   words.join(' ')
# end


# puts reverse_words('Professional')           # => lanoisseforP
# puts reverse_words('Walk around the block')  # => Walk dnuora the kcolb
# puts reverse_words('Launch School')          # => hcnuaL loohcS
# puts reverse_words('olleh my elttil dneirf') # => hello my little friend




