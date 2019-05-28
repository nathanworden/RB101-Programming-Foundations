# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Algorithm
# Initiate an empty string
# The input integer number of times add '10' to the string
# if the input integer is odd, add another '1' at the very end


def stringy(int)
  output = ''
  (int / 2).times do 
    output += '10'
  end
  output += '1' if int.odd?
  output
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'