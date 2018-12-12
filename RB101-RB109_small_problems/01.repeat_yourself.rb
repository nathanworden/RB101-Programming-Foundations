# Understand the problem
# Set up your test cases
# Describe your inputs, outputs, and data structures
# Describe your algorithm
# Begin coding



# Understand
#  - Method
#     - two arguments
#        - string 
#        - positive integer (verify this is positive)
#     - puts string n times (n = integer input)

# Examples / Test Cases
# repeat('Hello', 3)
#         => Hello
#         => Hello
#         => Hello
# repeat('Hello World', 5)
#          => Hello World
#          => Hello World
#          => Hello World
#          => Hello World
#          => Hello World
#          => Hello World
# repeat( , 3)
#
#
#
# repeat('Hello', 0)
#           => nil
# repeat('Hello', -2)
#           => raise an exception
# repeat([], 3)
#           => raise an exception

# Algorithm
# Define a method that takes two arguments
# verify that the first input is a string
#    - Define a new method with one input
#    - use type? == string
#    - use an 'if' statement: if input is a string, it is valid.
#    - else: raise an exception
# verify that the second input is a positive integer
#    - Define a new method with one input
#    - Use comparison to return the boolean 'true if the input is a positive integer'
# use '.times do' with the integer as the argument. ie integer.times do
# in the block of '.times do' puts the string

def string?(input)
  input.class == String
end

def integer?(input)
  input.class == Integer && input >= 0
end

def repeat(string, integer)
  if string?(string)
  else
    puts "The first input is not a valid string"
  end

  if integer?(integer)
  else
    puts "The second input is not a positive integer"
  end

  integer.times {puts string}

end

repeat('Hello', 3)
repeat('Hello World', 3)
repeat(nil, 3)
repeat(nil, -3)
repeat([], 3)


# Solution
# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end
# Discussion
# When solving exercises, it can be beneficial to progress in small increments. We started out by defining repeat with two parameters. Then, to ensure everything worked properly, we added puts string inside the method and ran the code.

# def repeat(string, number)
#   puts string
# end
# This works correctly, however, it only prints string once. Our goal is to print string a specified number of times. One of the more suitable methods for this situation is Integer#times. Using this method, we can execute puts string any number of times. In this case, we want to print string the number of times indicated by number.


