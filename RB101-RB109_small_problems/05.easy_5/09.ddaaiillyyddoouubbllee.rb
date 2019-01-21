# PEDAC


# Problem
# Write a method that takes a string argument and returns a new string that contains the value 
# of the original string awith all consecutive duplicate characters collapsed into a single
# character. You may not use String#squeeze or String#squeeze!
# Question: How to handle non-numeric characers?

# Examples / Test Cases
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
# cruch('$$4567hhhh^&^^&^') == '$4567h^&^&^'

# Data Strcutures
#Strings

# Algorithm
# define a method called 'crunch' wich accepts an argument 'string'
# initiate a 'counter' at zero
# while the 'counter' is less than the length of the input string:
# Look at the first two characters of the string. If they are the same, delete the second one
# If the first two characters of the string are not the same, look at the second and third, and so on
# add one to counter



def crunch(string)
  all_chars = string.chars
  no_doubles = []
  all_chars.each do |char|
    if no_doubles.last != char
      no_doubles << char
    end
  end
  no_doubles.join
end


# Further Exploration

# def crunch(string)
#   crunch_text = ''
#   string.each_char {|char| crunch_text << char unless crunch_text[-1] == char}
#   crunch_text
# end

# Further Exploration with Regexp

# def crunch(str)
#   str.gsub(/(.)\1{0,}/, '\1')
# end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
p crunch('$$4567hhhh^&^^&^') == '$4567h^&^&^'


# Code 1st try (wrong)
# def crunch(string)
#   counter = 0
#   next_letter = counter + 1
#   new_string = ''
#   while counter < ((string.length) - 1)
#     if string[counter] == string[next_letter]
#       new_string << string[counter]
#       counter += 1
#       next_letter += 1
#     else
#       counter += 1
#       next_letter += 1
#     end
#   end
#   new_string
# end


# p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# p crunch('4444abcabccba') #== '4abcabcba'
# p crunch('ggggggggggggggg') #== 'g'
# p crunch('a') #== 'a'
# p crunch('') #== ''




# Book Answer except I compared string[index] to new_string[-1] instead of comparing stirng[index] to string[index + 1]

# def crunch(string)
#   new_string = ''
#   index = 0
#   while index <= string.length - 1
#     new_string << string[index] unless string[index] == new_string[-1]
#     index += 1
#   end
#   new_string
# end


# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''
# p crunch('$$4567hhhh^&^^&^') == '$4567h^&^&^'





# Book Answer:

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

















