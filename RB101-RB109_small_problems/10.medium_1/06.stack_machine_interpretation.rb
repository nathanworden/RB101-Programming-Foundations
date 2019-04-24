#PEDAC

# Problem
# register => current value
# stack => list of values. Implement with Arrays using #push & #pop
# Operations use the top value of the stack and the register value
# Result gets stored back in the register.
# Write a method that implemets a stack and register language
# Commands: 
# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# Example / Test Cases
# see problem

# minilang('8 PRINT 4 PUSH ADD 7 PUSH 8 PUSH 9 MULT PRINT')
# 8
# 72
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# Data Structure
# Array, string, integer

# Algorithm
# Split the input string into an array of words
# Initialize an empty array called 'stack'
# Initialize an empty array called 'register'
# Iterate throug each element in the input array using Array#each
# If the element is an Integer, reassign register[0] = element
# If the element is 'Push', push the element to stack. 
# 


# Code


def minilang(string)
  commands = string.split(" ")
  stack = []
  register = 0
  commands.map! do |element|
    if element.match?(/\d/)
      element.to_i
    else
      element
    end
  end
  commands.each do |element|
    if element.class == Integer
      register = element
    elsif element.class == String
      case element
      when "PUSH"
        stack << register
      when "ADD"
        register += stack.pop
      when "SUB"
        register -= stack.pop
      when "MULT"
        register *= stack.pop
      when "DIV"
        register = stack.pop / register
      when "MOD"
        register = stack.pop % register
      when "POP"
        register = stack.pop
      when "PRINT"
        p register
      end
    end
  end
end




minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8









