


bob = 'hello world this is a very long string whose woods these are i do not know'

# a is 1 z is 26

# return the word the has the highest value in your string. 



#  PEDAC

# Problem 
# Write a method that returns the word the has the highest value in your string. 

# Example
# 

# Algorithm


# define a hash which the keys are the letters of the alphabet and the vaues are 1 through 26
# define a method called 'highest_value' which takes a 'string' as an arguement
# turn the string into an array (.split)
# iterate through each word
# iterate throug each character of each word
# add the value of each character to a variable calleed sum_word
# compare sum_word of the current word with the next word
# Keep the word with the highest value (call this 'highest_value')
# retrun 'hightest_value'

# Code

ALPHABET_VALUES = { :a => 1, :b => 2, :c => 3, :d => 4, :e => 5, :f => 6 , :g => 7 , :h => 8 , :i => 9, :j => 10, :k => 11 , :l => 12, :m => 13, :n => 14, :o => 15, :p => 16, :q => 17, :r =>18, :s => 19, :t => 20, :u => 21, :v => 22, :w => 23, :x => 24, :y => 25, :z => 26}


def highest_value(string)
  array = string.split
  best_so_far = 0
  result = ''
  array.each do |word|
    sum_word = 0
    word.chars.each do |char|
      sum_word += ALPHABET_VALUES[char.to_sym]
    end
    if sum_word > best_so_far
      best_so_far = sum_word 
      result = word 
    end
  end
  result
end


p highest_value('aa b')















