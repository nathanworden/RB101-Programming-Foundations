# PEDAC


# Problem
# Write a method that returns a list of all substrings of a string that are palindromic
# Each substring must consist of the same sequence of characters forwards as it does backwards
# Arrange return values in the same sequence as the substrings appear in the string
# Duplicate palindromes should be included multiple times.
# Consider all characters and pay attention to case.
# Assume that single characters are not palindromes

# Examples / Test Cases
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# Data Structure
# string, array

# Algorithm
# define a method called 'palindromes' which accepts a 'string' as an argument
# call 'substrings' on 'string' and save it in an array called 'all_substrings'
# For each substring in 'all_substrings' .select the substring if it is the same backwards as forwards
# Push these substrings to an array called 'output'
# return output



# Code

# def substrings_at_start(string)
#   substrings = []
#   1.upto(string.length) do |index|
#     substrings << string.slice(0, index)
#   end
#   substrings
# end


# def substrings(string)
#   all_substrings = []
#   0.upto(string.length) do |index|
#     all_substrings << substrings_at_start(string.slice(index, string.length))
#   end
#   all_substrings.flatten
# end

# def palindromes(string)
#   all_substrings = substrings(string)
#   output = []
#   all_substrings.select do |substring|
#     output << substring if substring == substring.reverse && substring.length > 1
#   end
#   output
# end


# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#  ]










# Further Exploration

def substrings_at_start(string)
  string.downcase!
  alphanumeric_string = string.chars.select {|char| char.match(/\w/)}
  string = alphanumeric_string.join
  substrings = []
  1.upto(string.length) do |index|
    substrings << string.slice(0, index)
  end
  substrings
end


def substrings(string)
  all_substrings = []
  0.upto(string.length) do |index|
    all_substrings << substrings_at_start(string.slice(index, string.length))
  end
  all_substrings.flatten
end

def palindromes(string)
  all_substrings = substrings(string)
  output = []
  all_substrings.select do |substring|
    output << substring if substring == substring.reverse && substring.length > 1
  end
  output
end





# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#  ]





















