# PEDAC

# Problem
# Explicit Requirements:
# - Write a method that returs true if the string passed as an argument is a palindrome, false otherwise.
# - Case insensitive
# - ignore all non-alphanumeric characters.



# Examples / Test Cases
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Data Structure
# string

# Algorithm
# call .downcase! on the input
# call .strip! on the input
# call .chars on the input
# call .gsub! on the input and use Regexp (/^\w*$/), substitute with ''

# Code

def real_palindrome?(string)
  array = string.downcase.chars
  array.delete_if {|char| char.match(/^(\W|_)$/)}
  array == array.reverse
end


p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false
p real_palindrome?('he_llolleh') #== true     (_ doesn't matter)


# book answer

# def real_palindrome?(string)
#   string_mod = string.downcase.delete('^a-z0-9')
#   string_mod == string_mod.reverse
# end

# p real_palindrome?('madam') #== true
# p real_palindrome?('Madam') #== true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
# p real_palindrome?('356653') #== true
# p real_palindrome?('356a653') #== true
# p real_palindrome?('123ab321') #== false




