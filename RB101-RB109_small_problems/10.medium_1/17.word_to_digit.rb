# Word to Digit
# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# PEDAC
# Problem
# Input: string sentence
# Output: string (word numbers are now just numbers)

 # - Any sequence of number words are converted to a string of digits

 # Examples / Test Cases
 # word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
 # word_to_digit('Hello I am nine years old')  == 'Hello I am 9 years old'


 # Data Structure
 # String
 # Hash

# Algorithm
# Create Hash with keys as spelled out numbers
  # Values as digit string numbers
# substitute any occuance of one of the Hash keys in the input string with the value


# Code

def word_to_digit(string)
  convert = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
              'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 
              'eight' => '8', 'nine' => '9'}
  convert.each do |key, value|
    string.gsub!(/\b#{key}\b/, value)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# p word_to_digit('Hello I am nine years old')  == 'Hello I am 9 years old'
p word_to_digit('Old Dominion freight line')




