# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' 
# pairs.

# PEDAC
# Problem:
# Input: String 
# Output: Boolean (True if parenthesis are properly balanced)
# Rules 1 A ')' can only occur if there is already a '(' before it 
    # that has NOT already been matched with a ')'
# Rule 2: The string cannot end with all '(' having a matching ')'

# Paren_counter starts at 0
# Rule 1: Paren_counter can never go negative
# Rule 2: Paren_counter must end at 0


# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).

# Data Structures
# Array

# Algorithm
# Initiate a 'paren_counter' variable to 0
# Convert the input string to an array
# Iterate through the array
    # If paren_counter is ever negative, return false
    # If element is a '(', increment 'paren_counter' by 1
    # If element is a ')', decrement 'paren_counter' by 1
# If paren counter is equivalent to 0 after the iteration, return true
# Else, return false


# Code

def balanced?(string)
  paren_counter = 0
  string.chars.each do |element|
    return false if paren_counter < 0 
    paren_counter += 1 if element == '('
    paren_counter -= 1 if element == ')'
  end
  return true if paren_counter == 0
  false
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
















