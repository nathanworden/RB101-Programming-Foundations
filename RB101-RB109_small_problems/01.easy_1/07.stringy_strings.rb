# Understand the Problem
# Write a method that takes one argument
# - a positive integer
#    - need to verify?
# - return a string of alternating 1s and 0s
# - output string always starts with 1
# - the length of the output string should match the given intger

# Examples / Test Cases
# puts stringy(1) == '1'
# puts stringy(3) == '101'
# puts stringy(5) == '10101'
# puts stringy(7) == '1010101'
# puts stringy(9) == '101010101'

# puts stringy(2) == '10'
# puts stringy(4) == '1010'
# puts stringy(6) == '101010'
# puts stringy(0) == ''

# Algorithm
# receive a positive integer
# if the integer is 1, print '1'
# if the integer is even, print '10' (integer/2) times
# if the integer is odd, print '10' (integer/2) times and then print '1'

# MY ANSWER
# def stringy(num)
#   output = ''
#   if num == 1
#     output << '1'
#     return output
#   end
#   if num.even?
#     (num/2).times {output << '10'}
#     return output
#   else
#     (num/2).times {output << '10'}
#     output << '1'
#     return output
#   end
# end


# MY ANSWER IMPROVED

def stringy(num)
  output = []
    num.times do |index|
      number = index.even? ? 1 : 0
      output << number
    end
  output.join
end

# puts stringy(0)
puts stringy(1)
puts stringy(2)
puts stringy(3)
puts stringy(4)
puts stringy(5)
puts stringy(6)
puts stringy(7)
puts stringy(8)



# BOOK Answer

# Solution
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end
# Discussion
# Performing a task a certain number of times should be fairly straightforward at this point. We use #times to iterate based on the number indicated by size. For each iteration, we use the index block parameter in a conditional to determine if the current number is even or odd. Since #times starts counting from 0, we know that the first number will be even. Knowing this, we can write our conditional to return 1 if index is even and 0 if index is odd.

# We assign that value to a variable and, on the next line, we add it to an array, numbers. After #times has finished iterating, we're left with an array filled with 1s and 0s in the correct order. Now, all we have to do is invoke numbers.join to return the desired output.

# Further Exploration
# Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.


def stringy(num, switch = 1)
  output = []
  if switch == 1
    num.times do |index|
      number = index.even? ? 1 : 0
      output << number
    end
    return output.join
  elsif switch == 0
    num.times do |index|
      number = index.even? ? 0 : 1
      output << number
    end
    return output.join
  end
end

puts stringy(8, 0) # ==> 01010101
puts stringy(8, 1) # ==> 10101010



