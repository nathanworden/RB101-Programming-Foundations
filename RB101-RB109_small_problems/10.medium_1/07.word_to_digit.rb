# PEDCAC


# Probelm
# input: string
# output: string with spelled out numbers converted to string integers
# there will be spaces between each number


# Examples / Test Cases
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# word_to_digit('Todays temperature will be seven degrees celcius at two in the afternoon') == 'Todays temperature will be 7 degrees celcius at 2 in the afternoon'

# Data Structures
# String
# Array
# Integer

# Algorithm
# Create a hash with spelled out numbers as keys and corrisponding integers as values
# Split the input into individual words in an array
# Iterate through the array, checking to see if the current element is 
# one of the words in the hash. If it is, convert it to the value
# If it is not, leave it the way it is
# join the array back into a string

# Code

# NUMBERS = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

# def word_to_digit(string)
#   string.split.map do |word|
#     if word.end_with?(".")
#       word.delete!(".")
#       if NUMBERS.keys.include?(word)
#         NUMBERS[word] + "."
#       else
#         word + "."
#       end
#     else
#       if NUMBERS.keys.include?(word)
#         NUMBERS[word]
#       else
#         word
#       end
#     end
#   end.join(" ")
# end









# Book Answer
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'











