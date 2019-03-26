# Problem

# Complete the Word
# Input: Two strings
# Ouptut: a boolean
# Boolean is true if first input can be turned into second input 
# without deleting letters or re-ordering letters. 
# Additional letters can be added at any point of the string


# Examples / Test Cases
# can_complete("butl", "beautiful") == true
# # We can add "ea" between "b" and "u", and "ifu" between "t" and "l".

# can_complete("butlz", "beautiful") == false
# # "z" does not exist in the word beautiful.

# can_complete("tulb", "beautiful") == false
# # Although "t", "u", "l" and "b" all exist in "beautiful", they are incorrectly ordered.

# can_complete("bbutl", "beautiful") == false
# # Too many "b"s, beautiful has only 1.

# can_complete("wrod", "world") == false
# 'r' and 'o' are out of order

# can_complete("wod", "wood") == true

#Data Structures
# array, string, boolean

# Algorithm
# Find the missing characters in the first string.
# Create an array that has 'nil' every time a character is missing
# The array of the first string and the array of the second string will be the same length
# Then it is a matter of matching up the arrays. 
# If the second array can fit into the missing places of the first, return true


# Code

def can_complete(str1, str2)
  arr1 = str1.chars
  arr2 = str2.chars

  if arr1.all? {|char| arr2.include?(char)}
    missing_spaces = []
    arr2.each do |char|
      if char == arr1[0]
        missing_spaces << arr1.shift
      else
        missing_spaces << nil
      end
    end

    return false if !arr1.empty?

    missing_spaces.each_with_index do |char, index|
      if char == nil
        missing_spaces[index] = arr2[index]
      end
    end
    return true if missing_spaces == arr2
  end
  false
end


# p can_complete('butl', 'beautiful') #== true
# p can_complete('butlz', 'beautiful') #== false
p can_complete('tulb', 'beautiful') #== false
# p can_complete('bbutl', 'beautiful') #== false
# p can_complete('sg', 'something') #== true
# p can_complete('sgi', 'something') #== false
# p can_complete('sing', 'something') #== true
# p can_complete('siing', 'something') #== false







