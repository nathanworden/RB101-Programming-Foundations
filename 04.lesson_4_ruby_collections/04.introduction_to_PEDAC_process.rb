# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") = "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"


# Understand the Problem
# Given a string, write a method change_me which returns:
# - The same string but with all the words in it that are palindromes uppercased.
# inputs:
# - a string
# outputs:
# - a new string (not the same objuect)
# rules:
#       Explicit requirements:
#          - every palindrome in the string must be converted to uppercase.
#            (Reminder: a palindrome is a word that reads the same forwards
#          - and backward).
#          - Palindromes are case sensitive ("Dad" is not a palindrome,
#            but "dad" is)



# Problem:
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palinromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Questions:
# 1) What is a substring?
# 2) What is a palindrome?
# 3) Will inputs always be strings?
# 4) What does it mean to treat palindrome words case-sensitively?
# 5) Return an array, correct?
# 6) If a palindrome is in another palindrome, do you want the method
#  to return just the larger one, or both the smaller and larger one?
# 7) If the input is empty, do you want the method to return an empty array?

# input: a string
# output: an array of substrings
# rules: 
#        Explicit requirements:
#           - return only substrings which are palindromes
#           - palindrome words should be case sensitive, meaning "abBA" is
#           - not a palindrome.
#        
#           An empty input returns an empty array
#           An input with no palindromes outputs an empty array
#           Palindromes in palindromes should be considered unique substrings


# Algorithm:
# - initialize a result variable to an empty array
# - create an array named substring_arr that contains all of the 
#   substrings of the input string that are at least 2 characters long.
# - loop through the words in the substring_arr array.
# - If the word is a palindrome, append it to the result array.
# - return the result array.


# - create an empty array called `result` that will contain all the required
#   substrings
# - initialize variable start_substring_idx and assign 0 to it.
# - initialize variable end_substring_idx and assign the value of 
#   first_letter_idx + 1 to it.
# - Enter loop which will break when start_substring_idx is equal to str.size - 1
#   - Witin that loop enter another loop that will break if end_substring_idx
#     is equal to str.size
#       - append to the result array part of the string from start_substring_idx to end_substring_idx
#       - increment `end_substring_idx` by 1.
#   - end the inner loop
#   - increment `start_substring_idz` by 1.
#   - reassign `end_substring_idx` to   `start_substring_idx += 1`
# - end outer loop
# - return `result` array



def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == (str.size - 1)
    loop do 
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end


# Checking whether the string in a palindrome is easy enough, but we could
# also write the method for it as well and include it in the algorithm

# - Inside the `is_palindrome?` method, check whether the string value
#   is equal to its reversed value. You can use the String#reverse method.

def is_palindrome?(str)
  str == str.reverse
end


# Here's the complete pseudocode for this problem:

# input: a string
# output: an array of substrings
# rules: palindrome worlds should be case sensitive, meaning "abBA" is not a palindrome.


# Algorithm:
# substrings method
# ==================
# - create an empty array called `result` which will contain all the required substrings
# - initialize variable start_substring_idx and assign 0 to it.
# initialize variable end_substring_idx and assign value of first_letter_idx + 1 to it
# - Enter loop which will break when start_substring_idx is equal to str.size - 1
#   - Within that loop enter another loop which will break if end_substring_idx is equal to str.size
#     - append to the result array part of the string from start_substring_idx to end_substring_idx
#     - increment 'end_substring_idx` by 1
#   - end the inner loop
#   - increment `start_substring_idx` by 1.
#   - reassign `end_substring_idx` to  `start_substring_idx += 1`
# - end outer loop
# - return `result` array

# is_palindrome? method
# =====================
# - check whether the string value is equal to its reversed value. You
#   can use the String#reverse method.

# palindrome_substrings method
# ============================
# - initialize a result variable to an empty array
# - create an array named substring_arr that contains all of the substrings
#   of the input string that are at least 2 characters long.
# - loop through the words in the substring_arr array.
#     - if the word is a palindrome, append it to the result array
# - return the result array



# The code for this with all the helper methods:

def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == (str.size - 1)
    loop do
      break if end_substring_idx = str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx +1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if ispalindrome?(substring)
  end
  result
end



















