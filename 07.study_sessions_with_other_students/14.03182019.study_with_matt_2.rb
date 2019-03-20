# Write a method that takes a string, and returns a boolean indicating 
# whether this string has a balanced set of parentheses


# balance('hi') # => true
# balance("(hi") # => false
# balance("(hi)") #  => true
# balance(")hi(") # == false


# Input: string
# Output: Boolean (true/false)

# Algorithm
# find the number of open paranethsis
# find the number of closed parenthesis
# if they match, true!

# If there are no parenthesis, TRUE
# If there is an unbalanced number of parenthesis, FALSE
# If parenthesis are not matched, FALSE


def balance(str)
  return true if !str.include?('(') && !str.include?(')')
  return false if str.count('(') != str.count(')')
  if str.index('(') < str.index(')') 
      return true
  else 
    false
  end
end


p balance('hi') == true
p balance("(hi") == false
p balance("(hi)")  == true
p balance(")hi(") == false

