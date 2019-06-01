# PEDAC
# Problem
# Input: A string of numers and operations
# Output: Printing the results of the stack machine language. (integers)

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# Examples / Test Cases
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')

# Data Structures
# Strings
# Array

# Algorithm
# Initiate an empty array called 'stack'
# Initiate an empty array called 'register' 
# Convert String into an array of string elements
# Transform the number elements into integers
# Iterate through Array
    # If the element is a integer, push it into the register
    # If the element is a string:
        # If the element is 'PUSH', push the register value onto the stack
        # ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
        # SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
        # MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
        # DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
        # MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
        # POP Remove the topmost item from the stack and place in register
        # PRINT Print the register value

# Code

require 'pry'

# def minilang(string)
#   stack = []
#   register = [0]
#   array = string.split.map do |element| 
#     if element.to_i != 0
#       element.to_i
#     else
#       element
#     end
#   end
#   array.each do |element|
#     # binding.pry
#     case element
#     when 'PUSH'
#       stack << register[0]
#     when "ADD"
#       register = [register[0] + stack.pop]
#     when "SUB"
#       register = [register[0] - stack.pop]
#     when 'MULT'
#       register = [register[0] * stack.pop]
#     when 'DIV'
#       register = [register[0] / stack.pop]
#     when 'MOD'
#       register = [register[0] % stack.pop]
#     when 'POP'
#       register[0] = stack.pop
#     when 'PRINT'
#       puts register[0]
#     else
#       register[0] = element
#     end
#   end
# end

# p minilang('PRINT')
# # 0

# p minilang('5 PUSH 3 MULT PRINT')
# # 15

# p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# p minilang('5 PUSH POP PRINT')
# # 5

# p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# p minilang('-3 PUSH 5 SUB PRINT')
# # 8

# p minilang('6 PUSH')
# (nothing printed; no PRINT commands)


# Further Exploration
   # 3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT

# More Further Exploration


def minilang(string)
  error = 'Error: Operation on empty stack!'
  checked_for_empty_stack = %(POP ADD SUB MULT DIV MOD)
  stack = []
  register = 0
  string.split.each do |element|
    return p error if stack.empty? && checked_for_empty_stack.include?(element)
    case element
    when 'PUSH'
      stack << register
    when "ADD"
      register = register += stack.pop
    when "SUB"
      register = register -= stack.pop
    when 'MULT'
      register = register *= stack.pop
    when 'DIV'
      register = register /= stack.pop
    when 'MOD'
      register = register %= stack.pop
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    when /[0-9]+/
      register = element.to_i
    else
      p 'Not a valid token'
    end
  end
  nil
end


# minilang('5 ADD PUSH 10 MULT PRINT')

minilang('Marmaduke 4 PUSH 5 ADD')

p minilang('PRINT')
# # 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)





