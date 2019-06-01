# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

#PEDAC
# Problem
# input: string
# output: boolean
# Rules: 
    # Both letters from a block cannot be used
    # Each block can only be used once


# Examples:
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
# block_word?('Nathan') == false
# block_word?('Launch') == false

# Data Structure
# Hash

# Algorithm
# Iterate through each key / value pair in the hash
# If both the key and the value character are included in the string
    # Return false
# If either the key or the value are present more than once in the string
    # Return false
# Otherwise, return true

# Code

require 'pry'

def block_word?(string)
  string.upcase!
  hsh = { 'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
          'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
          'V' => 'I', 'L' => 'Y', 'Z' => 'M'}
  hsh.each do |key, value|
    if string.include?(key) && string.include?(value)
      return false
    elsif string.count(key) > 1 || string.count(value) > 1
      return false
    end
  end
  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('Nathan') == false
p block_word?('Launch') == false


