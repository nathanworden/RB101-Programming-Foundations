# PEDAC

# Write method scramble(str1,str2) that returns true if a portion of str1 
# characters can be rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will 
# be included.





# PEDAC

# Problem
# Input: 2 strings
# Output: Boolean (If a portion of string 1 can be rearranged to match) string 2
# Rules:
# Every character in string2 should be present in string1

# Examples

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true

# Data Structures
# Array

# Algorithm
# Convert string1 to array1
# Converst string2 to array2
# Iterate through String2
# Iterate through String1
# If |character from string 2| == |character from string 1|, delete char1
    # (This means you will need to know the index of char 1)
    # Move onto the next element of String1
# If |character from string 2| is not == to any of the elements in arra1, Return False
# If you iterate through all elements in array2 and do not hit false, then return true


# Code

def scramble(string1, string2)
  array1 = string1.chars
  array2 = string2.chars
  array2.each do |char2|
    index = array1.index(char2) 
    if index == nil
      return false
    else
      array1.delete_at(index)
    end
  end
  true
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true





# Other Student's (Ezra Ellette) Answer didn't wor, but I refactored it so it did:

#  def scramble(str, substr)
#   subarr = substr.chars
#   str_index = 0
#   counter = 0

#     str.length.times do
#       letter = str[str_index]
#       if subarr.include?(letter)
#         subarr.delete_at(subarr.index(letter))
#         counter += 1
#       end
#       str_index += 1
#     end
#    counter >= substr.length
#  end




# Instructor Answer:
# def scramble(str1, str2)
#   str2.each_char.all? {|char| str2.count(char) <= str1.count(char) }
# end




















