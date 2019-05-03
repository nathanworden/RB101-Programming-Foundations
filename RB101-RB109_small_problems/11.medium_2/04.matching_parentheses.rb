#PEDAC

# Problem
# Write a method that takes a string as an argument
# Returns true if all parentheses in the string are properly balanced, false otherwise


# Examples / Test Cases
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# balanced?('This (is(.(very)) confus ((ing) ) ') == false


# Data Structures
# Strings, Arrays, maybe hashs

# Algorithm
# define a methods called 'balanced?' which accepts a string as an argument.
# Iterate through the string and select all the '(' and ')' characters
# If the array has an odd number of characters, return false
# Iterate through the selected array, shifting the first character an popping the last
# If the first character is '(' and the last is ')' denote with true
# If not, return false
# If you get trhough the whole array without any falses, return true


# Code

# def balanced?(string)
#   selected = string.chars.select {|char| char == '(' || char == ')'}
#   return false if selected.length.odd?
#   return true if selected.empty?
#   counter = 0
#   selected.each do |char|
#     counter += 1 if char == '('
#     counter -= 1 if char == ')'
#     return false if counter < 0
#   end
#   return true if counter == 0
#   false
# end


# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
# p balanced?('((What)) )is( this()') == false




# Further Exploration
def balanced?(string)
  parens = 0
  square_brackets = 0
  curly_brackets = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'
    curly_brackets += 1 if char == '{'
    curly_brackets -= 1 if char == '}'
    break if parens < 0
    break if square_brackets < 0
    break if curly_brackets < 0
  end

  return true if parens.zero? && curly_brackets.zero? && curly_brackets.zero?
  false
end


p balanced?('What [(is)] this?') == true
p balanced?('What (is)} this?') == false
p balanced?('What[] (is{} this?') == false
p balanced?('((What) (is this){}[])?') == true
p balanced?('(({{What))}} [(is this)])]?') == false
p balanced?('Hey!') == true
p balanced?('())}Hey!{()') == false
p balanced?('What ((is))) up(){') == false
p balanced?('((What)) [())is()] [this()') == false

