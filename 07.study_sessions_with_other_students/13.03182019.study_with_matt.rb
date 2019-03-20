# Write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels removed


# input:
# Write a list of words: ['green', 'yellow', 'black', 'white']

# output:
# List of modifed words are : grn, yllw, blck, wht


# Examples

# Accepts an array of strings
# 


def no_vowels(arr)
  arr.map do |word|
    word.delete("aeiou")
  end
end

p no_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']