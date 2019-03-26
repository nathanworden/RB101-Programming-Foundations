# Problem

# input: an integer with an even number of digits
# output: boolean
# Return true if the numer is a palindorme or if any of its decendents down to 2 digits is a palindrome
# Palindrome: same forward as it is backwards
# Decendent: Sum each pair of adjacent digits to create the digits of the next number

# Examples / Test Cases

# p == palindrome_descendant(11211230) == false
# p == palindrome_descendant(13001120) == true
# p == palindrome_descendant(23336014) == true
# p == palindrome_descendant(11) == true
# p == palindrome_descendant(1122) == false
# p == palindrome_descendant(332233) == true
# p == palindrome_descendant(10210112) == true
# p == palindrome_descendant(9735) == false
# p == palindrome_descendant(97358817) == false

# Data Structures
# integer, arrays

# Algorightm

# Turn the numbr into a string
# Check whether the number is a paindrome
# If it is, return true
# If it is not, find the decentdent of the number
# Check if the decendent is a palindrome.
# If it is not, find the decendent of the number (keep doing this until there are no more decendents)
# If you've checked all the decendents and none of them are palindromes, return false

# Code

def palindrome_descendant(num)
  string_num = num.to_s
  loop do
    return true if string_num == string_num.reverse
    slices = string_num.chars.each_slice(2).to_a
    decendent = slices.map do |slice|
      slice.map(&:to_i).reduce(:+)
    end
    return true if decendent == decendent.reverse
    string_num = decendent.join
    break if string_num.length == 2
  end
  false
end



p palindrome_descendant(11211230) == false
p palindrome_descendant(13001120) == true
p palindrome_descendant(23336014) == true
p palindrome_descendant(11) == true
p palindrome_descendant(1122) == false
p palindrome_descendant(332233) == true
p palindrome_descendant(10210112) == true
p palindrome_descendant(9735) == false
p palindrome_descendant(97358817) == false
