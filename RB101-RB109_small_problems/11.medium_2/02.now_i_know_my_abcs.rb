#PEDAC

# Problem
# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# Input: string
# output: boolean


# Examples / Test Cases
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
# block_word?('Nathan') == false
# block_word?('orange') == false


# Data Structures 
# strings
# hash
# boolean
# array


# Algorithm
# Initialize a Constant that points towards a hash with the block set
# Define a method called block_word? which accepts a single string as a parameter
# Iterate through the string, check if the current letter is either a key or a value
# in the hash. If it is not, return false. If it is, remove the key-value pair from the hash.
# If you are able to iterate through the whole word without returning false, return true


#Code


# def block_word?(string)
#   block_alphabet = {'B'=>'O', 'X'=>'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A', 
#                   'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
#                   'V' =>'I', 'L' => 'Y', 'Z' => 'M'}
#   string.upcase.chars.each do |letter|
#     if block_alphabet.keys.include?(letter) || block_alphabet.values.include?(letter)
#       block_alphabet.delete_if {|key, value| key == letter || value == letter}
#     else
#       return false
#     end
#   end
#   true
# end


# p block_word?('jest') == true
# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('Nathan') == false
# p block_word?('orange') == false



# Book Answer
# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? {|block| up_string.count(block) >= 2}
# end

# p block_word?('jest') == true
# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('Nathan') == false
# p block_word?('orange') == false


























# Second try

BLOCKS = %w('BO', 'GT', 'VI', 'XK', 'RE', 'LY', 'DQ', 'FS', 'ZM', 'CP', 'JW', 'NA', 'HU').freeze


def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? {|block| up_string.count(block) >= 2}
end


p block_word?('jest') == true
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('Nathan') == false
p block_word?('orange') == false





