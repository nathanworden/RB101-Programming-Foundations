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


def stringy(num)
  output = ''
  if num == 1
    output << '1'
    return output
  end
  if num.even?
    (num/2).times {output << '10'}
    return output
  else
    (num/2).times {output << '10'}
    output << '1'
    return output
  end
end

puts stringy(0)
puts stringy(1)
puts stringy(2)
puts stringy(3)
puts stringy(4)
puts stringy(5)
puts stringy(6)
puts stringy(7)
puts stringy(8)