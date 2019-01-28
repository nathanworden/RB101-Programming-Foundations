# PEDAC


# Problem - Swap Case
# Write a method that takes a string as an argument and returns a new string in which every
# uppercase letter is replaced by its lowercase version, and every lowercase letter by
# its uppercase version. All other characters should be unchanged. You may not use String#swapcase'
# write your own version of this method.

# Example / Test Cases
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# swapcase('mORE tHAN eVER, aLL 3 oF oUR bEST pEOPLE') == 'More Than Ever, All 3 Of Our Best People'

# Data Structures
# array, string

# Algorithm
# define a method which accepts a 'string' as an argument
# call each_char on the string and use an 'if' statement to change the case of each character

# Code

# def swapcase(string)
#   new_string = ''
#   string.each_char do |char|
#     if char.match?(/[a-z]/)
#       new_string << char.upcase
#     elsif char.match?(/[A-Z]/)
#       new_string << char.downcase
#     else
#       new_string << char
#     end
#   end
#   new_string
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# p swapcase('mORE tHAN eVER, aLL 3 oF oUR bEST pEOPLE') == 'More Than Ever, All 3 Of Our Best People'


def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
    characters.join
end



p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
p swapcase('mORE tHAN eVER, aLL 3 oF oUR bEST pEOPLE') == 'More Than Ever, All 3 Of Our Best People'



