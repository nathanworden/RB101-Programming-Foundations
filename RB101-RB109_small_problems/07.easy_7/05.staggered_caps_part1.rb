# PEDAC


# Problem
# Write a method that takes a String as an argument, and returns a new String that contains
# the original value using a staggered capitalization scheme in which every other character
# is capitalized, and the remaining characters are lower case. Characters that are not letters
# should not be changed, but count as characters when switching between upper and lowercase.


# Examples / Test Cases
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


# Data Structure
# string, array

# Algorithm
# define a method which takes a 'string' as an argument
# turn the string into an array of characters
# If the index of character in the array is even, capitalize the character
# If the index of the character in the array is odd, downcase the character
# join the array back into a string


# Code

def staggered_case(string)
  stag_case = string.chars.each_with_index do |char, index|
                if index.even?
                  char.upcase!
                elsif index.odd?
                  char.downcase!
                end
              end.join
  stag_case
end




p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'





# Book Answer

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end


