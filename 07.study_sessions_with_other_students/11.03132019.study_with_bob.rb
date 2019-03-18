Given string s, which contains only letters from a to z in lowercase.

A set of alphabet is given by abcdefghijklmnopqrstuvwxyz.

2 sets of alphabets mean 2 or more alphabets.

Your task is to find the missing letter(s). You may need to output them by the order a-z. It is possible that there is more than one missing letter from more than one set of alphabet.

If the string contains all of the letters in the alphabet, return an empty string ""

Example
For s='abcdefghijklmnopqrstuvwxy'

The result should be 'z'

For s='aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy'

The result should be 'zz'

For s='abbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxy'

The result should be 'ayzz'

For s='codewars'

The result should be 'bfghijklmnpqtuvxyz'

Input/Output
[input] string s

Given string(s) contains one or more set of alphabets in lowercase.

[output] a string

Find the letters contained in each alphabet but not in the string(s). Output them by the order a-z. If missing alphabet is repeated, please repeat them like "bbccdd", not "bcdbcd"
missing_alphabets("abcdefghijklmnopqrstuvwxy") == "z"
missing_alphabets("aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy") == "zz"


# Answer from Ruby user group meeting:
 ALPHA = ('a'..'z').to_a

 def missing_alphabets(s)
   alpha_hash = {}
   ALPHA.each {|e| alpha_hash[e] = 0}
   missing = ""
   s.chars.each do |char|
     alpha_hash[char] += 1
   end
   
   num_alphabets = alpha_hash.values.max
   
   alpha_hash.each do |key, value|
     while value < num_alphabets
       missing << key
       value += 1
     end
   end
   
   missing
 end



 # Bob Rodes answer:

ALPHABET = ('a'..'z').to_a.join.freeze

def find_missing(str)
  result = ''
  top_size = str.chars.sort.chunck_while { |c1, c2| c1 == c2 }.to_a.max_by(&:size).size
  ALPHABET.each_char do |l|
    result << l * (top_size - str.count(l))
  end
  result
end

















